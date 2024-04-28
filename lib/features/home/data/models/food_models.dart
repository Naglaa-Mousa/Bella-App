import '../../../../core/utils/app_images.dart';
class FoodModel{
final String title;
final String image;
final double price;
bool fav;
FoodModel(
{
  required this.title,
  required this.image,
  required this.price,
  this.fav = false,
}
      );
}
List<FoodModel> foods = [
 FoodModel(title:"Beaf Burger", image: AppImages.beafBurger, price: 7.5),
  FoodModel(title: "Spicy Shrimp", image:AppImages.spicyShrimp, price: 8),
  FoodModel(title: "Crispy Zinger", image:AppImages.crispyZinger, price: 10),
  FoodModel(title: "Meat Shawerma", image: AppImages.meatShawerma, price: 11.5),
  FoodModel(title: "Pizza", image: AppImages.pizza, price: 5),
];



