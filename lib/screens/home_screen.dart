import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentPage = 0;

   @override
   Widget build(BuildContext context) {
   return Scaffold(
      //* AppBar
      appBar: AppBar(
        title: Text('Hola mundo $currentPage'),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 245, 232, 199)
      ),

      //? Cambiar la pantalla
        body: PageView(
          children: [
            CustomScreen( color: Color.fromARGB(255, 255, 255, 255) ),
            CustomScreen( color: const Color.fromARGB(255, 30, 209, 233) ),
            CustomScreen( color: Color.fromARGB(255, 63, 181, 91) ),
          ],
        ),
      //* Tabs
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (index) {
            currentPage = index;

            setState(() {});
          },
          backgroundColor: Color.fromARGB(255, 245, 232, 199),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
              icon: Icon( Icons.verified_user_outlined ),
              label: 'User'
            ),
            BottomNavigationBarItem(
              icon: Icon( Icons.settings ),
              label: 'Settings'
            ),
          ],
        ),
      );
   }
}



class CustomScreen extends StatelessWidget {

  final Color color;

  const CustomScreen({ required this.color });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text('Custom Screen'),
      ),
    );
  }
}