import 'package:flutter/material.dart';
import 'buttons/my_back_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final backButton = MyBackButton();
    final mediaQuery = MediaQuery.of(context);
    final height = mediaQuery.size.height;
    final width = mediaQuery.size.width;

    const String name = 'Иван Иванов';
    const String status = 'Разработчик FLutter';

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
            if (constraints.maxWidth < 600) {
              return Column(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: width,
                            height: height * 0.25,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                color: Colors.blueAccent,
                                height: height * 0.15,
                                width: width,
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: backButton,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 95,
                            left: width / 2 - 50,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                                color: Colors.tealAccent,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              status,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [Text('1.2k'), Text('Подписчики')],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [Text('356'), Text('Подписки')],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [Text('48'), Text('Посты')],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Редактировать'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Поделиться'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: width,
                            height: height * 0.3,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                color: Colors.blueAccent,
                                height: height * 0.15,
                                width: width,
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: backButton,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30,
                            left: 30,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                                color: Colors.tealAccent,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Column(
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              status,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),

                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [Text('1.2k'), Text('Подписчики')],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [Text('356'), Text('Подписки')],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [Text('48'), Text('Посты')],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Редактировать'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Поделиться'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
