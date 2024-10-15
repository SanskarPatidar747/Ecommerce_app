import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  List<Map<String, dynamic>> tShirts = [
    {
      'image': 'https://th.bing.com/th/id/OIP.wm_LMRmppaIkNzHqx9EFkQHaHa?w=185&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'name': 'Cool T-Shirt',
      'price': 19.99,
      'rating': 4.5,
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.S0KMG6ioXe1P8ePtxjiX5AAAAA?w=120&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'name': 'Vintage T-Shirt',
      'price': 24.99,
      'rating': 4.0,
    },
    // Add remaining items here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 35, left: 10, right: 20),
            child: Row(
              children: [
                Icon(Icons.arrow_back, size: 28),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("WishList", style: TextStyle(color: Colors.black, fontSize: 18)),
                    Text("14 items", style: TextStyle(color: Colors.black)),
                  ],
                ),
                Spacer(),
                Icon(Icons.shopping_bag_outlined, size: 28),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.51,
              ),
              itemCount: tShirts.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.network(
                              tShirts[index]['image'],
                              width: double.infinity, // Set width to fill the container
                              height: 200, // Increase height of image
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 3,
                            right: 3,
                            child:  Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.black,
                                  size: 30, // Adjust icon size
                                ),
                ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tShirts[index]['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("\$${tShirts[index]['price']}", style: TextStyle(color: Colors.black)),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.orange, size: 16),
                                SizedBox(width: 2),
                                Text(" ${tShirts[index]['rating']}", style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.brown, height: 0), // No space after divider

                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text(
                            "Move to the Bag",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),

                                                 ),
                         ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
