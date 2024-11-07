import 'package:flutter/material.dart';
import 'package:work/drawer.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                num.toString(),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num++;
                    });
                    print(num);
                  },
                  child: const Text(
                    'button',
                    style: TextStyle(color: Colors.blueGrey),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
