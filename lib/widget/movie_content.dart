import 'package:flutter/material.dart';
import 'movie_poster.dart';

// 영화 포스터
class Poster extends StatelessWidget {
  const Poster({Key? key, required this.movieList}) : super(key: key);
  final List<String> movieList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: movieList.length,
      itemBuilder: (context, i) {
        return MoviePoster(imagePath: movieList[i]);
      },
      separatorBuilder: (context, i) => SizedBox(width: 3,),
    );
  }
}

class MovieContent extends StatelessWidget {
  const MovieContent({Key? key, required this.width, required this.movieList, required this.category}) : super(key: key);
  final double width;
  final String category;
  final List<String> movieList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(
            category,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w900
            ),
          ),
        ),
        SizedBox(height: 5,),
        Container(
          child: Poster(movieList: movieList),
          height: 200,
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}



