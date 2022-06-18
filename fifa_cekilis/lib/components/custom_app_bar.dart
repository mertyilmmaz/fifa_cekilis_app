import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant/constant.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(56.0);
  final String title;

  CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      centerTitle: true,
      backgroundColor: CustomColors().AppBarColor,
    );
  }
}
