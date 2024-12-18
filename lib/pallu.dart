void main(){
  int n=10;
  Fibonciate(n);
}
void Fibonciate(int n){
  int a=0, b=1, c;
  for (int i = 0; i < n; i++) {
    print(a);
    c = a + b;
    a = b;
    b = c;
  }
}