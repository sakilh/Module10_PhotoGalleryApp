import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery App',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  final List<String> imageUrls = [
    'https://s3-alpha-sig.figma.com/img/8ae8/8351/d9d8ec2de6a2ad384cd6cc3e473842ef?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DxGHz28D28-OtALbzofWYltYbn0ZPy5VLsvu2P3Vh9whGPiyvij3Z26FlkyZWNUkFdPyWRfUSbsGMnE8tvzX0MbOsaKNprf8WXwsXD6YJrjeW~ZIYnFifuLpZ-MnntvJiwT0FTg~jtxwkcPc39sVn12HWw510JkEqnM0oTa5Bncz~B0GKOlDANu1VpU7a8s4IIQf~G~GVTtqo~iBI5Mc5U16WFRiBbYdoAayE0xmoGHkuzDszzXdNuGvNQDbHHUwMZnZspIALHRbOnPZbht-15Is~TAphgHOUVxdbY7l0DUfzk84PUqg01qGcteabNPKU6jWEvJk4pe~wMgrIcqODA__',
    'https://s3-alpha-sig.figma.com/img/b5c9/9297/2ab1f63e0688f30f6c974cf756072cea?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gHEgIc7met3LC-PE4XbPsvu133a2Z92LLdESMHUOZKa6voTd0VOH6r9jUO5jhG-nrWckP3w6WVFdHDA0dR8alD2Q~0ah8EozFCQPrTqfx8jEtCseSa7Va7uSdGZuLymp8k-4rTDNAJCW6oHejAED~s0P-S8U9Y593QMuszOVBU7qdfPgbQpX00GRzO7J6MEnVfXsfz7FvJYV3VloSO4VLaq1rWuVisxLg-QQM-hRQNkzEoZOs4qSH4okOsQYI849pNpu94yIcuaGaU5DXq21~9yFlzTw90eHvS7-kcPGSwGajeGKDnIwgcsbdDyP44Q~Spa24DStzm45dDt7BHLcbQ__',
    'https://s3-alpha-sig.figma.com/img/ee2f/671b/ae1da53eba6aa80eef98a563c436f03e?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GujI7KFs21BNQSVkavJ5QvdXLztm-9NBd-02M1jkmf1Jyko0mEK-4k5dssu1hVJFsX2npKVBlJQbydn-1BEn7Oq9fBITeJfwbqBhNrUaNFedLDmlL1YiyAaAALyyBubAzyakQpMpVGea3eknAaeMg0TCNACyssEGjSxbwJDYZZW-qe1dwRXyZLAZe97JmBgvdZoLXrLMQcPtfs5r~UTU7iqyQ0z6zHVSE5dF565YW2JvQsQUtIfvLjk8kcTpPij95baIeP~18YXaO9JG8MEhuafHaQw9hJ22XMNDLVarHXA1F2XiS0VgsmLSiP30hVqCizGvKIJIc6I04ufV84VRtA__',
    'https://s3-alpha-sig.figma.com/img/8139/76db/b9866db0ccb3da6c0a5768688558600a?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hRd9mQDJVgd28KauDso0-GIBu63YyzdyxMBnH2e2vo7iFaJ8JXPqY0oz8acOkMpfa7fX8-nqqS8hYomwgUG67jwp8csqAKuZys30jtiTDpYpyCWuPUW3g9sLi1AwqrMSO326XW6Yd6WiGZ7~eXqQD0Ciq8Ckh1puyk8EFTbczrKCwlyWpr2yMOTs6F-er-yVIgAMzBJkb4-XyuNijgVuv8HLLsmB~nCdVXHemr8BWqf8CS7aq3Qvmer0xJVJ2JSdgW9QONXBJu19P-BVdckl4KvS~mJsJniqozimkPKb34xT5OG4fW~pL7DquskZNKxjfQAwLRLm7fsj42kJjJhhKg__',
    'https://s3-alpha-sig.figma.com/img/5ee3/6ab8/855aec6a04658bde0b2950139117bfef?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cYqtx3jpKYfc2RXiCB4ujV7ezolwDfq2acUA3dCarq8l8kpWhDh8L9wo4YGp-D~pjCBGhSn96gApEZVr2UGcTEPGk32miCDi0~ibbjzCPLxL8sCxFvCf~x0ws5imp3BjZfUXOaasvkOPobqvgBLkuMAbp6lq3mgeCW6LRGDxKGZ63F1IScjX~Um7MUZmJRzwHDST33nJ3g9pxIiwpPeOmGpUGrRmxpYvtzANlkkVOIkovLh9UcAhqwG1dmPqqap5yZ5~nkFc7sa23zqbW67tHcJMa90Dm-jP685ZOybr62f-jv1CUXrEXEFrGl18UYpH0yc-ua8VkzRTCrOYjP~YKA__',
    'https://s3-alpha-sig.figma.com/img/fc40/a160/93009751f3322ccb89e8c7e7332fd657?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Nx-R2bWXw7SjrXsan1oglkHN1qnXAFz3WN8gNDzrmpa6gg10jsKa9nhJkBMm7i~Y18EJ6U28AEaCPwpBJ-r7Lypn5q1Xjwmzzi18taD4yfwua9gLSJ1nRXD-rnG8JeXc5pT5fj7dxFO8yiHjIHSmT9ifNEo1-hK94dKWlwforKCLlNjp4mKaV3-~MTjgbHXTtt1cn~sLO3ZpGrsgmfXNdxf7TjoYCidXniwyNYIWpVWMgAGzBmQhraNlhCV9SwbGTeh57AZAmKU7jMSoqpg775S6FGvCJHZH0n48M~Fh11uSHT~Rgv7wy0BLT2ALLUItuq4dRgoIZAOJD1bSANkx-Q__',
    'https://s3-alpha-sig.figma.com/img/66de/e99e/0933ec15fe4accd01110c125b72a02b1?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NR05dxqKuhOGOKfUo7J-A0y2S5OZRM8-vnBY-OsmeXXxdIkoRtg1VMUf-VIN7xkB58nVjaidAnWzSleKZMHVdCgesLxt-rBQaGsD3spmv4lPYoCH6d1mHB1LcsIoQ7yBkOh5PciKuRRKGxY1qcyJv6qqt5aNm3S9MDfB8Era4gnh6rhSZqdgOaHMESVw296HG6ajazgjXl1nccjJce5KZZOJQrf8meQgfZfdfv3qxfCw5XtFnt93iwufAPiIV3mQfumv8IieDooLLRfhsiTMi2CSiIPwXeiGFWrb8bKzXFYwrJCwMmc0xFTDaN8V-bpGJQWOFqLN7Amc-wQMQvHFOw__',
    'https://s3-alpha-sig.figma.com/img/ece9/0272/18d4260dc80dba3fdc97dd0fee673338?Expires=1715558400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PGStH90zkIx10zihmjBKgtRREMInN3GXKNayaP0OqjpmXUxSMRTVtKrOF~IRFiphjmiw8TQ-8k8AWk2eaeHW~FXX~j9gvjAPaZkvFFCOR6jMZyF0splIFX~Hlr-GtdPoVI2YlLH0cBqRExBto17nJ6lnT9l9bDIST9Zev7PbvkRkoN1VrR6GoDhDkJNoMNPunNv0QblJcHVzsX2cPPfHj55wRok408hAw3SGpuHg25yUTnBHImHsVhidM6d0tyOUotWLfpBpJzRZYwVyDeD-BBfY3hi2UIcO-2pcHZQwn6UtB4itSr1Z4TvfTzQ7Uk7ixlBU1gAErWz6009YbQonmw__',
  ];

  final List<String> captions = [
    "mood",
    "asthetic",
    "animals",
    "city",
    "travel",
    "Sky",
    "road",
    "flowers",
  ];

  // Function to capitalize the first letter of each caption
  String capitalize(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2CAB00),
        leading: Container(
          margin: EdgeInsets.all(8),
          // Adjust margin to position within AppBar as needed
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2), // Transparent white
            borderRadius: BorderRadius.circular(15), // Border radius
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white), // Icon color
            onPressed: () {
              // Handle your menu button press here
            },
          ),
        ),
        title: Text(
          "Photo Gallery",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Handle your actions here
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          // This is where itemBuilder is placed within GridView.builder
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    imageUrl: imageUrls[index],
                    caption: captions[index],
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    imageUrls[index],
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  Positioned(
                    left: 18,
                    bottom: 15,
                    child: Text(
                      capitalize(captions[index]),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String imageUrl;
  final String caption;

  const DetailsScreen({Key? key, required this.imageUrl, required this.caption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(capitalize(caption)),
        backgroundColor: Color(0xFF2CAB00),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "${capitalize(caption)} with Nature",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                // Implement your action for "See More"
              },
              child: Text("See More"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2CAB00), // Button background color
                foregroundColor: Colors.white, // Text and icon color
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Button padding
                textStyle: TextStyle(fontSize: 16), // Text style
              ),
            ),
          ),
        ],
      ),
    );
  }

  String capitalize(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1);
  }
}