import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isSearching = false; // To toggle the visibility of the search field
  TextEditingController searchController =
      TextEditingController(); // Controller for the search input
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the search field
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3), // Shadow color
                      spreadRadius: 2, // Spread the shadow
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 2), // Offset for shadow
                    ),
                  ],
                ),
                child: TextField(
                  controller: searchController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none, // Remove the default border
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20), // Padding inside the TextField
                  ),
                  onChanged: (query) {
                    // Perform search logic here (e.g., filter data)
                  },
                ),
              )
            : Text(
                'VibeX',
                style: TextStyle(
                  color: const Color.fromARGB(255, 110, 25, 125),
                  fontFamily: 'Times New Roman',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Times New Roman',
            fontSize: 20,
            fontWeight: FontWeight.bold),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearching =
                    !isSearching; // Toggle the search field visibility
              });

              if (isSearching) {
                // Clear search field if opening the search
                searchController.clear();
              }
            },
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped, //New
      ),
    );
  }
}
