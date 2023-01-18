import 'package:flutter/material.dart';

class FeatureArticleBannerWidget extends StatelessWidget {
  const FeatureArticleBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 30,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 95, 86),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              "Featured Article",
              style: TextStyle(
                color: Color.fromARGB(255, 202, 202, 202),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Natural mood regulation low or ever absent in people with deppresion",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
