import 'package:flutter/material.dart';
import 'PDFViewerPage.dart';

class MathematicsGrade12 extends StatelessWidget {
  const MathematicsGrade12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pdfFiles = [
      {'title': 'P1 May-June 2023', 'path': 'assets/pdfs/maths/Mathematics P1 May-June 2023 MG Afr & Eng.pdf'},
      {'title': 'P1 Nov 2023 Eng', 'path': 'assets/pdfs/maths/Mathematics P1 Nov 2023 Eng.pdf'},
      {'title': 'P2 May-June 2023 MG', 'path': 'assets/maths/pdfs/Mathematics P2 May-June 2023 MG Afr & Eng.pdf'},
      {'title': 'P2 Nov 2023 Addendum', 'path': 'assets/pdfs/maths/Mathematics P2 Nov 2023 Addendum Afr & Eng.pdf'},
      {'title': 'P2 Nov 2023', 'path': 'assets/pdfs/maths/Mathematics P2 Nov 2023 Eng.pdf'},
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: pdfFiles.length,
        itemBuilder: (context, index) {
          final file = pdfFiles[index];
          return ListTile(
            title: Text(file['title']!),
            trailing: const Icon(Icons.picture_as_pdf, color: Colors.red),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PDFViewerPage(
                    pdfPath: file['path']!,
                    title: file['title']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
