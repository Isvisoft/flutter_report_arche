library flutter_report_arche;

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class ReportService {
  var token = "";

  ReportService(String token) {
    this.token = token;
  }

  downloadReport(Map data, String reportName, bool open) async {
    var url = 'https://api.arche.isvisoft.com/report';
    var response = await http.post(url,
        body: jsonEncode(data),
        headers: {'token': token, 'Content-Type': "application/json"});
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String path = appDocDir.path + reportName;
    new File(path).writeAsBytesSync(response.bodyBytes);

    if (open) {
      OpenFile.open(path);
    }
  }
}
