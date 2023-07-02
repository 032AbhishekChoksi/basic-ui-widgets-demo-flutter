import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic UI Widgets Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic UI Widgets Demo')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 300,
                            height: 400,
                            color: Colors.blue.shade400,
                            margin: const EdgeInsets.only(right: 10),
                          ),
                          Container(
                            width: 300,
                            height: 400,
                            color: Colors.blue.shade300,
                            margin: const EdgeInsets.only(right: 10),
                          ),
                          Container(
                            width: 300,
                            height: 400,
                            color: Colors.blue.shade200,
                            margin: const EdgeInsets.only(right: 10),
                          ),
                          Container(
                            width: 300,
                            height: 400,
                            color: Colors.blue.shade100,
                            margin: const EdgeInsets.only(right: 10),
                          ),
                          Container(
                            width: 300,
                            height: 400,
                            color: Colors.blue.shade50,
                            margin: const EdgeInsets.only(right: 10),
                          ),
                        ]),
                  ),
                ),
                Container(
                  width: 400,
                  height: 300,
                  color: Colors.blue.shade50,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          print('Click On Press');
                        },
                        child: const Text('Text Button'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('Click On Press');
                        },
                        onLongPress: () {
                          print('Click On Long Press');
                        },
                        child: const Text('Elevated Button'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text('Outlined Button'),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  height: 300,
                  color: Colors.blue.shade100,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account?\t",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20,
                        ),
                        children: const [
                          TextSpan(
                            text: 'Create',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 300,
                  color: Colors.blue.shade200,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Image.asset('assets/images/flutter_logo.png',
                      fit: BoxFit.fitWidth, alignment: Alignment.center),
                ),
                Container(
                  width: 400,
                  height: 300,
                  color: Colors.blue.shade300,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Image.network(
                      'https://www.gstatic.com/webp/gallery/1.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center),
                ),
                Container(
                  width: 400,
                  height: 300,
                  color: Colors.blue.shade400,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        print('InckWell onTap');
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
