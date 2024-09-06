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

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

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
            child: listOfProduct(),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total amount:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$227',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListView listOfProduct() {
    return ListView(
      children: const [
        CartItem(
          imageUrl: 'assets/images/t_shirt1.jpeg',
          name: 'Pullover',
          color: 'Black',
          size: 'L',
          price: 51,
        ),
        CartItem(
          imageUrl: 'assets/images/t_shirt2.jpeg',
          name: 'T-Shirt',
          color: 'Blue',
          size: 'L',
          price: 30,
        ),
        CartItem(
          imageUrl: 'assets/images/t_shirt3.jpeg',
          name: 'Sport Dress',
          color: 'Black',
          size: 'M',
          price: 43,
        ),
        CartItem(
            imageUrl: 'assets/images/t_shirt4.jpeg',
            name: 'T-Shirt',
            color: 'White',
            size: 'M',
            price: 34
        ),
        CartItem(
            imageUrl: 'assets/images/t_shirt5.jpeg',
            name: 'T-Shirt',
            color: 'Black',
            size: 'M',
            price: 36
        ),
        CartItem(
            imageUrl: 'assets/images/t_shirt6.jpeg',
            name: 'T-Shirt',
            color: 'Black',
            size: 'M',
            price: 33
        )
      ],
    );
  }
}

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String color;
  final String size;
  final int price;

  const CartItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.color,
    required this.size,
    required this.price,
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
              imageUrl,
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
                    name,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                   Row(
                    children: [
                     const Text('Color: '),
                      Text(color,style: const TextStyle(
                        fontWeight: FontWeight.w800
                      ),)
                    ],
                  ),
                  Row(
                    children: [
                    const  Text('Size: '),
                      Text(size,style:const TextStyle(
                          fontWeight: FontWeight.w800
                      ),)
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
                  onPressed: () {}, // Implement your functionality
                ),
                const Text('1'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {}, // Implement your functionality
                ),
              ],
            ),
            const SizedBox(width: 16),

            Column(
              children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
               const SizedBox(
                  height: 10,
                ),
                Text('\$${price.toString()}'),
              ],
            )
          ],
        ),
      ),
    );
  }

  
}
