import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories based on your image
    final List<Map<String, dynamic>> categories = [
      {'name': 'Technology', 'icon': Icons.memory},
      {'name': 'Sports', 'icon': Icons.sports_basketball},
      {'name': 'Business', 'icon': Icons.trending_up},
      {'name': 'Politics', 'icon': Icons.account_balance},
      {'name': 'Entertainment', 'icon': Icons.movie},
      {'name': 'Health', 'icon': Icons.medical_services},
      {'name': 'World News', 'icon': Icons.public},
      {'name': 'Science', 'icon': Icons.science},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF7E50), // Matches the orange header
        elevation: 0,
        title: const Text(
          'Alif News',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search categories...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          
          // Categories List
          Expanded(
            child: ListView.separated(
              itemCount: categories.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF0EB), // Light peach background
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      categories[index]['icon'],
                      color: const Color(0xFFFF7E50), // Main orange color
                    ),
                  ),
                  title: Text(
                    categories[index]['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    // Navigate to specific category
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}