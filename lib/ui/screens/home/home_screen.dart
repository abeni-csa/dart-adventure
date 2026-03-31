import 'package:fist_flutter/ui/screens/home/home_screen_image.dart';
import 'package:fist_flutter/ui/screens/home/horiz_movies.dart';
import 'package:fist_flutter/ui/screens/home/title_row.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 24),
              child: Align(
                alignment: Alignment.center,
                child: Text('Now Playing'),
              ),
            ),
            HomeScreenImage(),
            TitleRow(text: 'Trending', onMoreClicked: () {}),
            HorizontalMovies(movies: images),
            TitleRow(text: 'Popular', onMoreClicked: () {}),
          ],
        ),
      ),
    );
  }
}
