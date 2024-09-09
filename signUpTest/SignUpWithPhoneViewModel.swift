//
//  SignUpWithPhoneViewModel.swift
//  signUpTest
//
//  Created by Berke Kesgin on 9.09.2024.
//

import Foundation

class SignUpWithPhoneViewModel: ObservableObject{
    
    func signUpPhoneNumber(phoneNumber: String, completion: @escaping (Bool) -> Void){
        print("SignUpWithPhoneViewModel içerisinde numara: \(phoneNumber)")
        
        DispatchQueue.main.async {
            completion(true)
        }
    }
    
    func smsPasswordForSignUp(smsPassword: Int, completion: @escaping (Bool) -> Void){
        print("SignUpWithPhoneViewModel içerisinde sms Şifresi: \(smsPassword)")
        
        DispatchQueue.main.async {
            completion(true)
        }

    }
    
}

