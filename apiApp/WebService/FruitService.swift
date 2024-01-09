//
//  FruitService.swift
//  apiApp
//
//  Created by Raghav Deo on 12/12/23.
//

import Foundation
class FruitApiService
{
    var array=[Fruits]()
    func getAllFruits(completion:@escaping ([Fruits?])->())
    {
        guard let url = URL(string: "https://www.fruityvice.com/api/fruit/all") else
        {
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, err in
            guard let data = data
                    else
            {
                return
            }
            let result = try? JSONDecoder().decode([Fruits].self, from: data)
            if let res = result
            {
                for item in res
                {
                    self.array.append(item)
                }
            }
            
                completion(self.array)
            
        }.resume()
        
    }
    
}
