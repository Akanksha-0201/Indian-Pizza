import 'package:flutter/material.dart';

class PizzaDetailScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double rating;
  final String quality;
  final List<String> ingredients;

  PizzaDetailScreen({
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.quality,
    required this.ingredients,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                imageUrl,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Rating: $rating',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Quality: $quality',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
            Text(
              'Ingredients:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            for (var ingredient in ingredients)
              Text(
                '- $ingredient',
                style: TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
