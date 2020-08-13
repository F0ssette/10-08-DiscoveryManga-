//
//  Data.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 04/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import Foundation

struct Manga : Identifiable {
    let id = UUID()
    let name : String
    let releaseDate : String
    // Format date: "DD/MM/YYYY"
    let poster : String
    let synopsis : String
    let genre : GenreType
    let tags : [TypeTag]
    let galerie : [String]
    let author : String
    let maisonEdition : String
    let nbTomes : Int
    
    var typeTags : [String] {
        var tagsArray = [String]()
        for tag in tags {
            tagsArray.append(tag.rawValue.lowercased())
        }
        return tagsArray
    }
    
    func isSelected(enteredText: String) -> Bool {
        for type in tags {
            if type.rawValue.lowercased().contains(enteredText.lowercased()) {
                return true
            }
        }
            return false
    }
}

struct Anime : Identifiable {
    let id = UUID()
    let name : String
    let releaseDate : String
    // Format date: "DD/MM/YYYY"
    let poster : String
    let synopsis : String
    let genre : GenreType
    let tags : [TypeTag]
    let galerie : [String]
    let réalisateur : String
    let studio : String
    let nbEpisodes: Int
    let url: String
    
    var typeTags : [String] {
        var tagsArray = [String]()
        for tag in tags {
            tagsArray.append(tag.rawValue.lowercased())
        }
        return tagsArray
    }
    
    func isSelected(enteredText: String) -> Bool {
        for type in tags {
            if type.rawValue.lowercased().contains(enteredText.lowercased()) {
                return true
            }
        }
            return false
    }
}

struct Guides: Identifiable {
    let id = UUID()
    let title : String
    let content : String
    let poster : String
    let creationDate : String
    // Format date: "DD/MM/YYYY"
}

struct UserInfo: Identifiable {
    let id = UUID()
    let name : String
    let password : String
    let email : String
    let picture : String
}

enum TypeTag : String {
    case Romance = "Romance",Horreur = "Horreur",Action = "Action",Comédie = "Comédie",Cyberpunk = "Cyberpunk",Psychologique = "Psychologique",Thriller="Thriller",Mecha="Mecha",Fantastique="Fantastique",Arts_martiaux = "Arts martiaux",Slice_of_life = "Slice of Life",Sport="Sport", Science_Fiction = "Science-Fiction", Surnaturel="Surrnaturel", Tragédie="Tragédie", Historique = "Historique"
}

enum GenreType : String {
    case Shonen, Shojo, Seinen, Kodomo, Film
}

// Liste des animés (14) : akira, swordArtOnline, onePunchMan, yourName, baki, dragonball, jojobizzareadventure, drstone, vinlandSaga, pokemon, snk, fireforce, skipbeat, doraemon
// Liste de Mangas (14) : gto, quartierLointain, naruto, myHeroAcademia, tokyoGhoul, slamdunk, onepiece, haikyuu, berserk, diaboliklovers, blacklover, fma, radiant, deathnote

let gto : Manga = .init(name: "Great Teacher Onizuka",
                        releaseDate: "01/08/1997",
                        poster: "gto",
                        synopsis: "1997, Eikichi Onizuka, 22 ans, « célibataire et libre comme l'air », est un jeune professeur au passé douteux qui est nommé pour son premier poste dans une classe difficile ; il montre rapidement une vision de l'enseignement totalement décalée avec les pratiques habituelles. Ses réactions anticonformistes et directes, souvent humoristiques, sont l'axe central de cette série. Il va évoluer avec cette classe, dont la spécialité est de faire craquer moralement leurs professeurs, en tentant de la rallier peu à peu à sa cause.",
                        genre: .Shonen,
                        tags: [.Comédie, .Slice_of_life, .Tragédie],
                        galerie: ["gto1", "gto2", "gto3", "gto4"],
                        author: "Tōru Fujisawa",
                        maisonEdition: "Pika Edition (Fr)",
                        nbTomes: 25)

let quartierLointain : Manga = .init(name: "Quartier Lointain",
                                     releaseDate: "29/09/1998",
                                     poster: "quartierLointain",
                                     synopsis: " avril 1998, un Japonais de 48 ans se remet difficilement des excès d’alcool commis la veille, à tel point qu’il se trompe de train pour rentrer chez lui. Il se retrouve dans celui qui se dirige comme par hasard vers Kurayoshi la ville de son enfance, et il en profite pour se rendre sur la tombe de sa mère, morte d'une crise cardiaque, à l'âge de 48 ans. Ce retour sur les traces de sa jeunesse va se transformer en bond dans le temps car le héros va être transporté dans la peau de ses quatorze ans le 7 avril 1963, 3 mois avant la disparition inexpliquée de son père.",
                                     genre: .Seinen,
                                     tags: [.Psychologique, .Slice_of_life, .Surnaturel],
                                     galerie: ["quartier1", "quartier2", "quartier3"],
                                     author: "Jirō Taniguchi",
                                     maisonEdition: "Casterman (Fr)",
                                     nbTomes: 2)

let naruto : Manga = .init(name: "Naruto",
                           releaseDate: "1999",
                           poster: "naruto",
                           synopsis: "Dans le village de Konoha vit Naruto, un jeune garçon détesté et craint des villageois. Il est craint du fait qu'il détient en lui Kyuubi (démon renard à neuf queues) d'une incroyable force, qui a tué un grand nombre de personnes. Le ninja le plus puissant de Konoha à l'époque, le quatrième Hokage, Minato Namikaze, réussit à sceller ce démon dans le corps de Naruto.",
                           genre: .Shonen,
                           tags: [.Action ],
                           galerie: ["naruto1","naruto2", "naruto3", "naruto4"],
                           author: "Masashi Kishimoto",
                           maisonEdition: "Shūeisha",
                           nbTomes: 72)

let myHeroAcademia : Manga = .init(name: "My Hero Academia",
                                   releaseDate: "2014",
                                   poster: "myHeroAcademia",
                                   synopsis: "Dans un monde où 80 % de la population possède un super‑pouvoir appelé alter, les héros font partie de la vie quotidienne. Et les super‑vilains aussi ! Face à eux se dresse l’invincible All Might, le plus puissant des héros ! Le jeune Izuku Midoriya en est un fan absolu. Il n’a qu’un rêve : entrer à la Hero Academia pour suivre les traces de son idole.",
                                   genre:.Shonen,
                                   tags: [.Action,.Comédie],
                                   galerie: ["myHero1", "myHero2", "myHero3", "myHero4"],
                                   author: "Kōhei Horikoshi",
                                   maisonEdition: "Hachette",
                                   nbTomes: 26)

let tokyoGhoul : Manga = .init(name: "Tokyo Ghoul",
                               releaseDate: "16/10/2014",
                               poster: "tokyoghoulposter",
                               synopsis: "Dans la ville de Tokyo, des créatures nommées goules sont apparues et se nourrissent de chair humaine pour survivre. Un jour, Ken Kaneki, jeune étudiant, se fait attaquer par l'une d'entre elles et subit une grave blessure. Pour rester en vie, il reçoit une greffe de la goule qui l'a attaqué et devient un hybride, mi-humain mi-goule (borgne artificielle). Rapidement, il se rend compte qu'il ne peut plus manger les mêmes aliments qu'auparavant. Il entre alors au service du café « L’Antique », un repaire de goules, où il apprend à se nourrir sans faire de mal aux humains. Mais il va bien vite se retrouver au cœur d'une guerre sanglante entre le CCG (Centre de Contrôle des Goules), déterminé à retrouver et exterminer celles-ci jusqu'à la dernière et l'Arbre Aogiri, une organisation de goules sans merci. Il découvre que les goules ne sont pas si différentes des humains, et peu à peu il va commencer à s'adapter.",
                               genre: .Seinen,
                               tags: [.Horreur, .Psychologique, .Action],
                               galerie: ["tokyoghoul", "tokyoghoul1", "tokyoghoul2", "tokyoghoul3"],
                               author: "Sui Ishida",
                               maisonEdition: "Glénat",
                               nbTomes: 16)

