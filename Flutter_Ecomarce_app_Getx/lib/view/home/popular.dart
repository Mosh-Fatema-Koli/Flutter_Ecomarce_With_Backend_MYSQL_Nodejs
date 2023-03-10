import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child:   Column(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),


                  ),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 100,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Potato"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text("Price: 500 |"),
                              Text("KG"),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ),

              ],
            ),
          ),
        ),
      ),
    ) ;
  }
}