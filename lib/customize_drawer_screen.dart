

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medium_flutter_projects/widgets/custom_drawer_widget.dart';

class CustomizeDrawerScreen extends StatelessWidget {
  const CustomizeDrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Customize Drawer'),
        ),
        drawer: CustomDrawerWidget(),
      ),
    );
  }
}
