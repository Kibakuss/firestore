import 'package:flutter/material.dart';
import 'package:learn_programming_flutter_firestore/domain/workout.dart';

void main() => runApp(MaxFitApp());

class MaxFitApp extends StatelessWidget {
  const MaxFitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MaxFitness",
      theme: ThemeData(
        primaryColor: Color.fromRGBO(50, 65, 85, 1),
        textTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Training"),
        leading: Icon(Icons.fitness_center),
      ),
      body: WorkoutsList(),
      backgroundColor: Theme.of(context).primaryColor,
    ));
  }
}

class WorkoutsList extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final workouts = <Workout>[
    Workout(
        title: "test1",
        author: "Max",
        description: "Test Workout",
        level: "beginner"),
    Workout(
        title: "test1",
        author: "Max1",
        description: "Test Workout1",
        level: "beginner"),
    Workout(
        title: "test2",
        author: "Max2",
        description: "Test Workout2",
        level: "intermediate"),
    Workout(
        title: "test3",
        author: "Max3",
        description: "Test Workout3",
        level: "advanced"),
    Workout(
        title: "test4",
        author: "Max4",
        description: "Test Workout4",
        level: "beginner"),
    Workout(
        title: "test5",
        author: "Max5",
        description: "Test Workout5",
        level: "intermediate"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(child: ListView.builder(itemBuilder: workouts.lenght));
  }
}
