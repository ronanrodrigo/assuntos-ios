//
//  SubjectGatewayFake.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation

class SubjectGateway: GatewaySubject {
    var subjects: [Subject]
    var subject: Subject

    init(){
        let scienceFictionSuggestionFirst = Suggestion(
            title: "Apocalipse zumbi",
            description: "Apocalipse zumbi é um cenário apocalíptico hipotético popular na ficção científica e no terror.")
        let scienceFictionSuggestionSecond = Suggestion(
            title: "Viagem no tempo",
            description: "Viagem no tempo se refere ao conceito de mover-se para trás e/ou para frente através de pontos diferentes no tempo em um modo análogo à mobilidade pelo espaço.")
        let scienceFictionSuggestionThird = Suggestion(
            title: "Guerra espacial",
            description: "Star Wars (Guerra nas Estrelas no Brasil e Guerra das Estrelas em Portugal) é o título de uma franquia de space opera épica americana criada pelo cineasta George Lucas.\nA franquia conta com uma série de seis filmes de fantasia científica, sendo que o primeiro filme da série, sob o título Star Wars[1] , foi lançado originalmente pela 20th Century Fox em 25 de maio de 1977 e tornou-se um fenômeno mundial de cultura popular. Foi acompanhado por duas sequências, O Império Contra-Atraca e O Retorno do Jedi, lançadas em intervalos de três anos. Em 1999, criou uma nova trilogia em forma de prequela, mais uma vez lançada em intervalos de três anos, com o último filme sendo lançado em 2005. As reações à trilogia original foram extremamente positivas, enquanto a trilogia de prequela recebeu reações mistas tanto do público geral quanto de críticos especializados. Mesmo assim, todos os seis filmes foram bem sucedidos nas bilheterias e receberam e/ou ganharam prêmios no Óscar.")
        let urbanMobilitySuggestion = Suggestion(
            title: "Novos rumos da bicicleta no cenário urbano",
            description: "A sociedade tem feito seu papel tornando a bicicleta uma obrigação social e forçando o poder público a pensar e desenvolver políticas que melhorem as condições de quem pedala. Promover momentos que aprimorem e aprofundem a discussão não só estabelece uma maior aproximação entre sociedade e poder público como também desenvolve a consciência cidadã.")
        
        let scienceFiction = Subject(title: "Ficção científica", suggestions: [scienceFictionSuggestionFirst, scienceFictionSuggestionSecond, scienceFictionSuggestionThird])
        let urbanMobility = Subject(title: "Mobilidade urbana", suggestions: [urbanMobilitySuggestion])
        
        self.subjects = [scienceFiction, urbanMobility]
        self.subject = Subject()
    }
    
    func addSubject(subject: Subject) -> Subject {
        self.subject = subject
        self.subjects.append(self.subject)
        return self.subject
    }
    
    func getSubjects() -> [Subject] {
        return subjects
    }
    
    func getRandomSuggestion(subject: Subject) -> Suggestion {
        return subject.suggestions!.sample()
    }
}