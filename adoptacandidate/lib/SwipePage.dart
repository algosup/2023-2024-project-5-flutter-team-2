import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/swipe_cards.dart';

class SwipePage extends StatelessWidget {
  final List<SwipeItem> _swipeItems = List.generate(
    6,
    (index) => SwipeItem(
      content: JobCard(index: index),
    ),
  );

  final MatchEngine _matchEngine = MatchEngine(
    swipeItems: List.generate(
      6,
      (index) => SwipeItem(
        content: JobCard(index: index),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
            Image.asset(
              'images/logo.png',
              height: 50,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  onPressed: () {
                    // Add profile button action
                  },
                ),
                IconButton(
                  icon: Icon(Icons.message, color: Colors.white),
                  onPressed: () {
                    // Add message button action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF0D1B2A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: SwipeCards(
                  matchEngine: _matchEngine,
                  itemBuilder: (BuildContext context, int index) {
                    return _swipeItems[index].content;
                  },
                  onStackFinished: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('You have finished all the cards')),
                    );
                  },
                  itemChanged: (SwipeItem item, int index) {
                    print("Item: $item, index: $index");
                  },
                  leftSwipeAllowed: true,
                  rightSwipeAllowed: true,
                  upSwipeAllowed: true,
                  fillSpace: true,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            color: Color(0xFF0D1B2A),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.refresh, color: Colors.grey),
                Icon(Icons.clear, color: Colors.red),
                Icon(Icons.favorite, color: Colors.green),
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final int index;

  JobCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Text(
              'CDI/CDD',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Industrie',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/factory.png',
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              'Employer polyvalent',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.grey),
                SizedBox(width: 5),
                Text(
                  'Ormes 45',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
} 
