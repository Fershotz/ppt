//
//  ViewController.swift
//  PPT
//
//  Created by Fernando Alonso Realivázquez Durán on 24/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var JuegoUsuario: UILabel!
    @IBOutlet weak var JuegoComputadora: UILabel!
    @IBOutlet weak var Resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    enum Guess: String {
        case piedra = "Piedra"
        case papel = "Papel"
        case tijera = "Tijera"
    }
    
    enum Ganador: String{
        case usuario = "¡Ganaste! :)"
        case Computadora = "¡Perdiste! :("
        case Empate = "¡Empate! :/"
    }
    let guesses: [Guess] = [.piedra, .papel, .tijera]


    @IBAction func JuegoJugador(_ sender: UIButton) {
        
        let JuegoCompu = GenerarJuegoComputadora()
        
        let tappedButton = sender.tag
        switch tappedButton {
        case 1:
            Resultado.text =  (determinarGanador(usuario: .piedra, computadora: JuegoCompu)).rawValue
        case 2:
            Resultado.text =  (determinarGanador(usuario: .papel, computadora: JuegoCompu)).rawValue
        case 3:
            Resultado.text =  (determinarGanador(usuario: .tijera, computadora: JuegoCompu)).rawValue
        default:
            print ("no se selecciono un boton funcional" )
        }

    }
    func GenerarJuegoComputadora() -> Guess{
        return guesses.randomElement()!
    }
    
    func determinarGanador(usuario: Guess, computadora: Guess) -> Ganador {
        JuegoUsuario.text = "tu juego es: \(usuario.rawValue)"
        JuegoComputadora.text = "el juego de la compu es: \(computadora.rawValue)"
        switch usuario {
        case .piedra:
            if computadora == .tijera{
                return .usuario
            }else if computadora == .papel{
                return .Computadora
            }else{
                return .Empate
            }
        case .papel:
            if computadora == .piedra{
                return .usuario
            }else if computadora == .tijera{
                return .Computadora
            }else{
                return .Empate
            }
            
        case .tijera:
            if computadora == .papel{
                return .usuario
            }else if computadora == .piedra{
                return .Computadora
            }else{
                return .Empate
            }
        }
        
        
    
    }
    
}

