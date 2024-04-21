class CartItemModel {
  late String imagePath;
  late String name;
  late String price;
  late int count;

  CartItemModel(
      {required this.imagePath,
      required this.name,
      required this.price,
      required this.count});

  static final CartItemList = [
    CartItemModel(
        imagePath: "assets/images/pepper_red.png",
        name: "Bell Pepper Red",
        price: "1kg, 40 \u20B9",
        count: 1),
    CartItemModel(
        imagePath: "assets/images/carrots.png",
        name: "Organic Carrots",
        price: "1kg, 450 \u20B9",
        count: 5),
    CartItemModel(
        imagePath: "assets/images/ginger.png",
        name: "Arabic Ginger",
        price: "1kg, 200 \u20B9",
        count: 4),
    CartItemModel(
        imagePath: "assets/images/butternut.png",
        name: "Butternut Squash",
        price: "1kg, 150 \u20B9",
        count: 3)
  ];
}
