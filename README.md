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
│   │   └── TabButtonComponentView.swift   // таббар кнопка
│   ├── Constants
│   │   └── AppConstants.swift   // глобальные переменные
│   ├── Extensions
│   │   ├── Button.ext.swift   // переиспольщуемая кнопка
│   │   ├── Text.ext.swift   // функции вывода текстов
│   └── └── View.ext.swift   // функция для таббара
├── Data/
│   ├── Network/
│   │   ├── Onboarding/
│   │   │   ├── MockOnboardingManager.swift   // mock данные
│   └── └── └── OnboardingNetworkProtocol.swift   // протокол
├── Domain/
├── Presentation/
│   ├── Discover/   👨‍💻
│   ├── Favourite/  👨‍💻
│   ├── Home/       👨‍💻
│   ├── Messages/   👨‍💻
│   ├── Onboarding/ 👨‍💻
│   ├── Profile/    👨‍💻
│   ├── Splash/     ✅
└── └── TabPages/   ✅
```


## ⚙️ Установка
1. Клонируйте репозиторий:

```bash
git clone https://github.com/webdmitriev/homeph