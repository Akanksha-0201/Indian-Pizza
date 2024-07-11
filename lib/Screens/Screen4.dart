import 'package:flutter/material.dart';

final List<Map<String, String>> items = [
  {
    'title': 'Chicken Pizza',
    'imageUrl': 'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
  },
  {
    'title': 'Tomato Pizza',
    'imageUrl': 'https://i.pinimg.com/236x/75/bb/36/75bb36f4f0a70e2a1faac5fc524f5629.jpg',
  },
  {
    'title': 'Cheese Pizza',
    'imageUrl': 'https://i.pinimg.com/236x/69/2a/55/692a5556a19c2b11665d049db2f45923.jpg',
  },
  // Add more items as needed
];

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  List<bool> _isLiked = List<bool>.generate(items.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return _buildListItem(context, index);
        },
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        contentPadding: EdgeInsets.all(8),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: AspectRatio(
            aspectRatio: 1.0, // Maintain aspect ratio of 1:1 (square)
            child: Image.network(
              items[index]['imageUrl']!,
              fit: BoxFit.cover, // Ensure the image covers the entire area
            ),
          ),
        ),
        title: Text(
          items[index]['title']!,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          // Handle tap on item
          print('Tapped on ${items[index]['title']}');
        },
        trailing: IconButton(
          icon: _isLiked[index]
              ? Icon(Icons.favorite, color: Colors.red)
              : Icon(Icons.favorite_border),
          onPressed: () {
            setState(() {
              _isLiked[index] = !_isLiked[index];
              if (_isLiked[index]) {
                _showFavoriteAddedMessage(items[index]['title']!);
              }
            });
          },
        ),
      ),
    );
  }

  void _showFavoriteAddedMessage(String title) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$title added to favorites'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Screen4(),
  ));
}
