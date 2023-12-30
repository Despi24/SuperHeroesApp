//
//  Heroes.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 4/11/23.
//

import Foundation

struct Hero: Codable, Identifiable, Hashable {
    let id: String
    let nombreReal: String
    let apodo: String
    let descripcion: String?
    let historia: String?
    let edad: Int
    let poderes: [Poderes]
    let imagen: String
    
    init(id: String, nombreReal: String, apodo: String, descripcion: String?, historia: String?, edad: Int, poderes: [Poderes], imagen: String) {
        self.id = id
        self.nombreReal = nombreReal
        self.apodo = apodo
        self.descripcion = descripcion
        self.historia = historia
        self.edad = edad
        self.poderes = poderes
        self.imagen = imagen
    }
}

extension Hero {
    var mapToHeroModel: HeroModel {
        HeroModel(id: id,
                  nombreReal: nombreReal,
                  apodo: apodo,
                  descripcion: descripcion,
                  historia: historia,
                  edad: edad,
                  poderes: poderes,
                  imagen: imagen,
                  isFavorite: false)
    }
}

struct HeroModel: Codable, Identifiable, Hashable {
    let id: String
    let nombreReal: String
    let apodo: String
    let descripcion: String?
    let historia: String?
    let edad: Int
    let poderes: [Poderes]
    let imagen: String
    var isFavorite: Bool
}

enum Poderes: String, Codable, Identifiable {
    var id: Self {
        return self
    }
    
    case comunicacionMarina = "Comunicación con vida marina"
    case invulnerabilidad = "Invulnerabilidad"
    case manipulacionSombras = "Manipulación de sombras"
    case manipulacionAgua = "Manipulación del agua"
    case manipulacionClima = "Manipulación del Clima"
    case manipulacionFuego = "Manipulación del fuego"
    case manipulacionMental = "Manipulación Mental"
    case pielMetalica = "Piel Metálica"
    case regeneracion = "Regeneración"
    case superFuerza = "Super Fuerza"
    case telepatia = "Telepatía"
    case teletransportacionATravesDeSombras = "Teletransportación a través de sombras"
    case transformacionEnFormaAcuática = "Transformación en forma acuática"
    case vuelo = "Vuelo"
    case amplificacionSonido = "Amplificación del Sonido"
    case controlElemental = "Control Elemental"
    case controlVibraciones = "Control de Vibraciones"
    case creacionRocas = "Creación de Rocas"
    case creacionTornados = "Creación de Tornados"
    case duplicacion = "Duplicación"
    case emisionLuz = "Emisión de Luz"
    case generacionVibraciones = "Generación de Vibraciones"
    case giroRapido = "Giro Rápido"
    case imitacionSonido = "Imitación de Sonido"
    case intangibilidad = "Intangibilidad"
    case invisibilidad = "Invisibilidad"
    case manipulacionLuz = "Manipulación de la Luz"
    case manipulacionTiempo = "Manipulación del Tiempo"
    case manipulacionTierra = "Manipulación de la Tierra"
    case teleTransportacion = "Teletransportación"
    case visionRayosX = "Visión de Rayos X"
}

