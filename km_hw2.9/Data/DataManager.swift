//
//  DataManager.swift
//  km_hw2.9
//
//  Created by Konstantin on 20.09.2020.
//


class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let animations = ["slideLeft",
                      "slideRight",
                      "slideDown",
                      "slideUp",
                      "squeezeLeft",
                      "squeezeRight",
                      "squeezeDown",
                      "squeezeUp",
                      "fadeIn",
                      "fadeOut",
                      "fadeOutIn",
                      "fadeInLeft",
                      "fadeInRight",
                      "fadeInDown",
                      "fadeInUp",
                      "zoomIn",
                      "zoomOut",
                      "fall",
                      "shake",
                      "pop",
                      "flipX",
                      "flipY",
                      "morph",
                      "squeeze",
                      "flash",
                      "wobble",
                      "swing"]
    
    let curves = ["easeIn",
                  "easeOut",
                  "easeInOut",
                  "linear",
                  "spring",
                  "easeInSine",
                  "easeOutSine",
                  "easeInOutSine",
                  "easeInQuad",
                  "easeOutQuad",
                  "easeInOutQuad",
                  "easeInCubic",
                  "easeOutCubic",
                  "easeInOutCubic",
                  "easeInQuart",
                  "easeOutQuart",
                  "easeInOutQuart",
                  "easeInQuint",
                  "easeOutQuint",
                  "easeInOutQuint",
                  "easeInExpo",
                  "easeOutExpo",
                  "easeInOutExpo",
                  "easeInCirc",
                  "easeOutCirc",
                  "easeInOutCirc",
                  "easeInBack",
                  "easeOutBack",
                  "easeInOutBack"]
}
