// to_upper.ispc
export void ispc__to_upper(uniform uint8 str[], uniform size_t count) {
    foreach (i = 0 ... count) {
        if (str[i] >= 97 && str[i] <= 122) {
            str[i] = str[i] - 32;
        }
    }
}
