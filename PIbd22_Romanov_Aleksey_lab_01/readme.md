# Отчет по лабораторной работе №1

## Установка и настройка
- В консоли пишем `npm install` чтобы проинициализировались все модули нужные для работы
- После установки модулей пишем `node index.js`
- Переходим по адресу указанному в консоли

## Возможности программы 
- GET запросы :
- - `/ping` - проверка статуса сервера
- - `/weekday?day=*`  - запрос, определяющий день недели по номеру дня текущего месяца. Вместо `*` пишем номер дня
- POST запросы :
- - `/calc` - выполнение простых математических операций, например:
```
POST `/calc`
body:
{
  "value1" : 2,
  "value2" : 1,
  "operation" : "subtraction", // 'addition' | 'multiplication' | 'division'
}
response:
{
  "status": "ok", 
  "body": 1 
}
```
- Логирование всех запросов в файл `log.log`. Файл находится в корневой папке проект. Формат логирования `{Date and time in UTC} {Ip} {Method} {Url} {Status code}`.