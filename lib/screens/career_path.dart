import 'package:career_dev_app/utils/screen_title.dart';
import 'package:flutter/material.dart';

class CareerPathScreen extends StatelessWidget {
  final String careerName;
  final IconData careerIcon;

  CareerPathScreen({required this.careerName, required this.careerIcon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(careerIcon), // Display career icon
            SizedBox(width: 10), // Add spacing between icon and title
            Text(careerName), // Display career name as the title
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          ScreenTitle(
            text: "Select a Course under $careerName",
            color: Colors.blue,
          ),
          Flexible(
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "data",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ] // Display career details here
            ),
      ),
    );
  }
}























// import 'package:flutter/material.dart';

// class PathSelectionScreen extends StatelessWidget {
//   final int index; // Index of the selected career path
//   final int pathIndex; // Index of the selected career path
//   final int subTopicIndex; // Index of the selected sub-topic

//   PathSelectionScreen(
//       {required this.index,
//       required this.pathIndex,
//       required this.subTopicIndex});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(subTopics[pathIndex][subTopicIndex]
//             .title), // Set the title of the app bar
//       ),
//       body: ListView.builder(
//         itemCount: subTopics[index].length,
//         itemBuilder: (context, subIndex) {
//           return ListTile(
//             title: Text(subTopics[index][subIndex].title),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(
//               //     builder: (context) => SubTopicDetailScreen(
//               //       subTopic: subTopics[index][subIndex],
//               //     ),
//               //   ),
//               // );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class SubTopic {
//   final String title;
//   final String description;
//   final String videoUrl;

//   SubTopic(
//       {required this.title, required this.description, required this.videoUrl});
// }

// // Define sub-topics for each career path
// List<List<SubTopic>> subTopics = [
//   // Coding sub-topics
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
//     // ... add more sub-topics
//   ],
//   // Marketing sub-topics
//   [
//     SubTopic(
//       title: 'Social Media Marketing',
//       description: 'Strategies for marketing on social media platforms.',
//       videoUrl: 'https://www.example.com/social_media_marketing_video',
//     ),
//     // ... add more sub-topics
//   ],
//   // Management sub-topics
//   [
//     // ... add management sub-topics
//   ],
//   // Writing sub-topics
//   [
//     // ... add writing sub-topics
//   ],
// ];
