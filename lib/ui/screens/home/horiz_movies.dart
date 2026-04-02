import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HorizontalMovies extends StatelessWidget {
  final List<String> movies;

  const HorizontalMovies({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 142,
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: SizedBox(
              width: 100,
              height: 142,
              child: CachedNetworkImage(
                imageUrl: movies[index],
                alignment: Alignment.topCenter,
                fit: BoxFit.fitHeight,
                height: 100,
                width: 142,
              ),
            ),
          );
        },
      ),
    );
  }
}
