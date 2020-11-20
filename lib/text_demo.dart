import 'package:flutter/material.dart';

void main() => runApp(TextDemo());

class TextDemo extends StatelessWidget {
  static const String _title = "Text 위젯 데모";
  static const String _name = "Tony Stark";
  static const String _longText = """
  플러터는 구글이 개발한 오픈 소스 모바일 애플리케이션 개발 프레임워크이다.   안드로이드, iOS용 애플리케이션 개발을 위해,  또 구글 푸크시아용 애플리케이션 개발의 주된 방식으로 사용된다.플러터의 최초 버전의 코드명은 "Sky"(스카이)이며 안드로이드 운영 체제에서 실행되었다. 2015년 다트 개발자 서밋에서 공개되었으며 120 프레임/초로 꾸준히 렌더링이 가능하도록 의도되었다고 언급되었다.[6] 상하이의 구글 개발자의 날 키노트 중에 구글은 플러터 1.0 전의 마지막 대형 릴리스인 플러터 릴리스 프리뷰 2를 발표하였다. 2018년 12월 4일, 플러터 1.0이 플러터 라이브 이벤트에서 공개되었으며 프레임워크의 최초의 안정판으로 언급되었다.[7]
  """;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title : _title,
      home : Scaffold(
        appBar : AppBar(title : Text(_title)),
        body: Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children : <Widget>[
          Text("단순 텍스트 표시"), //simple Text
          Text(
          "Styled Text with $_name",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            background:Paint()
            ..color = Color(0xFFDCEDC8)
            ..style = PaintingStyle.fill,
            fontWeight: FontWeight.bold),
    ),
    Text(
      _longText,
      overflow: TextOverflow.ellipsis,
    ),
    ],
    ),
    )
    );
  }
}