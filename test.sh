#!/bin/sh                 # บรรทัดแรกใช้สำหรับ shebang
MY_MSG="Hello Grassroot"  # ต้องไม่มี space ตอน assign ค่า, string ใช้ ""
echo $MY_MSG              # เมื่อจะเรียกใช้ก็ใช้ $ นำหน้า

pwd # ตำแหน่งที่อยู่ปัจจุบัน


# grep echo test.sh # search <text> <file>

# grep -i "two" grassroot.sh  
# # เป็นการค้นหาโดยไม่สนใจว่าจะตัวเล็กหรือตัวใหญ่
# keyword i จะเป็นแบบนี้แหละ เหมือนกับ icontain ใน Django
# # ---------------------------------------------------------
# $ grep -vi "two" grassroot.sh  # เป็นการค้นหาบรรทัดที่ไม่มีคำว่า two

# cal
# cal -y

# find <path> -name "*.html"

# alias www = ‘python -m SimpleHTTPServer 8000’
# [ใช้เพื่อสร้าง web server ขึ้นมาใน folder เพียงแค่พิมพ์ www เท่านั้น)
# -------------------------
# alias ff = ‘/opt/firefox/firefox’
# alias chrome = ‘/opt/google/chrome/chrome’
# [ใช้เพื่อจดจำ path ที่ยากๆ หลายชึั้น]
# -------------------------
# alias name_goes_here = ‘activator && clean && compile && run’
# [ใช้เพื่อ run คำสั่งแบบ multiple commands ก็ได้]