import 'package:flutter/material.dart';
import 'package:project_pfe/constants/constants.dart';
import 'package:project_pfe/models/recommended_places.dart';
import 'package:project_pfe/wigdet/Houses_page.dart';




// class SelectCategory extends StatelessWidget {
//   const SelectCategory({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
      
//       height: 40,
//       child: ListView.separated(
//         physics: const BouncingScrollPhysics(),
//         scrollDirection: Axis.horizontal,
    
//         itemBuilder: (context,index){
//           return  Chip(label: Text(recommendedplaces[index].type),
//           avatar: CircleAvatar(
//             backgroundImage: AssetImage(recommendedplaces[index].image),
//           ),
//           backgroundColor: Colors.white,
//           elevation: 0.4,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           );
//         },
//          separatorBuilder: (context,index)=>
//          const Padding(padding: EdgeInsets.only(right: 10)),
//           itemCount: recommendedplaces.length,
          
//           ),
//     );
//   }
// }
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategoryIndex = 0;

  Widget _buildCategory(BuildContext context, int index) {

    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => HomeScreen(),
          ),
        );
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: 30 / 3),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30/ 2),
          decoration: BoxDecoration(
              color: selectedCategoryIndex == index
                  ? myColor
                  : black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),),
          child: Center(
            child: Text(
              recommendedplaces[index].type,style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectedCategoryIndex == index ? white : black
            ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 30 / 2,
        bottom: 30,
      ),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: recommendedplaces.length,
          itemBuilder: (context, index) {
            return _buildCategory(context, index);
          },
        ),
      ),
    );
  }
}