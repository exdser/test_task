.PHONY: setup gen run

# Полная настройка проекта с нуля
setup:
		flutter clean
		flutter pub get
		dart run build_runner build --delete-conflicting-outputs

# Только генерация роутов
gen:
		dart run build_runner build --delete-conflicting-outputs

# Запуск приложения
run:
		flutter run