# cpp-templates
Набор личных шаблонов для C++-проектов: CMake, build-скрипты, шаблоны проектов

## Описание scripts
Сборка `batch` скриптов под автоматизацию

| Скрипты                   | Описание                  | Параметры                         |
| ------------------------- | ------------------------- | --------------------------------- |
| `build.bat`               | Сборка проекта            | Debug/Release                     |
| `build-ninja.bat`         | Сборка проекта с Ninja    | Debug/Release                     |
| `build-run.bat`           | Сборка и запуск проекта   | Debug/Release, Название exe файла |
| `run.bat`                 | Запуск проекта            | Название exe файла                |

### Примеры использования скриптов
> [!WARNING]
> По умолчанию флаг `Debug`
> Название exe файла передавать обязательно

```bash
scripts\build.bat Release
```
```bash
scripts\run.bat example.exe
```
```bash
scripts\build-run.bat example.exe Release
```

## Структура проекта

```text
cpp-templates
├── cmake/              # Cmake файлы
├── scripts/            # Bat скрипты
├── templates/          # Шаблоны проектов (not yet)
├── tooling/            # Инструмент (not yet)
```