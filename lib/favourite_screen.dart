
import 'package:flutter/material.dart';
import 'package:medium_flutter_projects/widgets/custom_drawer_widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite'),
        backgroundColor: Colors.amber,
      ),
      drawer: CustomDrawerWidget(),
    );
  }
}