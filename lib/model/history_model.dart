class HistoryItemModel {
  late String orderId;
  late String imagePath;
  late String name;
  late String date;
  late String totalAmount;
  late String qty;

  HistoryItemModel({
    required this.orderId,
    required this.imagePath,
    required this.name,
    required this.date,
    required this.totalAmount,
    required this.qty,
  });

  static final historyList = [
    HistoryItemModel(
        orderId: "#IF0129",
        imagePath: "assets/images/pepper_red.png",
        name: "Bell Pepper Red",
        date: "1/1/2024",
        totalAmount: "\u20B9 150 ",
        qty: "2"),
    HistoryItemModel(
        orderId: "#IF3847",
        imagePath: "assets/images/butternut.png",
        name: "Butternut Squash",
        date: "5/1/2024",
        totalAmount: "\u20B9 250 ",
        qty: "3"),
    HistoryItemModel(
        orderId: "#IF5610",
        imagePath: "assets/images/ginger.png",
        name: "Arabic Ginger",
        date: "5/1/2024",
        totalAmount: "\u20B9 450",
        qty: "5"),
  ];
}
