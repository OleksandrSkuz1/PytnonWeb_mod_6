# Використовуємо офіційний образ Python 3.11
FROM python:3.11

# Встановлюємо вміст файлу requirements.txt, який містить залежності від Poetry
COPY ./pyproject.toml /app/pyproject.toml
COPY ./poetry.lock /app/poetry.lock

# Встановлюємо Poetry
RUN pip install poetry
# Встановлюємо залежності проекту через Poetry
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# Встановлюємо робочу директорію в /app
WORKDIR /app

# Копіюємо файли з поточної директорії до /app у контейнері
COPY . /app

# Вказуємо, яку команду запустити при запуску контейнера
CMD ["poetry", "run", "python", "main.py"]
