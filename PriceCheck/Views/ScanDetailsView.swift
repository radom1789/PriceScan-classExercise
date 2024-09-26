//
//  ScanDetailsView.swift
//  PriceCheck
//
//  Created by Tracy Yang on 9/26/24.
//

import SwiftUI

struct ScanDetailsView: View {
  var scan: PriceScan
  var body: some View {
    VStack {
      Text(scan.item)
          .font(.title)
          .fontWeight(.bold)
      
      Text("As of: \(scan.onDate())")
          .font(.headline)
          .foregroundColor(.gray)
          .padding(10)
      
      Text("Price: " + String(format: "$%.2f", scan.price))
          .fontWeight(.bold)
          .font(.system(size: 25))
      Spacer()
    }
  }
}
