//
//  ViewModel.swift
//  apiApp
//
//  Created by Raghav Deo on 12/12/23.
//

import Foundation
class ViewModel : ObservableObject
{
    @Published  var fruitsArray=[Fruits?]()
    init(){
        FruitApiService().getAllFruits { fruits in
        print(fruits)
            DispatchQueue.main.async {
                self.fruitsArray = fruits
            }
           
        }
    }
}
