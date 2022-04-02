import 'package:code_monkeys_project/models/category.dart';
import 'package:code_monkeys_project/models/item.dart';

// lista za kupovinu npr
class ItemList {
  final String uid;
  String name;
  List<Item> itemList;
  Category category;

  ItemList(this.uid, this.name, this.itemList, this.category);
}
