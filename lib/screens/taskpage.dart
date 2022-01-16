// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:what_todo/screens/widgets.dart';

class Taskpage extends StatefulWidget {
  const Taskpage({Key? key}) : super(key: key);

  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24.0,
                      bottom: 12.0,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Image(
                              image: AssetImage("assets/images/back_arrow_icon.png"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Task Title",
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF211551),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Description for the task...",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                      ),
                    ),
                  ),
                  TodoWidget(
                    text: "Create your first Taksk",
                    isDone: true,
                  ),
                  TodoWidget(
                    text: "Create your fist todo as well",
                    isDone: true,
                  ),
                  TodoWidget(
                    text: "Just another todo",
                    isDone: false,
                  ),
                  TodoWidget(
                    isDone: false,
                  ),
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 24.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Taskpage()
                      ),
                    );
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF23577),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/delete_icon.png"),
                    ),
                  ),
                ),
              ),
            ],
          )
        )
      ),
    );
  }
}
