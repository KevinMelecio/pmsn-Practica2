import 'package:flutter/material.dart';
import 'package:pmsn_p2/colors_rounded.dart';
import 'package:pmsn_p2/counter.dart';
import 'package:pmsn_p2/fan_carousel.dart';
import 'package:radio_grouped_buttons/custom_buttons/custom_radio_buttons_group.dart';
// import 'package:pmsn_p2/image_carousel.dart';

void main() {
  runApp(const MainApp());
}

bool _isFavorite = false;

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 85, 85, 86),
        endDrawer: createDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent, 
          automaticallyImplyLeading: false,
          leading: Row(children: <Widget>[
            const SizedBox(
              width: 8.0,
            ),
            IconButton(
                color: Colors.white,
                icon: const Icon(Icons.arrow_back_rounded),
                onPressed: () {})
          ]),
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.shopping_cart_checkout),
                  onPressed: (){
                    Scaffold.of(context).openEndDrawer();
                  });
              }
            ),
          ],
        ),          
          // leading: Row(children: <Widget>[
          //   const SizedBox(
          //     width: 8.0,
          //   ),
          //   IconButton(
          //       color: Colors.white,
          //       icon: const Icon(Icons.arrow_back),
          //       onPressed: () {})
          // ]),
          // actions: <Widget>[
          //   IconButton(
          //       icon: const Icon(
          //         color: Colors.white,
          //         Icons.shopping_cart,
          //       ),
          //       onPressed: (
          //       ) {}),
          //   const SizedBox(width: 15.0)
          // ],
        body: ListView(
          children: <Widget>[
            const Column(
              children: <Widget>[
                FanCarousel()
                /*ImageCarousel()*/
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  )),
              height: 510.0,
              width: 510.0,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 5,
                            width: 35,
                            color: Color.fromARGB(255, 147, 147, 148),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          const Column(
                            children: [
                              Text(
                                'Playera Basica',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '\$99.99',
                                style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                          const SizedBox(width: 35),
                          ButtonTheme(
                            height: 70.0,
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: Size(150.0, 60.0),
                                  primary: Colors.amber[300],
                                  elevation: 0.0,
                                ),
                                icon: Icon(
                                  _isFavorite
                                      ? Icons.favorite_border
                                      : Icons.favorite,
                                  color: Colors.red,
                                ),
                                label: const Text(
                                  'I Like it',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: _toggleFavorite),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      // const Counter(),

                      const Text(
                        'Playera basica de varios colores. Unisex. Cuello redondo.'
                        'Manga corta con cuello redondo. Super comodo para los dias de calor',
                        style: TextStyle(
                            fontFamily: 'sans-serif',
                            color: Color.fromRGBO(0, 1, 1, 0.5),
                            // letterSpacing: 2.0,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Ver mas detalles',
                            style: TextStyle(
                                color: Color.fromRGBO(190, 66, 66, 1),
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Color.fromRGBO(190, 66, 66, 1),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        child: CustomRadioButton(
                          buttonLables: [
                            "XCH (XS)",
                            "CH (S)",
                            "M (M)",
                            "G (L)",
                            "XG (XL)",
                            "XXG (XXL)"
                          ],
                          buttonValues: [
                            "Extrachico",
                            "Chico",
                            "Mediano",
                            "Grande",
                            "Extragrande",
                            "Megagrande"
                          ],
                          radioButtonValue: (value, index) {
                            print("Button value $value");
                          },
                          elevation: 1,
                          horizontal: true,
                          enableShape: true,
                          buttonColor: Colors.white,
                          selectedColor: Color.fromARGB(255, 85, 85, 86),
                          buttonSpace: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        children: <Widget>[
                          ColorsRounded()
                        ],
                      ),
                      const SizedBox(
                        height: 25
                      ),
                      Row(
                        children: [
                          const Counter(), 
                          SizedBox(
                            width: 5,
                          ),
                          ButtonTheme(
                            height: 80.0,
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: Size(180.0, 60.0),
                                  primary: Colors.black,
                                  elevation: 0.0,
                                ),
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: (){}),
                          ),
                        ],
                      )                      
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createDrawer() {
    return Drawer(
      backgroundColor: Color.fromARGB(170, 255, 255, 255),
      child: ListView(
        children: const[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 85, 85, 86),
            ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('http://i.pravatar.cc/300'),
              ),
              accountName: Text('Kevin Melecio'),
              accountEmail: Text('kevin123@gmail.com')),
        ],
      ),
    );
  }
}
