import 'package:cinepolis/widget/navbar.dart';
import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  const Movie({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> movies = [
      {
        "imagePath": "lib/images/vertical 1.jpg",
        "title": "Guardians of Galaxy",
        "ageRating": "13+"
      },
      {
        "imagePath": "lib/images/vertical 2.jpg",
        "title": "Nemo",
        "ageRating": "SU"
      },
      {
        "imagePath": "lib/images/vertical 3.jpg",
        "title": "Big Hero 6",
        "ageRating": "13+"
      },
      {
        "imagePath": "lib/images/upcoming 1.jpg",
        "title": "Inside Out 2",
        "ageRating": "SU"
      },
      {
        "imagePath": "lib/images/upcoming 2.jpg",
        "title": "Moana",
        "ageRating": "13+"
      },
      {
        "imagePath": "lib/images/upcoming 3.jpg",
        "title": "Incredibles 2",
        "ageRating": "SU"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header: Location Selector
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.location_on_outlined, color: Colors.grey),
                      SizedBox(width: 4),
                      Text("Malang", style: TextStyle(color: Colors.black)),
                      Icon(Icons.arrow_drop_down, color: Colors.grey),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Movie / Cinema",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
              ),
            ),
          ),
          const SizedBox(height: 6),
          // Tabs: Movie and Cinema
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Movie",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(width: 206, height: 2, color: Colors.blue),
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Cinema');
                      },
                      child: const Text("Cinema",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Container(width: 206, height: 2, color: Colors.grey),
                  ],
                ),
              ],
            ),
          ),
          // Scrollable Movie Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                itemCount: movies.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of items per row
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.5, // Adjust card height
                ),
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return _movieCard(
                    imagePath: movie["imagePath"]!,
                    title: movie["title"]!,
                    ageRating: movie["ageRating"]!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Navbar(),
    );
  }

  Widget _movieCard({
    required String imagePath,
    required String title,
    required String ageRating,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Movie Poster
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              height: 260,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          // Movie Details
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              ageRating,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black),
            ),
          ),
          const Spacer(),
          // Buy Now Button
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromARGB(255, 27, 28, 115),
                ),
                child: const Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
