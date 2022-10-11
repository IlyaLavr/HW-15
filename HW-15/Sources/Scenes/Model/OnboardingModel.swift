//
//  OnboardingModel.swift
//  HW-15
//
//  Created by Илья on 11.10.2022.
//

import Foundation
import UIKit

final class OnboardingModel {
    
    static func getSections() -> [Sections] {
        return [
            
            // First
            Sections(title: "", settings: [
                .switchCell(model: SettingsSwitchCell(
                    name: "Авиарежим",
                    icon: UIImage(named: "aviamode"),
                    isTurnOn: false)),
                .labelCell(model: SettingsCell(
                    name: "Wi-Fi",
                    icon: UIImage(named:"wifi"),
                    rightLabel: "Keenetic-3090")),
                .labelCell(model: SettingsCell(
                    name: "Bluetooth",
                    icon: UIImage(named: "bluetooth"),
                    rightLabel: "Вкл.")),
                .labelCell(model: SettingsCell(
                    name: "Сотовая связь",
                    icon: UIImage(named: "cellular"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Режим модема",
                    icon: UIImage(named: "modemmode"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "VPN",
                    icon: UIImage(named: "vpn"),
                    rightLabel: "Не подключено"))
            ]),
            
            // Second
            Sections(title: "", settings: [
                .labelCell(model: SettingsCell(
                    name: "Уведомления",
                    icon: UIImage(named:"notification"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Звуки, тактильные сигналы",
                    icon: UIImage(named: "sounds"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Фокусирование",
                    icon: UIImage(named:"focusing"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Экранное время",
                    icon: UIImage(named: "screentime"),
                    rightLabel: nil))
            ]),
            
            // Third
            Sections(title: "", settings: [
                .labelCell(model: SettingsCell(
                    name: "Основные",
                    icon: UIImage(named:"main"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Пункт управления",
                    icon: UIImage(named: "control"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Экран и яркость",
                    icon: UIImage(named:"screenandbrightness"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Экран Домой",
                    icon: UIImage(named: "home"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Универсальный доступ",
                    icon: UIImage(named:"universal"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Обои",
                    icon: UIImage(named: "wallpaper"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Siri и поиск",
                    icon: UIImage(named:"siri"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Face ID и код-пароль",
                    icon: UIImage(named: "faceid"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Экстренный вызов - SOS",
                    icon: UIImage(named:"universal"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Уведомление о контакте",
                    icon: UIImage(named: "notificationcontact"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Аккумулятор",
                    icon: UIImage(named:"battery"),
                    rightLabel: nil)),
                .labelCell(model: SettingsCell(
                    name: "Конфиденциальность",
                    icon: UIImage(named: "privacy"),
                    rightLabel: nil))
            ])
        ]
    }
}
