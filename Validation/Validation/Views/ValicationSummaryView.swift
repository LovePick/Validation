//
//  ValicationSummaryView.swift
//  Validation
//
//  Created by Supapon Pucknavin on 25/10/2565 BE.
//

import SwiftUI

struct ValicationSummaryView: View {
    // MARK: - PROPERTY
    let errors: [LocalizedError]
    
    // MARK: - FUNCTION
    
    // MARK: - BODY
    var body: some View {
        ForEach(errors, id: \.id){ error in
            Text(error.localizedDescription)
        }
        
    }
}

// MARK: - PREVIEW
struct ValicationSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        ValicationSummaryView(errors: [])
    }
}
