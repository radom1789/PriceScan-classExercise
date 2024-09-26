//
//  LocationView.swift
//  PriceCheck
//
//  Created by Tracy Yang on 9/26/24.
//

import SwiftUI

struct LocationView: View {
    let location: Location
    
    var body: some View {
        Section(header:
            HStack {
                Text(location.name)
                  .font(.headline)
                  .foregroundColor(.black)
                  .padding(.horizontal)
                  .padding(.vertical, 5)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .background(Color.gray)
                Spacer()
            }
            .background(Color.gray)
            .cornerRadius(10)
        ) {
            ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
                ScanView(scan: scan)
            }
        }
    }
}
