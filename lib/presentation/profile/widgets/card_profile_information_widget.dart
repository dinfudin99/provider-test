import 'package:flutter/material.dart';
import 'package:main_course_4/application/example_provider.dart';
import 'package:main_course_4/presentation/home/home_page.dart';
import 'package:provider/provider.dart';

class CardProfileInformationWidget extends StatelessWidget {
  CardProfileInformationWidget({
    Key? key,
  }) : super(key: key);
  String data = 'followed';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      height: 250,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 143, 143, 143),
            blurRadius: 10,
            spreadRadius: 0.8,
            blurStyle: BlurStyle.solid,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 160,
              child: Row(
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/poden.jpeg'),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(top: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Achmad Saifudin",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Politeknik Negeri Malang",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Jombang, 25 Mei 2000",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Flexible(
                              child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 223, 223, 223),
                            ),
                            height: 70,
                            margin: EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Article",
                                    ),
                                    Text(
                                      "89",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Followers"),
                                    Text(
                                      "587",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Rating"),
                                    Text(
                                      "9.8",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                      onPressed: (() {
                        print("Chat");
                      }),
                      child:
                          Text("Chat", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                        onPressed: (() {
                          data;
                          context
                              .read<ExampleProvider>()
                              .setDataString(data.toString());
                        }),
                        child: Text("Follow")),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
