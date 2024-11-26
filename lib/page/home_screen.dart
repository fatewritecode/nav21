import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:mynavigator2/page/router.gr.dart';
// нужно для генерации
@RoutePage()
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> namecontacs = [
    'Dima',
    'Konor',
    'Rex',
    'Boss',
    'Robert',
    'Grem',
    'Tom'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ), const Text(
              "Нввигатор 2.0",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow,
                  decoration: TextDecoration.none),
            ),
            const Text(
              "Контакты",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow,
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: 500,
              width: double.maxFinite,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: namecontacs.length,
                  itemBuilder: (BuildContext context, int index) {
                    int color = (index % 2 != 0) ? 300 : 500;
                    Color color2 =
                        (index % 2 != 0) ? Colors.black : Colors.white;
                    int numer = index + 1;
                    return Container(
                      height: 50,
                      color: Colors.indigo[color],
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          context.router.push(ProfileRoute(userName: namecontacs[index]));
                        },
                        child: Text('${numer} ${namecontacs[index]}',
                            style: TextStyle(fontSize: 25, color: color2)),
                      )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
