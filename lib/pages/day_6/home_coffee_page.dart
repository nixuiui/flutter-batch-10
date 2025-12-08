import 'package:flutter/material.dart';
import 'package:flutter_batch_10/utils/colors.dart';
import 'package:flutter_batch_10/widgets/coffee_menu_item_widget.dart';
import 'package:flutter_svg/svg.dart';

class HomeCoffeePage extends StatefulWidget {
  const HomeCoffeePage({super.key});

  @override
  State<HomeCoffeePage> createState() => _HomeCoffeePageState();
}

class _HomeCoffeePageState extends State<HomeCoffeePage> {

  final categories = [
    'All Coffee',
    'Cappuccino',
    'Espresso',
    'Latte',
    'Macchiato',
    'Mocha',
  ];

  var selectedCategoryIndex = 0;

  final menus = <Map<String, dynamic>>[
    {
      "image": "assets/image1.png",
      "title": "Caffee Mocha",
      "description": "Deep Foam",
      "price": "5.43",
      "rate": 4.8,
    },
    {
      "image": "assets/image2.png",
      "title": "Flat White",
      "description": "Espresso",
      "price": "5.43",
      "rate": 4.8,
    },
    {
      "image": "assets/image1.png",
      "title": "Caffee Mocha",
      "description": "Deep Foam",
      "price": "5.43",
      "rate": 4.8,
    },
    {
      "image": "assets/image2.png",
      "title": "Flat White",
      "description": "Espresso",
      "price": "5.43",
      "rate": 4.8,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 280,
            decoration: const BoxDecoration(
              gradient: AppColors.containerLinear,
            ),
          ),
          SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                padding: const EdgeInsets.all(24.0),
                children: [
                  _buildLocation(),
                  SizedBox(height: 24),
                  _buildSearchBar(),
                  SizedBox(height: 24),
                  _buildBanner(),
                  SizedBox(height: 24),
                  _buildCategories(),
                  SizedBox(height: 24),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 156/238,
                    ),
                    itemCount: menus.length,
                    itemBuilder: (context, index) {
                      final menu = menus[index];
                      return CoffeeMenuItem(menu: menu);
                    }
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  SizedBox _buildCategories() {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 16),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedCategoryIndex = index;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: index == selectedCategoryIndex ? AppColors.color1 : Color(0xffEDEDED),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: index == selectedCategoryIndex ? Colors.white : AppColors.color3,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Stack _buildBanner() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/banner.png',
            width: double.infinity,
            height: 160,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          top: 0,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 13,
            ),
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffED5151),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Promo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Buy one get one FREE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _buildLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: TextStyle(
            fontSize: 12,
            color: AppColors.lighter,
          ),
        ),
        SizedBox(height: 8),
        Row(
          spacing: 4,
          children: [
            Text(
              'Bilzen, Tanjungbalai',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SvgPicture.asset(
              'assets/ic_arrow_down.svg', 
              color: Colors.white,
              width: 14,
              height: 14,
            ),
          ],
        ),
      ],
    );
  }

  Row _buildSearchBar() {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.color3.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
              gradient: AppColors.containerLinear2
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search coffee',
                hintStyle: TextStyle(
                  color: AppColors.lighter,
                ),
                prefixIcon: IconButton(
                  onPressed: () {}, 
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.transparent),
                    padding: WidgetStateProperty.all(EdgeInsets.zero),
                  ),
                  icon: SvgPicture.asset(
                    'assets/ic_search.svg',
                    color: Colors.white,
                    width: 20,
                    height: 20,
                  )
                ),
                filled: true,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {}, 
          icon: SvgPicture.asset(
            'assets/ic_filter.svg',
            color: Colors.white,
            width: 20,
            height: 20,
          )
        )
      ],
    );
  }
}