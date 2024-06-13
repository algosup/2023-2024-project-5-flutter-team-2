import 'package:adoptacandidate/CandidateProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = "https://www.youtube.com/watch?v=zQuUIk8zIlE";
class SwipePage extends StatefulWidget {
  const SwipePage({super.key});

  @override
  State<SwipePage> createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {

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
        //elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Container(
              margin: const EdgeInsets.only(left: 0),
              child:
              IconButton(

                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Candidateprofile(),
                      ),
                  );
                },
              ),
            ),
            const SizedBox(width: 100),

            IconButton(
              icon: const Icon(
                  Icons.filter_list,
                  color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Candidateprofile(),
                  ),
                );
              },
            ),
            IconButton(
                icon: const Icon(
                  Icons.help_center,
                  color: Colors.white),
                onPressed: _launchURL,
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF0D1B2A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: SwipeCards(
                    matchEngine: _matchEngine,
                    itemBuilder: (BuildContext context, int index) {
                      return _swipeItems[index].content;
                    },
                    onStackFinished: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Vous avez fini toutes les cartes'.tr)),
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
              padding: const EdgeInsets.symmetric(vertical: 27),
              color: const Color(0xFF0D1B2A),
              child: const Row(
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
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final int index;

  const JobCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(
              'CDI/CDD'.tr,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Industrie'.tr,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/factory.png',
              height: 100,
            ),
            const SizedBox(height: 20),
            Text(
              'Employer polyvalent'.tr,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            const Row(
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
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
void _launchURL() async{
  if (!await launch (_url)) throw 'could not launch $_url';

}