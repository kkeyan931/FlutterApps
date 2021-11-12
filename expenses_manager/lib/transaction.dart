class Transaction {
  final int id;
  final double amount;
  final String title;
  final DateTime date;

  Transaction({
    required this.id,
    required this.amount,
    required this.title,
    required this.date,
  });
}
