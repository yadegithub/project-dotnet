class  RecommandedPlaceModel{

  final String image;
   final double rating;
   final String location;
   final String type;
   final  bool isFav;
   
   RecommandedPlaceModel({
    required this.image,
    required this.location,
    required this.rating,
    required this.type,
    required this.isFav
   });

}
List<RecommandedPlaceModel> recommendedplaces =[
RecommandedPlaceModel(image: 'lib/images/home1.jpg',
location: "Noukchott",
rating: 4.4,
type: "House",
isFav: true
),
RecommandedPlaceModel(image: 'lib/images/home2.jpg',
location: "Noudibou",
rating: 4.4,
type: "Appartement",
isFav: false
),
RecommandedPlaceModel(image: 'lib/images/home3.jpg',
location: "Noukchot",
rating: 4.4,
type: "Villa",
isFav: true
),
RecommandedPlaceModel(image: 'lib/images/home1.jpg',
location: "Magtaa lhjar",
rating: 4.4,
type: "House",
isFav: true
),

];