//
//  ScanView.swift
//  PriceCheck
//
//  Created by Tracy Yang on 9/26/24.
//

import SwiftUI

struct ScanView: View {
    let scan: PriceScan
    
    var body: some View {
      NavigationLink(
          destination: ScanDetailsView(scan: scan),
          label: {
              Text(scan.item)
                  .frame(maxWidth: .infinity, alignment: .leading)
              Text(String(format: "$%.2f", scan.price))
                  .bold()
          })
    }
}

