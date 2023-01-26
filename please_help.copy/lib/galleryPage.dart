import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';


class GalleryPage extends StatefulWidget {

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  File? _image;
  final picker = ImagePicker();

  // 비동기 처리로 카메라와 갤러리에서 이미지를 가져옴.
  Future getImage(ImageSource imageSource) async {
    final image = await picker.pickImage(source: imageSource);

    setState(() {
      _image = File(image!.path); // 가져온 이미지를 _image 저장.
    });
  }

  // 이미지를 보여주는 위젯
  Widget showImage() {
    return Container(
      color: const Color(0xffd0cece),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: Center(
        child: _image == null
        ? Text('No image selected.')
        : Image.file(File(_image!.path)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    //화면 세로 고정
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp, DeviceOrientation.portraitDown
    ]);

    return Scaffold(
      appBar: AppBar(
        title: Text('모가나슈'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100.0),
          showImage(),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // 카메라 촬영버튼
              FlatButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    getImage(ImageSource.camera);
                  },
                  child: Text('카메라')),
              // 갤러리 이동 버튼
              FlatButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                getImage(ImageSource.gallery);
                },
                  child: Text('갤러리')),
              // 진단받기 버튼
              // 현재, 해당 부분은 바로 'detailPage'로 이동하게 만들었는데
              // tflite를 거쳐 결과값을 DB에 보내주는 방식으로 수정해야함
              FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/detail');
                  }, child: Text('진단받기'))
            ],
          ),
        ],
      )
    );
  }
}
