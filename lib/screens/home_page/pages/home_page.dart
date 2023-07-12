import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:praktikum_lesson/models/home_item_model.dart';
import 'package:praktikum_lesson/screens/home_page/widgets/app_bar_title_widget.dart';
import 'package:praktikum_lesson/screens/home_page/widgets/gridview_items_widget.dart';
import 'package:praktikum_lesson/screens/home_page/widgets/show_coast_banner_widget.dart';
import 'package:praktikum_lesson/utils/app_colors.dart';
import 'package:praktikum_lesson/utils/app_icons.dart';
import 'package:praktikum_lesson/utils/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHide = false;
  String amount = '\$2,700';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          AppBar(
              elevation: 0,
              toolbarHeight: 120,
              backgroundColor: const Color.fromRGBO(68, 144, 255, 1),
              title: const AppBarTitleWidget()),
          Positioned(
            top: 165,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: AppColors.C_4490FF,
                        labelColor: AppColors.black,
                        unselectedLabelColor: AppColors.C_7C88AB,
                        isScrollable: true,
                        tabs: [
                          Tab(
                            icon: SvgPicture.asset(AppIcons.kulturaIcon),
                            text: 'Культура',
                          ),
                          Tab(
                            icon: SvgPicture.asset(AppIcons.prirodaIcon),
                            text: 'Природа',
                          ),
                          Tab(
                            icon: SvgPicture.asset(AppIcons.edaIcon),
                            text: 'Еда',
                          ),
                          Tab(
                            icon: SvgPicture.asset(AppIcons.prikluchenieIcon),
                            text: 'Приключение',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          physics: const BouncingScrollPhysics(),
                          children: [
                            GridView.builder(
                              physics: const BouncingScrollPhysics(),
                              padding: const EdgeInsets.all(12),
                              itemCount: HomeItems.itmes.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 166 / 247,
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 12,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return GridViewItemsWidget(
                                  item: HomeItems.itmes[index],
                                );
                              },
                            ),
                            Container(),
                            Container(),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            top: 130,
            child: ShowCoastBannerWidget(
              amount: amount,
              isHide: isHide,
            ),
          ),
        ],
      ),
    );
  }
}
