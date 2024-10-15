import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  final List<Map<String, dynamic>> products = [
    {
      'imageUrl': 'https://th.bing.com/th/id/OIP.wm_LMRmppaIkNzHqx9EFkQHaHa?w=185&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'name': 'Product 1',
      'description': 'This is the description for product 1.',
      'size': 'M',
      'rate': 29.99,
    },
    {
      'imageUrl': 'https://th.bing.com/th/id/OIP.S0KMG6ioXe1P8ePtxjiX5AAAAA?w=120&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'name': 'Product 2',
      'description': 'This is the description for product 2.',
      'size': 'L',
      'rate': 39.99,
    },
    {
      'imageUrl': 'https://th.bing.com/th/id/OIP.Em-EWQrPNQjz0tjnA8zumAAAAA?w=161&h=203&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'name': 'Product 3',
      'description': 'This is the description for product 3.',
      'size': 'S',
      'rate': 19.99,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                // Header
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SHOPPING BAG",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.favorite_border_outlined, size: 30),
                      ],
                    ),
                  ),
                ),

                // Delivery Information
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(0xFFFFE4E1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Deliver to: "),
                                Text(
                                  "Chirag patel,458667",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text("Ram dwara road, Narayangarh, Mandsor"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "Change",
                          style: TextStyle(
                            color: Color(0xFFE91E63),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.white),

                // Item Count and Action Icons
                Container(
                  decoration: BoxDecoration(color: Color(0xFFE0E0E0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 11.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0,top: 12,bottom: 12),
                          child: Container(
                            width: 17.0,
                            height: 17.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1.50),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "0/3 ITEMS SELECTED",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.share_outlined, color: Colors.black54),

                        SizedBox(width: 8),
                        Icon(Icons.delete, color: Colors.black54),
                        SizedBox(width: 8),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.favorite_border_outlined, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),

                // Product List
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(8),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                // The image positioned at the top left
                                Image.network(
                                  product['imageUrl'],
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 17.0,
                                          height: 17.0,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black, width: 1.50),
                                            borderRadius: BorderRadius.circular(2.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110), // Adjust padding to avoid overlap
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            product['name'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 16),
                                          ),
                                          Spacer(),
                                          Icon(Icons.cancel_outlined)
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(product['description']),
                                      SizedBox(height: 5),
                                      Text('Size: ${product['size']}'),
                                      SizedBox(height: 5),
                                      Text('\$${product['rate'].toStringAsFixed(2)}'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 5,
                            decoration: BoxDecoration(color: Color(0xFFE0E0E0)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          // PLACE ORDER Button
          Container(
            margin: EdgeInsets.all(16.0), // Margin around the container
            color: Colors.pink[900], // Darker pink color
            height: 60,
            width: double.infinity,
            padding: EdgeInsets.all(16.0), // Padding inside the container
            child: Center(
              child: Text(
                'PLACE ORDER',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
