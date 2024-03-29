import 'package:flutter/material.dart';

class BusRoutesScreen extends StatelessWidget {
  const BusRoutesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int routeId = ModalRoute.of(context)!.settings.arguments as int;
    String imagePath = '';

    switch (routeId) {
      case 1:
        imagePath = 'assets/Ashta_route.png';
        break;
      case 2:
        imagePath = 'assets/Bhogawati_route.png';
        break;
      case 3:
        imagePath = 'assets/Fulewadi_route.png';
        break;
      case 4:
        imagePath = 'assets/Gargoti_route.png';
        break;
      case 5:
        imagePath = 'assets/Hupari_route.png';
        break;
      case 6:
        imagePath = 'assets/ich.png';
        break;
      case 7:
        imagePath = 'assets/Kagal_route.png';
        break;
      case 8:
        imagePath = 'assets/Kalamba_route.png';
        break;
      case 9:
        imagePath = 'assets/kuditre_route.png';
        break;
      case 10:
        imagePath = 'assets/Sangli_route.png';
        break;
      case 11:
        imagePath = 'assets/SSC_route.png';
        break;
      case 12:
        imagePath = 'assets/Vashinaka_route.png';
        break;
      default:
        // Default image path if no matching routeId
        imagePath = 'assets/default.png';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Routes'),
        backgroundColor: Colors.lightBlue[900],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40), // Add space between app bar and image
            Image.asset(
              imagePath,
              width: 600, // Set the width to make the image bigger horizontally
              height: 600, // Set the height to make the image bigger vertically
              fit: BoxFit.contain, // Ensure the image fits within the container
            ),
            const SizedBox(height: 20), // Add space below the image
          ],
        ),
      ),
    );
  }
}
