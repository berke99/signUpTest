//
//  ContentView.swift
//  signUpTest
//
//  Created by Berke Kesgin on 9.09.2024.
//

import SwiftUI

struct FirstView: View {
    
    @StateObject private var signUpWithPhoneVM = SignUpWithPhoneViewModel()
    @State private var phoneNumber: String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {

                TextField("Telefon Numarası giriniz", text: $phoneNumber)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .keyboardType(.phonePad)
                    .padding(.horizontal)
                
                Button(action: {
                    signUpWithPhone()
                }) {
                    Text("Kaydol")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding(.top, 50)
            .navigationBarTitle("Telefon ile Giriş", displayMode: .large)
        }
    }
    
    private func signUpWithPhone(){
      
        guard !phoneNumber.isEmpty else {
            print("Telefon Boş Geldi.")
            return
        }
        
        signUpWithPhoneVM.signUpPhoneNumber(phoneNumber: phoneNumber) { success in
            if success {
                print("Kayıt başarılı.")
            } else {
                print("ViewModel Hata Döndürür")
            }
        }
        
    }
}

#Preview {
    FirstView()
}
