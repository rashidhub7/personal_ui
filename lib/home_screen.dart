import 'package:flutter/material.dart';

import 'emotion_widgets.dart';
import 'list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "Hi Jared",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "  14 April 2023",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue[300]),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Search",
                            style:
                            TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EmotionFace(
                          Emoji: '🙂',
                          label: 'smile',
                        ),
                        EmotionFace(
                          Emoji: '😉',
                          label: 'cool',
                        ),
                        EmotionFace(
                          Emoji: '🙁',
                          label: 'sad',
                        ),
                        EmotionFace(
                          Emoji: '😠',
                          label: 'angry',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ), Expanded(
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:  EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Excercise"),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      Tile(title: "Speaking Skills",subtitle:"16 Excercise",firstIcon:Icons.favorite ,lastIcon:Icons.more_horiz, shade: Colors.red ,), SizedBox(
                        height: 20,
                      ),
                      Tile(title: "Reading Skills",subtitle: "10 Excercise",firstIcon:Icons.favorite ,lastIcon:Icons.more_horiz, shade: Colors.green ,),SizedBox(
                        height: 20,
                      ),
                      Tile(title: "Writing Skills",subtitle: "10 Excercise",firstIcon:Icons.favorite ,lastIcon:Icons.more_horiz, shade: Colors.blue ,),
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
