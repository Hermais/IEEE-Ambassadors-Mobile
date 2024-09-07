import 'package:flutter/material.dart';

class CityWeather extends StatelessWidget {
  const CityWeather({super.key});

  @override
  Widget build(BuildContext context) {
    final moonImage =
        Image.network("https://cdn.weatherapi.com/weather/64x64/night/113.png");
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://r1.ilikewallpaper.net/iphone-12-pro-max-wallpapers/download-149619/light-clouds-mountains-smoge-4k.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.05,
                    ),
                    Text(
                      'Cairo',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '2024-09-05',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "29.8 C",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Row(
                      children: [
                        moonImage,
                        Text(
                          "Sunny",
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                    const Divider(color: Colors.white,),
                    const Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallTitleInfoBox(title: "MAX", info: "36.7 C"),
                        SmallTitleInfoBox(title: "MIN", info: "25.2 C"),
                        SmallTitleInfoBox(title: "WIND", info: "9"),
                      ],
                    )


                  ],
                )
              ],
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
  

}

class SmallTitleInfoBox extends StatelessWidget {
  final String title;
  final String info;
  const SmallTitleInfoBox({super.key, required this.title, required this.info});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.titleSmall,),
          Text(info, style: Theme.of(context).textTheme.titleSmall,),
        ],
      ),
    );
  }
}






