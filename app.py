# app.py

def check_system_status(cpu_usage):
    """ฟังก์ชันสมมติ: ถ้า CPU เกิน 90% ถือว่าระบบอันตราย (False)"""
    if cpu_usage > 90:
        return "DANGER"
    return "HEALTHY"

if __name__ == "__main__":
    # จำลองการรันแอป
    print(f"Current System Status: {check_system_status(45)}")