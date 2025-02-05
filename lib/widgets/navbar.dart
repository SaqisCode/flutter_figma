import 'package:flutter/material.dart';
import '../screens/beranda_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: _buildPage(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 4,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            3,
            (index) => _buildNavItem(
              index: index,
              icon: _getIcon(index),
              label: _getLabel(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    required String label,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        _controller.forward(from: 0);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 80,
            padding: const EdgeInsets.symmetric(
              horizontal: 15, 
              vertical: 6
            ),
            decoration: BoxDecoration(
              color: _selectedIndex == index
                  ? const Color.fromARGB(255, 37, 211, 102)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              icon,
              size: _selectedIndex == index ? 35.0 : 35.0,
              color: _selectedIndex == index ? const Color.fromARGB(255, 255, 255, 255) : Colors.grey,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index ? const Color.fromARGB(255, 37, 211, 102) : Colors.grey,
              fontSize: 14,
              fontWeight: _selectedIndex == index
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home_rounded;
      case 1:
        return Icons.explore_rounded;
      case 2:
        return Icons.person_rounded;
      default:
        return Icons.home_rounded;
    }
  }

  String _getLabel(int index) {
    switch (index) {
      case 0:
        return 'Beranda';
      case 1:
        return 'Informasi';
      case 2:
        return 'Profil';
      default:
        return 'Home';
    }
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const BerandaScreen();
      case 1:
        return Container(
          color: Colors.white,
          child: const Center(
            child: Text('Halaman Informasi'),
          ),
        );
      case 2:
        return Container(
          color: Colors.white,
          child: const Center(
            child: Text('Halaman Profil'),
          ),
        );
      default:
        return const BerandaScreen();
    }
  }
}
