import 'package:flutter/material.dart';
import 'package:navigation/list_item.dart';
import 'package:navigation/shades_page.dart';
import 'shades_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Colors')),
        body: ListView.builder(
          itemCount: Colors.accents.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                navigateToShadePageStatic(
                  context,
                  Colors.accents.elementAt(index),
                );
              },
              child: ListItem(
                color: Colors.accents.elementAt(index),
              ),
            );
          },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToRGB(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // void navigateToShadePage(BuildContext context, MaterialAccentColor color,) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (BuildContext context) {
  //           return ShadesPage(color: color,);
  //         }
  //     ),
  //   );
  // }

  void navigateToShadePageStatic(BuildContext context, MaterialAccentColor color,) {
    Navigator.pushNamed(
      context,
      '/shades',
      arguments: color,
    );
  }

  void navigateToRGB(BuildContext context,) {
    Navigator.pushNamed(
      context,
      '/rgb',
    );
  }
}