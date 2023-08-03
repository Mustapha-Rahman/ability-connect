import 'package:flutter/material.dart';

class AACSoftwareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Augmentative and Alternative Communication'),backgroundColor: Color.fromARGB(255, 207, 158, 11),),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: 9, // Replace with the actual number of symbols/pictures
          itemBuilder: (context, index) {
            // Each symbol or picture is tappable to vocalize the associated phrase
            return InkWell(
              onTap: () {
                // Implement vocalizing the associated phrase
              },
              child: Container(
                color: Colors.grey[200],
                child: Center(
                  child: Text(
                    'Symbol ${index + 1}',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
