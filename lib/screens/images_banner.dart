import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/widgets/appbar_widget.dart';

class ImagesBanner extends StatelessWidget {
  const ImagesBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title:'Images Banner Page'),
      body: Column(children: [
        Container(
              width: double.infinity,
              height: 250,
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.all(10),
              decoration:BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVo83aBFr2aQh9qGWzlMTDsF-zV5vbetF-fQ&s', 
              fit: BoxFit.cover,
              ),
        ),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                containerIcon(icon: Icons.restaurant, nombre: 'Comida'),
                containerIcon(icon: Icons.local_pizza, nombre: 'Pizza'),
                containerIcon(icon: Icons.cake, nombre: 'Postre'),
              ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
                containerIcon(icon: Icons.coffee, nombre: 'Bebidas'),
                containerIcon(icon: Icons.icecream, nombre: 'Helado'),
                containerIcon(icon: Icons.fastfood, nombre: 'Snacks'),
        ],
        )
      ],
      ),
    );
  }
}


class containerIcon extends StatelessWidget {
  final IconData icon;
  final String nombre;
  
  const containerIcon({
    super.key,
    required this.icon,
    required this.nombre,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50),
          Text(nombre)
        ],
      )
    );
  }
}