import 'package:flutter/material.dart';
import '../model/item.dart';
import '../repository/item_repository.dart';
import '../pages/add_item_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Item> _items;
  late ItemRepository _itemRepository;

  @override
  void initState() {
    super.initState();
    _itemRepository = ItemRepository();
    _loadItems();
  }

  void _loadItems() async {
    List<Item> items = await _itemRepository.getItems();
    setState(() {
      _items = items;
    });
  }

  void _addItem(Item item) async {
    await _itemRepository.addItem(item);
    setState(() {
      _items.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Lista'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          Item item = _items[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.description),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Item? newItem = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddItemPage()),
          );

          if (newItem != null) {
            _addItem(newItem);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
