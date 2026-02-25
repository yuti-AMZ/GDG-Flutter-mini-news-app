import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Primary Brand Color
    const Color brandOrange = Color(0xFFFF7E50);
    const Color lightBg = Color(0xFFF8F9FA);

    // Mock data based on the image
    final List<Map<String, String>> savedArticles = [
      {
        'category': 'SCIENCE',
        'time': '2 hours ago',
        'title': 'New Discovery in Mars Rover Mission: Evidence...',
        'image': 'assets/images/news1.jpg', 
      },
      {
        'category': 'TECHNOLOGY',
        'time': 'Yesterday',
        'title': 'The Future of AI in Modern Design: Tools Yo...',
        'image': 'assets/images/news2.jpg',
      },
      {
        'category': 'GLOBAL',
        'time': '2 days ago',
        'title': 'How Satellite Data is Changing Climate Chan...',
        'image': 'assets/images/news.3jpg',
      },
      {
        'category': 'MEDIA',
        'time': '3 days ago',
        'title': 'The Evolution of Digital Journalism in the 21st...',
        'image': 'assets/images/news1.jpg',
      },
    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: lightBg,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.black),
          title: const Text(
            'Alif News',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            const Icon(Icons.search, color: Colors.black),
            const SizedBox(width: 16),
            const Icon(Icons.more_vert, color: brandOrange),
            const SizedBox(width: 16),
          ],
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: brandOrange,
            indicatorWeight: 3,
            labelColor: brandOrange,
            unselectedLabelColor: Colors.blueGrey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: 'All Stories'),
              Tab(text: 'Technology'),
              Tab(text: 'Science'),
              Tab(text: 'Politics'),
            ],
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: savedArticles.length,
          itemBuilder: (context, index) {
            final item = savedArticles[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Article Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image, color: Colors.white), // Placeholder icon
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Article Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFF0EB),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                item['category']!,
                                style: const TextStyle(
                                  color: brandOrange,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              item['time']!,
                              style: const TextStyle(color: Colors.grey, fontSize: 11),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item['title']!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.bookmark, color: brandOrange),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}