import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/widgets/appbar_widget.dart';

class RowsColumnsScreen extends StatelessWidget {
  const RowsColumnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget(title:'Rows and Columns Page'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              ElevatedButton(onPressed: ()=>{}, child: Text('Button 1')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: ()=>{}, child: Text('Button 2')),
                  ElevatedButton(onPressed: ()=>{}, child: Text('Button 2')),
                  ElevatedButton(onPressed: ()=>{}, child: Text('Button 2')),
                ],
              ),
              ElevatedButton(onPressed: ()=>{}, child: Text('Button 3')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  IconButton(onPressed: ()=>{}, icon: Icon(Icons.accessible_forward)),
                  IconButton(onPressed: ()=>{}, icon: Icon(Icons.not_accessible)),
                  IconButton(onPressed: ()=>{}, icon: Icon(Icons.accessible)),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  IconButton(onPressed: ()=>{}, icon: Icon(Icons.accessible_forward)),
                  IconButton(onPressed: ()=>{}, icon: Icon(Icons.not_accessible)),
                  IconButton(onPressed: ()=>{}, icon: Icon(Icons.accessible)),
                ]
              ),
            ],
          ),
        ),
    );
    
  }
}