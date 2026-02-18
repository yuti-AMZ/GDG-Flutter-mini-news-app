import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Custom colors from the UI
    const Color brandOrange = Color(0xFFFF7E50);
    const Color lightBg = Color(0xFFF8F9FA);
    const Color _ = Colors.white;
    const Color iconBoxBg = Color(0xFFFFF0EB);

    return Scaffold(
      backgroundColor: lightBg,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: brandOrange),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'About Alif News',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            
            // Profile Image / Logo Section
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFB74D), // Golden orange circle
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        )
                      ],
                    ),
                    child: const Icon(Icons.block, size: 50, color: Colors.white),
                  ),
                  // Verified Badge
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.verified, color: brandOrange, size: 28),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            const Text(
              'Alif News',
              style: TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold, 
                color: brandOrange
              ),
            ),
            
            // Version Badge
            Container(
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: iconBoxBg,
                borderRadius: BorderRadius.circular(20),
                // ignore: deprecated_member_use
                border: Border.all(color: brandOrange.withOpacity(0.2)),
              ),
              child: const Text(
                'Version v1.0.2',
                style: TextStyle(color: brandOrange, fontWeight: FontWeight.w500),
              ),
            ),

            const SizedBox(height: 30),

            // Mission Section
            _buildSectionHeader('OUR MISSION'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(color: Color(0xFF455A64), fontSize: 15, height: 1.5),
                  children: [
                    const TextSpan(text: 'Alif News is your go-to destination for the latest and most relevant news from around the world. Built with '),
                    TextSpan(
                      text: 'Flutter', 
                      style: TextStyle(color: brandOrange, fontWeight: FontWeight.bold)
                    ),
                    const TextSpan(text: ', this app demonstrates clean UI and smooth navigation, delivering a premium reading experience for our global community.'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Information Section
            _buildSectionHeader('INFORMATION'),
            _buildInfoCard(
              icon: Icons.code,
              title: 'Developed By',
              subtitle: 'UI Design Team',
              isClickable: false,
            ),
            _buildInfoCard(
              icon: Icons.security,
              title: 'Privacy Policy',
              isClickable: true,
            ),
            _buildInfoCard(
              icon: Icons.gavel,
              title: 'Terms of Service',
              isClickable: true,
            ),

            const SizedBox(height: 40),
            
            // Footer
            const Text(
              '© 2024 ALIF NEWS MEDIA INC.',
              style: TextStyle(color: Colors.grey, fontSize: 12, letterSpacing: 1.2),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFFFAB91), 
          fontWeight: FontWeight.bold, 
          letterSpacing: 1.5,
          fontSize: 13,
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon, 
    required String title, 
    String? subtitle, 
    bool isClickable = true
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFFFF0EB),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: const Color(0xFFFF7E50)),
        ),
        title: subtitle != null 
          ? Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey))
          : Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: subtitle != null 
          ? Text(subtitle, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16))
          : null,
        trailing: isClickable ? const Icon(Icons.chevron_right, color: Colors.grey) : null,
        onTap: () {},
      ),
    );
  }
}