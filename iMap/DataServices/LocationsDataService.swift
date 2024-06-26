//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Rynek we Wrocławiu",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1091, longitude: 17.0326),
            description: "Rynek we Wrocławiu jest jednym z największych rynków miejskich w Europie i stanowi serce miasta, pełne zabytków, restauracji i kawiarni.",
            description_en: "The Wrocław Market Square is one of the largest city squares in Europe and the heart of the city, full of monuments, restaurants, and cafes.",
            imageNames: [
                "wroclaw-rynek-1",
                "wroclaw-rynek-2",
                "wroclaw-rynek-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Rynek_we_Wrocławiu"),
        Location(
            name: "Panorama Racławicka",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1108, longitude: 17.0481),
            description: "Panorama Racławicka to monumentalne dzieło sztuki, które przedstawia bitwę pod Racławicami. Jest to jedno z najważniejszych muzeów we Wrocławiu.",
            description_en: "The Racławice Panorama is a monumental work of art depicting the Battle of Racławice. It is one of the most important museums in Wrocław.",
            imageNames: [
                "wroclaw-panorama-1",
                "wroclaw-panorama-2",
                "wroclaw-panorama-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Panorama_Racławicka"),
        Location(
            name: "Ostrów Tumski",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1142, longitude: 17.0465),
            description: "Ostrów Tumski to najstarsza część Wrocławia, znana z pięknych katedr i zabytkowych budowli. Jest to również miejsce o dużym znaczeniu historycznym i religijnym.",
            description_en: "Ostrów Tumski is the oldest part of Wrocław, known for its beautiful cathedrals and historic buildings. It is also a place of great historical and religious significance.",
            imageNames: [
                "wroclaw-ostrowtumski-1",
                "wroclaw-ostrowtumski-2",
                "wroclaw-ostrowtumski-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Ostrów_Tumski_(Wrocław)"),
        Location(
            name: "Hala Stulecia",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1066, longitude: 17.0775),
            description: "Hala Stulecia to jedno z najważniejszych osiągnięć architektury XX wieku. Znajduje się na Liście Światowego Dziedzictwa UNESCO i jest miejscem wielu wydarzeń kulturalnych.",
            description_en: "The Centennial Hall is one of the most important achievements of 20th-century architecture. It is a UNESCO World Heritage Site and a venue for many cultural events.",
            imageNames: [
                "wroclaw-halastulecia-1",
                "wroclaw-halastulecia-2",
                "wroclaw-halastulecia-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Hala_Stulecia"),
        Location(
            name: "Zoo Wrocławskie i Afrykarium",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1047, longitude: 17.0758),
            description: "Zoo Wrocławskie to jedno z najstarszych ogrodów zoologicznych w Polsce, a Afrykarium to jedyny na świecie kompleks poświęcony faunie Afryki.",
            description_en: "Wrocław Zoo is one of the oldest zoos in Poland, and the Afrykarium is the only complex in the world dedicated to African fauna.",
            imageNames: [
                "wroclaw-zoo-1",
                "wroclaw-zoo-2",
                "wroclaw-zoo-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Zoo_Wrocławskie"),
        Location(
            name: "Uniwersytet Wrocławski",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1141, longitude: 17.0364),
            description: "Uniwersytet Wrocławski jest jednym z najstarszych uniwersytetów w Europie Środkowej. Znany jest z pięknej barokowej auli Leopoldina.",
            description_en: "The University of Wrocław is one of the oldest universities in Central Europe. It is known for its beautiful Baroque Leopoldina Hall.",
            imageNames: [
                "wroclaw-uniwersytet-1",
                "wroclaw-uniwersytet-2",
                "wroclaw-uniwersytet-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Uniwersytet_Wrocławski"),
        Location(
            name: "Ogród Japoński",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1052, longitude: 17.0794),
            description: "Ogród Japoński to jedno z najbardziej malowniczych miejsc we Wrocławiu, znajdujące się w Parku Szczytnickim. Zapewnia wyjątkową atmosferę spokoju i harmonii.",
            description_en: "The Japanese Garden is one of the most picturesque places in Wrocław, located in Szczytnicki Park. It offers a unique atmosphere of peace and harmony.",
            imageNames: [
                "wroclaw-ogrodjaponski-1",
                "wroclaw-ogrodjaponski-2",
                "wroclaw-ogrodjaponski-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Ogród_Japoński_we_Wrocławiu"),
        Location(
            name: "Sky Tower",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.0953, longitude: 17.0243),
            description: "Sky Tower to najwyższy budynek we Wrocławiu, oferujący panoramiczne widoki na miasto z punktu widokowego znajdującego się na jego szczycie.",
            description_en: "Sky Tower is the tallest building in Wrocław, offering panoramic views of the city from its observation deck.",
            imageNames: [
                "wroclaw-skytower-1",
                "wroclaw-skytower-2",
                "wroclaw-skytower-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Sky_Tower"),
        Location(
            name: "Hydropolis",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1027, longitude: 17.0504),
            description: "Hydropolis to centrum nauki i wiedzy o wodzie, które oferuje interaktywne wystawy na temat wody w różnych aspektach.",
            description_en: "Hydropolis is a science and knowledge center about water, offering interactive exhibits on various aspects of water.",
            imageNames: [
                "wroclaw-hydropolis-1",
                "wroclaw-hydropolis-2",
                "wroclaw-hydropolis-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Hydropolis"),
        Location(
            name: "Most Grunwaldzki",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1096, longitude: 17.0485),
            description: "Most Grunwaldzki to jeden z najbardziej rozpoznawalnych mostów we Wrocławiu, łączący centrum miasta z osiedlem Dąbie.",
            description_en: "The Grunwald Bridge is one of the most recognizable bridges in Wrocław, connecting the city center with the Dąbie district.",
            imageNames: [
                "wroclaw-mostgrunwaldzki-1",
                "wroclaw-mostgrunwaldzki-2",
                "wroclaw-mostgrunwaldzki-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Most_Grunwaldzki_(Wrocław)"),
        Location(
            name: "Opera Wrocławska",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1034, longitude: 17.0328),
            description: "Opera Wrocławska to jedno z najważniejszych miejsc kulturalnych we Wrocławiu, oferujące szeroki repertuar oper, baletów i koncertów.",
            description_en: "The Wrocław Opera is one of the most important cultural venues in Wrocław, offering a wide repertoire of operas, ballets, and concerts.",
            imageNames: [
                "wroclaw-opera-1",
                "wroclaw-opera-2",
                "wroclaw-opera-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Opera_Wrocławska"),
        Location(
            name: "Muzeum Architektury",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1082, longitude: 17.0431),
            description: "Muzeum Architektury we Wrocławiu to jedyne takie muzeum w Polsce, poświęcone historii i rozwoju architektury.",
            description_en: "The Museum of Architecture in Wrocław is the only museum of its kind in Poland, dedicated to the history and development of architecture.",
            imageNames: [
                "wroclaw-muzeumarchitektury-1",
                "wroclaw-muzeumarchitektury-2",
                "wroclaw-muzeumarchitektury-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Muzeum_Architektury_we_Wrocławiu"),
        Location(
            name: "Kościół św. Elżbiety",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1123, longitude: 17.0301),
            description: "Kościół św. Elżbiety to gotycka bazylika we Wrocławiu, która oferuje niesamowite widoki na miasto z wieży widokowej.",
            description_en: "St. Elizabeth's Church is a Gothic basilica in Wrocław, offering incredible views of the city from its observation tower.",
            imageNames: [
                "wroclaw-kosciol-elzbiety-1",
                "wroclaw-kosciol-elzbiety-2",
                "wroclaw-kosciol-elzbiety-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Bazylika_św._Elżbiety_(Wrocław)"),
        Location(
            name: "Hala Targowa",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1131, longitude: 17.0415),
            description: "Hala Targowa we Wrocławiu to zabytkowy budynek, który pełni funkcję tradycyjnego targowiska, oferując szeroki wybór lokalnych produktów.",
            description_en: "The Market Hall in Wrocław is a historic building serving as a traditional market, offering a wide selection of local products.",
            imageNames: [
                "wroclaw-halatargowa-1",
                "wroclaw-halatargowa-2",
                "wroclaw-halatargowa-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Hala_Targowa_(Wrocław)"),
        Location(
            name: "Park Szczytnicki",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1099, longitude: 17.0773),
            description: "Park Szczytnicki to jeden z najstarszych i największych parków we Wrocławiu, idealne miejsce na relaks i spacery wśród zieleni.",
            description_en: "Szczytnicki Park is one of the oldest and largest parks in Wrocław, an ideal place for relaxation and walks among greenery.",
            imageNames: [
                "wroclaw-parkszczytnicki-1",
                "wroclaw-parkszczytnicki-2",
                "wroclaw-parkszczytnicki-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Park_Szczytnicki"),
        Location(
            name: "Fontanna Multimedialna",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1066, longitude: 17.0776),
            description: "Fontanna Multimedialna przy Hali Stulecia to atrakcja, która oferuje spektakularne pokazy światła i dźwięku, przyciągające zarówno mieszkańców, jak i turystów.",
            description_en: "The Multimedia Fountain near the Centennial Hall is an attraction offering spectacular light and sound shows, attracting both residents and tourists.",
            imageNames: [
                "wroclaw-fontannamultimedialna-1",
                "wroclaw-fontannamultimedialna-2",
                "wroclaw-fontannamultimedialna-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Fontanna_multimedialna_przy_Hali_Stulecia"),
        Location(
            name: "Muzeum Narodowe we Wrocławiu",
            cityName: "Wrocław",
            coordinates: CLLocationCoordinate2D(latitude: 51.1080, longitude: 17.0488),
            description: "Muzeum Narodowe we Wrocławiu to jedna z największych instytucji kulturalnych w Polsce, oferująca bogate zbiory sztuki i kultury.",
            description_en: "The National Museum in Wrocław is one of the largest cultural institutions in Poland, offering rich collections of art and culture.",
            imageNames: [
                "wroclaw-muzeumnarodowe-1",
                "wroclaw-muzeumnarodowe-2",
                "wroclaw-muzeumnarodowe-3",
            ],
            link: "https://pl.wikipedia.org/wiki/Muzeum_Narodowe_we_Wrocławiu"),
        Location(
                    name: "Stadion Wrocław",
                    cityName: "Wrocław",
                    coordinates: CLLocationCoordinate2D(latitude: 51.1389, longitude: 16.9689),
                    description: "Stadion Miejski we Wrocławiu, znany również jako Stadion Wrocław, jest jednym z najnowocześniejszych stadionów piłkarskich w Polsce. Został otwarty w 2011 roku i jest domowym stadionem Śląska Wrocław.",
                    description_en: "The Municipal Stadium in Wrocław, also known as Stadion Wrocław, is one of the most modern football stadiums in Poland. It was opened in 2011 and serves as the home stadium of Śląsk Wrocław.",
                    imageNames: [
                        "wroclaw-stadion-1",
                        "wroclaw-stadion-2",
                        "wroclaw-stadion-3",
                    ],
                    link: "https://pl.wikipedia.org/wiki/Stadion_Miejski_we_Wrocławiu")
            ]
    
}
