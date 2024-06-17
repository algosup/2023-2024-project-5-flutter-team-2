import 'package:adoptacandidate/CandidateProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = "https://adoptcandidat.helpdocs.io";
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

  late final MatchEngine _matchEngine = MatchEngine(
    swipeItems: List.generate(
      6,
          (index) => SwipeItem(
          content: JobCard(index: index),
          likeAction: () {},
          nopeAction: () {},
          superlikeAction: () {},
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          }

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
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Container(
              margin: const EdgeInsets.only(left: 0),
              child: IconButton(
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
            //const SizedBox(width: 100),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: SwipeCards(
                  matchEngine: _matchEngine,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JobDetailPage(index: index),
                          ),
                        );
                      },
                      child: _swipeItems[index].content,
                    );
                  },
                  onStackFinished: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content:
                          Text('Vous avez fini toutes les cartes'.tr)),
                    );
                  },
                  itemChanged: (SwipeItem item, int index) {
                    print("Item: $item, index: $index");
                  },
                  leftSwipeAllowed: true,
                  rightSwipeAllowed: true,
                  upSwipeAllowed: true,
                  fillSpace: true,
                  likeTag: Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green, width: 4),
                    ),
                    child: Text(
                      'LIKE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  superLikeTag: Container(
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue, width: 4)
                    ),
                    child: Text(
                      'SUPER LIKE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ),

                  nopeTag: Container(
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.red, width: 4,)
                    ),
                    child: Text(
                      'NOPE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 27),
            color: const Color(0xFF0D1B2A),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(
                  onPressed: () { _matchEngine.currentItem?.nope(); },
                  child: Icon(Icons.clear, color: Colors.red),
                ),

                ElevatedButton(onPressed: () { _matchEngine.currentItem?.superLike(); },
                    child: Icon(Icons.star, color: Colors.blue)),

                ElevatedButton(onPressed: () { _matchEngine.currentItem?.like(); },
                    child: Icon(Icons.favorite, color: Colors.green)),
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

  const JobCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'CDI/CDD'.tr,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Industrie'.tr,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'images/factory.png',
                height: 150,
              ),
              const SizedBox(height: 20),
              Text(
                'Employé polyvalent'.tr,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on, color: Colors.black87),
                  SizedBox(width: 5),
                  Text(
                    'Ormes 45',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(),
              const SizedBox(height: 10),
              Text(
                'Description du poste'.tr,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Nous recherchons un employé polyvalent pour travailler dans une usine. Les responsabilités incluent l\'opération de machines, la maintenance de l\'équipement et l\'assistance aux autres employés selon les besoins.'
                    .tr,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                'Qualifications'.tr,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '• Expérience préalable dans un environnement industriel\n• Capacité à travailler en équipe\n• Bonne condition physique'
                    .tr,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class JobDetailPage extends StatelessWidget {
  final int index;

  const JobDetailPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Details'.tr),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: JobCard(index: index),
      ),
    );
  }
}

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

void main() {
  runApp(GetMaterialApp(
    home: SwipePage(),
  ));
}