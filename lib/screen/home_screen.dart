
import 'package:connect_flutter_cpp/native_add.dart';
import 'package:connect_flutter_cpp/screen/get_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100.0,
              width: 250.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => GetData(),
                    ),
                  );
                },
                child: Text('1 + 2 == ${nativeAdd(1, 2)}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}