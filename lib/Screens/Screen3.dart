import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
      ),
      body: ListView(
        children: [
          buildPizzaItem(
            imageUrl:
                'https://i.pinimg.com/236x/75/bb/36/75bb36f4f0a70e2a1faac5fc524f5629.jpg',
            title: 'Tomato pizza',
            price: 'Rs.90',
            context: context,
          ),
          buildPizzaItem(
            imageUrl:
                'https://i.pinimg.com/236x/69/2a/55/692a5556a19c2b11665d049db2f45923.jpg',
            title: 'Cheese pizza',
            price: 'Rs.100',
            context: context,
          ),
          buildPizzaItem(
            imageUrl:
                'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
            title: 'chicken pizza',
            price: 'Rs.200',
            context: context,
          ),
          buildPizzaItem(
            imageUrl: 
            
                'https://i.pinimg.com/236x/69/2a/55/692a5556a19c2b11665d049db2f45923.jpg',
            title: 'Cheese pizza',
            price: 'Rs.100',
            context: context,
          ),
          buildPizzaItem(
            imageUrl:
            'https://i.pinimg.com/236x/61/45/dc/6145dc53ce61c82b071dd735232056ca.jpg',
              //  'https://i.pinimg.com/236x/69/2a/55/692a5556a19c2b11665d049db2f45923.jpg',
            title: 'Margherita pizza',
            price: 'Rs.150',
            context: context,
          ),
          buildPizzaItem(
            imageUrl:
                'https://i.pinimg.com/236x/69/2a/55/692a5556a19c2b11665d049db2f45923.jpg',
            title: 'Cheese pizza',
            price: 'Rs.100',
            context: context,
          ),
          // Add more pizza items as needed
        ],
      ),
    );
  }

  Widget buildPizzaItem({
    required String imageUrl,
    required String title,
    required String price,
    required BuildContext context,
  }) {
    return Container(
      width: double.infinity,
      height: 290,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Card(
        borderOnForeground: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: double.infinity,
              child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imageUrl,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
              title: Icon(Icons.star, color: Colors.black),
              trailing: Text(
                price,
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 350,
                      child: Card(
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: double.infinity,
                              child: Card(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    imageUrl,
                                    width: 200,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: Text(
                                title,
                                style: TextStyle(fontSize: 20),
                              ),
                              title: Icon(Icons.star, color: Colors.black),
                              trailing: Text(
                                price,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.red),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Order successfully completed!',
                                    ),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              },
                              child: Text(
                                'Buy now',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text(
                'Order now',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
