import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actividad 3.4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 4, 110)),
      ),
      home: const MyHomePage(title: 'Utilización de widgets'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 111, 5, 5),
        title: Text(widget.title,  
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ), 
      ),
      body: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Container(
            padding: EdgeInsets.only(
              top: 75,
              left: 0,
              right: 0,
              bottom: 5,
            ),
            child: 
            Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  'https://isic.gob.mx/wp-content/uploads/2024/09/Taller-cine-documental.jpg',
                  width: 375,
                  height: 145,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Container(
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'Catálogo de películas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ),
          Column(
            children: [
              Text(
                "¡Bienvenidos!",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  left: 25,
                  right: 25,
                ),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet est sit amet massa congue hendrerit. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                  ),
              ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 121, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            child: Text(
              'Entrar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                )
              ),
            ),
            Container(
              color: Color.fromARGB(255, 111, 5, 5),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.settings, color: Colors.white, size: 37),
                  Icon(Icons.home, color: Colors.white, size: 37),
                  Icon(Icons.person, color: Colors.white, size: 37),
                ],
              ),
            )
        ],
      )
    );
  }
}
