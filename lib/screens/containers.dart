import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/widgets/appbar_widget.dart';

class ContainersScreen extends StatelessWidget {
  const ContainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget(title:'Containers Page'),
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
            Container(
              width: double.infinity,
              height: 250,
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.all(10),
              decoration:BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JA7wqx9iGMqN--pP2XrQllly1ExAQDOhKQ&s', 
              fit: BoxFit.cover,
              ),

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