import 'package:shared_preferences/shared_preferences.dart';
import '../model/item.dart';

class ItemRepository {
  static Future<List<Item>> getItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? items = prefs.getStringList('items');

    if (items != null) {
      return items.map((item) {
        List<String> parts = item.split('|');
        return Item(title: parts[0], description: parts[1]);
      }).toList();
    } else {
      return [];
    }
  }

  static Future<void> addItem(Item item) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? items = prefs.getStringList('items');

    if (items == null) {
      items = [];
    }

    items.add('${item.title}|${item.description}');
    await prefs.setStringList('items', items);
  }
}
