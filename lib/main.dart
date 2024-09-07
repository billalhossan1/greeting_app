import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingCartScreen(),
    );
  }
}

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  final List<CartItemData> items = [
    CartItemData(imageUrl: 'assets/images/t_shirt1.jpeg', name: 'Pullover', color: 'Black', size: 'L', price: 51, quantity: 1),
    CartItemData(imageUrl: 'assets/images/t_shirt2.jpeg', name: 'T-Shirt', color: 'Blue', size: 'L', price: 30, quantity: 1),
    CartItemData(imageUrl: 'assets/images/t_shirt3.jpeg', name: 'Sport Dress', color: 'Black', size: 'M', price: 43, quantity: 1),
    CartItemData(imageUrl: 'assets/images/t_shirt4.jpeg', name: 'T-Shirt', color: 'White', size: 'M', price: 34, quantity: 1),
    CartItemData(imageUrl: 'assets/images/t_shirt5.jpeg', name: 'T-Shirt', color: 'Black', size: 'M', price: 36, quantity: 1),
    CartItemData(imageUrl: 'assets/images/t_shirt6.jpeg', name: 'T-Shirt', color: 'Black', size: 'M', price: 33, quantity: 1),
  ];

  double get totalAmount {
    double sum = 0;
    for (var item in items) {
      sum += item.price * item.quantity;
    }
    return sum;
  }

  void increaseQuantity(int index) {
    setState(() {
      items[index].quantity++;
    });
  }

  void decreaseQuantity(int index) {
    setState(() {
      if (items[index].quantity > 1) {
        items[index].quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Bag',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                CartItemData currentItem = items[index];
                increaseCallback() {
                  increaseQuantity(index);
                }
                decreaseCallback() {
                  decreaseQuantity(index);
                }
                return CartItem(
                  item: currentItem,
                  onIncrease: increaseCallback,
                  onDecrease: decreaseCallback,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  width: 290,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(
                          content: Text('Thanks for purchasing the Product'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      textStyle: const TextStyle(fontSize: 18),
                      backgroundColor: Colors.cyan,
                      foregroundColor: Colors.black
                    ),
                    child: const Text('Checkout'),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total amount:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$${totalAmount.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartItemData {
  final String imageUrl;
  final String name;
  final String color;
  final String size;
  final int price;
  int quantity;

  CartItemData({
    required this.imageUrl,
    required this.name,
    required this.color,
    required this.size,
    required this.price,
    this.quantity = 1,
  });
}

class CartItem extends StatelessWidget {
  final CartItemData item;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const CartItem({
    super.key,
    required this.item,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 14,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              item.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Text('Color: '),
                      Text(item.color, style: const TextStyle(fontWeight: FontWeight.w800)),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Size: '),
                      Text(item.size, style: const TextStyle(fontWeight: FontWeight.w800)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: onDecrease,
                ),
                Text('${item.quantity}'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: onIncrease,
                ),
              ],
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                const SizedBox(height: 10),
                Text('\$${(item.price * item.quantity).toStringAsFixed(2)}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
