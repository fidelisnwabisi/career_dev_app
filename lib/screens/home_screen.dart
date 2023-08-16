import 'package:career_dev_app/utils/screen_title.dart';
import 'package:flutter/material.dart';

import 'career_path.dart';

class Career {
  final String name;
  final IconData icon;
  final List<String> subtopics; // Add a list of subtopics

  Career({required this.name, required this.icon, required this.subtopics});
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Career> careers = [
      Career(
        name: 'Coding',
        icon: Icons.code,
        subtopics: ['JavaScript', 'Python', 'Java', 'Flutter'],
      ),
      Career(
        name: 'Marketing',
        icon: Icons.mark_email_read_outlined,
        subtopics: ['JavaScript2', 'Python2', 'Java2', 'Flutter2'],
      ),
      Career(
        name: 'Management',
        icon: Icons.work,
        subtopics: ['JavaScript3', 'Python3', 'Java3', 'Flutter3'],
      ),
      Career(
        name: 'Writing',
        icon: Icons.edit,
        subtopics: ['JavaScript4', 'Python4', 'Java4', 'Flutter4'],
      ),
    ];

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const SizedBox(
              height: 160,
              child: ScreenTitle(
                text: "Career Development App",
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Select Career Path",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: careers.length, // Use the length of the careers list
                itemBuilder: (BuildContext context, int index) {
                  // Create your grid item widgets here
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CareerPathScreen(
                            careerName: careers[index].name,
                            careerIcon: careers[index].icon,
                            // subtopics:
                            //     careers[index].subtopics, // Pass the subtopics
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      backgroundColor:
                          Colors.white, // Background color of the card
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(careers[index].icon, size: 48, color: Colors.blue),
                        const SizedBox(height: 8),
                        Text(
                          careers[index].name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
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
