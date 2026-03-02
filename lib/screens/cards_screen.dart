import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/widgets/appbar_widget.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title:'Cards Page'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChavosCard(),
            CustomCard(),
            ActividadCard()
          ],
        ),
      ),
    );
  }
}

class ChavosCard extends StatelessWidget {
  const ChavosCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30))
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              ),
            ),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Image.network('https://images.unsplash.com/photo-1761839258045-6ef373ab82a7?w=300&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw4fHx8ZW58MHx8fHx8', fit: BoxFit.cover),
          ),
          SizedBox(height: 10),
          Align(alignment: AlignmentGeometry.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only( left:10),
            child: Text('Chavos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          )),      
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Chavos en un programa de televisión realizado por el super comediante chespirito', textAlign: TextAlign.justify,),
          )
        ]
      )
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30))
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              ),
            ),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Image.network('https://images.unsplash.com/photo-1772339164384-e4eba87f08c0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMnx8fGVufDB8fHx8fA%3D%3D', fit: BoxFit.cover),
          ),
          SizedBox(height: 10),
          Align(alignment: AlignmentGeometry.centerRight,
          child: Padding(
            padding: const EdgeInsets.only( right:10),
            child: Text('Ciudad', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          )),      
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Bella ciudad encontrada en los Estados Unidos', textAlign: TextAlign.justify,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton.filled(onPressed: (){}, icon: Icon(Icons.favorite)),
                SizedBox(width: 5,),
                IconButton.filled(onPressed: (){}, icon: Icon(Icons.share)),
              ],
            ),
          ),
        ]
      )
    );
  }
}

class ActividadCard extends StatelessWidget {
  const ActividadCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30))
      ),
      child: Column(
        children: [
          Align(alignment: AlignmentGeometry.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only( left:10),
            child: Text('Ciudad', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          )),  
          
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              ),
            ),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2EstMHBUF31T77ZkIYHtLVb127zxXB8uU_w&s', fit: BoxFit.cover),
          ),
          SizedBox(height: 10),
    
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Bella ciudad encontrada en los Estados Unidos donde se puede ver el parque principal', textAlign: TextAlign.justify,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              ElevatedButton(onPressed: (){}, child: Text('donar'), )
              ],
            ),
          ),
        ]
      )
    );
  }
}