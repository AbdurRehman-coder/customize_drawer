import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medium_flutter_projects/favourite_screen.dart';
import 'package:medium_flutter_projects/home_screen.dart';
import 'package:medium_flutter_projects/user_profile_screen.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Header of the Drawer
            Material(
              color: Colors.blueAccent,
              child: InkWell(
                onTap: (){
                  /// Close Navigation drawer before
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile()),);
                },
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top,
                      bottom: 24
                  ),
                  child: Column(
                    children: const[
                      CircleAvatar(
                        radius: 52,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHNtaWx5JTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
                          // 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c21pbHklMjBmYWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
                        ),
                      ),
                      SizedBox(height: 12,),
                      Text('Sophia',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white
                        ),),
                      const Text('@sophia.com',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white
                        ),),

                    ],
                  ),
                ),
              ),
            ),

            /// Header Menu items
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text('Home'),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text('Favourites'),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FavouriteScreen()),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.workspaces),
                  title: Text('Workflow'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.update),
                  title: Text('Updates'),
                  onTap: (){},
                ),
                const Divider(color: Colors.black45,),
                ListTile(
                  leading: Icon(Icons.account_tree_outlined),
                  title: Text('Plugins'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.notifications_outlined),
                  title: Text('Notifications'),
                  onTap: (){},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
