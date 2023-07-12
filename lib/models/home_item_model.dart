import 'package:praktikum_lesson/utils/app_images.dart';

class HomeItems {
  String image;
  String name;
  String comment;
  String distance;
  bool isLiked;
  String coast;

  HomeItems({
    required this.coast,
    required this.comment,
    required this.distance,
    required this.image,
    required this.isLiked,
    required this.name,
  });

  static List<HomeItems> itmes = [
    HomeItems(
      coast: '\$350',
      comment: '4.9 (130 отзывов)',
      distance: '450 км от вас (4 часа)',
      image: AppImages.tour_1,
      isLiked: false,
      name: 'Колизей',
    ),
    HomeItems(
      coast: '\$350',
      comment: '4.9 (130 отзывов)',
      distance: '450 км от вас (4 часа)',
      image: AppImages.tour_2,
      isLiked: false,
      name: 'Колизей',
    ),
    HomeItems(
      coast: '\$350',
      comment: '4.9 (130 отзывов)',
      distance: '450 км от вас (4 часа)',
      image: AppImages.tour_3,
      isLiked: false,
      name: 'Колизей',
    ),
    HomeItems(
      coast: '\$350',
      comment: '4.9 (130 отзывов)',
      distance: '450 км от вас (4 часа)',
      image: AppImages.tour_4,
      isLiked: false,
      name: 'Колизей',
    ),
    HomeItems(
      coast: '\$350',
      comment: '4.9 (130 отзывов)',
      distance: '450 км от вас (4 часа)',
      image: AppImages.tour_5,
      isLiked: false,
      name: 'Колизей',
    ),
    HomeItems(
      coast: '\$350',
      comment: '4.9 (130 отзывов)',
      distance: '450 км от вас (4 часа)',
      image: AppImages.tour_6,
      isLiked: false,
      name: 'Колизей',
    ),
    HomeItems(
      coast: '\$350',
      comment: '4.9 (130 отзывов)',
      distance: '450 км от вас (4 часа)',
      image: AppImages.tour_7,
      isLiked: false,
      name: 'Колизей',
    ),
    HomeItems(
      coast: '\$350',
      comment: '4.9 (130 отзывов)',
      distance: '450 км от вас (4 часа)',
      image: AppImages.tour_8,
      isLiked: false,
      name: 'Колизей',
    ),
  ];
}
