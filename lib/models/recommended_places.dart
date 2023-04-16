class  RecommandedPlaceModel{

  final String image;
   final double rating;
   final String location;
   final String type;
   final  bool isFav;
   final int price;
   final int bedrooms;
   final int bathrooms;
   final double surface;
   
   RecommandedPlaceModel({
    required this.image,
    required this.location,
    required this.rating,
    required this.type,
    required this.isFav,
    required this.price,
    required this.bathrooms,
    required this.bedrooms,
    required this.surface
   });

}
List<RecommandedPlaceModel> recommendedplaces =[
RecommandedPlaceModel(image: 'lib/images/home4.jpeg',
location: "Noukchott",
rating: 4.4,
type: "House",
isFav: true,
price: 1222,
bathrooms: 4,
bedrooms: 2,
surface: 1.45
),
RecommandedPlaceModel(image: 'lib/images/home5.jpeg',
location: "Noudibou",
rating: 4.4,
type: "Appartement",
isFav: false,
price: 1222,
bathrooms: 4,
bedrooms: 2,
surface: 1.45
),
RecommandedPlaceModel(image: 'lib/images/home6.png',
location: "Noukchot",
rating: 4.4,
type: "Villa",
isFav: true,
price: 1222,
bathrooms: 4,
bedrooms: 2,
surface: 1.45
),
RecommandedPlaceModel(image: 'lib/images/home1.jpg',
location: "Magtaa lhjar",
rating: 4.4,
type: "House",
isFav: true,
price: 1222,
bathrooms: 4,
bedrooms: 2,
surface: 1.45
),
RecommandedPlaceModel(image: 'lib/images/home2.jpg',
location: "Magtaa lhjar",
rating: 4.4,
type: "House",
isFav: true,
price: 1222,
bathrooms: 4,
bedrooms: 2,
surface: 1.45
),
RecommandedPlaceModel(image: 'lib/images/home3.jpg',
location: "Magtaa lhjar",
rating: 4.4,
type: "House",
isFav: true,
price: 1222,
bathrooms: 4,
bedrooms: 2,
surface: 1.45
),
RecommandedPlaceModel(image: 'lib/images/home6.png',
location: "Magtaa lhjar",
rating: 4.4,
type: "House",
isFav: true,
price: 1222,
bathrooms: 4,
bedrooms: 2,
surface: 1.45
),
RecommandedPlaceModel(image: 'lib/images/home7.jpeg',
location: "Magtaa lhjar",
rating: 4.4,
type: "House",
isFav: true,
price: 1222,
bathrooms: 4,
bedrooms: 2,
surface: 1.45
),

];