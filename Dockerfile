# 1. ใช้ Base Image เป็น Python เวอร์ชันเดียวกับที่คุณรันผ่าน
FROM python:3.10-slim

# 2. ตั้งค่าโฟลเดอร์ทำงานหลักข้างใน Container
WORKDIR /app

# 3. คัดลอกไฟล์รายการไลบรารีเข้ามาติดตั้ง
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. คัดลอกโค้ดทั้งหมดในโปรเจกต์ตามเข้ามา
COPY . .

# 5. สั่งรันแอปพลิเคชันของคุณเมื่อ Container สตาร์ท
CMD ["python", "app.py"]