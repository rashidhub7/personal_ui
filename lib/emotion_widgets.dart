import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  final String Emoji;
  final String label;

  EmotionFace({Key? key, required this.Emoji, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blue[300],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(Emoji,
              style: TextStyle(fontSize: 22, color: Colors.white),)),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }
}
