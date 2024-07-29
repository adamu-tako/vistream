import 'package:flutter/material.dart';

class SwipeableCard extends StatefulWidget {
  final String title;
  final String subTitle;
  final String image;

  const SwipeableCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  @override
  State<SwipeableCard> createState() => _SwipeableCardState();
}

class _SwipeableCardState extends State<SwipeableCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250.0,
              child: Image.asset(widget.image, fit: BoxFit.contain),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              maxLines: null,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.subTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}
