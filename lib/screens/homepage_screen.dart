import 'package:flutter/material.dart';

List<Map<String, dynamic>> category = [
  {'title': 'assets/unsplash_OYYE4g-I5ZQ.png', 'subtitle': 'Womens'},
  {'title': 'assets/Ellipse 4.png', 'subtitle': 'Womens'},
  {'title': 'assets/unsplash_GCDjllzoKLo.png', 'subtitle': 'Womens'},
  {'title': 'assets/unsplash_xPJYL0l5Ii8.png', 'subtitle': 'Womens'},
  {'title': 'assets/unsplash__3Q3tsJ01nc.png', 'subtitle': 'Womens'},
  {'title': 'assets/unsplash_OYYE4g-I5ZQ.png', 'subtitle': 'Womens'},
];

List<Map<String, dynamic>> productItem = [
  {
    'image': 'assets/image 15.png',
    'title': 'Women Printed Kurta',
    'subtitle': 'Neque porro quisquam est qui\ndolorem ipsum quia',
    'price': '1500',
    'ofprice': '2499 '
  },
  {
    'image': 'assets/image 16.png',
    'title': 'HRX by Hrithik Roshan',
    'subtitle': 'Neque porro quisquam est qui\ndolorem ipsum quia',
    'price': '2499',
    'ofprice': '4999 '
  }
];

List<Map<String, dynamic>> trendProduct = [
  {
    'image': 'assets/image 18 (2).png',
    'title': 'WC Schaffausen\n2021 pilots watch\nSIHH 2019 44 mm',
    'price': '650',
    'ofprice': '1300 '
  },
  {
    'image': 'assets/image 18.png',
    'title': 'Labbin White\nSnaekers\nFor men and female',
    'price': '650',
    'ofprice': '1300 '
  }
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
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
              SizedBox(
                height: 190,
                width: 350,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/Rectangle 48.png',
                    ),
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
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: const BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Shop Now ->',
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
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
                    height: 65,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color.fromRGBO(253, 110, 135, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              'Deal of the Day',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.alarm,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                Text(
                                  'Last Date 29/02/24',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 230, top: 15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                                side: const BorderSide(color: Colors.white)),
                            backgroundColor:
                                const Color.fromRGBO(253, 110, 135, 1)),
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'view all',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        )),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      productItem.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white54),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                child: Image.asset(productItem[index]['image']),
                              ),
                              Text(
                                productItem[index]['title'],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                productItem[index]['subtitle'],
                                style: const TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                productItem[index]['price'],
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(
                                    productItem[index]['ofprice'],
                                    style: const TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  const Text('50%Off'),
                                ],
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Image.asset('assets/Rectangle 56.png'),
                    const Column(children: [
                      Text(
                        'Special Offers 😱',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 38, top: 8),
                        child: Text(
                          'We make sure you get the\noffer you need at best prices',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Image.asset('assets/mac.png'),
              ),
              const SizedBox(
                height: 10,
              )
              // Stack(
              //   children: [
              //     Container(
              //       height: 155,
              //       width: 331,
              //       child: Row(
              //         children: [
              //           Image.asset('assets/Rectangle 55.png'),
              //           Padding(
              //             padding: const EdgeInsets.all(12.0),
              //             child: Column(
              //               children: [
              //                 const Text(
              //                   'Flat and Heels',
              //                   style: TextStyle(
              //                       fontSize: 17, fontWeight: FontWeight.w500),
              //                 ),
              //                 const Text('Stand a chance to get rewarded'),
              //                 ElevatedButton(
              //                     style: ElevatedButton.styleFrom(
              //                         shape: BeveledRectangleBorder(
              //                             borderRadius:
              //                                 BorderRadius.circular(3),
              //                             side: const BorderSide(
              //                                 color: Colors.white)),
              //                         backgroundColor: const Color.fromRGBO(
              //                             253, 110, 135, 1)),
              //                     onPressed: () {},
              //                     child: const Row(
              //                       mainAxisSize: MainAxisSize.min,
              //                       children: [
              //                         Text(
              //                           'view all',
              //                           style: TextStyle(color: Colors.white),
              //                         ),
              //                         Icon(
              //                           Icons.arrow_forward,
              //                           color: Colors.white,
              //                         )
              //                       ],
              //                     ))
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              ,
              Stack(
                children: [
                  Container(
                    height: 65,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color.fromRGBO(253, 110, 135, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 190),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              'Trending Products',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                Text(
                                  'Last Date 29/02/24',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 230, top: 15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                                side: const BorderSide(color: Colors.white)),
                            backgroundColor:
                                const Color.fromRGBO(253, 110, 135, 1)),
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'view all',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        )),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      productItem.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white54),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                child:
                                    Image.asset(trendProduct[index]['image']),
                              ),
                              Text(
                                trendProduct[index]['title'],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                trendProduct[index]['price'],
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(
                                    trendProduct[index]['ofprice'],
                                    style: const TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  const Text('50%Off'),
                                ],
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Image.asset('assets/Group 33769.png'),
              Image.asset('assets/Component 53.png')
            ]),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
            
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shop_2_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
