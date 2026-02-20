import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=>{
        },
        label: Text('Balcon'),
        icon: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: Text('Botones Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text ('Click me'),
              onPressed: ()=>{},
            ),
            // TextButton(onPressed: null, child: Text('Solo texto')),
            SizedBox(height: 10),
            TextButton(
              onPressed: ()=>{debugPrint('🚗Click!')}, 
              child: Text('Solo texto')),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: ()=>{}, 
              child: Text('Outline Button')),
            SizedBox(height: 10),
            IconButton(
              onPressed: ()=>{}, 
              icon: Icon(Icons.catching_pokemon)),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: ()=>{}, 
              label: Text('Elevated con icon'), 
              icon: Icon(Icons.baby_changing_station),),
            SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: ()=>{}, 
              label: Text('Outline Button con icon'), 
              icon: Icon(Icons.ac_unit_outlined),),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                elevation: 5.4
              ),
              onPressed: ()=>{Navigator.pop(context)},
              child: Text('Regresar')),
            SizedBox(height: 10),
            //Degradado en un botón
            Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(4),
              ),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                elevation: 5.4,
                shadowColor: Colors.transparent,
              ),
              onPressed: ()=>{Navigator.pop(context)},
              child: Text('Regresar')),
            ),
            SizedBox(height: 10),
            
            //Cambiar forma del botón
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              elevation: 5.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              ),
              onPressed: ()=>{Navigator.pop(context)},
              child: Text('Regresar')),
          ],
        ),
      ),
    );
  }
}