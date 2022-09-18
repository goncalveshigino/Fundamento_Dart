class Calculos {
  double pi = 3.14;
  static double piEstatico = 3.14;

  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

  static double areaCirculoEstatico(double raio) {
    return piEstatico * (raio * raio);
  }
}
