vec3 getPixelPotato(vec2 pixelCoord, vec3 color, vec2 size) { // Original Pixel art by Memokii
    if (pixelCoord.x < 0.0 || pixelCoord.x >= size.x || 
        pixelCoord.y < 0.0 || pixelCoord.y >= size.y) {
        return color;
    }
    
    int x = int(pixelCoord.x);
    int y = int(pixelCoord.y);
    
    if ((y == 0 || y == 8) && x >= 4 && x < 10) return hex2rgb(y == 0 ? 0x7C552Au : 0x652C14u);

    if (y == 1) {
        if (x >= 2 && x < 4 || x >= 10 && x < 12) return hex2rgb(0x7C552Au);
        if (x >= 4 && x < 7 || x == 9) return hex2rgb(0xD1A34Bu);
        return x >= 7 && x < 9 ? hex2rgb(0xD8B95Bu) : color;
    }
    if (y == 2) {
        return (x == 1) ? hex2rgb(0x7C552Au) :
            (x == 2 || x == 11) ? hex2rgb(0xD1A34Bu) :
            (x == 3 || x == 9) ? hex2rgb(0xE3D872u) :
            (x == 4) ? hex2rgb(0x9A7D45u) :
            (x >= 5 && x < 7 || x == 8) ? hex2rgb(0x353330u) :
            (x == 7) ? hex2rgb(0x292623u) :
            (x == 10) ? hex2rgb(0xD8B95Bu) :
            (x == 12) ? hex2rgb(0x703F1Eu) : color;
    }
    if (y == 3) {
        return (x == 0 || x == 13) ? hex2rgb(0x703F1Eu) :
            (x == 1 || x == 11) ? hex2rgb(0xD1A34Bu) :
            (x >= 2 && x < 4 || x == 6) ? hex2rgb(0xD8B95Bu) :
            (x == 4 || x >= 7 && x < 10) ? hex2rgb(0xE3D872u) :
            (x == 5) ? hex2rgb(0x353330u) :
            (x == 10) ? hex2rgb(0x916E3Cu) :
            (x == 12) ? hex2rgb(0xC58539u) : color;
    }
    if (y == 4) {
        return (x == 0) ? hex2rgb(0x703F1Eu) :
            (x >= 1 && x < 3 || x >= 10 && x < 13) ? hex2rgb(0xD1A34Bu) :
            (x >= 3 && x < 5 || x >= 7 && x < 10) ? hex2rgb(0xD8B95Bu) :
            (x >= 5 && x < 7) ? hex2rgb(0x292623u) :
            (x == 13) ? hex2rgb(0x652C14u) : color;
    }
    if (y == 5) {
        return (x == 0) ? hex2rgb(0x703F1Eu) :
            (x == 1) ? hex2rgb(0xC58539u) :
            (x >= 2 && x < 4 || x >= 9 && x < 12) ? hex2rgb(0xD1A34Bu) :
            (x == 4 || x >= 6 && x < 8) ? hex2rgb(0xD8B95Bu) :
            (x == 5) ? hex2rgb(0x1D1917u) :
            (x == 8) ? hex2rgb(0x916E3Cu) :
            (x == 12) ? hex2rgb(0x652C14u) : color;
    }
    if (y == 6) {
        return (x == 1) ? hex2rgb(0x703F1Eu) :
            (x == 2) ? hex2rgb(0x916E3Cu) :
            (x == 3 || x >= 10 && x < 12) ? hex2rgb(0xC58539u) :
            (x == 4 || x == 9) ? hex2rgb(0xD1A34Bu) :
            (x >= 5 && x < 7 || x >= 7 && x < 9) ? hex2rgb(0x1D1917u) :
            (x == 6) ? hex2rgb(0x292623u) :
            (x == 12) ? hex2rgb(0x652C14u) : color;
    }
    if (y == 7) {
        return (x == 2) ? hex2rgb(0x703F1Eu) :
            (x == 3 || x >= 10 && x < 12) ? hex2rgb(0x652C14u) :
            (x >= 4 && x < 6 || x == 8) ? hex2rgb(0xC58539u) :
            (x >= 6 && x < 8) ? hex2rgb(0xD1A34Bu) :
            (x == 9) ? hex2rgb(0x916E3Cu) : color;
    }
    return color;
}