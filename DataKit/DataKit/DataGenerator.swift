//
//  CatGenerator.swift
//  DataKit
//
//  Created by Leandro Jabur Monteiro on 01/12/17.
//  Copyright © 2017 Leandro Jabur Monteiro. All rights reserved.
//

import Foundation

open class Fighter {
    public let name: String
    public let combo: String
    public let description: String
    public let imageIco: String
    public let history: String
    
    init(name: String, combo: String, description: String, imageIco: String, history: String) {
        self.name = name
        self.combo = combo
        self.description = description
        self.imageIco = imageIco
        self.history = history
    }
    
}

public func fillFighterDataSource(sections: Int, rows: Int) -> [Int: [Fighter]] {
    var dict = [Int: [Fighter]]()
    
    for i in 0..<sections {
        var array = [Fighter]()
        for y in 0..<rows {
            let nameFighter = getNameFighter(pos: y)
            let nameCombo = getNameCombo(fighterName: nameFighter)
            
            let fighter = Fighter(name: nameFighter,
                                  combo: nameCombo,
                                  description: getDescriptionCombo(comboName: nameCombo),
                                  imageIco: getFighterIco(fighterName: nameFighter),
                                  history: getFighterHistory(fighterName: nameFighter))
            
            array.append(fighter)
        }
        dict[i] = array
    }
    
    return dict
}

fileprivate func getNameFighter(pos: Int) -> String {
    let fighter = ["Ryu",
                   "Ken",
                   "Akuma",
                   "ChunLi",
                   "Honda",
                   "Blanka",
                   "Guile",
                   "Zangief",
                   "Dhalsim",
                   "Cammy"]
    return fighter[pos]
}

fileprivate func getNameCombo(fighterName: String ) -> String {
    let fighterCombo = ["Ryu":"Especiais Ryu",
                   "Ken":"Especiais Ken",
                   "Akuma":"Especiais Akuma",
                   "ChunLi":"Especiais ChunLi",
                   "Honda":"Especiais Honda",
                   "Blanka":"Especiais Blanka",
                   "Guile":"Especiais Guile",
                   "Zangief":"Especiais Zangief",
                   "Dhalsim":"Especiais Dhalsim",
                   "Cammy":"Especiais Cammy"]
    return fighterCombo[fighterName]!
}

fileprivate func getDescriptionCombo(comboName: String ) -> String {
    let fighterCombo = ["Especiais Ryu":"Hadouken: Meia-Lua + S \n\nShoryuken: Frente, Baixo, Frente + S\n\nEspecial: Hadouken + SSS",
                        "Especiais Ken":"Hadouken: Meia-Lua + S \n\nShoryuken: Frente, Baixo, Frente + S\n\nEspecial: Shoryuken + SSS",
                        "Especiais Akuma":"Hadouken: Meia-Lua + S \n\nShoryuken: Frente, Baixo, Frente + S\n\nEspecial: SF, SF, Frente, CF, SF",
                        "Especiais ChunLi":"Spinning Bird Kick: baixo + cima + chute \n\nHyakuretsu Kyaku: aperte chute várias vezes \n\nEspecial: segure trás, depois solte pra frente, trás, frente + chute",
                        "Especiais Honda":"Hyakuretsu Harite: Aperte várias vezes algum botão de soco\n\nSuper Zutsuki: Segure trás depois frente + soco\n\nEspecial: segure trás, depois frente, trás, frente + soco",
                        "Especiais Blanka":"Electric Thunder: aperte soco varias e repetidas vezes\n\nRolling Attack: segure trás e solte apertando pra frente + soco\n\nEspecial: segure trás, depois solte pra frente, trás, frente + soco segurando soco",
                        "Especiais Guile":"Knee Bazooka: trás, frente + chute médio\n\nSonic Boom: segure trás, solte pra frente + soco\n\nEspecial: segure diagonal inferior trás, diagonal inferior frente, diagonal inferior trás, diagonal superior frente + chute",
                        "Especiais Zangief":"Flying Body Attack: no ar, baixo + soco forte\n\nDScrew Piledriver: 360 no direcional + soco\n\nEspecial:duas vezes 360 no direcional + soco",
                        "Especiais Dhalsim":"Drill Zutsuki: no ar, baixo + soco forte\n\nYoga Fire: baixo, frente + soco\n\nEspecial: trás, baixo, frente, trás, baixo, frente + soco",
                        "Especiais Cammy":"Spiral Arrow: baixo, frente + chute\n\nCannon Spike: frente, trás, frente + chute\n\nEspecial: baixo, frente, baixo, frente + soco"]
    return fighterCombo[comboName]!
}

