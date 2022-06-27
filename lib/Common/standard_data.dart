import 'package:project_musculation/Common/database_helper.dart';
import 'package:project_musculation/Models/exercise.dart';
import 'package:project_musculation/Models/musculation.dart';

class StandardData {
  Future structure() async {
    var controllerIDMusculation = [];

    // await DatabaseHelper().insertDatabase("exercises", Exercise(
    //     "Exercices musculation",
    //     "Découvrez plus de 200 exercices de musculation classés par zones musculaires, pour travailler exactement là où l'on veut. Tous les exercices sont détaillés et accompagnés de conseils et d'une vidéo explicative, pour une bonne exécution.\n\nLes exercices de base, composés, font travailler plusieurs articulations (poly-articulaires) et donc plusieurs muscles à la fois. Ils permettent de gagner beaucoup de masse sollicitent de nombreux groupes musculaires ensembles.\nLes exercices d'isolation font travailler une seule articulation (mono-articulaires) et donc un seul muscle. Ils permettent d'isoler le muscle et de bien cibler le travail notamment sur ceux dont le développement est à la traine.\n\nPour la réalisation de votre programme, rendez-vous dans la rubrique programme musculation.",
    //     "exercicesmusculation.png"));

    // await DatabaseHelper().insertDatabase("exercises", Exercise(
    //     "Conseils exercices",
    //     "Vous trouverez dans cette rubrique des conseils sur les exercices de musculation. Ils vous aideront à parfaire votre technique et à optimiser la structure de votre programme d'entraînement. Découvrez quels sont les exercices les plus efficaces pour vous, les différentes variantes avec leurs avantages et inconvénients, et les techniques avancées pour progresser rapidement.",
    //     "conseilsexercices.png"));

    controllerIDMusculation.add(await DatabaseHelper().insertDatabase(
        "dbmusculation",
        Musculation(
            "Programmes musculation",
            "Quand on fait de la musculation, il est important de mettre en place un programme correspondant à votre objectif. Celui-ci peut être de gagner du muscle ou du poids, vous débarrasser de kilos en trop, préparer une saison sportive ou simplement retrouver et maintenir sa forme.\n\nVous trouverez, ici, différents programmes de musculation, pour la prise de masse, de force ou la perte de poids. Que vous soyez débutants ou expérimenté, nos programmes et conseils vous aideront à progresser au mieux. Il n'y a plus qu'à vous laisser guider.",
            "programmesmusculation.png",
            0)));

    controllerIDMusculation.add(await DatabaseHelper().insertDatabase(
        "dbmusculation",
        Musculation(
            "Conseils musculation",
            "Les débutants en musculation sont souvent perdus et ne savent pas par où commencer. Il est vrai que ce sport n'est pas aussi simple qu'il n'y parait. Et pour progresser rapidement, il y a certaines choses à mettre en place dès le début et des erreurs à éviter.\n\nVous trouverez dans cette rubrique des conseils pour débutants mais aussi expérimentés, des bases de l'entraînement aux méthodes et techniques de musculation les plus complexes. De quoi débuter en progressant au mieux et trouver des solutions à vos problèmes.",
            "conseilsmusculation.png",
            0)));

    controllerIDMusculation.add(await DatabaseHelper().insertDatabase(
        "dbmusculation",
        Musculation(
            "Débutants musculation",
            "Débuter une nouvelle activité, ce n'est jamais simple. Nous somme là pour vous faciliter la tâche. Vous trouverez ici tous nos conseils d'entraînement pour les débutants en musculation. Tout ce qu'il faut pour bien débuter et progresser.",
            "debutantsmusculation.png",
            0)));

    controllerIDMusculation.add(await DatabaseHelper().insertDatabase(
        "dbmusculation",
        Musculation(
            "Méthodes et techniques de musculation",
            "Il peut être difficile de construire sa routine d'entraînement ou de choisir la méthode de musculation la mieux adaptée à nos capacités ou à nos attentes. Pour vous aider, nous avons référencé et décortiqué la plupart des méthodes et techniques les plus utilisées dans le monde de la musculation et du bodybuilding.\n\nAprès plusieurs mois d'entraînement, on peut avoir plus de mal à progresser et une certaine lassitude peut s'installer. Vous pouvez alors passer à l’étape supérieure, en utilisant des techniques qui vont vous permettre d’augmenter l’intensité de vos entraînements.\n\nVous trouverez dans cette rubrique toutes les techniques d'entraînement et méthodes de musculation disponibles pour le pratiquant, ainsi que de nombreux conseils.",
            "methodesettechniquesdemusculation.png",
            0)));

    controllerIDMusculation.add(await DatabaseHelper().insertDatabase(
        "dbmusculation",
        Musculation(
            "Prévention et blessures",
            "La musculation est un sport très exigeant, et sa pratique n’est pas sans danger. Le risque de blessures est certes moins important par rapport aux autres sports, mais il existe quand même. Vous devez donc apprendre à éviter les blessures et écouter votre corps. Vous trouverez dans cette rubrique tous nos conseils pour s'entraîner sans se blesser !\n\nUn échauffement rigoureux et progressif prépare le corps à l'effort et diminue le risque de blessures. Il doit être systématiquement effectué avant chaque séance…\n\nLes étirements sont également importants ! S'étirer est fondamental si l'on ne veut pas perdre en souplesse et développer des pathologies liées à la perte de mobilité. Vous trouverez dans cette rubrique tous les conseils de musculation pour bien s'échauffer et s'étirer.",
            "preventionetblessures.png",
            0)));

    controllerIDMusculation.add(await DatabaseHelper().insertDatabase(
        "dbmusculation",
        Musculation(
            "Le coin des Fit Girls",
            "Les débutants en musculation sont souvent perdus et ne savent pas par où commencer. Il est vrai que ce sport n'est pas aussi simple qu'il n'y parait. Et pour progresser rapidement, il y a certaines choses à mettre en place dès le début et des erreurs à éviter.\n\nVous trouverez dans cette rubrique des conseils pour débutants mais aussi expérimentés, des bases de l'entraînement aux méthodes et techniques de musculation les plus complexes. De quoi débuter en progressant au mieux et trouver des solutions à vos problèmes.",
            "lecoindesfitgirls.png",
            0)));

    controllerIDMusculation.add(await DatabaseHelper().insertDatabase(
        "dbmusculation",
        Musculation(
            "Ajout de mon excercice",
            "test: Les débutants en musculation sont souvent perdus et ne savent pas par où commencer. Il est vrai que ce sport n'est pas aussi simple qu'il n'y parait. Et pour progresser rapidement, il y a certaines choses à mettre en place dès le début et des erreurs à éviter.\n\nVous trouverez dans cette rubrique des conseils pour débutants mais aussi expérimentés, des bases de l'entraînement aux méthodes et techniques de musculation les plus complexes. De quoi débuter en progressant au mieux et trouver des solutions à vos problèmes.",
            "lecoindesfitgirls.png",
            0)));

    //Exercise
    await DatabaseHelper().insertDatabase(
        "dbexercises",
        Exercise(
            "Curl barre",
            "Cet exercice sollicite et développe les biceps. Le curl est l’exercice d’isolation de base pour les biceps et est généralement réalisé debout, avec une barre droite ou coudée…",
            "Muscles ciblés\n\nELe biceps brachial, courte et longue portion, le brachial antérieur et le long supinateur.\n\nExécution de l’exercice\n\nEn position de départ debout, le dos immobile et droit, les genoux fléchis ou une jambe avancée pour éviter de tricher en s'aidant de l'élan et les coudes prés du corps. Monter et descendre la barre sans à-coups. Vous pouvez varier l'écartement des mains en utilisant une prise large, moyenne ou serrée.\n\nRespiration\nInspirez au début du mouvement quand les bras sont tendus, et soufflez lors de la flexion.\n\nConsignes de sécurité\nSur cet exercice, on constate souvent que les pratiquants trichent et s’aident de l’élan en se penchant en avant et en donnant une impulsion avec le bas du dos. Ensuite, ils avancent les coudes vers l’avant en s’aidant de l'avant de l'épaule (deltoïde antérieur) et du haut des pectoraux. En réalisant l'exercice de cette façon, le biceps n’est pas sollicité sur toute l’amplitude et le recrutement des fibres n’est pas maximum. La stimulation musculaire et donc le développement seront lésés.\nPour une bonne forme d’exécution, gardez les bras collés contre les flancs et perpendiculaires au sol.\n\nPour éviter l’élan, gardez le dos immobile et droit, les genoux fléchis ou avancez une jambe pour stabiliser le corps. Il est aussi possible de réaliser l'exercice de façon encore plus stricte, en maintenant le dos contre un mur. Cela évite de tricher et c'est d'ailleurs de cette façon qu'il est exécuté lors de compétitions de curls à la barre.\n\nVariantes\n\nLe curl barre peut être réalisé à la poulie basse en utilisant une barre droite, une barre coudée dite \"EZ\" ou encore avec la corde.\n\nIl est possible, à la barre droite, de toucher plus ou moins intensément un des deux faisceaux du biceps brachial. La position de départ est classique, prise en supination (comme sur la vidéo plus haut), paumes des mains face au visage et genoux légèrement fléchis.\n\n- Si l'on veut porter le travail sur la longue portion du biceps brachial (à l'extérieur du bras), il faut prendre une prise serrée.\n- Si l'on veut porter le travail sur la courte portion, il faut prendre une prise large.\nLa prise en pronation de la barre (prise inverse), comme la prise marteau d'ailleurs (semi-pronation), fait porter une partie de l'effort sur le long supinateur, un muscle qui traverse tout l'avant-bras et rejoint l'humérus. Les muscles de l'avant-bras, les extenseurs du poignet, sont aussi mis à rude épreuve.\nDans les deux cas, le brachial antérieur sera sollicité par ces exercices ; le biceps brachial également, mais moins.",
            "curlbarre.png",
            "ZLRBO5wiPwM",
            controllerIDMusculation[0]));

    await DatabaseHelper().insertDatabase(
        "dbexercises",
        Exercise(
            "Curl haltère",
            "Une alternative à la barre qui permet de travailler les bras séparément. Les haltères permettent pas mal de variantes intéressantes. Avec elles, vous allez vous forger des biceps",
            "Muscles ciblés\nLe biceps brachial, courte et longue portion, le brachial antérieur et le long supinateur.\nLe brachial antérieur est utilisé pendant l’exécution du curl avec haltère, quel que soit la position de la main. Il se trouve sous le biceps.\nLa rotation de poignet pendant le mouvement, appelée \"supination\" (paume de la main vers soi), permet de plus solliciter le biceps brachial.\nLes curls marteaux (pouce vers le haut) sollicitent quant à eux plus intensément le long supinateur.\n\nExecution de l'exercice\nEn position de départ, le dos collé contre le banc ou assis à son extrémité, les bras contre les flancs, les pieds à plat sur le sol et les genoux serrés pour éviter que les haltères touchent les cuisses. Amener l'haltère au niveau de l'épaule à la force des biceps, en effectuant une rotation du poignet. Les coudes ne doivent pas dévier vers l'avant ou vers l'arrière. Ne pas utiliser l'élan pour soulever la charge, ce sont seulement les avant-bras doivent bouger.\n\nSi vous faites l'exercice debout, il faut fléchir légèrement les genoux ou avancer un pied pour éviter de s'aider de l'élan.\n\nRespiration\nInspirez au début du mouvement et soufflez lors de la flexion.\nConsignes de sécurité\nLa plus grosse erreur sur cet exercice de musculation est d’avancer le coude pendant la flexion. A ce moment, le deltoïde antérieur - l'avant de l'épaule - et le haut des pectoraux viennent aider le mouvement au détriment du biceps qui est donc moins sollicité. Pour bien réaliser l’exercice, gardez les bras collés contre les flancs et perpendiculaires au sol.\n\nVariantes\nUn variante souvent réalisée par les débutants est le curl alternatif qui consiste à fléchir un bras pendant que l’autre redescend. On peut faire ce type de curl à la poulie basse avec un seul bras pour avoir une résistance continue. Si vous disposez d'un support, vous pouvez également faire du curl incliné avec haltères.",
            "curlhaltere.png",
            "dh6Tcwy9a_o",
            controllerIDMusculation[0]));

    await DatabaseHelper().insertDatabase(
        "dbexercises",
        Exercise(
            "Curl pupitre barre",
            "Cet exercice va faire travailler les biceps avec une grande intensité. Le pupitre permet de se concentrer sur les muscles des bras et évite de tricher comme c'est souvent le cas avec les",
            "Muscles ciblés\nLe biceps brachial, courte et longue portion, le brachial antérieur et le long supinateur.\nExecution de l'exercice\nIl est possible de réaliser cet exercice de musculation pour les biceps de différentes façons :\nAVEC UN HALTÈRE\nDebout, un bras en appui sur un banc très incliné de 45 à 80°C, bien en contact avec le dossier du coude jusqu'à l’épaule. Fléchir l’avant-bras sans casser le poignet et ramener la charge vers l’épaule. Redescendre ensuite l’haltère sans heurter le banc. Pensez à fléchir légèrement les genoux et à garder le tronc bien immobile.\nAVEC UNE BARRE DROITE OU COUDÉE \"EZ\"\nTenir une barre coudée avec une prise plutôt large, mains en supination (plus confortable), et les coudes un peu plus haut pour mieux respirer. Monter et descendre la barre en évitant que les bras soient complètement détendus en position basse (risque de tendinite). Évitez de tricher en vous penchant d'avant en arrière pour remonter la barre par effet de levier, et pensez à garder les biceps contractés en position haute. Un repose barre est nécessaire.\nSUR UNE MACHINE OU À LA POULIE BASSE\nIl existe des machines qui reproduisent ce mouvement, et l'on peut également utiliser une barre droite reliée à une poulie basse comme variante. L'avantage avec ce type de matériel c'est que la tension est identique tout le long du mouvement, ce qui n'est pas le cas avec la barre ou l'haltère.\n\nRespiration\n\nInspirez en redescendant la barre et expirez lors de la flexion.\n\nConsignes de sécurité\nSur cet exercice de musculation, il faut veiller à ce que les bras soient presque tendus mais sans jamais les tendre complètement lorsqu'on redescend la barre. Le but est de préserver l’articulation du coude et d'éviter les tendinites. On prendra moins lourd que pour les curls debout car cet exercice de musculation est beaucoup plus dur.",
            "curlpupitrebarre.png",
            "quZzNBrYBxw",
            controllerIDMusculation[0]));

    await DatabaseHelper().insertDatabase(
        "dbexercises",
        Exercise(
            "Curl concentration",
            "Un exercice d'isolation avec haltère qui va vous permettre de peaufiner vos biceps. Il a la réputation de donner du « pic » au biceps. Tous les conseils pour une exécution parfaite…",
            "Muscles ciblés\nLe biceps brachial, courte et longue portion, le brachial antérieur et le long supinateur.\nExecution de l'exercice\nAssis sur un banc ou une chaise, le dos droit et légèrement penché en avant, le bras perpendiculaire au sol, le coude appuyé sur l’intérieur de la cuisse près du genou et la main en pronation qui tient l’haltère.\nMonter la charge avec le biceps sans tricher en se balançant en arrière, et sans bouger les jambes. Terminer le mouvement main en supination (paume des mains vers soi). Il faut travailler un bras après l’autre.\n\nRespiration\nInspirez au début du mouvement quand le bras est tendu et expirez lors de la flexion.\n\nConsignes de sécurité\nLe coude ne doit pas reposer sur la cuisse, ce qui gênerait le mouvement au niveau de l’articulation. Souvent, les pratiquants utilisent leur buste comme levier pour soulever l’haltère, le bras n’est alors plus perpendiculaire au sol. Cette facon de tricher diminue le stress sur le biceps ce qui n'est pas optimal pour son développement. Si vous êtes dans cette situation, diminuez la charge et appliquez-vous sur la forme d’exécution.\nContractez bien le biceps en haut du mouvement et redescendez lentement.",
            "curlconcentration.png",
            "AeHpcMxhqgI",
            controllerIDMusculation[0]));
    await DatabaseHelper().insertDatabase(
        "dbexercises",
        Exercise(
            "Exemple",
            "Exemple Exercise…",
            "Exemple Exercise…",
            "curlconcentration.png",
            "AeHpcMxhqgI",
            controllerIDMusculation[2]));
    await DatabaseHelper().insertDatabase(
        "dbexercises",
        Exercise(
            "Exemple",
            "Exemple Exercise…",
            "Exemple Exercise…",
            "curlconcentration.png",
            "AeHpcMxhqgI",
            controllerIDMusculation[3]));
  }
}
