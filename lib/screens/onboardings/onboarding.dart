import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:vupdate/screens/login/login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static List onboarding = [
    {
      "shapeimg": "assets/images/shape1.png",
      "objectimg": "assets/images/onboarding1.png",
      "title": "Assign and Monitor the Work",
      "discription": "Monitor the work assigned to Employees/Executives with the last updated time and percentage of work completed"
    },
    {
      "shapeimg": "assets/images/shape2.png",
      "objectimg": "assets/images/onboarding2.png",
      "title": "Special Occasions",
      "discription":
          "Occasions are the most important thing and wishing our special person will be the best movement in our life. We make sure that your wishes and blessings will reach your person at the right time"
    },
    {
      "shapeimg": "assets/images/shape3.png",
      "objectimg": "assets/images/onboarding3.png",
      "title": "Lead Tracker",
      "discription":
          "Tag the lead details to Employees/Executives and monitor the status of the leads"
    },
    {
      "shapeimg": "assets/images/shape4.png",
      "objectimg": "assets/images/onboarding4.png",
      "title": " Manage Your Bookings",
      "discription":
          "You can update your bookings like travel, hotel, etc… we ensure that you won’t forget it"
    }
  ];

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                controller.previousPage(
                    duration: const Duration(milliseconds: 1),
                    curve: Curves.bounceOut);
              },
              child: const Text(
                "Back",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
            ),
            InkWell(
              onTap: () {
                if (currentindex == 3) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                } else {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 1),
                      curve: Curves.bounceOut);
                }
              },
              child: Container(
                height: size.height / 18,
                width: size.width / 5,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 6, 104, 184),
                    borderRadius: BorderRadius.circular(24)),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      body: PageView.builder(
          itemCount: OnboardingScreen.onboarding.length,
          controller: controller,
          itemBuilder: (context, index) {
            currentindex = index;
            return Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: size.height / 2,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                OnboardingScreen.onboarding[index]["shapeimg"]),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  left: size.width / 8,
                  top: size.height / 8,
                  child: Container(
                    height: size.height / 3,
                    width: size.width / 1.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(OnboardingScreen.onboarding[index]
                                ["objectimg"]),
                            fit: BoxFit.contain)),
                  ),
                ),
                Positioned(
                  top: size.height/15,
                  right: size.width/25,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                    "SKIP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                                ),
                  ),
                ),
                SizedBox(
                  height: size.height / 20,
                ),
                Positioned(
                    top: size.height / 1.6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        OnboardingScreen.onboarding[index]["title"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                    )),
                Positioned(
                    top: size.height / 1.45,
                    child: SizedBox(
                        height: size.height / 8,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            OnboardingScreen.onboarding[index]["discription"],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                        ))),
                Positioned(
                  top: size.height / 1.2,
                  child: DotsIndicator(
                    dotsCount: OnboardingScreen.onboarding.length,
                    position: index.toDouble(),
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      color: const Color.fromARGB(98, 33, 149, 243),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
