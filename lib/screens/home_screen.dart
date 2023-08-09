import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career Paths'), // Set the title of the app bar
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
        ),
        itemCount: careerPaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print("object pressed");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => PathSelectionScreen(index: index),
              //   ),
              // );
            },
            child: CareerPathItem(careerPath: careerPaths[index]),
          );
        },
      ),
    );
  }
}

// Define a simple data model for career paths
class CareerPath {
  final String title;
  final IconData icon;

  CareerPath({required this.title, required this.icon});
}

// List of career paths
List<CareerPath> careerPaths = [
  CareerPath(title: 'Coding', icon: Icons.code),
  CareerPath(title: 'Marketing', icon: Icons.mark_email_read_outlined),
  CareerPath(title: 'Management', icon: Icons.business),
  CareerPath(title: 'Writing', icon: Icons.edit),
];

class CareerPathItem extends StatelessWidget {
  final CareerPath careerPath;

  CareerPathItem({required this.careerPath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(careerPath.icon, size: 64),
          SizedBox(height: 8),
          Text(careerPath.title, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
