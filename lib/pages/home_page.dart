// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/utils/emotion_face.dart';

import '../utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ],),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Maurice",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      SizedBox(height: 8),
                      Text(
                        "20 Jan, 2023",
                        style: TextStyle(
                          color: Colors.blue[200]
                        ),
                      )
                    ],
                  ),
                      
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.notifications,
                    color: Colors.white,),
                  )
                ],
              ),
                      
              SizedBox(height: 25,),
                      
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12)
                ),
                      
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(Icons.search,
                    color: Colors.white,),
                      
                    SizedBox(width: 5,),
                      
                    Text("Search", 
                    style: TextStyle(
                      color: Colors.white
                    ),)
                  ],
                ),
              ),
                      
              SizedBox(height: 25,),
                      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                            "How do you feel?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            )
                          ),
                  
                  Icon(Icons.more_horiz,
                  color: Colors.white)
                ],
              ),
                      
              SizedBox(height: 25,),
                      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      EmotionFace(emotionFace: '😔',),
                      
                      SizedBox(height: 8,),
                      
                      Text("Bad",
                      style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                      
                  Column(
                    children: [
                      EmotionFace(emotionFace: '😊',),
                      
                      SizedBox(height: 8,),
                      
                      Text("Fine",
                      style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                      
                  Column(
                    children: [
                      EmotionFace(emotionFace: '😁',),
                      
                      SizedBox(height: 8,),
                      
                      Text("Well",
                      style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                      
                  Column(
                    children: [
                      EmotionFace(emotionFace: '🤩',),
                      
                      SizedBox(height: 8,),
                      
                      Text("Excellent",
                      style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ],
              ),
                ],
              ),
            ),

            SizedBox(height: 25,), 

            Expanded(
              child:
            Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Exercise",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child:
                      ListView(
                        children: [
                          ExerciseTile(
                            exerciseName: "Speaking Skills",
                            numberOfExercises: 16,
                            icon: Icons.favorite,
                          ),
                          ExerciseTile(
                            exerciseName: "Reading Skills",
                            numberOfExercises: 8,
                            icon: Icons.person,
                          ),
                          ExerciseTile(
                            exerciseName: "Writing Skills",
                            numberOfExercises: 20,
                            icon: Icons.star,
                          ),
                        ],
                      ))
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}