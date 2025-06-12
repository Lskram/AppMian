import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://staticg.sportskeeda.com/editor/2024/05/5dbc5-17159017650761-1920.jpg?w=640",
          width: 150,
          height: 150,
        ),
        SizedBox(height: 10),
        Image.asset(
          "assets/images/pic1.png", 
          width: 150, 
          height: 150
        ),
      ],
    );
  }
}

class Homee extends StatelessWidget {
  const Homee({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://static.wikia.nocookie.net/jujutsu-kaisen/images/5/5a/Satoru_Gojo_arrives_on_the_battlefield_%28Anime%29.png/revision/latest?cb=20210226205256",
          width: 150,
          height: 150,
        ),
      ],
    );
  }
}