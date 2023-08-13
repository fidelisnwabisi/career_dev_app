import 'package:career_dev_app/utils/screen_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/bg.png",
            ),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft,
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            SizedBox(
              height: 160,
              child: ScreenTitle(
                text: "Career Development App",
              ),
            ),
          ],
        ),
      ),
    );
  }
}






















// import 'package:flutter/material.dart';

// import 'path_selection_screen.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//             'Career Development App'), // Set the title of the app bar
//       ),
//       body: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // Number of columns in the grid
//         ),
//         itemCount: careerPaths.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PathSelectionScreen(
//                     index: index,
//                     pathIndex: index,
//                     subTopicIndex: 0,
//                   ),
//                 ),
//               );
//             },
//             child: CareerPathItem(careerPath: careerPaths[index]),
//           );
//         },
//       ),
//     );
//   }
// }

// // Define a simple data model for career paths
// class CareerPath {
//   final String title;
//   final IconData icon;

//   CareerPath({required this.title, required this.icon});
// }

// // List of career paths
// List<CareerPath> careerPaths = [
//   CareerPath(title: 'Coding', icon: Icons.code),
//   CareerPath(title: 'Marketing', icon: Icons.mark_email_read_outlined),
//   CareerPath(title: 'Management', icon: Icons.business),
//   CareerPath(title: 'Writing', icon: Icons.edit),
// ];

// class CareerPathItem extends StatelessWidget {
//   final CareerPath careerPath;

//   CareerPathItem({required this.careerPath});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(careerPath.icon, size: 64),
//           const SizedBox(height: 8),
//           Text(careerPath.title, style: const TextStyle(fontSize: 16)),
//         ],
//       ),
//     );
//   }
// }
