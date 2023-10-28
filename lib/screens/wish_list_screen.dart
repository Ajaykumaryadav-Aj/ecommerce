import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: Image.asset('assets/logoipsum-255 1.png'),
          centerTitle: true,
          actions: [Image.asset('assets/2289_SkVNQSBGQU1PIDEwMjgtMTE2 1.png')],
          // leading: const Drawer(child: Icon(Icons.sort)),
        ),
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(14.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(
                        Icons.keyboard_voice,
                      ),
                      hintText: 'Search any Product',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      contentPadding: EdgeInsets.fromLTRB(5, 10, 30, 10),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '52,082+ Items',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      SizedBox(width: 100),
                      Card(
                        shape: BeveledRectangleBorder(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text('Sort'), Icon(Icons.swap_vert)],
                        ),
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      Card(
                        shape: BeveledRectangleBorder(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text('Filter'), Icon(Icons.filter_alt)],
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ));
  }
}
