import 'package:image_gallery/src/data/database_repository.dart';
import 'package:image_gallery/src/features/gallery/domain/gallery.dart';

class MockDatabaseRepository extends DatabaseRepository {
  @override
  List<GalleryItem> getGalleryItems() {
    return [
      GalleryItem(
        imageTitle: "Fuchs",
        imageDescription:
            "Der Fuchs ist ein cleveres Raubtier, das sich an viele Lebensräume anpasst. Am bekanntesten ist der Rotfuchs, der in Wäldern, Feldern und sogar in Städten vorkommt. Er ist meist nachts aktiv und verlässt sich auf seinen scharfen Geruchssinn. \n\nSein buschiger Schwanz hilft ihm beim Balancieren und Wärmen. Füchse sind für ihre List bekannt und gelten als Symbole für Klugheit in vielen Kulturen.",
        imagePath: "assets/images/fox.png",
      ),
      GalleryItem(
        imageTitle: "Wasserschildkröte",
        imageDescription:
            "Wasserschildkröten sind faszinierende Meeresbewohner, die weite Strecken durch die Ozeane schwimmen. Sie kommen regelmäßig an Land, um ihre Eier im Sand abzulegen. \n\nViele Arten sind gefährdet, weil ihre Lebensräume zerstört werden oder sie durch Plastikmüll bedroht sind.",
        imagePath: "assets/images/sea_turtle.png",
      ),
      GalleryItem(
        imageTitle: "Flamingo",
        imageDescription:
            "Flamingos sind elegante Vögel mit rosa Gefieder und langen Beinen. Ihre Farbe kommt von den Farbstoffen in ihrer Nahrung, wie Algen und kleinen Krebsen. \n\nSie leben in großen Gruppen an Seen und Lagunen und filtern ihre Nahrung mit dem Schnabel aus dem Wasser.",
        imagePath: "assets/images/flamingo.png",
      ),
      GalleryItem(
        imageTitle: "Giraffe",
        imageDescription:
            "Die Giraffe ist das höchste landlebende Tier der Welt. Mit ihrem langen Hals erreicht sie Blätter, die andere Tiere nicht fressen können. \n\nSie lebt in afrikanischen Savannen und bewegt sich trotz ihrer Größe elegant durch das Gelände.",
        imagePath: "assets/images/giraffe.png",
      ),
      GalleryItem(
        imageTitle: "Zebra",
        imageDescription:
            "Zebras sind für ihr schwarz-weiß gestreiftes Fell bekannt. Diese Muster helfen bei der Tarnung in der Gruppe und verwirren Raubtiere. \n\nZebras leben in Herden und sind eng mit Pferden verwandt. Sie bewohnen vor allem offene Graslandschaften in Afrika.",
        imagePath: "assets/images/zebra.png",
      ),
      GalleryItem(
        imageTitle: "Elefant",
        imageDescription:
            "Der Elefant ist das größte Landtier der Welt. Mit seinem Rüssel kann er greifen, trinken und sich verständigen. \n\nElefanten leben in sozialen Herden und zeigen ein starkes Familienverhalten. Sie haben ein beeindruckendes Gedächtnis.",
        imagePath: "assets/images/elephant.png",
      ),
      GalleryItem(
        imageTitle: "Löwe",
        imageDescription:
            "Der Löwe wird oft als „König der Tiere“ bezeichnet. Männchen erkennt man an ihrer Mähne, Weibchen jagen meist gemeinsam. \n\nLöwen leben in Rudeln und ruhen oft viele Stunden am Tag. Sie kommen hauptsächlich in Afrika vor.",
        imagePath: "assets/images/lion.png",
      ),
      GalleryItem(
        imageTitle: "Nashorn",
        imageDescription:
            "Das Nashorn ist ein kräftiges Tier mit einem oder zwei Hörnern auf der Nase. Es lebt in Afrika und Asien, oft in Savannen oder Wäldern. \n\nTrotz seiner Größe kann es schnell laufen. Es ist stark bedroht durch Wilderei wegen seines Horns.",
        imagePath: "assets/images/rhinoceros.png",
      ),
      GalleryItem(
        imageTitle: "Tiger",
        imageDescription:
            "Der Tiger ist die größte Raubkatze der Welt. Sein gestreiftes Fell hilft ihm, sich im Wald zu tarnen. \n\nEr lebt allein und jagt vor allem nachts. Tiger sind sehr starke Schwimmer und scheuen kein Wasser.",
        imagePath: "assets/images/tiger.png",
      ),
      GalleryItem(
        imageTitle: "Krokodil",
        imageDescription:
            "Krokodile sind urtümliche Reptilien, die in Flüssen, Seen und Sümpfen leben. Sie sind gute Jäger und können blitzschnell zuschlagen. \n\nMit ihrem kräftigen Kiefer fangen sie Beute im Wasser. Sie ruhen oft stundenlang regungslos in der Sonne.",
        imagePath: "assets/images/crocodile.png",
      ),
      GalleryItem(
        imageTitle: "Oryx-Antilope",
        imageDescription:
            "Die Oryx-Antilope lebt in trockenen Wüsten und Savannen. Ihre langen, geraden Hörner schützen sie vor Feinden. \n\nSie kann lange ohne Wasser auskommen und ernährt sich von trockener Pflanzenkost.",
        imagePath: "assets/images/oryx.png",
      ),
      GalleryItem(
        imageTitle: "Gepard",
        imageDescription:
            "Der Gepard ist das schnellste Landtier der Welt und erreicht bis zu 100 km/h. Er jagt durch kurze, schnelle Sprints. \n\nIm Gegensatz zu anderen Raubkatzen kann er nicht lange durchhalten, braucht aber keinen Überraschungsmoment.",
        imagePath: "assets/images/cheetah.png",
      ),
      GalleryItem(
        imageTitle: "Strauß",
        imageDescription:
            "Der Strauß ist der größte Vogel der Welt. Er kann nicht fliegen, dafür aber sehr schnell laufen. \n\nEr lebt in Afrika, hat kräftige Beine und nutzt sie zur Verteidigung. Seine Eier sind die größten aller Vögel.",
        imagePath: "assets/images/ostrich.png",
      ),
      GalleryItem(
        imageTitle: "Faultier",
        imageDescription:
            "Das Faultier lebt in Bäumen und bewegt sich sehr langsam. Es schläft viel und frisst Blätter, die nur langsam verdaut werden. \n\nEs ist gut getarnt, lebt in Mittel- und Südamerika und kann überraschend gut schwimmen.",
        imagePath: "assets/images/sloth.png",
      ),
      GalleryItem(
        imageTitle: "Schnabeltier",
        imageDescription:
            "Das Schnabeltier ist ein einzigartiges Säugetier, das Eier legt. Es hat einen Entenschnabel und lebt in Australien. \n\nEs schwimmt gut, nutzt seine Sinne zur Jagd und Männchen besitzen sogar ein Gift in ihren Hinterbeinen.",
        imagePath: "assets/images/platypus.png",
      ),
      GalleryItem(
        imageTitle: "Chamäleon",
        imageDescription:
            "Chamäleons können ihre Farbe ändern, was ihnen bei Tarnung und Kommunikation hilft. Ihre Augen bewegen sich unabhängig voneinander. \n\nSie fangen Insekten mit ihrer langen, schnellen Zunge und leben meist in tropischen Gebieten.",
        imagePath: "assets/images/chameleon.png",
      ),
      GalleryItem(
        imageTitle: "Ameisenbär",
        imageDescription:
            "Ameisenbären ernähren sich fast nur von Ameisen und Termiten. Ihre lange Zunge ist ideal, um in Insektennester zu gelangen. \n\nSie leben in Südamerika und sind trotz ihrer ruhigen Art mit kräftigen Krallen gut verteidigt.",
        imagePath: "assets/images/anteater.png",
      ),
      GalleryItem(
        imageTitle: "Delfin",
        imageDescription:
            "Delfine sind sehr intelligente und verspielte Tiere. Sie kommunizieren mit Klick- und Pfeiftönen. \n\nSie leben in Gruppen, jagen gemeinsam und gelten als besonders menschenfreundlich.",
        imagePath: "assets/images/dolphin.png",
      ),
    ];
  }

  @override
  getProfile() {
    return "Ich bin Lukas Gruber, Tierfotograf aus Leidenschaft. Tiere und Natur haben mich schon als Kind begeistert und heute versuche ich, ihre Schönheit mit der Kamera einzufangen.\n\nOb Löwe, Delfin oder Gepard – ich suche nach Momenten, die berühren und zum Staunen bringen.\n\nMit meinen Bildern möchte ich zeigen, wie wertvoll unsere Tierwelt ist, und zum Schutz ihrer Lebensräume beitragen.";
  }
}
