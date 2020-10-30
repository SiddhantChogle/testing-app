import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.all(0),
            height: 70,
            child: Image(
              image: NetworkImage(
                  "https://assets.stickpng.com/images/580b57fcd9996e24bc43c529.png"),
            ),
          ),
        ),
        body: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            height: 300.0,
            viewportFraction: 1,
            initialPage: 0,
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
          items: imageList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.black54, Colors.black54]),
                      image: DecorationImage(
                          image: NetworkImage(i), fit: BoxFit.cover),
                      color: Colors.amber),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

List<String> imageList = [
  "https://images.unsplash.com/photo-1436637706755-81d219b36e29?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
  "https://images.unsplash.com/photo-1603354091136-919edbededc9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1520361173050-639d54a4e1d7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1053&q=80",
  "https://images.unsplash.com/photo-1519939441942-90fa76e31229?ixlib=rb-1.2.1&auto=format&fit=crop&w=1053&q=80",
  "https://images.unsplash.com/photo-1520544827408-5ebf9dc358e7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1053&q=80",
];
