import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: SingleChildScrollView_Column(),));
}

class SingleChildScrollView_Column extends StatelessWidget {
  const SingleChildScrollView_Column({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's Read A Story"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("CINDERLLA",style: GoogleFonts.satisfy(
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),),
          const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text("'Cinderella', or 'The Little Glass Slipper', is a folk tale with thousands of variants throughout the world. The protagonist is a young woman living in forsaken circumstances that are suddenly changed to remarkable fortune, with her ascension to the throne via marriage. The story of Rhodopis,"
                " recounted by the Greek geographer Strabo sometime between 7 BC and AD 23, about a Greek slave girl who marries the king of Egypt, is usually considered to be the earliest known variant of the Cinderella story 21314"
            "The first literary European version of the story was published in Italy by Giambattista Basile in his Pentamerone in 1634; the version that is now most widely known in the English-speaking world was published in French by Charles Perrault in Histoires ou contes du temps passé in  Another version was later published as Aschenputtel by the Brothers Grimm in their folk tale collection Grimms' Fairy Tales in 1812"
           " Although the story's title and main character's name change in dferent languages, in English-language"
            "folklore Cinderella is an archetypal name. The word Cinderella has, by analogy, come to mean someone whose attributes are unrecognized, or someone unexpectedly achieves recognition or success after a period of obscurity and neglect. In the world of sports, "
                "'a Cinderella' is used for an underrated team or club winning over stronger and more favored competitors. The still-popular story of Cinderella continues to influence popular culture internationally, lending plot elements, allusions, and tropes to a wide variety of media."),

          ),
        ],
      ),
    );
  }
}
