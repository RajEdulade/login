import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
        elevation: 10,
        width: 200,
        child: Column(
          children: [DrawerHeader(child: Text("data")), ListTile()],
        ),
      ),
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 300,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Edulade Technologies",
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Login Page",
                    style: TextStyle(fontFamily: "Lora"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Username", helperText: "Enter username"),
                    onChanged: (String value) {
                      print("Entered username is : ${value}");
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password", helperText: "Enter Password"),
                    onChanged: (String value) {
                      print("Entered passwod is : ${value}");
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Login"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}