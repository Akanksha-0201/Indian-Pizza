import 'package:flutter/material.dart';
import 'package:myapp/Screens/Screen4.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final List<int> _counters = List<int>.generate(7, (int index) => 0); // Assuming there are 7 items
  List<bool> _isLiked = List<bool>.generate(7, (int index) => false); // Track liked state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu items'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              buildPizzaCard(
                context,
                'Chicken Pizza',
                'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
                'Rs.200',
                0,
              ),
              buildPizzaCard(
                context,
                'Cheese Pizza',
                'https://i.pinimg.com/236x/69/2a/55/692a5556a19c2b11665d049db2f45923.jpg',
                'Rs.100',
                1,
              ),
              buildPizzaCard(
                context,
                'Curryleaf Pizza',
                'https://i.pinimg.com/236x/61/45/dc/6145dc53ce61c82b071dd735232056ca.jpg',
                'Rs.110',
                2,
              ),
              buildPizzaCard(
                context,
                'Margherita Pizza',
                'https://i.pinimg.com/236x/69/2a/55/692a5556a19c2b11665d049db2f45923.jpg',
                'Rs.150',
                3,
              ),
              buildPizzaCard(
                context,
                'Tomato Pizza',
                'https://i.pinimg.com/236x/75/bb/36/75bb36f4f0a70e2a1faac5fc524f5629.jpg',
                'Rs.90',
                4,
              ),
              buildPizzaCard(
                context,
                'Egg Pizza',
                'https://i.pinimg.com/236x/f9/e4/94/f9e494d4b4c7b764c677ff0efc660276.jpg',
                'Rs.100',
                5,
              ),
              buildPizzaCard(
                context,
                'Veg Pizza',
                'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
                'Rs.120',
                6,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPizzaCard(BuildContext context, String title, String imageUrl, String price, int index) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        borderOnForeground: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: 300,
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
              leading: Text(title, style: TextStyle(fontSize: 20)),
              title: _isLiked[index]
                  ? IconButton(
                      icon: Icon(Icons.favorite, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          _isLiked[index] = !_isLiked[index];
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {
                        setState(() {
                          _isLiked[index] = !_isLiked[index];
                        });
                      },
                    ),
              trailing: Text(price, style: TextStyle(fontSize: 20, color: Colors.red)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (_counters[index] > 0) _counters[index]--;
                    });
                  },
                ),
                Text(
                  '${_counters[index]}',
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _counters[index]++;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen4()),
                  );
                },
                child: Text('Add to cart', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


