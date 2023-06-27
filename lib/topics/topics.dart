import 'package:flutter/material.dart';
import 'package:quizapp/services/firestore.dart';
import 'package:quizapp/services/models.dart';
import 'package:quizapp/shared/error.dart';
import 'package:quizapp/shared/loading.dart';
import 'package:quizapp/shared/shared.dart';
import 'package:quizapp/topics/drawer.dart';
import 'package:quizapp/topics/topic_item.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Topic>>(
        future: FirestoreService().getTopics(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen();
          } else if (snapshot.hasError) {
            return const ErrorMessage();
          } else if (snapshot.hasData) {
            var topics = snapshot.data!;

            return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.deepPurple,
                  title: const Text('Topics'),
                ),
                body: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20.0),
                  crossAxisSpacing: 10.0,
                  crossAxisCount: 2,
                  children:
                      topics.map((topic) => TopicItem(topic: topic)).toList(),
                ),
                bottomNavigationBar: const BottomNavBar(),
                drawer: TopicDrawer(topics: topics));
          } else {
            return const Text('No Topics found in Firestore. Check database');
          }
        });
  }
}
