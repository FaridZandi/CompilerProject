int f(int a) {
    void g(int b) {
        output(b);
        f(b - 1);
    }
    if (a == 1) {
        output(a);
        return 0;
    } else {
        g(a);
    }


}


void main(void) {
    f(10);
}