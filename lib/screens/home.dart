import 'package:flutter/material.dart';
import 'package:learn_programming_flutter_firestore/domain/workout.dart';

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
        level: "Beginner"),
    Workout(
        title: "test1",
        author: "Max1",
        description: "Test Workout1",
        level: "Intermediate"),
    Workout(
        title: "test2",
        author: "Max2",
        description: "Test Workout2",
        level: "Advanced"),
    Workout(
        title: "test3",
        author: "Max3",
        description: "Test Workout3",
        level: "Beginner"),
    Workout(
        title: "test4",
        author: "Max4",
        description: "Test Workout4",
        level: "Intermediate"),
    Workout(
        title: "test5",
        author: "Max5",
        description: "Test Workout5",
        level: "Advanced"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: workouts.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(50, 65, 85, 0.8),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12),
                      child: Icon(Icons.fitness_center,
                          color: Theme.of(context).textTheme.headline6!.color),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1, color: Colors.white24),
                        ),
                      ),
                    ),
                    title: Text(
                      workouts[index].title,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.headline6!.color,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Theme.of(context).textTheme.headline6!.color),
                    subtitle: subtitle(context, workouts[index]),
                  ),
                ),
              );
            }));
  }
}

Widget subtitle(BuildContext context, Workout workout) {
  var color = Colors.grey;
  double indicatorLevel = 0;
  switch (workout.level) {
    case "Beginner":
      color = Colors.green;
      indicatorLevel = 0.33;
      break;
    case "Intermediate":
      color = Colors.yellow;
      indicatorLevel = 0.66;
      break;
    case "Advanced":
      color = Colors.red;
      indicatorLevel = 1;
      break;
  }
  return Row(
    children: <Widget>[
      Expanded(
          flex: 1,
          child: LinearProgressIndicator(
            backgroundColor: Theme.of(context).textTheme.headline6!.color,
            value: indicatorLevel,
            valueColor: AlwaysStoppedAnimation(color),
          )),
      SizedBox(width: 10),
      Expanded(
          flex: 3,
          child: Text(workout.level,
              style: TextStyle(
                color: Theme.of(context).textTheme.headline6!.color,
              ))),
    ],
  );
}
