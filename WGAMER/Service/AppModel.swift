//
//  AppModel.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import Foundation


class AppModel: ObservableObject {
    var product: ProductModel = ProductModel(product: [
        Product(id: UUID().uuidString,
                name: "Super Mario World",
                price: 232,
                image: "mario",
                description: "Super Mario World é um clássico jogo de plataforma desenvolvido pela Nintendo. Foi lançado em 1990 para o Super Nintendo e é protagonizado pelo icônico personagem Mario. Os jogadores exploram um colorido mundo cheio de níveis desafiadores, inimigos e power-ups, enquanto tentam resgatar a Princesa Peach das garras de Bowser.",
                category: "Todos"),
        
        Product(id: UUID().uuidString,
                name: "Call of Duty - WARZONE",
                price: 211,
                image: "callofdutyW",
                description: "Call of Duty: Warzone é um jogo de tiro em primeira pessoa, parte da popular franquia Call of Duty. Lançado em 2020, é um battle royale gratuito que se passa no universo de Call of Duty Modern Warfare. Os jogadores competem em equipes ou individualmente em um mapa vasto, lutando para serem os últimos sobreviventes em meio a ação intensa e armas realistas.",
                category: "FPS"),
        
        Product(id: UUID().uuidString,
                name: "God of War 4 ",
                price: 111,
                image: "godofwar4",
                description: "God of War 4, também conhecido simplesmente como 'God of War' (2018), é um jogo de ação e aventura desenvolvido pela Santa Monica Studio e publicado pela Sony Interactive Entertainment. Este jogo segue Kratos, um antigo deus da guerra grego, em uma nova jornada ambientada na mitologia nórdica. O jogo é elogiado por sua narrativa emocional e jogabilidade envolvente.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "League of Legends",
                price: 223,
                image: "lol",
                description: "League of Legends, ou LoL, é um popular jogo de estratégia em equipe desenvolvido pela Riot Games. Lançado em 2009, os jogadores escolhem entre uma ampla variedade de campeões, cada um com habilidades únicas, e batalham em partidas multiplayer online de estratégia e ação. O objetivo é destruir a base inimiga enquanto defende a sua própria.",
                category: "MOBA"),
        
        
        
        
        Product(id: UUID().uuidString,
                name: "DOTA2",
                price: 0,
                image: "dota2",
                description: "Dota 2 é um jogo de estratégia em equipe desenvolvido pela Valve Corporation. Ele é a sequência de Defense of the Ancients (Dota), um mod para Warcraft III. No jogo, duas equipes de cinco jogadores cada escolhem heróis com habilidades únicas e lutam para destruir a base inimiga, chamada de Ancients. Dota 2 é conhecido por sua complexidade estratégica e competições de alto nível.",
                category: "MOBA"),
        
        
        
        Product(id: UUID().uuidString,
                name: "Cyberpunk 2077",
                price: 260,
                image: "2077",
                description: "Cyberpunk 2077 é um jogo de RPG de ação em mundo aberto desenvolvido pela CD Projekt Red. O jogo se passa em um futuro distópico e tecnológico, onde os jogadores assumem o papel de V, um mercenário em busca de poder e imortalidade. O jogo é conhecido por sua narrativa rica e ambientação impressionante.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "Assassin's Creed",
                price: 220,
                image: "assassins-creed",
                description: "Assassin's Creed é uma série de jogos de ação e aventura da Ubisoft. Os jogos permitem que os jogadores explorem ambientes históricos enquanto desempenham o papel de assassinos habilidosos. A série se destaca por suas narrativas intrigantes e jogabilidade furtiva.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "eFootball",
                price: 120,
                image: "efootball",
                description: "eFootball é uma série de jogos de futebol desenvolvida pela Konami. Ela se concentra em proporcionar experiências realistas de futebol, com gráficos impressionantes e mecânicas de jogo autênticas.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "Far Cry",
                price: 200,
                image: "Far-Cry",
                description: "Far Cry é uma série de jogos de tiro em primeira pessoa desenvolvida pela Ubisoft. Cada jogo da série apresenta um ambiente de mundo aberto único, com elementos de exploração, combate e uma narrativa envolvente.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "Final Fantasy VII Remake",
                price: 225,
                image: "Final-Fantasy-VII-Remake",
                description: "Final Fantasy VII Remake é uma recriação do clássico RPG japonês da Square Enix. Oferece gráficos atualizados, jogabilidade moderna e uma narrativa aprimorada, permitindo que os jogadores revivam a jornada do icônico Cloud Strife.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "Grand Theft Auto: SA",
                price: 240,
                image: "Grand-Theft-Auto-SAN",
                description: "GTA: San Andreas é um jogo de ação em mundo aberto da série Grand Theft Auto. Ambientado em uma versão fictícia da Califórnia, os jogadores assumem o papel de Carl Johnson e exploram uma narrativa envolvente repleta de atividades criminosas.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "Grand Theft Auto III",
                price: 180,
                image: "Grand-Theft-Auto",
                description: "GTA III é um jogo de ação em mundo aberto que ajudou a definir o gênero. Os jogadores assumem o papel de Claude e exploram a cidade de Liberty City enquanto se envolvem em atividades criminosas.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "Grand Theft Auto V",
                price: 320,
                image: "Grand-Theft-Auto-V",
                description: "GTA V é um jogo de ação em mundo aberto da série Grand Theft Auto. Situado na cidade fictícia de Los Santos, permite que os jogadores alternem entre três personagens jogáveis enquanto embarcam em missões e atividades ilegais.",
                category: "Aventura"),
        
        
        Product(id: UUID().uuidString,
                name: "Mortal Kombat",
                price: 100,
                image: "mortal-kombat",
                description: "Mortal Kombat é uma icônica série de jogos de luta da NetherRealm Studios. Conhecida por sua violência gráfica e personagens memoráveis, a série é uma das mais antigas e influentes do gênero.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "Resident Evil 6",
                price: 150,
                image: "Resident-Evil-6",
                description: "Resident Evil 6 é um jogo de survival horror da Capcom. Ele apresenta múltiplos protagonistas e histórias interconectadas, misturando ação e terror em um mundo infestado de zumbis.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "The Last of Us",
                price: 300,
                image: "The-Last-of-Us",
                description: "The Last of Us é um jogo de ação e sobrevivência da Naughty Dog. A história segue Joel e Ellie em um mundo pós-apocalíptico, enquanto eles lutam contra inimigos e exploram relacionamentos complexos.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "The Last of Us Part II",
                price: 350,
                image: "The-Last-of-Us-2",
                description: "A sequência de The Last of Us, Part II, continua a narrativa pós-apocalíptica, agora com Ellie como protagonista. O jogo aborda temas de vingança, moralidade e sobrevivência em um mundo devastado.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "The Witcher",
                price: 180,
                image: "Witcher",
                description: "The Witcher é o primeiro jogo da série baseada nos livros de Andrzej Sapkowski. Ele apresenta Geralt de Rivia, um caçador de monstros conhecido como Witcher, que luta contra criaturas sobrenaturais em um mundo medieval sombrio. O jogo combina elementos de RPG com ação, permitindo aos jogadores tomar decisões que afetam o enredo e o destino dos personagens.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "The Witcher 3: Wild Hunt",
                price: 200,
                image: "Witcher-3",
                description: "The Witcher 3: Wild Hunt é o terceiro jogo da série e um dos RPGs mais aclamados de todos os tempos. Nele, os jogadores assumem novamente o papel de Geralt de Rivia em uma aventura épica de mundo aberto. Com uma narrativa rica, personagens complexos, missões envolventes e um vasto mundo para explorar, o jogo oferece uma experiência imersiva de caça a monstros, intriga política e escolhas morais.",
                category: "Aventura"),
        
        Product(id: UUID().uuidString,
                name: "Sniper Elite",
                price: 150,
                image: "Sniper-Elite",
                description: "Sniper Elite é um jogo de tiro tático que se passa durante a Segunda Guerra Mundial. Os jogadores encarnam um atirador de elite e precisam realizar missões furtivas, eliminando alvos específicos a longas distâncias. O jogo se destaca por seu realismo balístico, que inclui cenas de tiros de precisão detalhados e a habilidade de ver as balas atravessando o ar até o alvo.",
                category: "FPS"),
        
        
        Product(id: UUID().uuidString,
                name: "Sniper Elite 2",
                price: 121,
                image: "Sniper-Elite-2",
                description: "Sniper Elite 2 é a sequência do primeiro jogo e continua a história do atirador de elite. Ambientado durante a Segunda Guerra Mundial, oferece uma jogabilidade aprimorada e gráficos melhorados. Os jogadores enfrentam desafios táticos mais complexos enquanto tentam eliminar alvos inimigos em cenários realistas.",
                category: "FPS"),
        
        
        
        
        
    ], categories: [
        ProductCategory(id: UUID().uuidString,
                                     name: "Todos",
                                     icon: "Todos"),
        ProductCategory(id: UUID().uuidString,
                                     name: "Battle Royale",
                                     icon: "br"),
        
        ProductCategory(id: UUID().uuidString,
                                     name: "Aventura",
                                     icon: "Aventura"),
        
        ProductCategory(id: UUID().uuidString,
                                     name: "MOBA",
                                     icon: "MOBA"),
        
        ProductCategory(id: UUID().uuidString,
                                     name: "FPS",
                                     icon: "FPS"),
    
        ]
    )
}
