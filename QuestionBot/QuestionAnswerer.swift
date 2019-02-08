struct MyQuestionAnswerer {
    
    let visitedCountries:[String] = [
        "argentina",
        "brazil",
        "honduras",
        "chile",
        "guatemala"
    ]
    
    let livedInCountries: [String] = [
        "mexico",
        "canada",
        "united states"
    ]
    
    let wouldLoveToVisit: [String] = [
        "italy",
        "greece",
        "spain",
        "japan"
    ]
    
    
    func responseTo(question: String) -> String {
        
        let lowercaseQuestion: String = question.lowercased();
        
        for visitedCountry in visitedCountries {
            if lowercaseQuestion.range(of: visitedCountry) != nil {
                return "I visited \(visitedCountry) before. I can't wait to go back!"
            }
        }
        
        for wouldLoveToVisitCountry in wouldLoveToVisit {
            if lowercaseQuestion.range(of: wouldLoveToVisitCountry) != nil {
                return "I would love to visit \(wouldLoveToVisitCountry) one day. Hopefully sooner than later!"
            }
        }
        
        for livedInCountry in livedInCountries {
            if lowercaseQuestion.range(of: livedInCountry) != nil {
                return "I lived in \(livedInCountry) and it was an awesome experience!"
            }
        }
    
        return "I have no strong opinioin about that place."
    }
}