let slamdunk : Manga = .init(name: "Slam Dunk",
                             releaseDate: "01/10/1990",
                             poster: "slamdunk",
                             synopsis: "Hanamichi Sakuragi, un jeune homme immature et impopulaire, est bien décidé à en finir avec les déceptions amoureuses lors de son entrée au lycée de Shohoku. Il y rencontre alors Haruko Akagi, une fille dont il tombe amoureux. Suivant ses conseils et pour lui faire plaisir, il décide de jouer au basket-ball et d'intégrer le club du lycée. Lors d'une altercation avec le capitaine de l'équipe de basket-ball, Hanamichi se voit contraint de le défier dans un duel de basket-ball. Sakuragi finit par gagner et apprend que le capitaine n'est autre que le grand frère d'Haruko : Takenori Akagi. Malgré certaines réticences, ce dernier le laisse finalement intégrer l'équipe de basket. Malheureusement pour Hanamichi, le garçon dont est amoureuse Haruko, Kaede Rukawa, idole de toutes les filles et joueur de première année le plus talentueux du département y est aussi. Les deux rivaux vont devoir ainsi jouer dans la même équipe. Sakuragi se met alors à réellement aimer le basket et après de nombreuses péripéties Rukawa, Akagi et Sakuragi se lancent à la conquête du titre national. Ils sont rejoints plus tard par Mitsui Hisashi (MVP au collège) et Riyota Miyagi, arrière à la rapidité et la dextérité exceptionnelles connaissant les mêmes déboires amoureux que Sakuragi. Le 5 majeur de Shohoku est ainsi formé et accompagné de leur entraîneur Anzai. Ils vont devoir battre tous leurs adversaires jusqu'au titre national.",
                             genre: .Shonen,
                             tags: [.Sport,.Slice_of_life, .Comédie],
                             galerie: ["slamdunk1","slamdunk2","slamdunk3","slamdunk4"],
                             author: "Takehiko Inoue",
                             maisonEdition: "Kana",
                             nbTomes: 31)

let onepiece : Manga = .init(name: "One Piece",
                             releaseDate: "22/07/1997",
                             poster: "onepiece",
                             synopsis: "Il fut un temps où Gold Roger était le plus grand de tous les pirates, le Roi des Pirates était son surnom. A sa mort, son trésor d'une valeur inestimable connu sous le nom de One Piece fut caché quelque part sur Grand Line. De nombreux pirates sont partis à la recherche de ce trésor mais tous sont morts avant même de l'atteindre. Monkey D. Luffy rêve de retrouver ce trésor légendaire et de devenir le nouveau Roi des Pirates. Après avoir mangé un fruit du démon, il possède un pouvoir lui permettant de réaliser son rêve. Il lui faut maintenant trouver un équipage pour partir à l'aventure !",
                             genre: .Shonen,
                             tags: [.Comédie, .Tragédie, .Fantastique],
                             galerie: ["onepiece1","onepiece2","onepiece3","onepiece4"],
                             author: "Eiichirō Oda",
                             maisonEdition: "Glénat",
                             nbTomes: 96)

let haikyuu : Manga = .init(name: "Haikyuu",
                            releaseDate: "20/02/2012",
                            poster: "haikyuu",
                            synopsis: "Shōyō Hinata, jeune élève au collège Yukigaoka, trouve un intérêt soudain au volley-ball après avoir vu un match de tournoi national inter-lycée à la télévision. Malgré sa petite taille, il est déterminé à suivre le même chemin que son joueur modèle du championnat national, surnommé le « petit géant ». Il crée alors un club de volley-ball afin de commencer son entraînement, et il arrive à réunir cinq autres joueurs lors de sa dernière année au collège. Son équipe participe alors à un tournoi mais se fait éliminer dès le premier tour par l'équipe de Tobio Kageyama du collège Kitagawa Daiichi. Malgré cette défaite, Shōyō continue de s'entraîner tous les jours, ayant promis à Tobio Kageyama qu'un jour, il le surpasserait. Plus tard, il s'inscrit au lycée Karasuno, là où a évolué le « petit géant », mais découvre que son rival s'y trouve aussi. Les deux garçons devront apprendre à travailler en équipe s'ils veulent faire parvenir leur équipe jusqu'au sommet...",
                            genre: .Shonen,
                            tags: [.Sport,.Slice_of_life, .Comédie],
                            galerie: ["haikyuu1","haikyuu2","haikyuu3","haikyuu4"],
                            author: "Haruichi Furudate",
                            maisonEdition: "Kazé",
                            nbTomes: 45)

let berserk : Manga = .init(name: "Berserk",
                            releaseDate: "07/10/1989",
                            poster: "berserk",
                            synopsis: "Berserk raconte l'histoire de la rencontre de Guts et de Griffith, chef de la Troupe du Faucon, une bande de mercenaires à la solde du royaume de Midland. De cette rencontre naîtra une amitié ambiguë, mais néanmoins efficiente : la présence de Guts, guerrier à l'épée démesurée, se révélera vite indispensable à l'ambition du jeune Griffith, bretteur et tacticien hors pair. L'anime est ainsi le récit de l'ascension et de la chute de la Troupe du Faucon, et de la relation entre Guts et Griffith, particulièrement complexe, entre relation d'intérêt (Griffith utilise la force de Guts), respect mutuel (les deux se considèrent mutuellement en tant que soldats), et affection profonde (chacun a besoin de la présence de l'autre de façon inexplicable). Particulièrement crue, la série animée l'est pourtant moins que le manga qui se montre sans concession dans sa façon de présenter les choses : la religion, la pédophilie, l'infanticide, l'inceste, le viol et les nombreux massacres renvoient une image particulièrement sombre de l'âme humaine, dont Griffith est à ce titre le plus parfait représentant. En filigrane apparaît donc une réflexion sur l'homme, partagée entre sa monstruosité (les monstres étant une représentation physique de la part d'ombre qui sommeille en chaque homme), sa violence (le monde de Berserk est ravagé par plusieurs guerres), son ambition (illustrée à merveille par le rêve et le machiavélisme de Griffith), ses désirs (notamment sexuels), et la volonté inhérente à tous de rechercher à faire le bien, et ce parfois au détriment des autres.",
                            genre: .Seinen,
                            tags: [.Horreur,.Tragédie,.Action],
                            galerie: ["berserk1","berserk2","berserk3","berserk4"],
                            author: "Kentarō Miura",
                            maisonEdition: "Glénat",
                            nbTomes: 40)

let diaboliklovers : Manga = .init(name: "Diabolik lovers",
                                   releaseDate: "16/02/2017",
                                   poster: "diabolik",
                                   synopsis: "Yui est une adolescente normale en deuxième année au lycée. Un jour son père, qui est prêtre, doit se rendre en Europe de l'Est pour son travail. Yui n'a pas d'autres choix que d'aller vivre chez des connaissances de son père, sur ordre de ce dernier. C'est ainsi que Yui va faire la rencontre des frères Sakamaki... mais ces six frères se révèlent être des vampires. Comment Yui, une simple humaine, va-t-elle s'en sortir avec des vampires qui ne cessent de tourner autour d'elle ?",
                                   genre: .Shojo,
                                   tags: [.Tragédie, .Romance,.Slice_of_life],
                                   galerie: ["diabolik1","diabolik2","diabolik3","diabolik4"],
                                   author: "Shinobu Tagashira",
                                   maisonEdition: "Rejet",
                                   nbTomes: 3)

