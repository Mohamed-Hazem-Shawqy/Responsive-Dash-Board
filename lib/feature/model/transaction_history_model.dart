class TransactionHistoryModel {
  final String type, date, price;
  final bool isWithDrawel;

  TransactionHistoryModel({
    required this.type,
    required this.date,
    required this.price,
    required this.isWithDrawel,
  });
}
