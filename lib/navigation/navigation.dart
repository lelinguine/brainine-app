// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class MyNavigator extends StatelessWidget {
//   const MyNavigator({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => MyAppState(),
//       child: MaterialApp(
//         title: 'Navigator',
//         theme: ThemeData(
//           useMaterial3: true,
//           colorScheme: ColorScheme.fromSeed(
//               seedColor: const Color.fromARGB(255, 119, 131, 155)),
//         ),
//         home: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyAppState extends ChangeNotifier {
//   var current = "Navigator";
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     var appState = context.watch<MyAppState>();

//     return Scaffold(
//       body: Column(
//         children: [
//           const Text('A random AWESOME idea:'),
//           Text(appState.current),

//           // ↓ Add this.
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const MyTest()),
//               );
//             },
//             child: const Text('Next'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyTest extends StatelessWidget {
//   const MyTest({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const Text("Test"),
//           TextButton(
//               style: ButtonStyle(
//                 foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
//                 overlayColor: MaterialStateProperty.resolveWith<Color?>(
//                   (Set<MaterialState> states) {
//                     if (states.contains(MaterialState.hovered)) {
//                       return Colors.blue.withOpacity(0.04);
//                     }
//                     if (states.contains(MaterialState.focused) ||
//                         states.contains(MaterialState.pressed)) {
//                       return const Color.fromARGB(255, 243, 33, 33)
//                           .withOpacity(0.12);
//                     }
//                     return null; // Defer to the widget's default.
//                   },
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text('TextButton'))
//         ],
//       ),
//     );
//   }
// }
