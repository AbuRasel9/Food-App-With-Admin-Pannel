import 'package:flutter/material.dart';
import 'package:food_app_with_admin_pannel/core/user_panel/home_screen/widget/food_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool iceCream = false;
  bool pizza = false;
  bool burger = false;
  bool salad = false;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Rasel",
                    style: theme.headlineMedium,
                  ),
                  Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          size: 32,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Delicious Food",
                style: theme.headlineLarge,
              ),
              Text(
                "Discover and Get Great Food",
                style: theme.headlineSmall
                    ?.copyWith(fontSize: 16, color: Colors.black38),
              ),
              //================
              //select type food part
              //================
              const SizedBox(
                height: 20,
              ),
              showItem(),

              const SizedBox(
                height: 10,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodItems(
                      imgPath: "assets/images/salad2.png",
                      foodName: "Vaggle Taco Hash",
                      foodComments: "Fresh and Healthy",
                      price: '25',
                    ),
                    FoodItems(
                      imgPath: "assets/images/salad2.png",
                      foodName: "Mix Veg Salad",
                      foodComments: "Hot and Spicy",
                      price: '25',
                    ),
                    FoodItems(
                      imgPath: "assets/images/salad2.png",
                      foodName: "Vaggle Taco Hash",
                      foodComments: "Fresh and Healthy",
                      price: '25',
                    ),
                    FoodItems(
                      imgPath: "assets/images/salad2.png",
                      foodName: "Mix Veg Salad",
                      foodComments: "Hot and Spicy",
                      price: '25',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Card(
                margin: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/salad2.png",
                        height: media.height / 6.5,
                        width: media.height / 6.5,
                      ),

                      //================
                      //horizontal food list item
                      //================
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mediterranean Chickpea Salad ",
                              style: theme.bodyMedium,
                            ),
                            Text(
                              "Honey Goot Chese",
                              style:
                                  theme.bodySmall?.copyWith(color: Colors.black38),
                            ),
                            Text(
                              "\$25",
                              style: theme.bodyMedium,
                            ),
                          ],
                        )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //================
  //show item part
  //================
  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            iceCream = true;
            pizza = false;
            burger = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: iceCream ? Colors.black : Colors.white,
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(8),
              child: Image.asset(
                "assets/images/ice-cream.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: iceCream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            iceCream = false;
            pizza = true;
            burger = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            color: pizza ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(8),
              child: Image.asset(
                "assets/images/pizza.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            iceCream = false;
            pizza = false;
            burger = true;
            salad = false;
            setState(() {});
          },
          child: Material(
            color: burger ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(8),
              child: Image.asset(
                "assets/images/burger.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            iceCream = false;
            pizza = false;
            burger = false;
            salad = true;
            setState(() {});
          },
          child: Material(
            color: salad ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(8),
              child: Image.asset(
                "assets/images/salad.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
