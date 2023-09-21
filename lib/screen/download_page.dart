import 'package:disney_plus/widget/download_movie.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text('수정', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600)),
            ),
            Text('저장한 콘텐츠', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),),
            SizedBox(height: 15,),
            DownLoadedMovie(imagePath: 'asset/img/elemental.jpg', movieDetail: '2.5GB', movieName: '엘리멘탈'),
            SizedBox(height: 7,),
            DownLoadedMovie(imagePath: 'asset/img/endgame.jpeg', movieDetail: '3.4GB', movieName: "어벤져스: EndGame")
          ],
        ),
      ),
    );
  }
}
