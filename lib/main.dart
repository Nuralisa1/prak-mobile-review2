import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  List<String> titles = ['Bike', 'Boat', 'Bus'];
  //int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    //List<String> titles = ['Bike', 'Boat', 'Bus'];
    // final icons = [
    //   Icons.directions_bike,
    //   Icons.directions_boat,
    //   Icons.directions_bus,
    // ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (contex, nomor) {
          return Card(
              child: ListTile(
            leading: const CircleAvatar(
              backgroundImage:
                  NetworkImage("https://www.shutterstock.com/id/search/panda"),
            ),
            title: Text(titles[nomor]),
            onTap: () {
              setState(() {
                titles.removeAt(nomor);
              });
            },
          ));
        },
      ),

      //
      // ListView(
      //   children:const  [
      //     ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage("sun.png"),
      //         ),
      //       title: Text("sun"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.sunny),
      //       title: Text("sun"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ],
      //  )

      // GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //   ),
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       decoration: const BoxDecoration(
      //         color: Colors.red,
      //         image: DecorationImage(
      //           image: AssetImage("assets/gambar2.jpg"),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: Colors.blue,
      //       child: Image(image: AssetImage("assets/gambar1.jpg")),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: const Color.fromARGB(255, 23, 188, 75),
      //     ),
      //     Image.network("https://www.shutterstock.com/id/search/panda")
      //   ],
      // ),

      // ListView(
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: EdgeInsets.only(bottom: 10),
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: EdgeInsets.only(bottom: 10),
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: EdgeInsets.only(bottom: 10),
      //       color: Colors.green,
      //     ),
      //   ],
      // ),
    );
  }
}
