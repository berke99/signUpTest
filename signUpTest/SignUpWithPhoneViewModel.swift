//
//  SignUpWithPhoneViewModel.swift
//  signUpTest
//
//  Created by Berke Kesgin on 9.09.2024.
//

import Foundation

class SignUpWithPhoneViewModel: ObservableObject{
    
    func signUpPhoneNumber(phoneNumber: Int, completion: @escaping (Bool) -> Void){
        print("SignUpWithPhoneViewModel içerisinde numara: \(phoneNumber)")
        
        DispatchQueue.main.async {
            completion(true)
        }
    }
    
}

