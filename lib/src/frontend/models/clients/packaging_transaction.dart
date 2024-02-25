class PackagingTransaction {
  final DateTime date;
  final int entryC12;
  final int entryC20;
  final int entryC24;
  final int exitC12;
  final int exitC20;
  final int exitC24;

  PackagingTransaction({
    required this.date,
    required this.entryC12,
    required this.entryC20,
    required this.entryC24,
    required this.exitC12,
    required this.exitC20,
    required this.exitC24,
  });

  int get balanceC12 => entryC12 - exitC12;
  int get balanceC20 => entryC20 - exitC20;
  int get balanceC24 => entryC24 - exitC24;
}
