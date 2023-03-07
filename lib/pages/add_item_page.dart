import 'package:flutter/material.dart';
import '../model/item.dart';

class AddItemPage extends StatefulWidget {
  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  Widget _buildTitleTextField() {
    return TextFormField(
      controller: _titleController,
      decoration: InputDecoration(
        labelText: 'Descrição item',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Favor adicionar algum item';
        }
        return null;
      },
    );
  }

  Widget _buildSizedBox() {
    return SizedBox(height: 16);
  }

  Widget _buildSaveButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _saveItem();
        }
      },
      child: Text('Salvar'),
    );
  }

  void _saveItem() {
    String title = _titleController.text.trim();
    String description = _descriptionController.text.trim();

    if (title.isNotEmpty && description.isNotEmpty) {
      Item newItem = Item(title: title, description: description);
      Navigator.pop(context, newItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTitleTextField(),
              _buildSizedBox(),
              Spacer(),
              _buildSaveButton(),
            ],
          ),
        ),
      ),
    );
  }
}
