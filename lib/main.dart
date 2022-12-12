import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "images/myimage.JPG",
                ),
                fit: BoxFit.cover,
                opacity: 0.2)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/myimage.JPG"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Gajanand Konade",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "fonting1"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(color: Colors.white54, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 40,
                height: 40,
                child: Divider(),
              ),
              const ListTile(
                leading: Icon(Icons.school_rounded),
                title: Text("Diploma"),
              ),
              const ListTile(
                leading: Icon(Icons.work),
                title: Text("Student"),
              ),
              // ignore: prefer_const_constructors
              ListTile(
                leading: const Icon(Icons.location_city),
                title: const Text("Solapur, 413002."),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text("Konadegangadhar2@gamil.com"),
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text("+91 7841872128"),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Hi I am learning flutter from last six months,I worked on many projects , I shared github link to you u see the projects, I have also knowledge About Riverpod state Management.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Github Link"),
                  Icon(Icons.link),
                  Text("=")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
