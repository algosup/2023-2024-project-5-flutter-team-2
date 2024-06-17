import 'package:adoptacandidate/CandidateProfile.dart';
import 'package:adoptacandidate/RecruitersProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = "https://www.youtube.com/watch?v=zQuUIk8zIlE";
class SwipePage2 extends StatefulWidget {
  const SwipePage2({super.key});

  @override
  State<SwipePage2> createState() => _SwipePage2State();
}

class _SwipePage2State extends State<SwipePage2> {

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
        likeAction: () {

        },
        nopeAction: () {

        },
        superlikeAction: () {

        },
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
              child:
              IconButton(

                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Recruitersprofile(),
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
                      child: const Text(
                        'LIKE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.green,
                          )
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
        child: Column(
          children: [
            SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                          Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person, color: Colors.black87,
                                  size: 200,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Nom:'.tr,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                            Text(
                              'Nom et prénom de l\'employé'.tr,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                          ),
                      const SizedBox(height: 20),
                      Text(
                        'Situation:'.tr,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'situation de l\'employé'.tr,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Compétence: '.tr,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'compétence de l\'employé'.tr,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Type de Contrat: '.tr,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'type de contrat de l\'employé'.tr,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 20),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on, color: Colors.black87),
                          SizedBox(width: 5),
                          Text(
                            'Localité: '.tr,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'localité de l\'employé'.tr,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
          ],
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
        title: Text('Infos sur l\'employé'.tr),
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
  runApp(const GetMaterialApp(
    home: SwipePage2(),
  ));
}