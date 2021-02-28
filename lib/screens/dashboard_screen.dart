import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payapp/widgets/userApi.dart';
import '../model/user.dart';

class DashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: FutureBuilder<User>(
            future: fetchUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final user = snapshot.data;
                return Text("Name: ${user.name}");
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
