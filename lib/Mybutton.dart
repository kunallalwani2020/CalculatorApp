import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const Mybutton({
    Key? key,
    required this.title,
    this.color = Colors.grey,
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Center(child: Text(title,style: TextStyle(fontSize: 20,color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}
