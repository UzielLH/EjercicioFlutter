import 'package:flutter/material.dart';

class ContainersScreen extends StatelessWidget {
  const ContainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Contenedores'),
          backgroundColor: const Color.fromARGB(255, 144, 153, 205),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          centerTitle: true
        ),
        body: Column(
          children: [
            Container(
              color: Colors.amber,
              height: 200,
              width: double.infinity,
              child: Text('Box',
                textAlign: TextAlign.center, 
                style:TextStyle(
                fontSize: 45,
                color:Colors.white,
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                containerIcon(),
                containerIcon(),
                containerIcon(),
              ],
            ),
          ],
        ),
    );
  }
}

class containerIcon extends StatelessWidget {
  const containerIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Icon(Icons.bug_report, size: 50),
    );
  }
}