//
//  UserCardView.swift
//  test-skip
//
//  Created by Sajid Shanta on 5/2/25.
//

import SwiftUI

struct User {
    let imageName: String
    let name: String
    let designation: String
    let bio: String
}

struct UserCardView: View {
    var user: User
    
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.fill")
                
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text(user.designation)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            Text(user.bio)
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .padding(.top, 5)
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12.0)
        .shadow(radius: 5.0)
        .padding()
    }
}

