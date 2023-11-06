import 'package:flutter/material.dart';
import 'package:planty_homes/screens/home/widget/choice.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 0,
      borderOnForeground: false,
      shadowColor: Colors.white,
      semanticContainer: false,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                width: size.width * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(choice.image), fit: BoxFit.fill),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              choice.title,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