let blackclover : Manga = .init(name: "Black clover",
                                releaseDate: "16/02/2015",
                                poster: "blackclover",
                                synopsis: "Asta est un jeune garçon déterminé qui vit avec son ami d’enfance, Yuno, dans un orphelinat du royaume de Clover. Depuis tout petit, Asta a pour ambition de devenir le magicien le plus puissant du royaume, l’Empereur-Mage, ce qui a aussi inspiré Yuno à vouloir lla même chose. Mais malheureusement, Asta est né sans aucun talent magique, alors que Yuno possède des prédispositions spectaculaires. Lorsqu'ils atteignent leurs 15 ans, tous les jeunes du royaume sont conviés à une cérémonie où leur est remis leur grimoire ː alors que Yuno reçoit le légendaire grimoire avec un trèfle à quatre feuilles, considéré comme un mythe puisque la légende prétend que le premier Empereur-Mage utilisait également un grimoire portant un trèfle à quatre feuilles, Asta, ne reçoit rien. Après la cérémonie, Yuno est attaqué par un brigand qui souhaite lui voler son grimoire pour ensuite tenter de le revendre. Asta part pour le sauver mais se retrouve en difficulté, heureusement il est sauvé par un mystérieux grimoire avec un trèfle à cinq feuilles et une grande épée rouillée, qui symbolise le démon. Asta et Yuno se font la promesse de se battre tous les deux pour le titre d’Empereur-Mage. Alors que leurs chemins se séparent sur la route des Chevaliers-Mages, leur objectif est toujours le même : devenir le prochain Empereur-Mage.",
                                genre: .Shonen,
                                tags: [.Action, .Fantastique, .Comédie],
                                galerie: ["blackclover1","blackclover2","blackclover3","blackclover4"],
                                author: "Yūki Tabata",
                                maisonEdition: "Kazé",
                                nbTomes: 24)

let fma : Manga = .init(name: "Full Metal Alchemist",
                        releaseDate: "12/07/2001",
                        poster: "fma",
                        synopsis: "Dans le pays d'Amestris, pays où l'Alchimie est élevée au rang de science universelle, deux frères, Edward et Alphonse Elric parcourent le monde à la recherche de la légendaire pierre philosophale dans le but de retrouver leurs corps perdus. Leur père, Van Hohenheim, les a quittés il y a de cela des années, et leur mère Trisha Elric meurt quelques années plus tard d'une maladie, laissant ses deux jeunes enfants derrière elle. Un an plus tard, les deux frères tentent de la faire revenir grâce à l'alchimie, bravant la loi qui interdit formellement la transmutation humaine. Ils en payent le prix fort. Edward, l'ainé, perd sa jambe gauche, son petit frère perd son corps tout entier. Ed sacrifie son bras droit en scellant l'âme de son petit frère Alphonse dans une armure. Edward décide de s'engager dans l'armée à l'âge de douze ans en tant qu'Alchimiste d'État, réussit l'examen haut la main et obtient son nom d'alchimiste, le Fullmetal Alchemist. Avec les avantages liés au statut d'alchimiste d'État et leurs recherches, les deux frères cherchent, au péril de leurs vies, la pierre mythique qui leur rendra ce qu'ils ont perdu, mais le secret de la pierre est bien gardé.",
                        genre: .Shonen,
                        tags: [.Action, .Fantastique, .Science_Fiction],
                        galerie: ["fma1","fma2","fma3","fma4"],
                        author: "Hiromu Arakawa",
                        maisonEdition: "Kurokawa",
                        nbTomes: 27)

let radiant : Manga = .init(name: "Radiant",
                            releaseDate: "20/07/2013",
                            poster: "radiant",
                            synopsis: "Dans un univers fantastique, des monstres, appelés Némésis, tombent du ciel. L'origine de ces monstres reste inconnue, mais une chose est sûre, ils ne sont pas là pour notre bien ! Heureusement, des hommes et des femmes organisent la lutte contre ces Némésis. Ces individus sont des infectés rejetés par la société et bien souvent aussi craints que les créatures elles-mêmes. Ils représentent pourtant le seul et unique rempart contre cette menace. Ce sont les sorciers. D'après certaines rumeurs, ces monstres tomberaient d'un nid de Némésis appelé « Radiant ». Seth, le protagoniste de Radiant, est un adolescent qui a survécu à une attaque de Némésis. Il rêve de vaincre tous les Némésis et d'apporter  la paix entre les sorciers et le reste de l'humanité. Pour ce faire, il doit trouver le lieu d'origine des Némésis, le légendaire Radiant, et ainsi détruire leur berceau. Lui et d'autres sorciers parcourent la région à la recherche du Radiant tout en évitant l'inquisition, une organisation opposée aux Sorciers.",
                            genre: .Shonen,
                            tags: [.Action,.Fantastique,.Tragédie],
                            galerie: ["radiant1","radiant2","radiant3","radiant4"],
                            author: "Tony Valente",
                            maisonEdition: "Ankama Éditions",
                            nbTomes: 13)

let deathnote : Manga = .init(name: "Death Note",
                              releaseDate: "20/07/2013",
                              poster: "deathnote",
                              synopsis: "Light Yagami est un lycéen surdoué qui juge le monde actuel criminel, pourri et corrompu. Sa vie change du tout au tout le jour où il ramasse par hasard un mystérieux cahier intitulé « Death Note ». Son mode d'emploi indique que « la personne dont le nom est écrit dans ce cahier meurt ». D'abord sceptique, Light décide toutefois de tester le cahier et découvre que son pouvoir est bien réel. Il rencontre l'ancien propriétaire du Death Note, un dieu de la mort nommé Ryûk. Celui-ci déclare avoir volontairement laissé tomber son carnet dans le but de se divertir. Light décide d'utiliser le Death Note pour exterminer les criminels, dans le but de bâtir un monde parfait dont il sera le dieu. Il apprend peu à peu à se servir des pouvoirs du cahier et de ses règles : l'utilisateur ne peut tuer une personne que s'il connait son visage, en y inscrivant son prénom et son nom de famille. Il peut également en préciser la cause et les circonstances détaillées, la cause par défaut étant la crise cardiaque. Les nombreuses morts inexpliquées de criminels à travers le monde attirent l'attention d'Interpol et du mystérieux L, un détective particulièrement talentueux, mais dont personne ne connaît l'identité. L décide d'enquêter sur le tueur en série, surnommé « Kira » (キラ?, dérivé de la prononciation japonaise de « killer ») par le grand public.",
                              genre: .Shonen,
                              tags: [.Thriller,.Psychologique,.Surnaturel],
                              galerie: ["deathnote1","deathnote2","deathnote3","deathnote4"],
                              author: "Tsugumi Ōba",
                              maisonEdition: "Kana",
                              nbTomes: 13)


// Liste des Animés (10)
let akira : Anime = .init(name: "Akira",
                          releaseDate: "16/07/1988",
                          poster: "akira",
                          synopsis: "En juillet 1988, une mystérieuse explosion détruit Tokyo, déclenchant la troisième guerre mondiale. 31 ans plus tard, en 2019, Néo Tokyo, la mégalopole construite sur la baie de Tokyo a retrouvé sa prospérité d’antan et se prépare à l’évènement majeur des Jeux olympiques de 2020.  Dans l'ombre, les choses sont moins réjouissantes, le chômage augmente et les actions des dissidents se multiplient...",
                          genre: .Film,
                          tags: [.Cyberpunk, .Science_Fiction, .Mecha],
                          galerie: ["akira1", "akira2", "akira3"],
                          réalisateur: "Katsuhiro Ōtomo",
                          studio: "Tokyo Movie Shinsha",
                          nbEpisodes: 1,
                          url:
                          "https://redirector.googlevideo.com/videoplayback?expire=1597248397&ei=Lb8zX9OhIcak8gPD-oGwBw&ip=212.40.116.114&id=o-ANy1GqsDWjmn9IFpXAxKCxo1p8AqinuauutAqFJwXHJS&itag=22&source=youtube&requiressl=yes&mh=rn&mm=31%2C26&mn=sn-c0q7lnly%2Csn-5hnekn7l&ms=au%2Conr&mv=u&mvi=3&pl=19&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=112.431&lmt=1471916167088724&mt=1597226490&fvip=3&fexp=23883098&beids=9466586&c=WEB&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhAIOOw_t7AvYv4l7i6N4RTScufxRBeV0BK43v_7ZkOcbhAiEAxNsskssRZElUXUQTIXbrW66aTy-CEmEDW8Xm0zlCWUs%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRQIhAJkTktY0NQDTj9KetbkffrujTyCOzfi3NZVqTVI_e5-DAiBvZFUc9k9IDjy_C9oi1wfRNKrU3Y7O13NEG6Q6JWhHWA%3D%3D&title=Akira+%281988%29+Legendary+Trailer")

