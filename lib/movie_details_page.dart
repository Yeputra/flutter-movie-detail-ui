import 'package:flutter/material.dart';
import 'package:movie_detail/actor_scroller.dart';
import 'package:movie_detail/models.dart';
import 'package:movie_detail/movie_details_header.dart';
import 'package:movie_detail/photo_scroller.dart';
import 'package:movie_detail/story_line.dart';

class MovieDetailsPage extends StatelessWidget {
  final Movie movie;

  MovieDetailsPage(this.movie);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new MovieDetailsHeader(movie),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Storyline(movie.storyline),
            ),
            new PhotoScroller(movie.photoUrls),
            new Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 50.0,
              ),
              child: new ActorScroller(movie.actors),
            ),
          ],
        ),
      ),
    );
  }
}
