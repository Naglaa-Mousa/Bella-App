import 'package:flutter/material.dart';
import '../../data/models/food_models.dart';
import 'banner_widget.dart';
import 'food_home_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomBanner(),
          )  ,
          SliverGrid.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
              itemCount: foods.length,
              itemBuilder: (c,index) {
                return   HomeFoodWidget(
                  index:index ,
                );
              })
        ],
      ),
    );
  }
}