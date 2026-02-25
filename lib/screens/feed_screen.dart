import 'package:flutter/material.dart';
import '../widgets/news_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['All', 'Technology', 'Science', 'Business', 'Politics'];

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: const Color(0xFFFF5722),
          foregroundColor: Colors.white,
          title: const Text('Alif News'),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 12),
          ],
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: categories.length,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final selected = index == 0; 
                return FilterChip(
                  label: Text(categories[index]),
                  selected: selected,
                  backgroundColor: Colors.grey.shade200,
                  selectedColor: const Color(0xFFFF5722),
                  labelStyle: TextStyle(color: selected ? Colors.white : Colors.black),
                  onSelected: (_) {},
                );
              },
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            const [
              NewsCard(
                category: 'TECH',
                time: '2 hours ago',
                title: 'Exploring the Future of Quantum Computing',
                subtitle: 'Researchers made a breakthrough in scalable quantum systems...',
                imageUrl: 'assets/images/news1.jpg',
              ),
              NewsCard(
                category: 'SCIENCE',
                time: '4 hours ago',
                title: 'Mars Rover Images Reveal Riverbeds',
                subtitle: 'High resolution photos provide strong evidence of water...',
                imageUrl: 'assets/images/news2.jpg',
              ),
              NewsCard(
                category: 'BUSINESS',
                time: '5 hours ago',
                title: 'Global Markets React to New Interest Rate Policy',
                subtitle: 'Major indexes reacted as central banks announced a shift...',
                imageUrl: 'assets/images/news3.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
