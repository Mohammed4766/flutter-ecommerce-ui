// ignore_for_file: non_constant_identifier_names

class Brand {
  String title;
  String loglPath;
  Brand({required this.title, required this.loglPath});
}

List<Brand> Brands = [
  Brand(title: "Adidas", loglPath: "assets/svg/Adidas.svg"),
  Brand(title: "Nike", loglPath: "assets/svg/Nike.svg"),
  Brand(title: "Fila", loglPath: "assets/svg/Fila.svg"),
  Brand(title: "Adidas", loglPath: "assets/svg/Adidas.svg"),
];
