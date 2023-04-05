class  RecommandedPlaceModel{

  final String image;
   final double rating;
   final String location;
   final String type;
   RecommandedPlaceModel({
    required this.image,
    required this.location,
    required this.rating,
    required this.type
   });

}
List<RecommandedPlaceModel> recommendedplaces =[
RecommandedPlaceModel(image: 'lib/images/home1.jpg',
location: "Noukchott",
rating: 4.4,
type: "House"
),
RecommandedPlaceModel(image: 'lib/images/home2.jpg',
location: "Noudibou",
rating: 4.4,
type: "Appartement"
),
RecommandedPlaceModel(image: 'lib/images/home3.jpg',
location: "Noukchot",
rating: 4.4,
type: "Villa"
),
RecommandedPlaceModel(image: 'lib/images/home1.jpg',
location: "Magtaa lhjar",
rating: 4.4,
type: "House"
),

];