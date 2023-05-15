import 'package:event_finder/models/storymodel.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  int index;
  DetailPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(stories[index].eventImage),
                fit: BoxFit.cover,
              ),
            ),
            height: 420,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(stories[index].eventImage),
                  radius: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    stories[index].eventTitle,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 12),
            child: Text(
              " ${stories[index].discription.toString()}  ",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.grey,
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.grey, width: 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        Icons.bookmark,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: SizedBox(
                    height: 70,
                    width: 230,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.grey,
                        backgroundColor: Colors.black,
                        side: const BorderSide(color: Colors.grey, width: 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: () {},
                      child:  const Text(" Join now " , style: TextStyle(fontSize: 20), ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