let swordArtOnline : Anime = .init(name: "Sword Art Online",
                                   releaseDate: "23/12/2012",
                                   poster: "saoPoster",
                                   synopsis: "Il s'agit du jeu du premier arc, Sword Art Online. Le monde prend la forme d'un château flottant géant appelé Aincrad, comportant 100 paliers. Chaque étage dispose d'un cadre de style médiéval et un donjon avec un boss qui doit être vaincu pour que les joueurs puissent accéder à l'étage supérieur. Comme la plupart des jeux de rôle, le jeu propose un système de niveau. Cependant, après la période de bêta test, le créateur du jeu a activé un système pour piéger les joueurs à l'intérieur d'Aincrad, empêchant toute déconnexion. Pour pouvoir quitter le jeu, il faut que quelqu'un le finisse. Si les joueurs meurent dans le jeu ou si leurs casques d'immersion virtuelle sont enlevés de force, leur cerveau reçoit un flux de micro-ondes entraînant la mort.",
                                   genre: .Shonen,
                                   tags: [.Action, .Fantastique, .Arts_martiaux],
                                   galerie: ["sao", "sao1", "sao2", "sao3"],
                                   réalisateur: "Tomohiko Itō",
                                   studio: "A-1 Pictures",
                                   nbEpisodes: 25,
                                   url: "https://redirector.googlevideo.com/videoplayback?expire=1597254126&ei=jtUzX__kAon91wLF-rm4CQ&ip=212.40.116.144&id=o-AMDdQfyEdYt8_yGP_QRz1eIBGgMvW86Eo7vrp6N1A_dt&itag=22&source=youtube&requiressl=yes&mh=jc&mm=31%2C26&mn=sn-c0q7lns7%2Csn-5hne6nsk&ms=au%2Conr&mv=u&mvi=4&pl=19&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=142.199&lmt=1593757493731409&mt=1597231701&fvip=4&fexp=23883098&c=WEB&txp=5432432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRAIgPKMJqM5qeXmpTx_4TMtm-4bm977r-UBoFn4prFn-_CICIE6Y7K1VyXlVax_387lSbTGCymYl7irR9CWM-YZLqelj&sig=AOq0QJ8wRQIhAJj39LcOlJIaskUBj93xhuY0i_8fbaLwFq1C2zenDJHbAiBi78tKd1syzm7rENsj0VM6SI-po9ASi1dyiaBKXtP5ug==&title=FINAL+TRAILER+%7C+Sword+Art+Online+Alicization+War+of+Underworld+Part+2+English+Sub")

let onePunchMan : Anime = .init(name: "One Punch Man",
                                releaseDate: "05/12/2015",
                                poster: "onePunchMan",
                                synopsis: "Saitama est un jeune homme sans emploi, déprimé et sans but profond dans sa vie. Un jour, il rencontre un homme-crabe qui recherche un jeune garçon « avec un menton fendu comme un cul » selon ses termes. Saitama finit par rencontrer ce jeune garçon et décide de le sauver de l'homme-crabe, qu'il arrive à battre difficilement. Dès lors, Saitama décide de devenir un super-héros et s’entraîne pendant trois ans très sérieusement : 100 pompes, 100 squats, 100 abdos et 10 km de course au quotidien et il n'y a pas de conditions de chauffage ni de climatisation . À la fin de son entrainement « si intense qu'il en perd ses cheveux », il remarque qu'il est devenu tellement fort qu'il parvient désormais à battre tous ses adversaires d'un seul coup de poing. Sa force démesurée est pour lui source de problèmes, puisqu'il ne trouve pas d'adversaires à sa taille et s'ennuie dans son métier de héros car les combats ne lui procurent plus aucune sensation ni aucune adrénaline... Bien qu'il ait mis un terme à un bon nombre de menaces toutes plus dangereuses les unes que les autres, personne ne semble remarquer l'incroyable capacité de Saitama, à l'exception de son ami et disciple Genos, un jeune homme devenu cyborg.",
                                genre: .Shonen,
                                tags: [.Comédie, .Action, .Arts_martiaux],
                                galerie: ["opm1", "opm2", "opm3"],
                                réalisateur: "Shingo Natsume",
                                studio: "Madhouse",
                                nbEpisodes: 36,
                                url: "https://redirector.googlevideo.com/videoplayback?expire=1597262536&ei=aPYzX5C8L9qNgAegjbKgAw&ip=212.40.116.174&id=o-AAiQVUgg6e87LxgRX7WIDoLxHBjns7Drti-tJRi2AUmv&itag=18&source=youtube&requiressl=yes&mh=tb&mm=31%2C26&mn=sn-c0q7lns7%2Csn-5hnekn7z&ms=au%2Conr&mv=u&mvi=5&pl=19&pcm2=no&vprv=1&mime=video%2Fmp4&gir=yes&clen=14882432&ratebypass=yes&dur=179.908&lmt=1450957625599732&mt=1597240158&fvip=5&fexp=23883098&c=WEB&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cpcm2%2Cvprv%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgW-xhYoXNjljrKazkkHAVRC7kFp73YXpzVgFwubkq7M4CIQDplI3H0wxSZ9mgZhzzFXEvgDCrfVG3BPdOlEeTIVIHlg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRgIhAKolefbVqns43a01BRu-803_zolIieDEfmwp-0Alfaa6AiEA4h-WOYK8mJm8ggxDeYQGfveyiFoxMT6QOOX74rWAr5U%3D&title=Official+One-Punch+Man+-+Digest+Trailer")

let yourName : Anime = .init(name: "Your Name",
                             releaseDate: "26/08/2016",
                             poster: "yourName",
                             synopsis: "Mitsuha, une étudiante du Japon rural, et Taki, un étudiant de Tokyo, rêvent chacun — sans se connaître — de la vie de l'autre. Un matin, ils se réveillent dans la peau de l'autre : autre sexe, autre famille, autre maison, autre paysage…",
                             genre: .Film,
                             tags: [.Comédie, .Romance, .Fantastique],
                             galerie: ["yourName1", "yourName2", "yourName3"],
                             réalisateur: "Makoto Shinkai",
                             studio: "CoMix Wave Films",
                             nbEpisodes: 1,
                             url: "https://redirector.googlevideo.com/videoplayback?expire=1597262037&ei=dfQzX4_xFIvN1wK0k7XgAg&ip=212.40.116.164&id=o-ACo3UNtQpQXgYnSAW_YWE4xh0GCvLYB1BjRSRJ3-iqhd&itag=22&source=youtube&requiressl=yes&mh=CG&mm=31%2C26&mn=sn-c0q7lns7%2Csn-5hne6ns6&ms=au%2Conr&mv=u&mvi=4&pl=19&pcm2=yes&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=96.107&lmt=1481188802878137&mt=1597240158&fvip=4&fexp=23883098&c=WEB&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cpcm2%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRQIgYtgIN5Zu7ltHh7HUVW337Lfkyu88_MCDYM1eOKdEUK4CIQDTsICQ6YBEbE3KWD0b1lZo4qKlg1daacZpX60koYk5Nw%3D%3D&sig=AOq0QJ8wRAIgOLvM_RoaVpZndgStIoJ88fObkQp8MP9WhOLoFUYwv6QCICCS9_qet8KcYFMhQGLeOejK-0HvWuqt3ee8-kyh6GmW&title=%5BTRAILER%5D+Your+Name.+VOSTFR+-+le+dernier+film+de+Makoto+Shinkai")

