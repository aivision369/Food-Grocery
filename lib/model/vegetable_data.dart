class VegetableItemModel {
  late String imagePath;
  late String name;
  late String price;

  VegetableItemModel(
      {required this.imagePath, required this.name, required this.price});

  static final vegetableItemList = [
    VegetableItemModel(
        imagePath: "assets/images/pepper_red.png",
        name: "Bell Pepper Red",
        price: "1kg, 40\u20B9"),
    VegetableItemModel(
        imagePath: "assets/images/butternut.png",
        name: "Butternut Squash ",
        price: "1kg, 50\u20B9"),
    VegetableItemModel(
        imagePath: "assets/images/ginger.png",
        name: "Arabic Ginger",
        price: "1kg, 40\u20B9"),
    VegetableItemModel(
        imagePath: "assets/images/carrots.png",
        name: "Organic Carrots",
        price: "1kg, 40\u20B9"),
    VegetableItemModel(
        imagePath: "assets/images/pepper_red.png",
        name: "Bell Pepper Red",
        price: "1kg, 40\u20B9"),
    VegetableItemModel(
        imagePath: "assets/images/butternut.png",
        name: "Butternut Squash ",
        price: "1kg, 50\u20B9"),
    VegetableItemModel(
        imagePath: "assets/images/ginger.png",
        name: "Arabic Ginger",
        price: "1kg, 40\u20B9"),
    VegetableItemModel(
        imagePath: "assets/images/carrots.png",
        name: "Organic Carrots",
        price: "1kg, 45\u20B9"),
  ];
}
