import 'package:flutter/material.dart';
import 'package:flutter_widgets/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(menuOptions[index].nombre),
                leading: Icon(menuOptions[index].icon),
                onTap: () {
                  // final game = menuOptions[index].nombre;
                  // print(game);

                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (__, _) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
