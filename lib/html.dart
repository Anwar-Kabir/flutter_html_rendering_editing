import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

class Html extends StatelessWidget {

  final _htmlContent = """
  <div>
    <h1>This is a title</h1>
    <p>This is a <strong>paragraph</strong>.</p>
    <p>I like <i>dogs</i></p>
    <p>Red text</p>
    <ul>
        <li>List item 1</li>
        <li>List item 2</li>
        <li>List item 3</li>
    </ul>
    <img src='https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg' />
  </div>
  """;

  //const Html({Key? key, required String data, required Map<String, Style> style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Html(
          data: _htmlContent,
          // Styling with CSS (not real CSS)
          style: {
            'h1': Style(
                color: Colors.red
            ),
            'p': Style(
                color: Colors.black87,
                fontSize: FontSize.medium
            ),
            'ul': Style(
                margin: EdgeInsets.symmetric(vertical: 20)
            )
          },
        ),
      ),
    );
  }
}
