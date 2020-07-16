//
//  Store.swift
//  Ecommerce
//
//  Created by May Derbas on 2020-07-10.
//  Copyright © 2020 May Derbas. All rights reserved.
//

import UIKit
class StoreProducts
{
    var category: String
    var products: [Product]
    
    init( category: String, products: [Product])
    {
        self.category = category
        self.products = products
    }
    class func getAllProducts() -> [StoreProducts]
    {
        return [watches(),hadbags()]
    }
    
    private class func watches() -> StoreProducts {
        var products = [Product]()
        
        products.append(Product(name: "ROSE GOLD-TONE MESH ANALOG WATCH" , details:"Dial up the luxe factor in your every day look with an elegant timepiece. Featuring a rose gold-tone mesh band, a framed bezel and a white dial with analog movement." , price: 139.99, imageName:"image1"))
        
        products.append(Product(name: "ROSE GOLD-TONE SQUARE MESH WATCH" , details:"Upgrade your everyday watch with this square rose gold-tone timepiece featuring an analog design, crystal details and a self-adjustable mesh bracelet." , price: 149.99, imageName:"image2"))
        
        products.append(Product(name: "GOLD-TONE SPORT WATCH" , details:"Add a high-shine finish to your everyday style with this gold-tone watch. Includes day, date and 24 hour international time." , price: 149.99, imageName:"image3"))
        
        products.append(Product(name: "PETITE SILVER-TONE ANALOG WATCH" , details:"Perfect to match everyday ensembles, this delicate watch features a silver-tone case, analog face and mesh bracelet with G-link security." , price: 109.99, imageName:"image4"))
        
        products.append(Product(name: "BLACK SILICONE AND GOLD-TONE WATCH" , details:"Accent any look with this sharp timepiece. Features a black silicone strap, a silver-tone round bezel and a white dial complete with an analog movement." , price: 159.99, imageName:"image5"))
        
        products.append(Product(name: "SPARKLE WATCH BOX SET" , details:"With a strap for every occasion, this boxed watch set makes the perfect gift (especially for yourself). Includes a polished silver-tone watch with crystal bezel and white strap, plus interchangeable black and red leather straps." , price: 159.99, imageName:"image6"))
        
        return StoreProducts( category: "Watches", products: products)
    }
    private class func hadbags() -> StoreProducts {
        var products = [Product]()
        
        products.append(Product(name: "ADRIANA MINI BACKPACK" , details:"Your new favorite bag. This faux-leather backpack features a zip front pocket, zip around closure, front logo emblem, adjustable straps, and a logo keychain with various charms." , price: 70.99, imageName:"handbag1"))
        
        products.append(Product(name: "SCHWARTS LOGO PRINTED SATCHEL" , details:"This roomy satchel features a logo printed faux-leather composition and a front logo detail. Designed with a logo charm and interior pockets for organization. Top zipper." , price: 74.99, imageName:"handbag2"))
        
        products.append(Product(name: "HADFIELD COLOR-BLOCK ZIP-AROUND WALLET" , details:"Faux-leather wallet featuring a color-block design adorned with a silver-tone logo. Divided interior designed with enough room for phone storage. Zip closure." , price: 49.99, imageName:"handbag3"))
        
        products.append(Product(name: "HASTINGS COLOR-BLOCK LOGO CROSSBODY" , details:"This classic crosshatched faux-leather crossbody bag features a color-blocked design, shiny silver-tone hardware and a script logo detail. Top zipper closure." , price: 70.99, imageName:"handbag4"))
        
        products.append(Product(name: "RODERICK CAMO NYLON WRISTLET" , details:"Keep only the essentials in this nylon wristlet designed with an allover camo print and GUESS logo emblem. Featuring an attached wristlet strap and interior pockets to keep things organized. Zip closure." , price: 39.99, imageName:"handbag5"))
        
        products.append(Product(name: "ALLOVER LOGO SOFT MINI BACKPACK" , details:"Soft mini backpack featuring an allover logo print. Designed with exterior zip pocket and included removable pom and wristlet keychain. Zip closure." , price: 59.99, imageName:"handbag6"))
        
        return StoreProducts( category: "Handbags", products: products)
    }
    
}
