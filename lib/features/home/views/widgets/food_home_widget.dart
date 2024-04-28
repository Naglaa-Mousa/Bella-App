import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/models/food_models.dart';

class HomeFoodWidget extends StatefulWidget {
  const HomeFoodWidget({super.key, required this.index});

  final int index;

  @override
  State<HomeFoodWidget> createState() => _HomeFoodWidgetState();
}

class _HomeFoodWidgetState extends State<HomeFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14)
          ),
          child: Column(
            children: [
              Image.asset(foods[widget.index].image ,
                height: 96,
                width: 96,
              ),
              Text(foods[widget.index].title),
              SizedBox(height: 14,),
              Text("${foods[widget.index].price} \$",
                style: TextStyle(
                    color: AppColors.orange,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 11,),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10.0 ,
              vertical: 10
          ),
          child: GestureDetector(
            onTap: ( ) {
              setState(() {
                foods[widget.index].fav = !foods[widget.index].fav;
              });
            },
            child: CircleAvatar(
              backgroundColor: AppColors.orange.withOpacity(0.1),
              child: Icon(
                foods[widget.index].fav == true?
                Icons.favorite:
                Icons.favorite_border,
                color: AppColors.orange,
              ),
            ),
          ),
        ),
      ],
    );
  }
}