import 'package:flutter/material.dart';

import './logout_page.dart';


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

      body: _pages[_currentIndex],


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
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
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
    return Scaffold(
    body: Center(
      child: Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CrochetOne()),
            );
          },

          child: Image.asset('assets/images/crochet_thing1.jpg',
            width: 150,
            height: 150,),
        ),
        const SizedBox(height:  10), 
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CrochetTwo()),
            );
          },
          child: Image.asset(
            'assets/images/crochet_thing2.jpg',
            width: 150,
            height: 150,
          ), 
        ),
        const SizedBox(height:  10), 
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CrochetThree()),
            );
          },
          child: Image.asset('assets/images/crochet_thing3.jpg',
            width: 150,
            height: 150,), 
        ),
      ],
    ),),);
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
        title: const Text('Profile'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius:  50.0,
              backgroundImage: NetworkImage('https://example.com/profile_picture.jpg'),
            ),
            const SizedBox(height:  10.0),
            const Text(
              'User Name',
              style: TextStyle(fontSize:  24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height:  10.0),
            const Text(
              'User E-mail',
              style: TextStyle(fontSize:  16.0),
            ),
            const SizedBox(height:  20.0),
            Column(
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Handle button tap
                  },
                  child: const Text('Coupons'),
                ),
                const SizedBox(height:  10.0),
                TextButton(
                  onPressed: () {
                    // Handle button tap
                  },
                  child: const Text('Manage Account'),
                ),
                const SizedBox(height:  10.0),
                TextButton(
                  onPressed: () => const LogoutPage(),
                  child: const Text('Log out'),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CrochetOne extends StatelessWidget {
  const CrochetOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Mr.Bat: Rs 500', style: TextStyle(fontSize:  30, color: Colors.blue),));
  }
}

class CrochetTwo extends StatelessWidget {
  const CrochetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Mr.Bunny: Rs 1000', style: TextStyle(fontSize:  30, color: Colors.blue),));
  }
}

class CrochetThree extends StatelessWidget {
  const CrochetThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Mr.Cow: Rs 750', style: TextStyle(fontSize:  30, color: Colors.blue),));
  }
}
