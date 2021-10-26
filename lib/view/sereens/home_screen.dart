import 'package:flutter/material.dart';
import 'package:github_gallery/view/widgets/user_grid.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final _inputController = TextEditingController();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Github Gallery',
//         ),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 0.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 20.0),
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).accentColor.withAlpha(50),
//                       borderRadius: BorderRadius.circular(30.0),
//                     ),
//                     child: TextField(
//                         style: const TextStyle(
//                           fontSize: 15.0,
//                           color: Colors.grey,
//                         ),
//                         controller: _inputController,
//                         onChanged: (value) {},
//                         onSubmitted: (value) {
//                           if (value.isNotEmpty) {
//                             // TODO handle it
//                             // Provider.of<UserViewModel>(context, listen: false)
//                             //     .setSelectedMedia(null);
//                             // Provider.of<MediaViewModel>(context, listen: false)
//                             //     .fetchMediaData(value);
//                           }
//                         },
//                         decoration: const InputDecoration(
//                           border: InputBorder.none,
//                           enabledBorder: InputBorder.none,
//                           focusedBorder: InputBorder.none,
//                           prefixIcon: Icon(
//                             Icons.search,
//                             color: Colors.grey,
//                           ),
//                           hintText: 'Enter Artist Name',
//                         )),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           UserGrid(),
//         ],
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: UserGrid(),
    );
  }
}
