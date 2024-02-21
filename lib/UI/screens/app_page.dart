import 'package:flutter/material.dart';


class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {

  int _currentIndex =  2; // Set 'shop' as the initial page
  final int _selectedIndex = 0;

  final List<Widget> _pages = [
    const FavPage(),
    const SearchPage(),
    const ShopPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //
  //   ),
  //   Text(
  //     'Index 1: Business',
  //
  //   ),
  //   Text(
  //     'Index 2: School',
  //
  //   ),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center(
          child: Text(
            "The Magic Circle",
            textAlign: TextAlign.center,
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _pages[_currentIndex],
          GestureDetector(
            onTap: () {
              // Handle the tap event here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CrochetOne()),
              );
            },
            child: Image.asset('crochet.jpg'), // replace with your image path
          ),
          const SizedBox(height:  10), // add some space between images
          GestureDetector(
            onTap: () {
              // Handle the tap event here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CrochetTwo()),
              );
            },
            child: Image.asset('crochet.jpg'), // replace with your image path
          ),
          const SizedBox(height:  10), // add some space between images
          GestureDetector(
            onTap: () {
              // Handle the tap event here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CrochetThree()),
              );
            },
            child: Image.asset('crochet.jpg'), // replace with your image path
          ),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),


    drawer: Drawer(
      child: ListView(
    // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
             child: Text('More'),
          ),
          ListTile(
            title: const Text('Your Orders'),
            selected: _selectedIndex == 0,
            onTap: () {
    // Update the state of the app
              _onItemTapped(0);
    // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Hot Picks'),
            selected: _selectedIndex == 1,
            onTap: () {
    // Update the state of the app
              _onItemTapped(1);
    // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Settings'),
            selected: _selectedIndex == 1,
            onTap: () {
              // Update the state of the app
              _onItemTapped(1);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),

        ],
      ),
    ),
    );
  }
}

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('You are on Favorites Page'));
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('You are on Search Page'));
  }
}

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('You are on Shop Page'));
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('You are on Cart Page'));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
    body: const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // CircleAvatar(
          //   radius:   5,
          //   backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%2Fimages%3Fk%3Dunknown%2Buser&psig=AOvVaw12F1Nn1-EDVz-IKKKR-M_0&ust=1708602022226000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMC8-9msvIQDFQAAAAAdAAAAABAD'), // Replace with your image path
          // ),
        // const Expanded(flex: 2, child: _TopPortion()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Richie Lorie",

                  ),
                  SizedBox(height:   5),
                  Text(
                    'John Doe',
                      style: TextStyle(
                        fontSize:   24,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                  SizedBox(height:   5),
                  Text(
                    'john.doe@example.com',
                    style: TextStyle(
                        fontSize:   18,
                        color: Colors.grey,
                    ),
                  ),
                   SizedBox(height:   5),
                    Text(
                      'Profile description or status update.',
                      style: TextStyle(
                      fontSize:   16,
                      ),
                    ),

                ],
              ),),) ], ), ), );

  }
}


class CrochetOne extends StatelessWidget {
  const CrochetOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('You have selected item 1', style: TextStyle(fontSize:  30, color: Colors.blue),));
  }
}

class CrochetTwo extends StatelessWidget {
  const CrochetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('You have selected item 2', style: TextStyle(fontSize:  30, color: Colors.blue),));
  }
}

class CrochetThree extends StatelessWidget {
  const CrochetThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('You have selected item 3', style: TextStyle(fontSize:  30, color: Colors.blue),));
  }
}