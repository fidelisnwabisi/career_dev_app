import 'package:career_dev_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Career Development App",
      home: HomeScreen(),
    );
  }
}




















// import 'package:flutter/material.dart';


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Career Dev App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MainScreen(),
//     );
//   }
// }

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Career Paths'),
//       ),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//         ),
//         itemCount: careerPaths.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PathSelectionScreen(index: index),
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

// class PathSelectionScreen extends StatelessWidget {
//   final int index;

//   PathSelectionScreen({required this.index});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(subTopics[index][0].title),
//       ),
//       body: ListView.builder(
//         itemCount: subTopics[index].length,
//         itemBuilder: (context, subIndex) {
//           return ListTile(
//             title: Text(subTopics[index][subIndex].title),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => SubTopicDetailScreen(
//                     subTopic: subTopics[index][subIndex],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class SubTopicDetailScreen extends StatelessWidget {
//   final SubTopic subTopic;

//   SubTopicDetailScreen({required this.subTopic});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(subTopic.title),
//       ),
//       body: Column(
//         children: [
//           Text(subTopic.description),
//           SizedBox(height: 16),
//           Text(subTopic.videoUrl),
//           SizedBox(height: 16),
//           ElevatedButton(
//             onPressed: () {
//               // Implement share functionality here
//             },
//             child: Text('Share'),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
//           SizedBox(height: 8),
//           Text(careerPath.title, style: TextStyle(fontSize: 16)),
//         ],
//       ),
//     );
//   }
// }

// class CareerPath {
//   final String title;
//   final IconData icon;

//   CareerPath({required this.title, required this.icon});
// }

// class SubTopic {
//   final String title;
//   final String description;
//   final String videoUrl;

//   SubTopic(
//       {required this.title, required this.description, required this.videoUrl});
// }

// List<CareerPath> careerPaths = [
//   CareerPath(title: 'Coding', icon: Icons.code),
//   CareerPath(title: 'Marketing', icon: Icons.mark_email_read_outlined),
//   CareerPath(title: 'Management', icon: Icons.business),
//   CareerPath(title: 'Writing', icon: Icons.edit),
// ];

// List<List<SubTopic>> subTopics = [
//   [
//     SubTopic(
//       title: 'Web Development',
//       description: 'Learn to build websites using HTML, CSS, and JavaScript.',
//       videoUrl: 'https://www.example.com/web_dev_video',
//     ),
//     SubTopic(
//       title: 'Mobile Development',
//       description: 'Create mobile apps for iOS and Android using Flutter.',
//       videoUrl: 'https://www.example.com/mobile_dev_video',
//     ),
//   ],
//   [
//     SubTopic(
//       title: 'Social Media Marketing',
//       description: 'Strategies for marketing on social media platforms.',
//       videoUrl: 'https://www.example.com/social_media_marketing_video',
//     ),
//   ],
//   // Add more sub-topics for other career paths
// ];
