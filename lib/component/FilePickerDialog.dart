import 'dart:io';

import 'package:first_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


class FilePickerDialog extends StatefulWidget {
  FilePickerDialog(this.saveFileUri, {super.key, this.fileUri});

  final Uri? fileUri;
  final Function(Uri?) saveFileUri;

  @override
  State<StatefulWidget> createState() => _FilePickerDialogState();
}

class _FilePickerDialogState extends State<FilePickerDialog> {
  Uri? _fileUriCandidate;

  @override
  void initState() {
    super.initState();
    _fileUriCandidate = widget.fileUri;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF0B0E4F), borderRadius: BorderRadius.circular(12)),
        width: 200,
        height: 214,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                FilePicker.platform.pickFiles().onError((error, stackTrace) {
                  print(stackTrace);
                  return null;
                }).then((result) {
                  if (result != null) {
                    String? path = result.files.single.path;
                    if (path != null) {
                      File file = File(path);
                      setState(() {
                        _fileUriCandidate = file.uri;
                      });
                    }
                  }
                });
              },
              child: Column(
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: Image.asset("assets/image/ic_upload_file.png"),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Browse file to upload",
                    style: TextStyle(
                        fontFamily: "Inter", fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(height: _fileUriCandidate == null ? 0 : 10),
                  Visibility(
                    visible: _fileUriCandidate == null ? false : true,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: 14,
                                height: 14,
                                child: Image.asset("assets/image/ic_file.png"),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                _fileUriCandidate == null
                                    ? ""
                                    : _fileUriCandidate!.pathSegments.last,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 10,
                                    color: colorsNavy,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      _fileUriCandidate = null;
                                    },
                                  );
                                },
                                child: SizedBox(
                                  width: 14,
                                  height: 14,
                                  child: Image.asset(
                                      "assets/image/ic_trashcan.png"),
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                  Visibility(
                      visible: _fileUriCandidate != widget.fileUri ||
                          _fileUriCandidate != null,
                      child: Container(
                        margin: EdgeInsets.only(top: 16),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 28),
                        width: 104,
                        height: 28,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(0),
                                backgroundColor: Colors.white,
                                textStyle: TextStyle(color: colorsNavy),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.zero))),
                            onPressed: (){
                              widget.saveFileUri(_fileUriCandidate);
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Simpan",
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 10,
                                  color: colorsNavy,
                                  fontWeight: FontWeight.w500),
                            )),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
