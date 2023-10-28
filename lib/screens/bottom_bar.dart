// import 'package:flutter/material.dart';

// class BottomBarScreen extends StatefulWidget {
//   const BottomBarScreen({super.key, required this.title});
//   final String title;

//   @override
//   State<BottomBarScreen> createState() =>  _BottomBarScreenState();
// }

// class _BottomBarScreenState extends State<BottomBarScreen> {
//   int _cIndex = 0;
  
 
//   @override
//   void initState() {
//     setState(() {
//       _cIndex = index;
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _cIndex,
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
//               title: Text('Home')),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.power, color: Color.fromARGB(255, 0, 0, 0)),
//               title: Text('Power'))
//         ],
//         onTap: (index) {
//           _incrementTab(index);
//         },
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _incrementTab(1);
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