let baki : Anime = .init(name: "Baki",
                         releaseDate: "18/12/2018",
                         poster: "baki",
                         synopsis: "aki Hanma est un jeune garçon de treize ans. Mais malgré son âge peu avancé il possède des capacités physiques incroyables. Rien d'étonnant à cela : il est le fils naturel de Yujiro Hanma, « l'être le plus fort du monde » aussi appelé « l'Ogre ».",
                         genre: .Seinen,
                         tags: [.Arts_martiaux,.Sport],
                         galerie: ["baki4","baki2","baki3"],
                         réalisateur:"Yuji Asada",
                         studio: "Knack Productions" ,
                         nbEpisodes: 39,
                         url: "https://redirector.googlevideo.com/videoplayback?expire=1597261932&ei=C_QzX73cPNODsfIP_72Y2A4&ip=168.235.107.210&id=o-AIeXpun1S5xcntSxG-daCmR3nScoOh7BBa3j7sjedPHJ&itag=22&source=youtube&requiressl=yes&mh=5b&mm=31%2C26&mn=sn-q4fl6nsl%2Csn-oguesnsy&ms=au%2Conr&mv=m&mvi=5&pl=22&initcwndbps=386250&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=89.791&lmt=1544544452416300&mt=1597240243&fvip=5&fexp=23883098&c=WEB&txp=2211222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAKK4gAo6z9Nr42U-PGbBZOlsAxeP0mEMeDVtDrj4nfN0AiB8kLtnfTUmEQOZC1SD5DiwMkyLtw-baLii7ewxG3eY_A%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhAJD-wD1vHT-GLJDP0v1a87w3to4tBvBo-_RbhRaLDBCwAiEApv7T3WDOSF26zN3cre1LzRMYE5JYLYNkgEPWVSLGQBk%3D&title=Baki+2018+Trailer+HD+Netflix")

let dragonball : Anime = .init(name: "Dragonball",
                               releaseDate: "1989" ,
                               poster: "dragonballposter",
                               synopsis: "Cet anime raconte l'enfance et l'adolescence de Son Goku, un petit garçon très doué pour les arts martiaux, et qui possède une mystérieuse queue de singe. Il rencontre une jeune femme prénommée Bulma, et tous deux partent ensemble à la recherche des Dragon Balls (sept boules de cristal magiques qui permettent, si elles sont réunies, d'invoquer le dragon Shenron, proposant alors d'exaucer le souhait de celui qui prononce face à lui une formule spécifique), rencontrant en chemin de nombreux adversaires (la plupart étant concurrents dans la quête des fameuses boules, souvent dans des desseins égoïstes voire maléfiques), dont certains deviennent par la suite des alliés, tels Yamcha ou Ten Chin Han. Déjà très fort sous sa forme normale (avant même d'avoir suivi un entraînement formel il tient tête à des combattants adultes de haut niveau), Son Goku se transforme en singe géant après avoir fixé la pleine Lune, déployant alors une puissance destructrice incommensurable (sans en avoir conscience et sans en avoir ensuite le moindre souvenir). Avec un autre jeune garçon prénommé Krilin, il suit un entraînement très rigoureux auprès de Kamé Sennin dit « Tortue Géniale », un maître en arts martiaux réputé, cachant une grande puissance sous ses apparences de vieillard lubrique, qui prépare ses deux disciples au Grand tournoi d'arts martiaux (Tenkaichi Budokai). Des ennemis de plus en plus redoutables apparaissent, jusqu'à l'incarnation du Mal sous la forme du Démon Piccolo.",
                               genre: .Shonen,
                               tags: [.Action,.Arts_martiaux,.Comédie],
                               galerie: ["dragonball", "dragonball2","dragonball3","dragonball4"],
                               réalisateur: "Minoru Okazaki",
                               studio: "Toei Animation",
                               nbEpisodes: 153, url:"")

let jojobizzareadventure : Anime = .init(name: "Jojo Bizarre Aventure",
                                         releaseDate: "2012",
                                         poster: "jojo",
                                         synopsis:"Cette longue série nous raconte le destin de la lignée Joestar. Tout commence avec Jonathan Joestar, fils d'un aristocrate anglais, qui vit une existence bien ordinaire. Tout change lorsque Lord Joestar prend sous son aile Dio Brando, jeune homme égocentrique et vaniteux, dont le père vient de décéder.",
                                         genre:.Shonen,
                                         tags: [.Historique,.Action,.Surnaturel],
                                         galerie: ["jojo2","jojo3","jojo4"],
                                         réalisateur: "tika Waititi",
                                         studio: "David production",
                                         nbEpisodes: 158,
                                         url: "https://redirector.googlevideo.com/videoplayback?expire=1597261710&ei=LvMzX9XLCs-01gLI9JtI&ip=212.40.116.114&id=o-AJq8hXhSkCmKVLSikGA0sr6fQb8eZcXNnUpdxZk-g94s&itag=22&source=youtube&requiressl=yes&mh=xd&mm=31%2C26&mn=sn-c0q7lns7%2Csn-5hnednlr&ms=au%2Conr&mv=u&mvi=5&pl=19&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=154.877&lmt=1472077108734166&mt=1597239531&fvip=5&fexp=23883098&c=WEB&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAPEgvblE-sOaoLwM9aNCva0u51GhYptMhV5tjvbYlXE5AiAglr2RGK7bKHWKlInpwHglrrXgxWtmn7MEUl3U5_0aSQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRQIhAKQNsUEFWyMEdayZaksAMzJd4gp9lsmOrhBOgRMDHZQzAiAnbTHW1Veqr0VrptARSbRgRojwjRf5avRcMPI6wxC_bA%3D%3D&title=JoJo%27s+Bizarre+Adventure+Stardust+Crusaders+Jotaro+trailer")

let vinlandSaga : Anime = .init(name: "Vinland Saga",
                                releaseDate: "13/04/2005",
                                poster: "VinlandPoster",
                                synopsis: "Mêlant personnages et évènements historiques avec de nombreux éléments fictifs, Vinland Saga est le récit de la vie d'un jeune islandais, Thorfinn Thorsson. Ce fils d'un illustre guerrier repenti verra sa vie basculer lorsque son père est assassiné par des pirates mené par le rusé Askeladd. Animé par la vengeance, Thorfinn suivra puis intégrera cette bande, avec le désir affiché de tuer dans un duel loyal l'assassin de son père. La quête vengeresse de Thorfinn est le fil rouge du prologue de l'histoire (tomes 01 à 08). Elle le mènera notamment à participer à l'invasion de l'Angleterre par les Danois, au début du xie siècle. Cette partie de l'histoire traite avec brio de sujets divers tels que la guerre, la politique, la religion, et brosse un portrait convaincant et humain de la vie quotidienne des populations victimes de la guerre mais aussi et surtout des guerriers, bien loin des clichés véhiculés habituellement par les Vikings. À partir du tome 08 débute le deuxième arc de l'histoire. L'action quitte les champs de bataille anglais pour s'établir dans une propriété agricole d'Europe du Nord, tandis que le thème de la guerre fait place à celui de la rédemption.",
                                genre: .Seinen,
                                tags: [.Historique, .Action, .Tragédie],
                                galerie: ["Vinland1", "Vinland2", "Vinland3", "Vinland4"],
                                réalisateur: "Shūhei Yabuta",
                                studio: "Wit Studio",
                                nbEpisodes: 24,
                                url: "https://redirector.googlevideo.com/videoplayback?expire=1597261382&ei=5vEzX8zTEc7bkgbV-6zABg&ip=168.235.107.228&id=o-AKYJNY5lo_gTDpoq7pGgA-y10yb3FUfD0tpgh52G07Hm&itag=22&source=youtube&requiressl=yes&mh=k8&mm=31%2C26&mn=sn-q4fl6nss%2Csn-ogueln7r&ms=au%2Conr&mv=m&mvi=5&pl=22&initcwndbps=3455000&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=82.732&lmt=1556101320538469&mt=1597239641&fvip=5&fexp=23883098&c=WEB&txp=5432432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgXoINCIsU__AtZmo2dT-nR68k9Pzgs9McuVBAovIYOncCIF39IoahIInsNLCeYTV8lCTJBlMo_ZYpIb20nzJbvnlx&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRAIgQVOatttC-TeV4QWXcPX_PCeaiYqQ9d-HWfcwxv3UDToCIA8gN3N5cdFwc9Acx8uZsomd7qRB1naAURH7nQg4EXig&title=Vinland+Saga+Trailer+-+Official+PV+2")

