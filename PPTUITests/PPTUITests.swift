//
//  PPTUITests.swift
//  PPTUITests
//
//  Created by Fernando Alonso Realivázquez Durán on 24/08/22.
//

import XCTest

class PPTUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUserGuessPiedra() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //let UserGamelabel = app.staticTexts["CampoJuegoUsuario"]
        //let CompGamelabel = app.staticTexts["CampoJuegoCompu"]
        
        //given
        let piedraBoton = app.buttons["BotonPiedra"]
        //when
        piedraBoton.tap()
        //then
        let UserGame = app.staticTexts["CampoJuegoUsuario"]
        XCTAssertNotEqual(UserGame.label, "CampoJuegoUsuario")
    }
        
    func testUserGuessPapel() throws {
            // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
            
            //let UserGamelabel = app.staticTexts["CampoJuegoUsuario"]
            //let CompGamelabel = app.staticTexts["CampoJuegoCompu"]
            
            //given
        let papelBoton = app.buttons["BotonPapel"]
            //when
            papelBoton.tap()
            //then
        let UserGame = app.staticTexts["CampoJuegoUsuario"]
        XCTAssertNotEqual(UserGame.label, "CampoJuegoUsuario")
        
        //UserGamelabel.label
        //CompGamelabel.label
        // Use recording to get started writing UI tests.
                // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testUserGuessTijera() throws {
                // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
                
                //let UserGamelabel = app.staticTexts["CampoJuegoUsuario"]
                //let CompGamelabel = app.staticTexts["CampoJuegoCompu"]
                
                //given
        let tijeraBoton = app.buttons["BotonTijera"]
                //when
                tijeraBoton.tap()
                //then
        let UserGame = app.staticTexts["CampoJuegoUsuario"]
        XCTAssertNotEqual(UserGame.label, "CampoJuegoUsuario")
    }
    
    func testJugadaPiedra() throws {
                // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        //given
        let piedraBoton = app.buttons["BotonPiedra"]
        //when
        piedraBoton.tap()
        //then
        let ganador = app.staticTexts.element(matching: .any, identifier: "resultadoo").label
        var contador = false
        if (ganador == "¡Ganaste! :)" || ganador == "¡Perdiste! :(" || ganador == "¡Empate! :/"){
            contador = true
        }
        XCTAssert(contador)
        
        
    
    }
    
    func testJugadaPapel() throws {
                // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        //given
        let papelBoton = app.buttons["BotonPapel"]
        //when
        papelBoton.tap()
        //then
        let ganador = app.staticTexts.element(matching: .any, identifier: "resultadoo").label
        var contador = false
        if (ganador == "¡Ganaste! :)" || ganador == "¡Perdiste! :(" || ganador == "¡Empate! :/"){
            contador = true
        }
        XCTAssert(contador)
        
        
    
    }
    func testJugadaTijera() throws {
                // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        //given
        let tijeraBoton = app.buttons["BotonTijera"]
        //when
        tijeraBoton.tap()
        //then
        let ganador = app.staticTexts.element(matching: .any, identifier: "resultadoo").label
        var contador = false
        if (ganador == "¡Ganaste! :)" || ganador == "¡Perdiste! :(" || ganador == "¡Empate! :/"){
            contador = true
        }
        XCTAssert(contador)
        
        
    
    }
    

}
