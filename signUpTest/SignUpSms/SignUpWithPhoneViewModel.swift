//
//  SignUpWithPhoneViewModel.swift
//  signUpTest
//
//  Created by Berke Kesgin on 9.09.2024.
//

import Foundation

class SignUpWithPhoneViewModel: ObservableObject{
    
    /// Telefon numarasını alır ve işlem tamamlandığında bir başarı durumu döner.
    /// - Parameters:
    ///   - phoneNumber: Kullanıcının girdiği telefon numarası.
    ///   - completion: İşlem tamamlandığında çağrılan tamamlanma bloğu. `Bool` türünde bir değer döner; işlem başarılıysa `true`, aksi halde `false`.
    func signUpPhoneNumber(phoneNumber: String, completion: @escaping (Bool) -> Void){
        print("SignUpWithPhoneViewModel içerisinde numara: \(phoneNumber)")
        
        DispatchQueue.main.async {
            completion(true)
        }
    }
    
    /// SMS doğrulama kodunu alır ve işlem tamamlandığında bir başarı durumu döner.
    /// - Parameters:
    ///   - smsPassword: Kullanıcının SMS ile aldığı doğrulama kodu. `Int` türündedir.
    ///   - completion: İşlem tamamlandığında çağrılan tamamlanma bloğu. `Bool` türünde bir değer döner; işlem başarılıysa `true`, aksi halde `false`.
    func smsPasswordForSignUp(smsPassword: Int, completion: @escaping (Bool) -> Void){
        print("SignUpWithPhoneViewModel içerisinde sms Şifresi: \(smsPassword)")
        
        DispatchQueue.main.async {
            completion(true)
        }
    }
    
}