let drstone : Anime = .init(name: "drstone",
                            releaseDate: "05/07/2019",
                            poster: "drstone",
                            synopsis: "Un jour, une lumière éclaira la Terre, changeant tous les humains en pierre. Ainsi, l'humanité s'éteignit. Plusieurs millénaires plus tard, Taiju parvient à s'échapper de son enveloppe de pierre pour découvrir un monde dans lequel la nature a repris ses droits. Avec son ami Senkuu, ils décident de tout mettre en œuvres pour faire renaître l'humanité de ses cendres et survivre.",
                            genre: .Shonen,
                            tags: [.Psychologique],
                            galerie: ["drstone1","drstone2", "drstone3", "drstone4"],
                            réalisateur: "Shinya Iino",
                            studio: "TMS Entertainment",
                            nbEpisodes: 24,
                            url: "https://redirector.googlevideo.com/videoplayback?expire=1597261598&ei=vvIzX8qiLNaE7gOkxqHADw&ip=212.40.116.194&id=o-AM-RZise133eLjwlZzaHBONR1B3XBad3BZykpiLfhUS2&itag=22&source=youtube&requiressl=yes&mh=XJ&mm=31%2C26&mn=sn-c0q7lnly%2Csn-5hnedn7z&ms=au%2Conr&mv=u&mvi=1&pl=19&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=98.313&lmt=1553258080711710&mt=1597239531&fvip=6&fexp=23883098&c=WEB&txp=5535432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhANfr_WgIvRDsGxxgwe5kz51h-rpffWzu1FlWR7xrj73dAiEAve6tQ-_4aePmZLvwww7PXC0oqSra7HjT_oiHP6BgMmc%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRAIgEXYpKkc9NyANCa_Ix4oV4edZaXRjRDcLAeezIs1Ay6gCIBToI9QjJKKiDHipk0i7jmKHBW18EKTrwjcrhhAUOC6j&title=Dr.+STONE+Trailer+-+Official+PV")

let pokemon : Anime = .init(name: "Pokemon",
                            releaseDate: "01/04/1997",
                            poster: "pokemon",
                            synopsis:
    """
Pokémon suit les aventures d'un jeune garçon nommé Sacha (Satoshi au Japon et Ash dans les pays anglophones) et de son fidèle Pokémon Pikachu. Sacha parcourt le monde Pokémon afin d'obtenir le grade suprême de « Maître Pokémon » ; pour y parvenir, il capture et entraîne des Pokémon, afin d'obtenir huit badges. Le duo est souvent accompagné par un binôme composé d'un autre jeune garçon et d'une jeune fille.
Au cours des épisodes, le groupe est confronté à une organisation mafieuse se nommant la Team Rocket. Cette organisation tente de voler et capturer les Pokémon des autres dresseurs ou les Pokémon légendaires.
""" ,
                            genre: .Kodomo,
                            tags: [.Fantastique, .Comédie, .Action],
                            galerie: ["pokemon1", "pokemon2", "pokemon3"],
                            réalisateur: "Kunihiko Yuyama",
                            studio: "OLM",
                            nbEpisodes: 1116,
                            url: "https://www22.online-convert.com/dl/web7/download-file/cdffa1b8-c256-4aa8-a05c-00b58baeb429/videoplayback.mp4")

let snk : Anime = .init(name: "L'attaque des Titans",
                        releaseDate: "09/09/2009",
                        poster: "snkposter",
                        synopsis: "Dans un monde ravagé par des titans mangeurs d’homme depuis plus d’un siècle, les rares survivants de l’Humanité n’ont d’autre choix pour survivre que de se barricader dans une cité-forteresse. Le jeune Eren, témoin de la mort de sa mère dévorée par un titan, n’a qu’un rêve : entrer dans le corps d’élite chargé de découvrir l’origine des Titans et les annihiler jusqu’au dernier…",
                        genre: .Shonen,
                        tags: [.Action,.Horreur, .Tragédie],
                        galerie: ["snk","snk1","snk2","snk3"],
                        réalisateur: "Tetsurō Araki",
                        studio: "Wit Studio",
                        nbEpisodes: 59,
                        url: "https://redirector.googlevideo.com/videoplayback?expire=1597268111&ei=Lgw0X-f6O8vwgAf6j4DgCg&ip=212.40.116.104&id=o-AASay1BFepEKz4ggeO7aJF5xI_Z8mJEd1XlsdFI0_-J_&itag=22&source=youtube&requiressl=yes&mh=7Y&mm=31%2C26&mn=sn-c0q7lnly%2Csn-5hne6n7s&ms=au%2Conr&mv=u&mvi=2&pl=19&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=90.232&lmt=1499222444188130&mt=1597245786&fvip=2&fexp=23883098&c=WEB&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAN6zDUpDIroHhxk7qbwK2SiMCcenDqoGOl5X6L3-dzkFAiAzFGGMO0vFF94R4iVDKk8t7K3IqDqMltRhm51M0BkIlQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRQIhANvDcjptU5QUd5lHklSZOPUdcV94ATtqYcBa_5QcMK65AiBpOoQskPu7Kg3fXBbniO_eMot8GuvGzY8fXEfcd-yhVQ%3D%3D&title=L%27attaque+des+Titans+%28Saison+1%29+BANDE+ANNONCE+%5BV0%5D+Officielle+%5B1080p%5D")

