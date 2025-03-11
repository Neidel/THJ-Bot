FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port 80 for Azure Web App
EXPOSE 80

# Start the bot directly without exposing environment
CMD ["python", "-u", "bot.py"] 