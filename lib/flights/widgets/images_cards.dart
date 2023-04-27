import 'package:flutter/material.dart';
import 'package:project_pfe/flights/models/places.dart';


import 'image_card.dart';


class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
 List<Place> places = [
  Place(place: 'Austia', image: 'lib/images/1.jpg', days: 7,isFav: true),
   Place(place: 'India', image: 'lib/images/2.jpg', days: 12,isFav: false),
   Place(place: 'Bali', image: 'lib/images/3.jpg', days: 3,isFav: true),
   Place(place: 'Austia', image: 'lib/images/1.jpg', days: 7,isFav: false),
   Place(place: 'India', image: 'lib/images/2.jpg', days: 12,isFav: true),
   Place(place: 'Bali', image: 'lib/images/3.jpg', days: 3,isFav: true),

 ];
  @override
  Widget build(BuildContext context) {
    return Container(
  
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (_, index) {
              return ImageCard(
                place: places[index],
                name: places[index].place,
                days: places[index].days,
                picture: places[index].image,
              );
            }));
  }
}