let fireforce : Anime = .init(name: "Fire Force",
                              releaseDate: "06/07/2019",
                              poster: "fireforce",
                              synopsis: "En l'an 198 du calendrier solaire, le monde fait face au phénomène de combustion humaine où l'humanité peut s'enflammer sans prévenir et se transformer en « torche humaine » (焰ビト, Homura Bito?). Les membres des brigades spéciales Fire Force du royaume de Tokyo cherchent à découvrir les raisons de ce phénomène et parmi eux se trouve Shinra Kusakabe, surnommé « le démon », qui intègre la 8e brigade pour éradiquer le phénomène de combustion humaine et découvrir la vérité sur l'incendie ayant coûté la vie à sa mère et son frère, il y a douze ans.",
                              genre: .Shonen,
                              tags: [.Action,.Science_Fiction,.Surnaturel], galerie: ["fireforc1","fireforce2","fireforce3","fireforce4"],
                              réalisateur: "Yuki Yase",
                              studio: "David Production",
                              nbEpisodes: 48,
                              url: "https://redirector.googlevideo.com/videoplayback?expire=1597258229&ei=leUzX7W4DcWMkwbfz6SQAw&ip=168.235.107.82&id=o-AITAPd5IoUveW527eej-xoqzWU2J0Piimb6c7M4-jXvS&itag=22&source=youtube&requiressl=yes&mh=ki&mm=31%2C26&mn=sn-q4fl6ns6%2Csn-ogueln7d&ms=au%2Conr&mv=m&mvi=4&pl=22&initcwndbps=452500&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=76.231&lmt=1570664920937331&mt=1597236524&fvip=4&fexp=23883098&c=WEB&txp=2316222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhALQUK6NGQkzNPm7hmtLSJ5A0bOvMHUt1bB_-W0VNpwSGAiB94QLnRuPbfeVqxyE8GQJLEQuyXQ8WvndD0JVcmsyyAQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRAIgeD2Lv1xRDE2eo23G4vsH5CWxrIIM1ClgGKMeI07N3VUCIDL2CkIAdjXVQMEj59qeb8MqIG1uqvjJnAAF7q2ZPYsw&title=Fire+Force+-+Official+Cour+2+Trailer+%7C+English+Sub")

let skipbeat : Anime = .init(name: "Skip Beat!",
                             releaseDate: "05/10/2008",
                             poster: "skipbeat",
                             synopsis: "Mogami Kyōko et Shōtarō Fuwa sont des amis d'enfance. Kyōko connait Shō depuis toujours, aide ses parents, s'occupe de lui et lui pardonne tout, tel un prince. Aussi, lorsqu'à l'âge de 16 ans, ce dernier décide de quitter Kyoto, sa ville natale, pour fuguer à Tokyo où il a une chance de percer dans la chanson, il demande à Kyōko de l'accompagner. Celle-ci accepte, très heureuse d'avoir été choisie par son ami d'enfance. Mais une fois sur place, Shō est totalement absorbé par son travail de chanteur. Il ne rentre presque jamais dans l'appartement qu'ils occupent, alors que Kyōko fait deux boulots en même temps afin de pouvoir payer le loyer et le train de vie de Shō, désormais devenu célèbre. Pourtant la jeune fille continue à travailler jusqu'à l'épuisement pour son prince, et le tout, en gardant le sourire ! Un jour, alors qu'elle vient rendre une visite surprise à son ami de toujours et chanteur préféré, elle l'entend raconter à sa manager qu'il a une bonne pour assurer ses arrières. Ainsi, il n'a jamais eu besoin de faire un petit boulot. Il explique que cette pauvre cloche est venue volontairement avec lui et qu'elle est heureuse de le servir, aussi, pourquoi s'en priver ? Kyōko comprend alors que l'on s'est servie d'elle. Elle devient comme folle, hurle, pleure et libère ses Kyoko Démons, grâce à qui elle maudit Shō et devient elle-même… comme possédée. Tout cela, devant un Shō insensible et sarcastique. Elle fait le serment de se venger. Ce dernier lui explique cependant qu'ils font partie de deux univers différents. La seule façon de l'atteindre est de rentrer dans cet autre monde qu'est le sien, le monde du show-biz. La star lui lance donc le défi de devenir une plus grande célébrité que lui. Bien décidée à accomplir sa vengeance et après avoir radicalement changé son style, elle auditionne à la LME, une agence artistique où travaille Ren Tsuruga, concurrent de Shō.",
                             genre: .Shojo,
                             tags: [.Romance,.Comédie,.Slice_of_life],
                             galerie: ["skipbeat1","skipbeat2","skipbeat3","skipbeat4"],
                             réalisateur: "Kiyoko Sayama",
                             studio: "Hal Film Maker",
                             nbEpisodes: 25,
                             url: "https://redirector.googlevideo.com/videoplayback?expire=1597257668&ei=ZOMzX4_TBZWTkwanuLPQAg&ip=168.235.107.207&id=o-APQvGSovKMxRplbWobcy-PI6BQflivBXqCoPVFttvk4I&itag=22&source=youtube&requiressl=yes&mh=iu&mm=31%2C26&mn=sn-q4fl6ne6%2Csn-oguesnz6&ms=au%2Conr&mv=m&mvi=5&pl=22&initcwndbps=978750&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=122.926&lmt=1471743837571978&mt=1597235870&fvip=5&fexp=23883098&c=WEB&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhALWl8Aq4cFs2NidYAVDgBrtkdcAtutbfq-VdYBMwFmf-AiAxjDqsEvL4Ex-eD8XoEWsyKJyb0_iskwDbQn9F3p3GbQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRAIgeiz3MMkDMjMnSxJNicIu6arUz7J_G4dA5t5r4FExDmACIHITPKW5hQ6EFo05K-aiG9WUUE5OAD9fB1yTlHsp4VGo&title=Skip+Beat+Trailer")

let doraemon : Anime = .init(name: "Doraemon",
                             releaseDate: "02/04/1973",
                             poster: "doraemon",
                             synopsis: "Doraemon est un robot-chat bleu dépourvu d'oreilles venu du futur afin d'aider Nobita Nobi (野比のび太, nobi nobita?), un petit garçon japonais timoré, et l'empêcher d'accumuler par incompétence tellement de dettes que ses descendants doivent encore payer plusieurs générations plus tard. Doraemon possède une poche à quatre dimensions, de laquelle il sort (parfois à contre-cœur) d'innombrables gadgets futuristes pour aider Nobita à se défendre, arranger ses problèmes, rendre jaloux d'autres enfants, etc. Cependant, bien souvent, la situation dégénère quand Nobita essaye de jouer l'apprenti sorcier avec les gadgets de Doraemon. Les histoires ont toutes lieu au Japon contemporain. L'auteur y dépeint implicitement une fresque de tous les complexes des préadolescents (premières amours, timidité, travail scolaire pénible, relations d'amitié fragiles, etc.).",
                             genre: .Kodomo,
                             tags: [.Comédie,.Science_Fiction,.Slice_of_life],
                             galerie: ["doraemon1","doraemon2","doraemon3","doraemon4"],
                             réalisateur: "Tsutomu Shibayama",
                             studio: "TShin-Ei Animation",
                             nbEpisodes: 1787, url: "https://redirector.googlevideo.com/videoplayback?expire=1597257800&ei=6OMzX9WYB4Lz1gKmibnwCQ&ip=212.40.116.134&id=o-ANX_sootW8l1GTilaHlPNCKtLpf4vhjwDnzUK00uZQG9&itag=22&source=youtube&requiressl=yes&mh=k4&mm=31%2C26&mn=sn-c0q7lns7%2Csn-5hnekn7k&ms=au%2Conr&mv=u&mvi=4&pl=19&vprv=1&mime=video%2Fmp4&ratebypass=yes&dur=96.107&lmt=1567917024852671&mt=1597236048&fvip=4&fexp=23883098&c=WEB&txp=5316222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgVh8z1xW8PU5mkhe8J6awGB2uGqMSPNVstvEHm-XOyB8CICYc5a2pRabT5SkGOG-Ky91_zpeD3EYFVNeiTz8X_fvj&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRQIhAOLSgDUDxXOe54sGjVWo_7F2jvxpy1HRZIO4GqeEW-oTAiAmVPV_MqK1AoPka5XnVRzljQZZut9YKYBpoKSHnsbahg%3D%3D&title=DORAEMON%3A+NOBITA%27S+CHRONICLE+OF+THE+MOON+EXPLORATION+%28Official+Trailer%29+-+In+Cinemas+25+July+2019")

// Les Guides

