import 'package:flutter/material.dart';
import 'package:minahprojectdicoding/screens/main_screen.dart';
import 'package:provider/provider.dart';
import '../provider/done_tourism_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  MainScreen(),
      ),
    );
  }
}
