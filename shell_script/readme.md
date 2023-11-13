
# Shell Script

คำสั่งเหล่านี้อาจะมีประโยชน์กับหลายๆคน


## คำสั่ง Shell Script

#### ขอสิทธิ 

```shell
  chmod +ux task.sh
```

#### ประกาศตัวแปร ตัวแปร run หรือ ชื่อ file ที่ run

```shell
  #!/bin/bash

  echo "Print ${0}";
```

```shell
   ./task.sh Earth Youtube
```

#### ประกาศตัวแปร บอกตำแหน่ง

```shell
  #!/bin/bash

  echo "Print ${1} and ${2}";
```

```shell
  source task.sh Earth Youtube
```


#### ประกาศตัวแปร ไม่บอกบอกตำแหน่ง

```shell
  #!/bin/bash

  echo "Print $@";
```

```shell
  source task.sh Earth Youtube 
```

#### ประกาศตัวแปร หาวามีตัวแปรกี่ตัว

```shell
  #!/bin/bash

  echo "Print $#";
```

```shell
  source task.sh Earth Youtube 
```


#### ประกาศตัวแปร หาวามีตัวแปรกี่ตัว

```shell
  #!/bin/bash

  var=1
  echo "Print $?";

  var = 1
  echo "Print $?"; 

```

```shell
  source task.sh
```

| key | Description                           |
| :-------- | :-----------------------------------  |
| `0`      | Sucess |
| `> 0`      | Fail           |

#### ประกาศตัวแปร set 

```shell
  #!/bin/bash

  set -u -e -x- -i
  var="$1"
  var2="$2"
  echo "Print ${var} and ${var2}";

```

```shell
  source task.sh
```

| key | Description                           |
| :-------- | :-----------------------------------  |
| `-u`      | แสดง error ค่าที่ไม่ได้ใส่เข้ามา |
| `-e`      | exit ทันทีที่มีปัญหา เพราะ shell ถ้าเจอ error มันจะ run บรรทัดต่อไป |
| `-x`      | debug step |

#### ประกาศเงื่อนไข 

```shell
  #!/bin/bash

  if test 1;then
    echo "Success";
  else
    echo "Fail"
  fi

  if test 1 = '2';then
    echo "Success";
  else
    echo "Fail"
  fi

  if test 1 != '2';then
    echo "Success";
  else
    echo "Fail"
  fi

  if test 1 -eq 0;then # = for number
    echo "Success";
  else
    echo "Fail"
  fi

  if test 1 -qt 0;then # > for number
    echo "Success";
  else
    echo "Fail"
  fi

  if test 1 -lt 0;then # < for number
    echo "Success";
  else
    echo "Fail"
  fi

  if test 1 -le 0;then # <= for number
    echo "Success";
  else
    echo "Fail"
  fi 

  if [ "a" = "a" -a "b" = "b"];then # and
  # if [ "a" = "a" ] && [ "b" = "b" ];then # and
    echo "Success";
  else
    echo "Fail"
  fi

  if [ "a" = "a" -o "b" = "b"];then # or
  # if [ "a" = "a" ] || [ "b" = "b" ];then # or
    echo "Success";
  else
    echo "Fail"
  fi
```

```shell
  source task.sh
```

#### ประกาศ loop

```shell
  #!/bin/bash

  i=0
  while [ ${i} -lt 10 ];do
    echo "${i}"
    i=$((i+1))
  done

  i=0
  while ((i < 10));do
    echo "${i}"
    i=$((i+1))
  done

  for i in {1..10}
  do
    echo "Task ${i}"
    sleep 1
  done 
```

```shell
  source task.sh
```

#### ประกาศเงื่อนไข check diff

```shell
  #!/bin/bash

  if diff output.txt output-diff.txt &>/dev/null;then
    echo "Success";
  else
    echo "Fail"
  fi

  grep "Hello" "output.txt" 1> /dev/null #output not show normal
  grep "Hello" "output.txt" 2> /dev/null #output not show error

  grep "Hello" "output.txt" &2>1 #error message show output normal
```

```shell
  source task.sh
```

#### ประกาศ function

```shell
  #!/bin/bash

  printHello(){
    echo "${1} ${2}"
  }

  var=$(printHello "Hello" "World")

  echo ${var}
```

```shell
  source task.sh
```
## Authors

- [@earth774](https://www.github.com/earth774)

