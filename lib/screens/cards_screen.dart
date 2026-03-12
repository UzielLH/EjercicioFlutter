import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/widgets/appbar_widget.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Cards Page'),
      body: SingleChildScrollView(
        child: Column(children: [
          ChavosCard(), 
          CustomCard(), 
          ActividadCard(),
          FavoriteCard(),
          PlatoCard(),
          ]),
      ),
    );
  }
}

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2EstMHBUF31T77ZkIYHtLVb127zxXB8uU_w&s',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentGeometry.topRight,
                child: Container(
                  padding: EdgeInsets.only(right: 15, top: 10),
                  width: 50,
                  height: 50,
                  child: IconButton(
                    iconSize:30,
                    onPressed: ()=>{isFavorite= !isFavorite, setState(() {})},
                    icon: Icon(
                      isFavorite?Icons.favorite:
                      Icons.favorite_border),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Text('Chavos'),
      ],)
    );
  }
}


class PlatoCard extends StatefulWidget {
  const PlatoCard({
    super.key,
  });

  @override
  State<PlatoCard> createState() => _PlatoCardState();
}

class _PlatoCardState extends State<PlatoCard> {
  var cantidad = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIK0yRqnl2lnueGHH8qJUyNHHTLgSVGLF_HQ&s',
                  width: 100,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Hamburguesas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text('Pedir', style: TextStyle(color: Colors.white)),
                ),
                Spacer(),
                IconButton.filled(onPressed: () {
                  setState(() {
                    if (cantidad > 0) {
                      cantidad--;
                    }
                  });
                }, icon: Icon(Icons.remove)),
                SizedBox(width: 5),
                Text(
                  '$cantidad'.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                IconButton.filled(onPressed: () {
                  setState(() {
                    cantidad++;
                  });
                }, icon: Icon(Icons.add)),          
              ],
            ),
          ),
      ],)
    );
  }
}


class ChavosCard extends StatelessWidget {
  const ChavosCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Image.network(
              'https://images.unsplash.com/photo-1761839258045-6ef373ab82a7?w=300&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw4fHx8ZW58MHx8fHx8',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Chavos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Chavos en un programa de televisión realizado por el super comediante chespirito',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Image.network(
              'https://images.unsplash.com/photo-1772339164384-e4eba87f08c0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMnx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                'Ciudad',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Bella ciudad encontrada en los Estados Unidos',
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton.filled(onPressed: () {}, icon: Icon(Icons.favorite)),
                SizedBox(width: 5),
                IconButton.filled(onPressed: () {}, icon: Icon(Icons.share)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActividadCard extends StatelessWidget {
  const ActividadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(30)),
      ),
      child: Column(
        children: [
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Ciudad',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2EstMHBUF31T77ZkIYHtLVb127zxXB8uU_w&s',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Bella ciudad encontrada en los Estados Unidos donde se puede ver el parque principal',
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('donar')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
