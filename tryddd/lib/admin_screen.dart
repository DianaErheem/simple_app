import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _productTitleController = TextEditingController();
  final TextEditingController _productPriceController = TextEditingController();
  final TextEditingController _productDescriptionController = TextEditingController();

  final List<Map<String, dynamic>> _products = [
    {
      'title': 'Product 1',
      'price': 10.0,
      'description': 'Description of Product 1',
    },
    {
      'title': 'Product 2',
      'price': 20.0,
      'description': 'Description of Product 2',
    },
    {
      'title': 'Product 3',
      'price': 30.0,
      'description': 'Description of Product 3',
    },
  ];

  void _addProduct() {
    if (_formKey.currentState!.validate()) {
      final title = _productTitleController.text;
      final price = double.parse(_productPriceController.text);
      final description = _productDescriptionController.text;

      setState(() {
        _products.add({
          'title': title,
          'price': price,
          'description': description,
        });
      });

      _productTitleController.clear();
      _productPriceController.clear();
      _productDescriptionController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Admin Panel",
            style: GoogleFonts.abhayaLibre(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
        padding: EdgeInsets.all(20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Add Product",
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 10),
    Form(
    key: _formKey,
    child: Column(
    children: [
    TextFormField(
    controller: _productTitleController,
    decoration: InputDecoration(labelText: "Title"),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return "Title is required";
    }
    return null;
    },
    ),
    SizedBox(height: 10),
    TextFormField(
    controller: _productPriceController,
    decoration: InputDecoration(labelText: "Price"),
    keyboardType: TextInputType.number,
    validator: (value) {
    if (value == null || value.isEmpty) {
    return "Price is required";
    }
    final price = double.tryParse(value);
    if (price == null || price <= 0) {
    return "Price should be a positive number";
    }
    return null;
    },
    ),
    SizedBox(height: 10),
    TextFormField(
    controller: _productDescriptionController,
    decoration: InputDecoration(labelText: "Description"),
    maxLines: 3,
    validator: (value) {
    if (value == null || value.isEmpty) {
    return "Description is required";
    }
    return null;
    },
    ),
    SizedBox(height: 10),
    ElevatedButton(
    onPressed: _addProduct,
    child: Text("Add Product"),
    ),
    ],
    ),
    ),
    SizedBox(height: 20),
    Text(
    "Product List",
    ),
        ],
    ),
        ));
  }
}
