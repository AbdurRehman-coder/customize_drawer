
import 'package:flutter/material.dart';
import 'package:medium_flutter_projects/widgets/custom_drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      drawer: CustomDrawerWidget(),
    );
  }
}
