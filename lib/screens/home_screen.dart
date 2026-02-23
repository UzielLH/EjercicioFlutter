import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final options = AppRoutes().options;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mi primer App en Flutter'),
          backgroundColor: const Color.fromARGB(255, 144, 153, 205),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          centerTitle: true
        ),
        body: ListView.separated(
          itemBuilder: (context, index){
            final option = options[index];
            return ListTileOption(title: option.title, icon: option.icon, route: option.route);
          },
          separatorBuilder: (context, index)=> Divider(),
          itemCount: options.length
        )
      );
  }
}

class ListTileOption extends StatelessWidget {
  final String title;
  final Icon icon;
  final String route;

  const ListTileOption({
    super.key,
    required this.title,
    required this.icon,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap:(){
        Navigator.pushNamed(context, '/$route');
      },
    );
  }
}