# Sử dụng Python 3.10
FROM python:3.12

# Đặt thư mục làm việc
WORKDIR /app

# Copy code vào container
COPY app /app

# Cài đặt dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Chạy ứng dụng FastAPI với Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
