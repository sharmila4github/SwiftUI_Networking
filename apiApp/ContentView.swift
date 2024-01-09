//
//  ContentView.swift
//  apiApp
//
//  Created by Raghav Deo on 12/12/23.
//

import SwiftUI
//https://www.fruityvice.com/api/fruit/all
struct ContentView: View {
@ObservedObject var fruitVm = ViewModel()
    var body: some View {
        List{
            ForEach(fruitVm.fruitsArray.self,id: \.?.id)
            {  vm in
                
                VStack(alignment: .leading)
                    {
                        Text(vm!.name).font(.title).fontWeight(.bold)
                        HStack
                        {
                            Text(" cal: \(vm!.nutritions.calories)").font(.title)
                            Spacer()
                            //Text("\(vm!.nutritions.fat)")
                            Text(String(format: "Fat: \(vm!.nutritions.fat)", ".2f"))
                        }
                        
                    }
                
                
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
