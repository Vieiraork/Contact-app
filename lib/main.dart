import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const fontSize = 18.0;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.redAccent[100],
                child: const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white10,
                  backgroundImage: AssetImage('lib/assets/Naruto.png'),
                ),
              ),
              const Text(
                'Naruto Uzumaki',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              Text(
                'BEST HOKAGE',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 20,
                  color: Colors.red[100],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                height: 35,
                indent: 40,
                endIndent: 40,
                color: Colors.red[100],
              ),
              const Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 38,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.red,
                  ),
                  title: Text(
                    '+350 66 19919-1598',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSize,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                ),
              ),
              const Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  horizontal: 38,
                  vertical: 12,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.alternate_email,
                    color: Colors.red,
                  ),
                  title: Text(
                    'uzumaki_naruto@konoha.fr',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSize,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
