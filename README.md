# todo
Set of scripts to manage backlog, todo, and other lists inside of small code projects

## Как настроить
1. Добавить путь к src/-подкаталогу в переменную оболочки PATH.
   Скорее всего, нужно добавить в файл ~/.bashrc или ~/.zshenv такую команду:
```
export PATH=$PATH:/Users/[ваш логин]/dev/todo/src
```
Чтобы узнать точный адрес каталога, зайдите в src/-подкаталог и запустите команду ```pwd```.

2. Создать символические ссылки на скрипты в каталоге src/:
```
ln -s backlog.sh backlog
ln -s todo.sh todo
```

После этого можно запускать программы ```backlog``` и ```todo``` из любого места системы.

## Файл .backlog
Обычный текстовый файл. Одна строчка — одна задача (или user story, как назовёте). Строчка должна начинаться с условного чекбокса:
```
[ ] ! — срочно, # — можно, B — backlog, N — потом, Т — технодолг, + — готово
[!] Эту задачу вы делаете прямо сейчас
[#] Эту можно поделывать время от времени, и вообще пусть будет на виду
[+] Это уже сделано
[B] Основной backlog, отсюда задачи уходят в работу
[N] Когда-нибудь потом (или некогда), в основном тут мечталки
[T] Технический долг стоит отдельно, чтобы на него не забивать
```
Первую строчку примера можно положить в файл .backlog. И она всегда будет наверху. Удобно как шпаргалка.

Файл .backlog кладём в корневой каталог проекта. Например, в этом проекте тоже есть свой backlog.
