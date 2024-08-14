// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final IconData icon;
  final String exerciseName;
  final int numberOfExercises;

  const ExerciseTile({super.key, required this.icon, required this.exerciseName, required this.numberOfExercises});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
                     child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Icon(
                                  icon,
                                color: Colors.white,),
                                ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(exerciseName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              ),
      
                              SizedBox(height: 5,),
                              Text("$numberOfExercises Exercises",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey
                              ),
                              ),
                            ],
                          ),
                            ],
                          ),
      
                          Icon(Icons.more_horiz)
                        ],)
                      ),
    );
  }
}