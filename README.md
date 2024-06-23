# Включение проекта

## Необходимое ПО
- Redis
- MySQL
- Node.JS
- NPM  

Дамп MySQL базы данных находится в корне проекта

### client
Установка serve библиотеки для запуска статического сервера
```
npm i -g serve
```
Запуск фронта
```
serve volwater-client -p 5000
```
http://localhost:5000 - клиент доступен по этой ссылке
### server
Установка зависимостей
```
cd volwater-api; npm i
```
Запуск сервера
```
node build/backend.js
```

Пользователь с правами администратора:  
email: ivan@gmail.com  
password: 12345678  
