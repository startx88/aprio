import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';
import '../../models/Note.dart';

class Editor extends StatefulWidget {
  final Function add;
  final Function update;
  final int noteIndex;
  final Note note;

  Editor({this.add, this.update, this.noteIndex, this.note});
  @override
  _EditorState createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  ZefyrController _editorController;
  TextEditingController _titleController;

  /// Zefyr editor like any other input field requires a focus node.
  FocusNode _focusNode;
  NotusDocument _document;

  @override
  void initState() {
    _document = _loadDocument();
    _titleController = _loadTitle();
    _editorController = ZefyrController(_document);
    _focusNode = FocusNode();
    super.initState();
  }

  NotusDocument _loadDocument() {
    // If in edit mode then load the provided document
    return widget.note != null ? widget.note.document : NotusDocument();
  }

  TextEditingController _loadTitle() {
    // If in edit mode then load the provided title
    return widget.note != null
        ? TextEditingController(text: widget.note.title)
        : TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    // To make the editor height responsive
    double editorHeight = screenHeight * 0.65;

    final editor = ZefyrField(
      height: editorHeight, // set the editor's height
      controller: _editorController,
      focusNode: _focusNode,
      autofocus: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      physics: ClampingScrollPhysics(),
    );

    final titleField = TextField(
      controller: _titleController,
      decoration: InputDecoration(
        hintText: 'Enter Title Here...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );

    final form = Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            titleField,
            SizedBox(
              height: 10,
            ),
            editor
          ],
        ),
      ),
    );

    return ZefyrScaffold(child: form);
  }
}
