import 'package:billa_app/features/home/views/widgets/home_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../favorites/views/favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex =  0;
  List<Widget> screens  = [
    // current index  = 0
    HomeBody() ,
    FavoriteScreen()
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar:AppBar(backgroundColor: AppColors.scaffoldColor,
        centerTitle:true ,
        title: Image.asset(AppImages.billa,
          height: MediaQuery.of(context).size.height*0.04,
        ),
      ) ,
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (bottomIndex){
          print(bottomIndex.toString());
          setState(() {
            currentIndex = bottomIndex;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite"    ,
          ),
        ],
      ),
      body:screens[currentIndex],
      // body: ,
    );
  }
}