import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// нужно для генерации
@RoutePage()
class ProfileScreen extends StatelessWidget {
  final String userName;
  ProfileScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            userName,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 30,
                color: Colors.yellow,
                decoration: TextDecoration.none),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "$userName, является очень хорошим студентом, его уважают все педагоги и одногрупники",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 25,
                color: Colors.yellow,
                decoration: TextDecoration.none),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                context.router.back();
              },
              child: const Text(
                "назад",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
