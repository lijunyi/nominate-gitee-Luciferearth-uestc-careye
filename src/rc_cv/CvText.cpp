//
// Created by norse on 17-6-14.
//

#include "CvText.h"
#include <wchar.h>
#include <assert.h>
#include <locale.h>
#include <ctype.h>


CvText::CvText(const char *freeType) {
    assert(freeType != NULL);
    if (FT_Init_FreeType(&m_library)) throw;
    if (FT_New_Face(m_library, freeType, 0, &m_face)) throw;
    restoreFont();
    setlocale(LC_ALL, "");
}

CvText::~CvText() {
    FT_Done_Face(m_face);
    FT_Done_FreeType(m_library);
}

// 设置字体参数:
//
// font         - 字体类型, 目前不支持
// size         - 字体大小/空白比例/间隔比例/旋转角度
// underline   - 下画线
// diaphaneity   - 透明度

void CvText::getFont(int *type, CvScalar *size, bool *underline, float *diaphaneity) {
    if (type) *type = m_fontType;
    if (size) *size = m_fontSize;
    if (underline) *underline = m_fontUnderline;
    if (diaphaneity) *diaphaneity = m_fontDiaphaneity;
}

void CvText::setFont(int *type, CvScalar *size, bool *underline, float *diaphaneity) {
    if (type) {
        if (type >= 0) m_fontType = *type;
    }
    if (size) {
        m_fontSize.val[0] = fabs(size->val[0]);
        m_fontSize.val[1] = fabs(size->val[1]);
        m_fontSize.val[2] = fabs(size->val[2]);
        m_fontSize.val[3] = fabs(size->val[3]);
    }
    if (underline) {
        m_fontUnderline = *underline;
    }
    if (diaphaneity) {
        m_fontDiaphaneity = *diaphaneity;
    }
}

// 恢复原始的字体设置

void CvText::restoreFont() {
    m_fontType = 0;            // 字体类型(不支持)

    m_fontSize.val[0] = 20;      // 字体大小
    m_fontSize.val[1] = 0.5;   // 空白字符大小比例
    m_fontSize.val[2] = 0.1;   // 间隔大小比例
    m_fontSize.val[3] = 0;      // 旋转角度(不支持)

    m_fontUnderline = false;   // 下画线(不支持)

    m_fontDiaphaneity = 1.0;   // 色彩比例(可产生透明效果)

    // 设置字符大小

    FT_Set_Pixel_Sizes(m_face, (int) m_fontSize.val[0], 0);
}

// 输出函数(颜色默认为黑色)

int CvText::putText(IplImage *img, const char *text, CvPoint pos) {
    return putText(img, text, pos, CV_RGB(255, 255, 255));
}

int CvText::putText(IplImage *img, const wchar_t *text, CvPoint pos) {
    return putText(img, text, pos, CV_RGB(255, 255, 255));
}

//

int CvText::putText(IplImage *img, const char *text, CvPoint pos, CvScalar color) {
    if (img == NULL) return -1;
    if (text == NULL) return -1;

    //

    int i;
    for (i = 0; text[i] != '\0'; ++i) {
        wchar_t wc = text[i];

        // 解析双字节符号

        if (!isascii(wc)) mbtowc(&wc, &text[i++], 2);

        // 输出当前的字符

        putWChar(img, wc, pos, color);
    }
    return i;
}

int CvText::putText(IplImage *img, const wchar_t *text, CvPoint pos, CvScalar color) {
    if (img == NULL) return -1;
    if (text == NULL) return -1;

    //

    int i;
    for (i = 0; text[i] != '\0'; ++i) {
        // 输出当前的字符

        putWChar(img, text[i], pos, color);
    }
    return i;
}

// 输出当前字符, 更新m_pos位置

void CvText::putWChar(IplImage *img, wchar_t wc, CvPoint &pos, CvScalar color) {
    // 根据unicode生成字体的二值位图

    FT_UInt glyph_index = FT_Get_Char_Index(m_face, wc);
    FT_Load_Glyph(m_face, glyph_index, FT_LOAD_DEFAULT);
    FT_Render_Glyph(m_face->glyph, FT_RENDER_MODE_MONO);

    //

    FT_GlyphSlot slot = m_face->glyph;

    // 行列数

    int rows = slot->bitmap.rows;
    int cols = slot->bitmap.width;

    //

    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            int off = ((img->origin == 0) ? i : (rows - 1 - i))
                      * slot->bitmap.pitch + j / 8;

            if (slot->bitmap.buffer[off] & (0xC0 >> (j % 8))) {
                int r = (img->origin == 0) ? pos.y - (rows - 1 - i) : pos.y + i;;
                int c = pos.x + j;

                if (r >= 0 && r < img->height
                    && c >= 0 && c < img->width) {
                    CvScalar scalar = cvGet2D(img, r, c);

                    // 进行色彩融合

                    float p = m_fontDiaphaneity;
                    for (int k = 0; k < 4; ++k) {
                        scalar.val[k] = scalar.val[k] * (1 - p) + color.val[k] * p;
                    }

                    cvSet2D(img, r, c, scalar);
                }
            }
        }
    }

    // 修改下一个字的输出位置
    double space = m_fontSize.val[0] * m_fontSize.val[1];
    double sep = m_fontSize.val[0] * m_fontSize.val[2];
    pos.x += (int) ((cols ? cols : space) + sep);
}