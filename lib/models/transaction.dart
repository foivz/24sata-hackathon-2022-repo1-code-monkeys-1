import 'package:code_monkeys_project/models/category.dart';
import 'package:decimal/decimal.dart';

class Transaction {
  final String uid;
  Decimal value;
  String note;
  Category category;

  Transaction(this.uid, this.value, this.note, this.category);
}
