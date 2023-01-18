import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:main_course_4/presentation/profile/widgets/card_profile_information_widget.dart';
import 'package:main_course_4/presentation/profile/widgets/feature_article_banner_widget.dart';

import 'widgets/discover_list_item_widget.dart';
import 'widgets/tittle_and_subtittle_widget.dart';
import 'widgets/feature_article_banner_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 237, 237),
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardProfileInformationWidget(),
              SizedBox(height: 10),
              Container(child: natureDiscoveryData()),
              FeatureArticleBannerWidget()
            ],
          ),
        ),
      ),
    );
  }

  Container natureDiscoveryData() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TittleAndSubtittle(
            tittle: "Notable Works",
            subtittle: "Based on the popularity of articles",
          ),
          SizedBox(height: 10),
          DiscoverListItem(),
        ],
      ),
    );
  }
}
