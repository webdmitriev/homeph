# SwiftUI HomePH

Проект тестовой разработки: аренда домов, апартаментов и тд на филиппинах

## 🚀 Возможности
- Custom TabBar (adaptive for Duo)



## 🛠 Технологии
- SwiftUI
- CleanArchitecture


## Структура проекта
```text
HomePH/
├── homephApp.swift
├── App/
│   ├── homephApp.swift
│   └── RootView.swift   // точка входа
├── Core/
│   ├── Components
│   │   ├── CardView.swift // two styles (short, bigger)
│   │   ├── HeaderView.swift
│   │   ├── SearchButtonView.swift
│   │   ├── SearchFieldView.swift
│   │   └── TabButtonView.swift   // таббар кнопка
│   ├── Constants
│   │   └── AppConstants.swift   // глобальные переменные
│   ├── Extensions
│   │   ├── Button.ext.swift   // переиспольщуемая кнопка
│   │   ├── Label.ext.swift   // функции вывода текстов
│   │   ├── Text.ext.swift   // функции вывода текстов
│   └── └── View.ext.swift   // функция для таббара
├── Data/
│   ├── Mock/
│   │   └── MockApartments.swift   // mock данные
│   ├── Network/
│   │   ├── Onboarding/
│   │   │   ├── MockOnboardingManager.swift   // mock данные
│   │   └── └── OnboardingNetworkProtocol.swift   // протокол
│   │   Repositories/
│   └── └── └── NetworkApartmentRepository.swift
├── Domain/
│   ├── Entities/
│   │   ├── Apartment.swift
│   │   └── Onboarding.swift
│   ├── Repositories/
│   │   ├── ApartmentRepository.swift
│   └── └── MockApartmentRepository.swift
├── Presentation/
│   ├── Discover/   👨‍💻
│   ├── Favourite/  👨‍💻
│   ├── Home/       👨‍💻
│   ├── Messages/   👨‍💻
│   ├── Onboarding/ 👨‍💻
│   ├── Profile/    👨‍💻
│   ├── Search/     👨‍💻
│   ├── Splash/     ✅
└── └── TabPages/   ✅
```


## ⚙️ Установка
1. Клонируйте репозиторий:

```bash
git clone https://github.com/webdmitriev/homeph