import 'package:flutter/material.dart';
import 'package:iti_task/view/profile_page/profile.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "About App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
                (route) => true);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 100.0, vertical: 30),
            child: Center(
                child: Text(
              "مجال تجارة السيارات هو واحد من أكثر المجالات تنافسية في الأسواق. وعليه، فإن من يرغب في العمل كبائع سيارات أو وكيل لبيع السيارات في إحدى المعارض الشهيرة، يجب أن يملك سيرة ذاتية قوية جداً تميزه عن غيره من المتقدمين. وبالطبع أهم ما يجب التركيز عليه في السيرة الذاتية لبيع السيارات هو قدرات البيع الاستثنائية والخبرة في المبيعات بشكل عام.وايضا ابليكشن يقدم أفضل خدمة مجانية لبيع و شراء السيارات بمصر، يمكنك ايجاد افضل اسعار السيارات المستعمله بالصور، او الاعلان لبيع سيارتك بجميع محافظات .",
              style: TextStyle(fontSize: 20),
            )),
          )
        ],
      ),
    );
  }
}