let whatIsAManga : Guides = .init(title: "Qu'est-ce qu'un Manga ?",
                                  content: "Un manga est une bande dessinée japonaise.Le mot « manga » est par ailleurs parfois utilisé pour désigner, par extension, une bande dessinée non japonaise respectant les codes des productions populaires japonaises ou pour nommer, par métonymie, d'autres produits visuels rappelant certaines de ces bandes dessinées (dessins animés, style graphique, etc.).En raison du rythme élevé de parution, la plupart des mangas sont dessinés en noir et blanc.Les deux premiers pays les plus consommateurs de mangas sont le Japon et la France.La personne réalisant des mangas est appelée mangaka.Les mangas se lisent originellement de droite à gauche (ce qui correspond au sens de lecture japonais), en commençant par la dernière page.Cela amène une certaine confusion puisque la lecture des mots se fait alors dans le sens inverse de celui des cases (ce qui n'est pas le cas au Japon). Introduits en France en 1978 avec la revue Le cri qui tue, les mangas ne sont publiés dans ce sens que depuis 1995 environ. Toutefois, les éditeurs français ne se plient pas systématiquement à cette spécificité.Certains choisissent alors de simplement retourner les images, ce qui occasionne des incohérences pouvant sembler douteuses (un droitier qui devient gaucher, un coup porté au cœur qui perd son sens).",
                                  poster: "dbz",
                                  creationDate: "05/08/2020")

let whatIsAnAnime : Guides = .init(title: "Animé Kézako ?",
                                   content: "Un animenote 1 (アニメ?)Écouter la prononciation, également appelé parfois japanimenote 1 ou japanimation1, désigne une série d'animation ou un film d'animation en provenance du Japon. C'est le diminutif du mot animēshon (アニメーション?), lui-même transcription de l'anglais animation2.Alors que les toutes premières animations japonaises connues datent de 19173 et qu'un bon nombre de dessins animés originaux sont produits durant les décennies suivantes, la caractéristique et le style anime se développent durant les années 1960 (notamment grâce aux travaux d'Osamu Tezuka) et se popularisent hors des frontières du Japon durant les années 1970 et 1980.L’anime, comme le manga, possède une large audience au Japon et est facilement reconnaissable dans le monde entier. Les distributeurs peuvent diffuser un anime par le biais de chaînes télévisées, par vidéo, au cinéma ou encore en streaming.",
                                   poster: "dbz1",
                                   creationDate: "05/08/2020")

let mangaBDComics : Guides = .init(title: "Quelle différence entre les Bds, les Comics et les Mangas ?",
                                   content: "Lorsque j’ai commencé à m’intéresser au monde de la BD, je me suis rendue à ma médiathèque, la fleur au fusil et quelques titres en tête. Et puis, j’ai découvert les différents rayons et là, panique à bord! Alors entre les BD, les comics, les romans graphiques et le mangas, je ne savais plus trop où donner de la tête. Je me suis posée pleins de questions et je me suis dit qu’un petit point sur le blog pouvait faire du bien. La BD est le 9ème art. Par BD, on entend surtout soit une forme d’expression, soit un support. Will Eisner définit la BD ainsi: « La principale application de l’art séquentiel au support papier ». Donc, si je comprends bien, la BD c’est diviser une histoire en séquences dessinées. C’est un terme générique pour les différentes familles de BD. Et oui, maman BD a fait beaucoup de bébés. Il y a tout d’abord le comics. Le comics est le nom donné à la BD en Amérique du Nord. À la base, c’était un dessin d’humour qui tenait en deux ou trois cases et que l’on appelait le comic strip. Bientôt, des magazines voient le jour renfermant des épisodes mettant en scène la plupart du temps des super héros. Vient ensuite le manga, qui lui est d’origine asiatique. Très souvent en noir et blanc, il se lit de droite à gauche. Le rythme de parution est très rapide mais le mangaka (c’est le nom donné à l’auteur des mangas) n’a pas une liberté totale. Il peut voir son manga s’arrêter du jour au lendemain par manque de succès. Souvent épais, ce type de BD se décline en séries de plusieurs tomes. Les codes graphiques sont également très spécifiques (l’utilisation de différents plans et l’esthétique des personnages par exemple).",
                                   poster: "comicsMangas",
                                   creationDate: "05/08/2020")

let genreDeMangas : Guides = .init(title: "Les différents genres de mangas",
                                   content:
    """
La première grande classification des mangas se fait par l’âge du public cible. On parlera dans ce cas de classification démographique, ou classification par démographie. Relativement semblable au système PEGI pour les jeux-vidéo, ce système se subdivise également en fonction du sexe du public visé. Grâce à cette classification, le lecteur peut très vite savoir si le manga correspond à ce qu’il désire lire. Couplée à la classification par genres, la classification démographique est très efficace pour les éditeurs qui désirent cibler un certain public. Bien entendu, cette classification n’est qu’indicative et permet uniquement de renseigner le lecteur sur le contenu général de l’œuvre. Bien des lecteurs ne suivent d’ailleurs pas cette classification en toute connaissance de cause, tout comme certains lecteurs adultes s’intéressent à la littérature jeunesse ou pour jeunes adultes. Il existe en tout six classes démographiques, à savoir :

KOMODO
Littéralement, kodomo signifie « enfant » en japonais et est employé comme tel dans les conversations. Pour ce qui est des mangas, ce terme n’est utilisé que pour les pays non japonisants et signifie simplement que l’œuvre cible un public jeune, généralement des enfants de moins de 10 ans, et ce indépendamment de leur sexe. Au Japon, ce que nous appelons le genre kodomo est en réalité divisé en trois sous-genres, à savoir : nyūyōji (乳幼) ou yōji (幼児) pour les enfants de 0 à 8 ans, jōji (女児) pour les jeunes filles et danji (男児) pour les jeunes garçons.

SHONEN
En japonais, le mot shōnen signifie littéralement « adolescent ». Pour nous autres Occidentaux, le terme shōnen est employé pour caractériser les mangas destinés à un public masculin âgé de 8 à 18 ans. Également écrit Shounen quand il est écrit en wāpuro rōmaji (une romanisation de la langue japonaise), certains mangas appartenant à cette classification démographique peuvent, chez certains éditeurs, s’adresser à un public plus âgé que le public japonais. l’équivalent coréen du shōnen est le sonyun.

SHOJO
En japonais, le mot Shōjo signifie littéralement « jeune fille » ou « petite fille ». Entrent dans cette catégorie les mangas ayant pour cible éditoriale de jeunes adolescentes entre 8 et 18 ans. Utilisé pour le public occidental, ce mot désigne un ensemble d’œuvres qui possèdent des propres caractéristiques et canons.

SEINEN
En japonais, le mot Seinen signifie « jeune homme ». Quand il est employé pour caractériser une catégorie de mangas, ce terme regroupe toutes les œuvres dont la cible est constituée par les jeunes adultes ayant un âge compris entre 15 et 30 ans et étant de sexe masculin. Il arrive néanmoins que le genre Seinen soit destiné à des personnes plus âgées.
""",
                                   poster: "genresManga",
                                   creationDate: "05/08/2020")



// Liste d'Users

let userData = UserInfo(name: "Lucie", password: "motDeP@sse", email: "lucie@monemail.net", picture: "lucie")

//let userData : UserInfo = .init(name: "Adrian", password: "autreM0tdeP@sse", email: "adrian@sonemail.net", picture: "profilePic")
//
//let userData : UserInfo = .init(name: "Emre", password: "P@ssw0rd", email: "emre@tonemail.net", picture: "emre")
//
//let userData : UserInfo = .init(name: "Dimitry", password: "myPassword", email: "dimitry@mail.net", picture: "dimitry")
//
//let userData : UserInfo = .init(name: "Mektoub", password: "motDePasse", email: "mektoub", picture: "mektoub")


func getUserName() -> String {
    let userName = UserDefaults.standard.string(forKey: "username") ?? ""
    return userName
}

func getUserEmail() -> String {
    let userEmail = UserDefaults.standard.string(forKey: "email") ?? ""
    return userEmail
}
