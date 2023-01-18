import 'package:flutter/material.dart';

class DiscoverListItem extends StatelessWidget {
  const DiscoverListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/seed/picsum/200/300'),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  flex: 3,
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nature",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Flexible(
                        child: Text(
                          "Let us plant more trees from this year",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
