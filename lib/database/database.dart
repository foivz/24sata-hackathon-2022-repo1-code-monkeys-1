import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_monkeys_project/models/group.dart';
import 'package:decimal/decimal.dart';

class DatabaseService {
  DatabaseService();

  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("group");

  Future updateGroupData(Group group) async {
    return await collectionReference.doc(group.uid).set({
      'balance': group.balance,
      'itemListList': group.itemListList,
      'transactionList': group.transactionList,
      'budgetList': group.budgetList,
      'subscription': group.subscription,
    });
  }

  int balanceToBase(Decimal val) {
    return (val * Decimal.fromInt(100)) as int;
  }

  Decimal baseToBalance(int val) {
    return Decimal.fromInt(((val as double) / 100.0) as int);
  }
}
