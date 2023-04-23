import 'package:flutter/material.dart';
import 'package:today_webtoon/models/webtoon_detail_model.dart';
import 'package:today_webtoon/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Episode extends StatelessWidget {
  final WebtoonEpisodeModel episode;

  const Episode({super.key, required this.episode});

  onButtonTap() async {
    await launchUrlString("https://google.com");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.green.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              episode.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const Icon(Icons.chevron_right_rounded, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
