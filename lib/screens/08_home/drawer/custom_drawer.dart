import 'package:flutter/material.dart';
import 'package:shoxy/core/common/common_var.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: kMainColor);
  }
}
