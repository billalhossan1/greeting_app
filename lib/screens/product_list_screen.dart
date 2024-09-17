import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';
import 'add_new_product_screen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [];
  bool _inProgress = false;

  @override
  void initState() {
    super.initState();
    getProductList();
  }

  Future<void> DeleteProduct(String productId) async {
    final uri = Uri.parse('http://164.68.107.70:6060/api/v1/DeleteProduct/$productId');
    try {
      final response = await get(
        uri,
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        print(responseBody);
        if (responseBody['success'] == true) {
          setState(() {
            productList.removeWhere((product) => product.id == productId);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Product Deleted')),
            );
          });

        }
      } else if (response.statusCode == 404) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Product not found')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }


  Future<void> getProductList() async {
    setState(() {
      _inProgress = true;
    });

    final uri = Uri.parse('http://164.68.107.70:6060/api/v1/ReadProduct');
    final response = await get(uri);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      setState(() {
        productList = (jsonResponse['data'] as List).map((item) => Product(
          id: item['_id'],
          productName: item['ProductName'] ?? '',
          productCode: item['ProductCode'] ?? '',
          productImage: item['Img'] ?? '',
          unitPrice: item['UnitPrice'] ?? '',
          quantity: item['Qty'] ?? '',
          totalPrice: item['TotalPrice'] ?? '',
          createdAt: item['CreatedDate'] ?? '',
        )).toList();
      });
    }
    setState(() {
      _inProgress = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product list'),
        actions: [
          IconButton(
            onPressed: getProductList,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: _inProgress
          ? const Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.separated(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ProductItem(
              product: productList[index],
              onDelete: DeleteProduct,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 16);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddNewProductScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
