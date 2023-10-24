import 'package:flutter/material.dart';

List<Map<String, dynamic>> category = [
  {'title': 'assets/unsplash_OYYE4g-I5ZQ.png', 'subtitle': 'Womens'},
  {'title': 'assets/Ellipse 4.png', 'subtitle': 'Womens'},
  {'title': 'assets/unsplash_GCDjllzoKLo.png', 'subtitle': 'Womens'},
  {'title': 'assets/unsplash_xPJYL0l5Ii8.png', 'subtitle': 'Womens'},
  {'title': 'assets/unsplash__3Q3tsJ01nc.png', 'subtitle': 'Womens'},
  {'title': 'assets/unsplash_OYYE4g-I5ZQ.png', 'subtitle': 'Womens'},
];

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int currentPage = 0;
  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

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
      body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
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
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'All Featured',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
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
                    width: 50,
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
            ),

            SingleChildScrollView(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    category.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(category[index]['title']),
                              Text(category[index]['subtitle']),
                            ],
                          ),
                        )),
              ),
            ),
            Stack(
              children: [
                Image.asset('assets/Rectangle 48.png'),
                const Padding(
                  padding: EdgeInsets.only(left: 18, top: 28),
                  child: Text(
                    '50-40% OFF',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18, top: 62),
                  child: Text(
                    'Now in (product)\nAll colors',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 17),
                  child: TextButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      side: const BorderSide(
                                          color: Colors.white)))),
                      onPressed: () {},
                      child: const Text(
                        'Shop Now ->',
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:
                          (index == currentPage ? Colors.black : Colors.grey),
                    ),
                  );
                }),
              ),
            ),
            Stack(
              children: [
                Container(
                    height: 60,
                    width: 343,
                    color: Colors.amber,
                    child: const Column(
                      children: [
                        Text('Deal of the Day'),
                        Padding(
                          padding: EdgeInsets.only(top: 13),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.alarm),
                              Text('22h 55m 20s remaining')
                            ],
                          ),
                        )
                      ],
                    )),
                // const Text('Deal of the Day'),
                // Padding(
                //   padding: const EdgeInsets.only(top: 50),
                //   child: const Row(
                //     // mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Icon(Icons.alarm),
                //       Text('22h 55m 20s remaining')
                //     ],
                //   ),
                // )
              ],
            )
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: category.length,
            //   itemBuilder: (context, index) {
            //     return Row(
            //       children: [
            //         Column(
            //           children: [
            //             Image.asset(category[index]['title']),
            //           ],
            //         ),
            //       ],
            //     );
            //   },
            // )

            // ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     return SizedBox(
            //       height: 100,
            //       width: 100,
            //       child: Column(
            //         children: [
            //           Image.asset(category[index]['title']),
            //           // Text('data')
            //         ],
            //       ),
            //     );
            //   },
            // )

            // ListView.builder(
            //     itemCount: category.length,
            //     shrinkWrap: true,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Image.asset(category[index]['title']),
            //         subtitle: Text(category[index]['subtitle']),
            //       );
            //     })

            // SizedBox(
            //   height: 100,
            //   width: 300,
            //   child: GridView.count(
            //     scrollDirection: Axis.horizontal,
            //     crossAxisCount: 4,
            //     crossAxisSpacing: 10.0,
            //     shrinkWrap: true,
            //     children: [
            //       Image.asset('assets/unsplash_OYYE4g-I5ZQ.png'),
            //       Image.asset('assets/unsplash_OYYE4g-I5ZQ.png'),
            //       Image.asset('assets/unsplash_OYYE4g-I5ZQ.png'),
            //       Image.asset('assets/unsplash_OYYE4g-I5ZQ.png')
            //     ],
            //   ),
            // )

            // SingleChildScrollView(
            //   controller: ScrollController(),
            //   padding: const EdgeInsets.only(
            //       left: 20, right: 20, bottom: 20, top: 30),

            //   scrollDirection: Axis.vertical,
            //   // physics: NeverScrollableScrollPhysics(),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Column(children: [
            //         Image.asset('assets/unsplash_OYYE4g-I5ZQ.png'),
            //         const Text('Womens')
            //       ]),
            //       Column(
            //         children: [
            //           Image.asset('assets/unsplash_GCDjllzoKLo.png'),
            //           const Text('Kids')
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Image.asset('assets/unsplash__3Q3tsJ01nc.png'),
            //           const Text('data')
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Image.asset('assets/Ellipse 4.png'),
            //           const Text('Beauty')
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Image.asset('assets/unsplash_xPJYL0l5Ii8.png'),
            //           const Text('Mens')
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Image.asset('assets/unsplash_xPJYL0l5Ii8.png'),
            //           const Text('Mens')
            //         ],
            //       )
            //     ],
            //   ),
            // )
          ]),
    );
  }
}