fileprivate func getFighterIco(fighterName: String ) -> String {
    let fighterCombo = ["Ryu":"Ryu-01-76",
                        "Ken":"ken-76",
                        "Akuma":"Akuma-76",
                        "ChunLi":"chunLi-76",
                        "Honda":"honda-76",
                        "Blanka":"blanka-76",
                        "Guile":"guile-76",
                        "Zangief":"zangief-76",
                        "Dhalsim":"Dhalsim-76",
                        "Cammy":"cammy-76"]
    return fighterCombo[fighterName]!
}

fileprivate func getFighterHistory(fighterName: String ) -> String {
    let fighterHistory = ["Ryu":"Pouco se sabe a respeito da origem da família de Ryu Hoshi. Algumas versões dão por certo que ele é sobrinho e filho adotivo de Gouken. Sua mãe, cujo destino é incerto, teria morrido quando ele ainda era uma criança.",
                        "Ken":"Quando Ken tinha cerca de 12 anos, seu pai, um rico empresário do ramo hoteleiro, pensou que seu filho necessitava aprender sobre disciplina, porque ele queria que Ken se tornasse capaz de assumir seus negócios e perpetuar a fortuna da família Masters.",
                        "Akuma":"Akuma nasceu em 1994 e tem um irmão chamado Gouken que treinou Ryu e Ken o estilo karate Ansatsuken.",
                        "ChunLi":"Chun-Li é uma mulher de personalidade forte, destemida, inteligente, e corajosa. Quando esta no trabalho demonstra sempre grande seriedade, empenho e dedicação para resolver quaisquer tipo de missão.",
                        "Honda":"E. Honda treinou sua vida inteira para se tornar o maior lutador de sumô de todos os tempos. Ele recebeu o segundo título mais alto do Ōzeki. Honda ficou aborrecido pelo fato de que o resto do mundo não leva o sumô a sério, e jurou que provaria que os lutadores de sumô são os maiores lutadores do mundo.",
                        "Blanka":"Um pequeno garoto chamado Jimmy estava no avião a caminho de visitar sua mãe, quando repentinamente um poderoso raio acerta a aeronave com força. O raio parecia ter estranhas propriedades e começou a criar uma mutação no corpo do Jimmy. Jimmy não mais existia, mas um ser que se autoproclamava Blanka, já que na primeira vez que os nativos do Brasil o viram, sua pele pálida e estranhos movimentos.",
                        "Guile":"Guile é um homem caucasiano alto de porte físico bem forte, Guile derrota Bison que além de não demonstrar nenhum arrependimento o provoca para matá-lo ali mesmo, mas Guile hesita ao ser interrompido com a chegada de sua esposa, Julia e sua filha, Amy, que tentam convencê-lo a desistir de sua vingança e voltar para casa, dizendo que tirar a vida de Bison não trará Charlie de volta.  Guile, recusando-se a se tornar um assassino como Bison volta para casa com sua família",
                        "Zangief":"Zangief costuma ser retratado como um lutador com muito orgulho de seu porte físico e com um enorme, porém ingênuo sentimento de patriotismo, que infelizmente faz com que seja enganado as vezes. Houve uma ocasião no capítulo Zero onde foi revelado que as intenções do presidente Gorbachev era apenas para ganho político, e Zangief não percebendo isso continuou a lutar pela glória e honra da Rússia.",
                        "Dhalsim":"Ele é indiano, e tendo sido presenteado pelo deus hindu do fogo Agni com a capacidade mística de soltar fogo pela boca, possui as famosas técnicas Yoga Fire, Yoga Flame e mais tarde, desenvolve o antiaéreo Yoga Blast. Ele se destaca também por ter a habilidade de esticar braços, pernas, tronco e pescoço a longas distâncias e além disso também se teletransportar.",
                        "Cammy":"Cammy é uma das assassinas de M. Bison. Ela foi criada para ser o corpo perfeito para M. Bison. Cammy era de uma unidade altamente treinada de assassinos da Shadaloo, composta por mais doze meninas, que foram raptadas e tiveram seu DNA alterado, conhecidas como Dolls. Seu codinome era Killer Bee."]
    return fighterHistory[fighterName]!
}


