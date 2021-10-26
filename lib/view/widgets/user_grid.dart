import 'dart:math';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:github_gallery/di/app_module.dart';
import 'package:github_gallery/view_model/user_view_mode.dart';

class UserGrid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserGridState();
}

class _UserGridState extends State<UserGrid> with AfterLayoutMixin {
  final userViewModel = getIt<UserViewModel>();
  List<Widget> users = [];
  List<StaggeredTile> userPhotoTiles = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: users.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ListView(
                children: users,
              ),
            ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    userViewModel.fetchUserList();

    userViewModel.users.listen((event) {
      event.forEach((element) {
        users.add(UserPhotoTile(
          element.avatar_url ??
              'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png',
          element.login ?? 'Jone Doe',
        ));
      });

      int count = Random().nextInt(4);
      userPhotoTiles.add(StaggeredTile.count(count, count.toDouble()));
      setState(() {});
    });
  }
}

class UserPhotoTile extends StatelessWidget {
  const UserPhotoTile(this.imageUrl, this.name);
  final String imageUrl;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
          child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        image: DecorationImage(
                            image: NetworkImage(imageUrl), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        name,
                      ),
                    ],
                  ))
                ],
              ))),
    );
  }
}
