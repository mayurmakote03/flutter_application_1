import 'package:flutter/material.dart';
import 'BusRoutesScreen.dart';

class RoutesPage extends StatelessWidget {
  const RoutesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Routes'),
        backgroundColor: Colors.lightBlue[900],
        centerTitle: true,
      ),
      backgroundColor: Colors.lightBlue[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/dypplogo.png', // Provide the path to your image
              width: 200, // Adjust the width as needed
              height: 200, // Adjust the height as needed
            ),
            SizedBox(height: 20), // Add space between image and buttons
            Container(
              color: Colors.lightBlue[900], // Set background color
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RouteButtons(
                    routeButtonsData: [
                      RouteButtonData(routeName: 'Route 1', routeId: 1),
                      RouteButtonData(routeName: 'Route 2', routeId: 2),
                      RouteButtonData(routeName: 'Route 3', routeId: 3),
                      RouteButtonData(routeName: 'Route 4', routeId: 4),
                      RouteButtonData(routeName: 'Route 5', routeId: 5),
                      RouteButtonData(routeName: 'Route 6', routeId: 6),
                    ],
                  ),
                  RouteButtons(
                    routeButtonsData: [
                      RouteButtonData(routeName: 'Route 7', routeId: 7),
                      RouteButtonData(routeName: 'Route 8', routeId: 8),
                      RouteButtonData(routeName: 'Route 9', routeId: 9),
                      RouteButtonData(routeName: 'Route 10', routeId: 10),
                      RouteButtonData(routeName: 'Route 11', routeId: 11),
                      RouteButtonData(routeName: 'Route 12', routeId: 12),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RouteButtons extends StatelessWidget {
  final List<RouteButtonData> routeButtonsData;

  const RouteButtons({required this.routeButtonsData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var routeButtonData in routeButtonsData)
          RouteButton(
            routeName: routeButtonData.routeName,
            routeId: routeButtonData.routeId,
          ),
      ],
    );
  }
}

class RouteButton extends StatelessWidget {
  final String routeName;
  final int routeId;

  const RouteButton({required this.routeName, required this.routeId, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/busRoutes',
            arguments: routeId,
          );
        },
        child: Text(
          routeName,
          style: TextStyle(color: Colors.blue),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}

class RouteButtonData {
  final String routeName;
  final int routeId;

  RouteButtonData({required this.routeName, required this.routeId});
}
