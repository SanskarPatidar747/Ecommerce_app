import 'package:ecommerse_app/Constants/strings.dart';
import 'package:ecommerse_app/Screens/wishlst_screen.dart';
import 'package:ecommerse_app/utills/post_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  List<String> posts=["https://th.bing.com/th/id/OIP.epvkRl_GbdrCX_NNzPgBBwAAAA?w=325&h=175&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://static.vecteezy.com/system/resources/previews/009/356/647/original/sale-social-media-post-template-mega-sale-banner-super-sale-banner-big-sale-poster-special-offer-banner-social-media-post-vector.jpg",
    "https://th.bing.com/th/id/OIP.Xn_jNU6zxeC-dFFiaQxqsQHaEc?w=311&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7",];

  List<Map<String, String>> categories = [
    {'image': 'https://th.bing.com/th/id/OIP.rrh36lD7Eup7eF3A0PoyRAHaE8?w=270&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7','title':'Casual'},
    {'image': 'https://th.bing.com/th?id=OIP.iIJ3vQr2HSwkftEofHxu3AHaJQ&w=223&h=279&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2', 'title': 'Sports Wear'},
    {'image': 'https://e7.pngegg.com/pngimages/67/930/png-clipart-t-shirt-formal-wear-sleeve-clothing-semi-formal.png', 'title': 'Formal Wear'},
    {'image': 'https://th.bing.com/th/id/OIP.oCAuN29FJH4psRaPKpXypAHaJc?w=150&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'title': 'OverSized'},
    {'image': 'https://th.bing.com/th/id/OIP.bRG-gI92pHxvHV-C5CVVaQHaJ4?w=134&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'title': 'Vintage Tees'},
    {'image': 'https://th.bing.com/th/id/OIP.JLUsh7ieTnXnotnrkZDD8QHaEL?rs=1&pid=ImgDetMain','title':'Cool Collection'},];
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
    {
      'image': 'https://th.bing.com/th/id/OIP.Em-EWQrPNQjz0tjnA8zumAAAAA?w=161&h=203&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'name': 'Graphic Tee',
      'price': 29.99,
      'rating': 4.8,
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.13mz4On4Y20ZfW40nlnw2QHaJa?w=208&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'name': 'Sports Wear',
      'price': 29.99,
      'rating': 4.8,
    },
    {
      'image': 'https://cdn.shopify.com/s/files/1/0373/5929/products/SOLID-POLO-M-F-WHITE_1800x_28d7f337-612c-4d58-96af-e48661a269ec_800x.jpg?v=1571276660',
      'name': 'White polo',
      'price': 29.99,
      'rating': 4.8,
    },
    {
      'image': 'https://cdn.shopify.com/s/files/1/0373/5929/products/SOLID-POLO-M-F-WHITE_1800x_28d7f337-612c-4d58-96af-e48661a269ec_800x.jpg?v=1571276660',
      'name': 'White polo',
      'price': 29.99,
      'rating': 4.8,
    },
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
    {
      'image': 'https://th.bing.com/th/id/OIP.Em-EWQrPNQjz0tjnA8zumAAAAA?w=161&h=203&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'name': 'Graphic Tee',
      'price': 29.99,
      'rating': 4.8,
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.13mz4On4Y20ZfW40nlnw2QHaJa?w=208&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'name': 'Sports Wear',
      'price': 29.99,
      'rating': 4.8,
    },
    {
      'image': 'https://cdn.shopify.com/s/files/1/0373/5929/products/SOLID-POLO-M-F-WHITE_1800x_28d7f337-612c-4d58-96af-e48661a269ec_800x.jpg?v=1571276660',
      'name': 'White polo',
      'price': 29.99,
      'rating': 4.8,
    },
    {
      'image': 'https://cdn.shopify.com/s/files/1/0373/5929/products/SOLID-POLO-M-F-WHITE_1800x_28d7f337-612c-4d58-96af-e48661a269ec_800x.jpg?v=1571276660',
      'name': 'White polo',
      'price': 29.99,
      'rating': 4.8,
    },
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
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Column( // Changed from Expanded to Column
        children: [
          Expanded( // Move Expanded inside Column
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 15, right: 15),
                      child: Row(
                        children: [
                          Text(appname, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
                          Spacer(),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WishListScreen(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Icon(Icons.favorite_border_outlined, color: Colors.black, size: 30),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.white70,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                            height: 150,
                            child: PostSlider(posts: posts), // Removed Expanded here
                          ),
                          Container(
                            height: 200,
                            child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.75,
                              ),
                              itemCount: categories.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image(
                                          width: 50,
                                          height: 50,
                                          image: NetworkImage(categories[index]['image']!),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        categories[index]['title']!,
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          GridView.builder(
                            padding: EdgeInsets.all(8.0),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.55,
                              crossAxisSpacing: 8.0,
                              mainAxisSpacing: 8.0,
                            ),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: tShirts.length,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      tShirts[index]['image'],
                                      fit: BoxFit.cover,
                                      height: 200,
                                      width: double.infinity,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        tShirts[index]['name'],
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                      child: Text('\$${tShirts[index]['price']}', style: TextStyle(fontSize: 14)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.yellow),
                                          SizedBox(width: 3),
                                          Text('${tShirts[index]['rating']}', style: TextStyle(fontSize: 14)),
                                          Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: Icon(Icons.favorite_border_outlined, size: 28),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
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

