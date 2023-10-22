
# Bash

คำสั่งเหล่านี้อาจะมีประโยชน์กับหลายๆคน


## คำสั่ง Bash

#### grep -> search

```shell
  grep <text> <file>
  grep -i "two" grassroot.sh 
  grep -vi "two" grassroot.sh
```

| Flags | Description                           |
| :-------- | :-----------------------------------  |
| `-i`      | เป็นการค้นหาโดยไม่สนใจว่าจะตัวเล็กหรือตัวใหญ่  |
| `-v`      | เป็นการค้นหาบรรทัดที่ไม่มีคำว่า two            |
| `-E`      | ใช้คำสั้ง RegEX                           |
| `-c`      | หาจำนวน matching                        |

#### head -> ดูไฟล์เริ่มจากข้างบน

```shell
  head -n <line amount> <file>
```

| Flags | Description                           |
| :-------- | :-----------------------------------  |
| `-n`      | เป็นตัวเอาไว้ดูว่าจะดูจำนวนกี่บรรทัด  |

#### tail -> ดูไฟล์เริ่มจากข้างล่าง

```shell
  tail -n <line amount> <file>
```

| Flags | Description                           |
| :-------- | :-----------------------------------  |
| `-n`      | เป็นตัวเอาไว้ดูว่าจะดูจำนวนกี่บรรทัด  |

#### wc -> ดูจำนวนบรรทัด

```shell
  wc <file>
```

#### cut -> ดูข้อมึลโดยสามากำหนดแบ่ง colume

```shell
  cut -d'|' -f3 example.txt
  cut -d'|' -f3,4 example.txt
```

| Flags | Description                           |
| :-------- | :-----------------------------------  |
| `-d`      | จะเป็นตัวกำหนด deli meter  |
| `-f`      | จะเป็นตัวกำหนด เอา colume ไหน  |

#### > -> เป็นการ create แบบ replace

```shell
  echo "Hello World" > example.txt
```

#### >> -> เป็นการ create แบบ append

```shell
  echo "Hello World" >> example.txt
```

#### uniq -> ทำให้ แสดงข้อมูลไม่ซ้ำ

```shell
  uniq example.txt
  uniq -c example.txt
  uniq -d example.txt
  uniq -u example.txt
```

| Flags | Description                           |
| :-------- | :-----------------------------------  |
| `-c`      | count duplicate  |
| `-d`      | show only duplicate  |
| `-u`      | show only unique  |


#### sort -> เรียงลำดับ

```shell
  sort -n example.txt  #จะ sort มั่ว
  uniq -k 2 -n -t '|' example.txt
```

| Flags | Description                           |
| :-------- | :-----------------------------------  |
| `-n`      | sort by number  |
| `-k`      | colume ไหน  |
| `-t`      | deli meter  |


#### sed -> steam editor

```shell
  sed -E 's/New.*/Los Angeles/' example.txt
```

| Flags | Description                           |
| :-------- | :-----------------------------------  |
| `-E`      | ใช้คำสั่ง RegEX  |

## Authors

- [@earth774](https://www.github.com/earth774)

