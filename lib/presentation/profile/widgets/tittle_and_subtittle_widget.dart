import 'package:flutter/material.dart';

class TittleAndSubtittle extends StatelessWidget {
  const TittleAndSubtittle({
    Key? key,
    required this.tittle,
    required this.subtittle,
  }) : super(key: key);
  final String tittle;
  final String subtittle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tittle,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          subtittle,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
