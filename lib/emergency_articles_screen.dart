import 'package:flutter/material.dart';

class EmergencyArticlesScreen extends StatefulWidget {
  @override
  State<EmergencyArticlesScreen> createState() => _EmergencyArticlesScreenState();
}



class _EmergencyArticlesScreenState extends State<EmergencyArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Disaster and Emergency Preparedness Articles'),backgroundColor: Color.fromARGB(255, 207, 158, 11),),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // List of articles with relevant titles and brief descriptions
            ListTile(
              title: Text('Article 1'),
              subtitle: Text('Brief description of Article 1'),
              onTap: () {
                // Implement navigating to the full article
              },
            ),
            ListTile(
              title: Text('Article 2'),
              subtitle: Text('Brief description of Article 2'),
              onTap: () {
                // Implement navigating to the full article
              },
            ),
            // Add more list items for additional articles
          ],
        ),
      ),
    );
  }
}
