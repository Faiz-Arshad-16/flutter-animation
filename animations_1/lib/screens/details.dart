import 'package:animations/shared/heart.dart';
import 'package:flutter/material.dart';
import '../models/trip.dart';
import 'package:ipsum/ipsum.dart';

Ipsum lip = Ipsum();
String words = lip.words(4);
String sentences = lip.sentences(1);
String paragraphs = lip.paragraphs(1);
class Details extends StatelessWidget {

  final Trip trip;
  const Details({super.key,  required this.trip });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Hero(
                    tag: "location-img-${trip.img}",
                    child: Image.asset(
                      'assets/${trip.img}',
                      height: 360,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  )
              ),
              SizedBox(height: 30),
              ListTile(
                  title: Text(
                      trip.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800]
                      )
                  ),
                  subtitle: Text(
                      '${trip.nights} night stay for only \$${trip.price}',
                      style: TextStyle(letterSpacing: 1)
                  ),
                  trailing: Heart()
              ),
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                      lip.sentences(3),
                      style: TextStyle(
                          color: Colors.grey[600],
                          height: 1.4
                      )
                  )
              ),
            ],
          ),
        )
    );
  }
}