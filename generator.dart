import 'dart:io';

void main() {
  generateDashboardService();
}

void generateDashboardService() {
  const directoryPath = './lib/module/case';
  final directory = Directory(directoryPath);
  const serviceFilePath =
      './lib/module/dashboard/service/dashboard_service.dart';

  if (!directory.existsSync()) {
    print('Directory not found: $directoryPath');
    return;
  }

  final serviceFile = File(serviceFilePath);
  final serviceContent = StringBuffer();

  serviceContent
      .writeln("import 'package:state_management_exercises/core.dart';\n");

  serviceContent.writeln("class DashboardService {");
  serviceContent.writeln("  List items = [");

  final caseDirectories = directory.listSync().whereType<Directory>();
  List<Map<String, dynamic>> paths = [];
  for (var caseDir in caseDirectories) {
    var path = caseDir.path.split("\\").last;
    paths.add({
      "number": int.parse(path.split("_").first),
      "path": path,
    });
  }
  paths.sort(
    (a, b) => a["number"].compareTo(b["number"]),
  );

  for (var m in paths) {
    var path = m["path"];
    String caseName = path.split("\\").last;

    serviceContent.writeln("    {");
    serviceContent
        .writeln("      \"label\": \"${caseName.toSentenceCase()}\",");
    serviceContent
        .writeln("      \"view\": const ${caseName.toSentenceCase()}View(),");
    serviceContent.writeln("    },");
  }

  serviceContent.writeln("  ];");
  serviceContent.writeln("}");

  serviceFile.createSync(recursive: true);
  serviceFile.writeAsStringSync(serviceContent.toString());

  print('DashboardService generated successfully.');
}

extension SentenceCaseString on String {
  String toSentenceCase() {
    return splitMapJoin(
      RegExp(r'[A-Za-z]+'),
      onMatch: (match) {
        final word = match.group(0)!;
        return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
      },
      onNonMatch: (nonMatch) => nonMatch,
    ).replaceAll("_", "").substring(1);
  }
}
