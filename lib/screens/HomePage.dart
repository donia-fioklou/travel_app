import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> sliders_image_url = [
    'assets/sliders/1.jpg',
    'assets/sliders/2.jpg',
    'assets/sliders/3.jpg',
    'assets/sliders/4.jpg',
    'assets/sliders/5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('EasyTravel'))),
      body: Column(children: [
        /* begin slider*/
        CarouselSlider(
            items: sliders_image_url.map((url) {
              return Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(url),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {});
              },
            )),
        /* end slider*/
        SizedBox(height: 20.0),
        /* begin menu*/
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                    )),
                Text('Menu'),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.flight_takeoff,
                    )),
                Text('Vols'),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.hotel,
                    )),
                Text('Hôtels'),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.car_rental_outlined,
                    )),
                Text('Voitures'),
              ],
            ),
          )
        ]),
        /* end menu*/
        SizedBox(height: 20.0),
        /* begin destinations*/
        Column(
          children: [
            Stack(children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/destinations/1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 10.0,
                child: Text(
                  'Italy',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/destinations/2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/destinations/3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )

        /* end destinations*/
      ]),
    );
  }
}
