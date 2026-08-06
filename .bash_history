python -c "
path = 'judge/views/user.py'
with open(path, 'r', encoding='utf-8') as f:
    text = f.read()

# Thay thế hàm users lỗi bằng cách gọi trực tiếp UserList.as_view()
old_func = '''def users(request):
    return user_list_view(request)'''

new_func = '''def users(request):
    return UserList.as_view()(request)'''

if old_func in text:
    text = text.replace(old_func, new_func)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(text)
    print('Đã sửa xong lỗi user_list_view!')
else:
    print('Đã được xử lý hoặc cấu trúc khác.')
"
root@DESTOP-LAMHUY27:~# python -c "
path = 'judge/views/user.py'
with open(path, 'r', encoding='utf-8') as f:
    text = f.read()

# Thay thế hàm users lỗi bằng cách gọi trực tiếp UserList.as_view()
old_func = '''def users(request):
    return user_list_view(request)'''

new_func = '''def users(request):
    return UserList.as_view()(request)'''

if old_func in text:
    text = text.replace(old_func, new_func)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(text)
    print('Đã sửa xong lỗi user_list_view!')
else:
    print('Đã được xử lý hoặc cấu trúc khác.')
"
root@DESTOP-LAMHUY27:~#
root@DESTOP-LAMHUY27:~# python -c "
path = 'judge/views/user.py'
with open(path, 'r', encoding='utf-8') as f:
    text = f.read()

# Thay thế hàm users lỗi bằng cách gọi trực tiếp UserList.as_view()
old_func = '''def users(request):
    return user_list_view(request)'''

new_func = '''def users(request):
    return UserList.as_view()(request)'''

if old_func in text:
    text = text.replace(old_func, new_func)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(text)
    print('Đã sửa xong lỗi user_list_view!')
else:
    print('Đã được xử lý hoặc cấu trúc khác.')
"
root@DESTOP-LAMHUY27:~#
python -c "
path = 'judge/views/user.py'
with open(path, 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
skip = False
for line in lines:
    if 'def users(request):' in line:
        skip = True
        new_lines.append('def users(request):\n    return UserList.as_view()(request)\n')
    elif skip and ('    ' in line or '\t' in line or line.strip() == ''):
        continue
    else:
        skip = False
        new_lines.append(line)

with open(path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)
print('Đã ép cập nhật hàm users thành công!')
"
cd /home/lamhuy/HuyOJ/HuyOJ/tmath
python -c "
path = 'judge/views/user.py'
with open(path, 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
skip = False
for line in lines:
    if 'def users(request):' in line:
        skip = True
        new_lines.append('def users(request):\n    return UserList.as_view()(request)\n')
    elif skip and ('    ' in line or '\t' in line or line.strip() == ''):
        continue
    else:
        skip = False
        new_lines.append(line)

with open(path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)
print('Đã ép cập nhật hàm users thành công!')
"
nano judge/views/user.py
python -c "
path = 'judge/views/user.py'
with open(path, 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
i = 0
while i < len(lines):
    if 'def users(request):' in lines[i]:
        new_lines.append('def users(request):\n')
        new_lines.append('    return UserList.as_view()(request)\n')
        i += 1
        # Bỏ qua các dòng cũ thuộc hàm users bị lỗi thụt lề
        while i < len(lines) and (lines[i].startswith('    ') or lines[i].startswith('\t') or lines[i].strip() == ''):
            if lines[i].strip() == '':
                i += 1
                break
            i += 1
    else:
        new_lines.append(lines[i])
        i += 1

with open(path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)
print('Đã viết lại hàm users chuẩn cú pháp 100%!')
"
cd /home/lamhuy/HuyOJ/HuyOJ/tmath
python -c "
path = 'judge/views/user.py'
with open(path, 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
i = 0
while i < len(lines):
    if 'def users(request):' in lines[i]:
        new_lines.append('def users(request):\n')
        new_lines.append('    return UserList.as_view()(request)\n')
        i += 1
        while i < len(lines) and (lines[i].startswith('    ') or lines[i].startswith('\t') or lines[i].strip() == ''):
            if lines[i].strip() == '':
                i += 1
                break
            i += 1
    else:
        new_lines.append(lines[i])
        i += 1

with open(path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)
print('Đã viết lại hàm users chuẩn cú pháp 100%!')
"
sed -i '/def users(request):/{n;s/.*/    return UserList.as_view()(request)/}' judge/views/user.py
python manage.py runserver
nano judge/views/user.py
cd /home/lamhuy/HuyOJ/HuyOJ/tmath
source .venv/bin/activate
python manage.py runbridged
celery -A tmath worker -l info
python manage.py runbridged
cd /home/lamhuy/HuyOJ/HuyOJ/tmath
source .venv/bin/activate
celery -A tmath worker -l info
python manage.py createsuperuser
cd /home/lamhuy/HuyOJ/HuyOJ/tmath
source .venv/bin/activate
python manage.py createsuperuser
cd /home/lamhuy/HuyOJ/HuyOJ/tmath
source .venv/bin/activate
python manage.py shell -c "
from django.contrib.auth.models import User
from judge.models import Profile

for name in ['user_vang', 'user_bac']:
    u, created = User.objects.get_or_create(username=name)
    Profile.objects.get_or_create(user=u)
print('Đã tạo xong user phụ!')
"
python -c "
path = 'judge/views/user.py'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

old_code = 'context[\"gold\"], context[\"silver\"], context[\"bronze\"] = self.get_queryset()[:3]'
new_code = '''top3 = list(self.get_queryset()[:3])
context[\"gold\"] = top3[0] if len(top3) > 0 else None
context[\"silver\"] = top3[1] if len(top3) > 1 else None
context[\"bronze\"] = top3[2] if len(top3) > 2 else None'''

if old_code in content:
    content = content.replace(old_code, new_code)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)
    print('Đã vá code thành công!')
else:
    print('Không tìm thấy đoạn code cần thay thế, kiểm tra lại phiên bản.')
"
python manage.py runserver
python manage.py runbridged
pkill -f runbridged
python -c "
import re
path = 'judge/views/user.py'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

# Tìm hàm get_context_data và viết lại chuẩn chỉ thụt lề 4 space
pattern = r'def get_context_data\(self, \*\*kwargs\):(.*?)(?=\n    def |\nclass |\Z)'
replacement = '''def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        top3 = list(self.get_queryset()[:3])
        context[\"gold\"] = top3[0] if len(top3) > 0 else None
        context[\"silver\"] = top3[1] if len(top3) > 1 else None
        context[\"bronze\"] = top3[2] if len(top3) > 2 else None
        context[\"first_page_href\"] = \".\"
        return context'''

content = re.sub(pattern, replacement, content, flags=re.DOTALL)
with open(path, 'w', encoding='utf-8') as f:
    f.write(content)
print('Đã sửa thụt lề chuẩn xác thành công!')
"
python manage.py runbridged
python manage.py runserver
cat << 'EOF' > /home/lamhuy/dmoj-docker/judge_src/Dockerfile
FROM python:3.9-slim

RUN apt-get update && apt-get install -y build-essential libseccomp-dev

WORKDIR /judge

COPY . /judge

RUN pip install --no-cache-dir -e .

# Tạo một user không phải root để chạy judge an toàn
RUN useradd -ms /bin/bash dmoj && chown -R dmoj:dmoj /judge
USER dmoj

CMD ["python", "-m", "dmoj.judge"]
EOF

cd /home/lamhuy/dmoj-docker
docker compose build --no-cache judge
docker compose up -d
cd /home/lamhuy/dmoj-docker/tmath
source .venv/bin/activate
python manage.py shell
nano tmath/local_settings.py
sudo systemctl status redis-server
nano tmath/local_settings.py
nano tmath/celery.py
mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -u root -p mysql
nano tmath/local_settings.py
docker ps
docker logs dmoj-docker-judge-1
nano docker-compose.yml
docker compose down
docker compose up -d
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath#
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath#  nano docker-compose.yml
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath# docker compose down
docker compose up -d
WARN[0000] The "gYN" variable is not set. Defaulting to a blank string.
validating /home/lamhuy/dmoj-docker/tmath/docker-compose.yml:  additional properties 'command' not allowed
WARN[0000] The "gYN" variable is not set. Defaulting to a blank string.
validating /home/lamhuy/dmoj-docker/tmath/docker-compose.yml:  additional properties 'command' not allowed
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath#
-bash: syntax error near unexpected token `root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath#'
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath#
cd /home/lamhuy/dmoj-docker/tmath
source .venv/bin/activate
python -m dmoj.judge 127.0.0.1 judge1 'UnbPH5a&+l[`9ebJR.,0TW$gYN^`QC(L?gDh->jGC5[Qlb=0|dxfVD^T93S8[H#+3]1zh!D(+#tOH^4SMRRB`OSa1%21jMEuei.f'
pip install dmoj
apt-get update && apt-get install -y libseccomp-dev build-essential
pip install dmoj
apt-get install -y python3.10 python3.10-venv python3.10-dev
rm -rf .venv
python3.10 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install libseccomp-dev # (hoặc đảm bảo libseccomp-dev đã có)
pip install -r requirements.txt
× Failed to build installable wheels for some pyproject.toml based projects
╰─> dmoj
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath# apt-get install -y python3.10 python3.10-venv python3.10-dev
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Note, selecting 'libpython3.10-stdlib' for regex 'python3.10'
E: Unable to locate package python3.10-venv
E: Couldn't find any package by glob 'python3.10-venv'
E: Couldn't find any package by regex 'python3.10-venv'
E: Unable to locate package python3.10-dev
E: Couldn't find any package by glob 'python3.10-dev'
E: Couldn't find any package by regex 'python3.10-dev'
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath# rm -rf .venv
python3.10 -m venv .venv
Command 'python3.10' not found, did you mean:
Try: apt install <deb name>
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath# source .venv/bin/activate
pip install --upgrade pip
pip install libseccomp-dev # (hoặc đảm bảo libseccomp-dev đã có)
pip install -r requirements.txt
-bash: .venv/bin/activate: No such file or directory
-bash: /home/lamhuy/dmoj-docker/tmath/.venv/bin/pip: No such file or directory
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath#
apt-get update && apt-get install -y python3.11 python3.11-venv python3.11-dev libseccomp-dev
python3.11 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
Hit:1 https://download.docker.com/linux/ubuntu noble InRelease
Hit:2 https://deb.nodesource.com/node_20.x nodistro InRelease
Hit:3 http://security.ubuntu.com/ubuntu noble-security InRelease
Hit:4 http://archive.ubuntu.com/ubuntu noble InRelease
Hit:5 http://archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:6 https://ngrok-agent.s3.amazonaws.com buster InRelease
Hit:7 http://archive.ubuntu.com/ubuntu noble-backports InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package python3.11
E: Couldn't find any package by glob 'python3.11'
E: Couldn't find any package by regex 'python3.11'
E: Unable to locate package python3.11-venv
E: Couldn't find any package by glob 'python3.11-venv'
E: Couldn't find any package by regex 'python3.11-venv'
E: Unable to locate package python3.11-dev
E: Couldn't find any package by glob 'python3.11-dev'
E: Couldn't find any package by regex 'python3.11-dev'
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath# python3.11 -m venv .venv
Command 'python3.11' not found, but can be installed with:
apt install python3.11
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath# source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
-bash: .venv/bin/activate: No such file or directory
-bash: /home/lamhuy/dmoj-docker/tmath/.venv/bin/pip: No such file or directory
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath#
rm -rf .venv
python3 -m venv .venv
source .venv/bin/activate
apt-get update && apt-get install -y libseccomp-dev build-essential
pip install --upgrade pip
pip install -r requirements.txt
python -m dmoj.judge 127.0.0.1 judge1 'UnbPH5a&+l[`9ebJR.,0TW$gYN^`QC(L?gDh->jGC5[Qlb=0|dxfVD^T93S8[H#+3]1zh!D(+#tOH^4SMRRB`OSa1%21jMEuei.f'
apt-get update && apt-get install -y libseccomp-dev build-essential
pip install dmoj
python -m dmoj.judge 127.0.0.1 judge1 'UnbPH5a&+l[`9ebJR.,0TW$gYN^`QC(L?gDh->jGC5[Qlb=0|dxfVD^T93S8[H#+3]1zh!D(+#tOH^4SMRRB`OSa1%21jMEuei.f'
nano docker-compose.yml
docker compose down
docker compose up -d
docker-compose.yml
docker compose down
docker compose up -d --build
nano docker-compose.yml
docker compose down && docker compose up -d
docker rm -f dmoj-docker-judge-1
docker compose down --remove-orphans
docker compose up -d
nano docker-compose.yml
docker compose down && docker compose up -d
nano docker-compose.yml
docker compose down && docker compose up -d
nano docker-compose.yml
docker compose down && docker compose up -d
docker logs -f dmoj-docker-judge-1
nano docker-compose.yml
docker compose down && docker compose up -d
docker logs --tail 50 -f dmoj-docker-judge-1
nano docker-compose.yml
docker compose down && docker compose up -d
nano docker-compose.yml
docker compose down && docker compose up -d
docker logs --tail 100 -f dmoj-docker-judge-1
docker exec -it dmoj-docker-judge-1 nc -zv host.docker.internal 9999
cp .env.example .env
nano .env
docker compose down && docker compose up -d
touch .dmojrc
nano docker-compose.yml
docker compose down && docker compose up -d
docker logs --tail 50 -f dmoj-docker-judge-1
nano docker-compose.yml
docker compose down && docker compose up -d
nano .dmojrc
nano docker-compose.yml
docker compose down && docker compose up -d
nano docker-compose.yml
docker compose down && docker compose up -d
rm -rf /home/lamhuy/HuyOJ/HuyOJ/tmath
docker compose down -v
mkdir -p /home/lamhuy/dmoj-docker
cd /home/lamhuy/dmoj-docker
nano docker-compose.yml
docker compose up -d
nano docker-compose.yml
docker compose up -d --build
cd /home/lamhuy/dmoj-docker
git clone https://github.com/dmoj/online-judge.git site
git clone https://github.com/dmoj/judgeserver.git judge_src
nano docker-compose.yml
docker compose up -d --build
cd /home/lamhuy/dmoj-docker
curl -L https://github.com/dmoj/judgeserver/archive/refs/heads/master.zip -o judgeserver.zip
apt-get update && apt-get install -y unzip
mv judgeserver-master judge_src
killall unattended-upgr apt apt-get
rm -f /var/lib/dpkg/lock-frontend /var/lib/dpkg/lock /var/cache/apt/archives/lock
ls -l
unzip judgeserver.zip
mv judgeserver-master judge_src
docker compose up -d --build
rm -f judgeserver.zip
git clone https://github.com/dmoj/judgeserver.git judge_src
docker compose up -d --build
cd /home/lamhuy/dmoj-docker
curl -L https://github.com/dmoj/judgeserver/archive/refs/heads/master.tar.gz -o judgeserver.tar.gz
tar -xzf judgeserver.tar.gz
mv judgeserver-master judge_src
rm judgeserver.tar.gz
docker compose up -d --build
mkdir -p /home/lamhuy/dmoj-docker/judge_src
cd /home/lamhuy/dmoj-docker/judge_src
nano Dockerfile
cd /home/lamhuy/dmoj-docker
docker compose up -d --build
cd /home/lamhuy/dmoj-docker/site
nano Dockerfile
cd /home/lamhuy/dmoj-docker
docker compose up -d --build
nano /home/lamhuy/dmoj-docker/judge_src/Dockerfile
cd /home/lamhuy/dmoj-docker
docker compose up -d --build
nano /home/lamhuy/dmoj-docker/judge_src/Dockerfile
cd /home/lamhuy/dmoj-docker
docker compose up -d --build
nano /home/lamhuy/dmoj-docker/judge_src/Dockerfile
cd /home/lamhuy/dmoj-docker
docker compose up -d --build
nano /home/lamhuy/dmoj-docker/judge_src/Dockerfile
cd /home/lamhuy/dmoj-docker
docker compose up -d --build
cd /home/lamhuy/dmoj-docker
docker compose build --no-cache judge
docker compose up -d
cd /home/lamhuy/dmoj-docker
rm -rf judge_src
git clone --depth 1 https://github.com/dmoj/judgeserver.git judge_src
nano /home/lamhuy/dmoj-docker/judge_src/Dockerfile
cd /home/lamhuy/dmoj-docker
mkdir -p judge_src
git clone --depth 1 https://github.com/dmoj/judgeserver.git judge_src
cd /home/lamhuy/dmoj-docker
rm -rf judge_src
mkdir -p judge_src
curl -L https://github.com/dmoj/judgeserver/archive/refs/heads/master.tar.gz | tar -xz -C judge_src --strip-components=1
cd /home/lamhuy/dmoj-docker
rm -rf judge_src
mkdir -p judge_src
curl -L https://github.com/dmoj/judgeserver/archive/refs/heads/main.tar.gz | tar -xz -C judge_src --strip-components=1
cd /home/lamhuy/dmoj-docker
rm -rf judge_src
mkdir -p judge_src
curl -L https://github.com/dmoj/judge-server/archive/refs/heads/master.tar.gz | tar -xz -C judge_src --strip-components=1
cat << 'EOF' > /home/lamhuy/dmoj-docker/judge_src/Dockerfile
FROM python:3.9-slim

RUN apt-get update && apt-get install -y build-essential

WORKDIR /judge

COPY . /judge

RUN pip install --no-cache-dir -e .

CMD ["dmoj-judge"]
EOF

docker compose build --no-cache judge
docker compose up -d
cat << 'EOF' > /home/lamhuy/dmoj-docker/judge_src/Dockerfile
FROM python:3.9-slim

RUN apt-get update && apt-get install -y build-essential libseccomp-dev

WORKDIR /judge

COPY . /judge

RUN pip install --no-cache-dir -e .

CMD ["dmoj-judge"]
EOF

cd /home/lamhuy/dmoj-docker
docker compose build --no-cache judge
docker compose up -d
cat << 'EOF' > /home/lamhuy/dmoj-docker/judge_src/Dockerfile
FROM python:3.9-slim

RUN apt-get update && apt-get install -y build-essential libseccomp-dev

WORKDIR /judge

COPY . /judge

RUN pip install --no-cache-dir -e .

CMD ["python", "-m", "dmoj.judge"]
EOF

cd /home/lamhuy/dmoj-docker
docker compose build --no-cache judge
docker compose up -d
docker compose logs -f judge
cd /home/lamhuy/dmoj-docker
docker compose up -d
docker compose ps
docker compose logs -f web
python manage.py runserver
sudo apt update
sudo apt install -y   git curl ca-certificates gnupg   gcc g++ make pkg-config gettext   python3 python3-dev python3-venv   default-libmysqlclient-dev   libxml2-dev libxslt1-dev zlib1g-dev   mariadb-server redis-server
git clone https://github.com/EDU-TMATH/TMATH tmath
cd tmath
git submodule update --init --recursive 
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip setuptools wheel
pip install mysqlclient
pip install -r requirements.txt
npm install
CREATE DATABASE dmoj DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;
docker exec -it dmoj-docker-db-1 mysql -u root -p
docker exec -it dmoj-docker-db-1 mysql -u root
cd /home/lamhuy/dmoj-docker
grep -i password docker-compose.yml
docker exec -it dmoj-docker-db-1 mysql -u root -p
docker exec -i dmoj-docker-db-1 mysql -u root -pdmoj_password -e "CREATE DATABASE IF NOT EXISTS dmoj DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;"
CREATE DATABASE dmoj DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;
npx @tailwindcss/cli -i resources/main.css -o resources/full_style.css
python manage.py collectstatic --noinput
python manage.py compilemessages
python manage.py compilejsi18n
docker exec -it dmoj-docker-web-1 python manage.py migrate
docker exec -it dmoj-docker-web-1 python manage.py collectstatic --noinput
docker compose logs web
clear
docker exec -it dmoj-docker-web-1 pip install pymysql
RUN pip install --no-cache-dir pymysql
sudo mysql -u root -p
TOP-LAMHUY27:/home/lamhuy/dmoj-docker#
sudo mysql -u root -p
cd /home/lamhuy/dmoj-docker/tmath
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip setuptools wheel
pip install mysqlclient
pip install -r requirements.txt
npm install
nano tmath/local_settings.py
npx @tailwindcss/cli -i resources/main.css -o resources/full_style.css
python manage.py collectstatic --noinput
python manage.py compilemessages
python manage.py compilejsi18n
nano tmath/local_settings.py
python manage.py collectstatic --noinput
python manage.py compilemessages
python manage.py compilejsi18n
python manage.py collectstatic --noinput
python manage.py compilemessages
python manage.py compilejsi18n
python manage.py migrate
nano tmath/local_settings.py
python manage.py migrate
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
python3 runserver
python manage.py runserver
ModuleNotFoundError: No module named 'celery'
During handling of the above exception, another exception occurred:
Traceback (most recent call last):
ModuleNotFoundError: No module named 'celery'
(.venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath#
python manage.py runserver
pip install -r requirements.txt
python manage.py runserver
pip install celery redis mysqlclient
pip install -r requirements.txt
python manage.py runserver
celery -A tmath worker -l info
python manage.py shell
cd /home/lamhuy/dmoj-docker/tmath
source .venv/bin/activate
celery -A tmath worker -l info
cd /home/lamhuy/dmoj-docker/tmath
source .venv/bin/activate
python manage.py runbridged
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io 
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone --recursive https://github.com/VNOI-Admin/vnoj-docker.git
cd vnoj-docker/dmoj
MYSQL_DATABASE=dmoj
MYSQL_USER=dmoj
MYSQL_PASSWORD=lamhuy2705
MYSQL_ROOT_PASSWORD=lamhuy2705
HOST=192.168.1.60				#thay bang IP cua Local Server
SITE_FULL_URL=http://127.0.0.1:80/
MEDIA_URL=http://127.0.0.1:80/
DEBUG=0
SECRET_KEY=nguyenlamhuy2705admin
HOST=127.0.0.1:80           
SITE_FULL_URL=http://127.0.0.1:80/
MEDIA_URL=http://127.0.0.1:80/
DEBUG=0
SECRET_KEY=nguyenlamhuy2705admin
./scripts/initialize
sudo docker-compose build
cd /root/vnoj-docker/dmoj/environment/
ls -la
cp mysql.env.example mysql.env
nano mysql.env
sudo docker-compose build
cp mysql-admin.env.example mysql-admin.env
cd /root/vnoj-docker/dmoj/
sudo docker-compose build
cd /root/vnoj-docker/dmoj/environment/
ls -la
cp site.env.example site.env
nano site.env
for f in *.env.example; do cp "$f" "${f%.example}"; done
cd /root/vnoj-docker/dmoj/
sudo docker-compose build
root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj/environment# cd /root/vnoj-docker/dmoj/
sudo docker-compose build
db uses an image, skipping
redis uses an image, skipping
nginx uses an image, skipping
Building base
[+] Building 502.3s (12/12) FINISHED                   docker:default
sudo docker-compose up -d site
sudo ./scripts/migrate
sudo docker exec -it vnoj_site pip install lxml_html_clean
sudo ./scripts/migrate
sudo ./scripts/copy_static
sudo ./scripts/manage.py loaddata navbar
sudo ./scripts/manage.py loaddata language_small
sudo ./scripts/manage.py loaddata demo
sudo docker-compose up –d
sudo docker-compose up -d
sudo ss -lntp 'sport = :80'
sudo systemctl stop apache2
sudo docker-compose up -d
root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj# sudo systemctl stop apache2
Failed to stop apache2.service: Unit apache2.service not loaded.
root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj# sudo docker-compose up -d
vnoj_mysql is up-to-date
vnoj_redis is up-to-date
Starting dmoj_base_1 ... done
vnoj_celery is up-to-date
vnoj_site is up-to-date
vnoj_bridged is up-to-date
vnoj_wsevent is up-to-date
Starting vnoj_nginx  ...
Starting vnoj_nginx  ... error
ERROR: for vnoj_nginx  Cannot start service nginx: failed to set up container networking: driver failed programming external connectivity on endpoint vnoj_nginx (eb0108a58e1fe123a7f7daa1ad950bbf3ca0b299684aef96aac54fcd71c78a5f): Bind for 0.0.0.0:80 failed: port is already allocated
ERROR: for nginx  Cannot start service nginx: failed to set up container networking: driver failed programming external connectivity on endpoint vnoj_nginx (eb0108a58e1fe123a7f7daa1ad950bbf3ca0b299684aef96aac54fcd71c78a5f): Bind for 0.0.0.0:80 failed: port is already allocated
ERROR: Encountered errors while bringing up the project.
root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj#root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj# sudo systemctl stop apache2
Failed to stop apache2.service: Unit apache2.service not loaded.
root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj# sudo docker-compose up -d
vnoj_mysql is up-to-date
vnoj_redis is up-to-date
Starting dmoj_base_1 ... done
vnoj_celery is up-to-date
vnoj_site is up-to-date
vnoj_bridged is up-to-date
vnoj_wsevent is up-to-date
Starting vnoj_nginx  ...
Starting vnoj_nginx  ... error
ERROR: for vnoj_nginx  Cannot start service nginx: failed to set up container networking: driver failed programming external connectivity on endpoint vnoj_nginx (eb0108a58e1fe123a7f7daa1ad950bbf3ca0b299684aef96aac54fcd71c78a5f): Bind for 0.0.0.0:80 failed: port is already allocated
ERROR: for nginx  Cannot start service nginx: failed to set up container networking: driver failed programming external connectivity on endpoint vnoj_nginx (eb0108a58e1fe123a7f7daa1ad950bbf3ca0b299684aef96aac54fcd71c78a5f): Bind for 0.0.0.0:80 failed: port is already allocated
ERROR: Encountered errors while bringing up the project.
root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj#root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj# sudo systemctl stop apache2
Failed to stop apache2.service: Unit apache2.service not loaded.
root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj# sudo docker-compose up -d
vnoj_mysql is up-to-date
vnoj_redis is up-to-date
Starting dmoj_base_1 ... done
vnoj_celery is up-to-date
vnoj_site is up-to-date
vnoj_bridged is up-to-date
vnoj_wsevent is up-to-date
Starting vnoj_nginx  ...
Starting vnoj_nginx  ... error
ERROR: for vnoj_nginx  Cannot start service nginx: failed to set up container networking: driver failed programming external connectivity on endpoint vnoj_nginx (eb0108a58e1fe123a7f7daa1ad950bbf3ca0b299684aef96aac54fcd71c78a5f): Bind for 0.0.0.0:80 failed: port is already allocated
ERROR: for nginx  Cannot start service nginx: failed to set up container networking: driver failed programming external conneclear
ports:
sudo docker-compose up -d
TOP-LAMHUY27:~/vnoj-docker/dmoj# sudo docker-compose up -d
vnoj_redis is up-to-date
Starting dmoj_base_1 ...
Starting dmoj_base_1 ... done
vnoj_bridged is up-to-date
vnoj_wsevent is up-to-date
vnoj_site is up-to-date
vnoj_celery is up-to-date
Starting vnoj_nginx  ...
Starting vnoj_nginx  ... error
ERROR: for vnoj_nginx  Cannot start service nginx: failed to set up container networking: driver failed programming external connectivity on endpoint vnoj_nginx (cf41254f9fe0cb415ee166c6a8b8c5d1cdf77438efd55779836e8c23c41a8cd4): Bind for 0.0.0.0:80 failed: port is already allocated
ERROR: for nginx  Cannot start service nginx: failed to set up container networking: driver failed programming external connectivity on endpoint vnoj_nginx (cf41254f9fe0cb415ee166c6a8b8c5d1cdf77438efd55779836e8c23c41a8cd4): Bind for 0.0.0.0:80 failed: port is already allocated
ERROR: Encountered errors while bringing up the project.
root@DESTOP-LAMHUY27:~/vnoj-docker/dmoj#
nano docker-compose.yml
sudo docker-compose up -d
nano docker-compose.yml
sudo docker-compose up -d
nano docker-compose.yml
sudo docker-compose up -d
sudo docker-compose rm -f nginx
sudo docker-compose up -d --force-recreate
sudo docker-compose up –d
sudo docker compose down
sudo docker compose up -d
sudo docker compose exec site python manage.py createsuperuser
sudo docker compose exec site pip install lxml_html_clean
sudo docker compose exec site python manage.py createsuperuser
sudo docker compose exec site python manage.py migrate
sudo docker compose exec site python manage.py collectstatic --noinput
sudo docker compose down
sudo docker compose up -d
sudo docker compose logs -f site
sudo docker compose build site
sudo docker compose up -d
nano site/Dockerfile
sudo docker compose build --no-cache site
sudo docker compose down
sudo docker compose up -d
sudo docker compose down
sudo docker compose up -d
sudo docker compose logs -f site
http://localhost:8080
sudo docker compose restart nginx
sudo docker compose logs --tail=50 nginx
proxy_pass http://site:8000;
sudo docker compose restart nginx
sudo docker compose exec site python manage.py collectstatic --clear --noinput
sudo docker compose restart site
sudo docker compose exec site python manage.py collectstatic --clear --noinput
sudo docker compose down
sudo docker compose up -d
sudo docker-compose up –d
nano local.py
# hoặc tìm file cấu hình local settings của dmoj
sudo docker compose restart site
sudo docker compose exec site python manage.py compilemessages
sudo docker compose exec site python manage.py collectstatic --clear --noinput
sudo docker compose restart site
sudo docker compose down
sudo docker compose up -d
sudo docker compose down
sudo docker compose up -d
sudo docker compose logs --tail=50 site
sleep 15
sudo docker compose restart site
nano uwsgi.ini
sudo docker compose down
sudo docker compose up -d
nano uwsgi.ini
sudo docker compose down
sudo docker compose up -d
docker-compose.yml
nano docker-compose.yml
sudo docker compose down -v --rmi local
cd ~
rm -rf ~/vnoj-docker
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io 
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone --recursive https://github.com/VNOI-Admin/vnoj-docker.git
cd vnoj-docker/dmoj
cd ~/vnoj-docker/dmoj/environment/
cp mysql.env.example mysql.env
cp mysql-admin.env.example mysql-admin.env
cp site.env.example site.env
nano mysql.env
nano mysql-admin.env
nano site.env
HOST=192.168.1.60				#thay bang IP cua Local Server
SITE_FULL_URL=http://192.168.1.60/
MEDIA_URL=http://192.168.1.60/
DEBUG=0
SECRET_KEY=nguyenlamhuy270515
./scripts/initialize
sudo docker-compose build
sudo docker-compose up -d site
sudo ./scripts/migrate
sudo ./scripts/copy_static
sudo ./scripts/manage.py loaddata navbar
sudo ./scripts/manage.py loaddata language_small
sudo ./scripts/manage.py loaddata demo
sudo docker-compose up –d
cd ~/vnoj-docker/dmoj
sudo docker compose up -d
nano docker-compose.yml
sudo docker compose down
sudo docker compose up -d
sudo docker compose ps
sudo docker-compose up –d
sudo docker compose logs --tail=30 site
nano docker-compose.yml
sudo docker compose down
sudo docker compose up -d
sudo ./scripts/manage.py loaddata navbar
sudo ./scripts/manage.py loaddata language_small
sudo ./scripts/manage.py loaddata demo
sudo ./scripts/copy_static
sudo docker-compose up –d
find . -name "uwsgi.ini"
nano docker-compose.yml
cd /home/lamhuy/dmoj-docker/tmath
source .venv/bin/activate
python manage.py runbridged
cd /home/lamhuy/dmoj-docker/HuyOJ
source .venv/bin/activate
cd /home/lamhuy/dmoj-docker/HuyOJ
# Tạo thư mục bài toán và thư mục test
mkdir -p problems/tinhtongab/test
# Tạo file cấu hình bài toán init.toml (đặt giới hạn thời gian 1s, bộ nhớ 256MB)
cat << 'EOF' > problems/tinhtongab/init.toml
[info]
name = "Tinh tong A + B"
code = "tinhtongab"
time_limit = 1.0
memory_limit = 256
[architectures]
EOF

cd /home/lamhuy/dmoj-docker/tmath
ls -la /home/lamhuy/dmoj-docker/
cd /home/lamhuy/dmoj-docker/HuyOJ
# Tạo thư mục bài toán và thư mục test
mkdir -p problems/tinhtongab/test
# Tạo file cấu hình bài toán init.toml (đặt giới hạn thời gian 1s, bộ nhớ 256MB)
cat << 'EOF' > problems/tinhtongab/init.toml
[info]
name = "Tinh tong A + B"
code = "tinhtongab"
time_limit = 1.0
memory_limit = 256
[architectures]
EOF

cd /home/lamhuy/dmoj-docker/HuyOJ
mkdir -p problems/tinhtongab/test
cat << 'EOF' > problems/tinhtongab/init.toml
[info]
name = "Tổng a,b"
code = "tinhtongab"
time_limit = 1.0
memory_limit = 256
[architectures]
EOF

nano sinhtest1.py
python sinhtest1.py
nano sinhtest1.py
python sinhtest.py
ls -la problems/tinhtongab/test/
cp /home/lamhuy/my_tests/*.in problems/tinhtongab/test/
cp /home/lamhuy/my_tests/*.ans problems/tinhtongab/test/
python3 -c '
import os, random
test_dir = "problems/tinhtongab/test"
os.makedirs(test_dir, exist_ok=True)
for i in range(1, 21):
    a = random.randint(-10**6, 10**6)
    b = random.randint(-10**6, 10**6)
    with open(f"{test_dir}/test{i}.in", "w") as f:
        f.write(f"{a} {b}\n")
    with open(f"{test_dir}/test{i}.ans", "w") as f:
        f.write(f"{a + b}\n")
print("Đã sinh thành công 20 test!")
'
ls -la problems/tinhtongab/test/
python3 -c '
import os, random
test_dir = "problems/tinhtongab/test"
os.makedirs(test_dir, exist_ok=True)
for i in range(1, 21):
    a = random.randint(-10**6, 10**6)
    b = random.randint(-10**6, 10**6)
    with open(f"{test_dir}/test{i}.in", "w") as f:
        f.write(f"{a} {b}\n")
    with open(f"{test_dir}/test{i}.ans", "w") as f:
        f.write(f"{a + b}\n")
print("Đã thêm thành công 20 test vào thư mục!")
'
ls -la problems/tinhtongab/test/
cd /home/lamhuy/dmoj-docker/tmath
# 1. Nén toàn bộ các file trong thư mục test thành file tinhtongab_test.zip
cd problems/tinhtongab/
zip -r tinhtongab_test.zip test/
# 2. Tạo thư mục chứa file nén nếu hệ thống yêu cầu đường dẫn upload chung
mkdir -p /home/lamhuy/dmoj-docker/tmath/media/problem_test_cases/
mv tinhtongab_test.zip /home/lamhuy/dmoj-docker/tmath/media/problem_test_cases/
echo "=== INPUT test 19 ==="
cat problems/tinhtongab/test/test19.in
echo "=== ANSWER (Đáp án đúng) test 19 ==="
cat problems/tinhtongab/test/test19.ans
context["gold"], context["silver"], context["bronze"] = self.get_queryset()[:3]
nano judge/views/user.py
cd /home/lamhuy/dmoj-docker/tmath
ls -la judge/views/user.py
python3 -c '
file_path = "judge/views/user.py"
with open(file_path, "r", encoding="utf-8") as f:
    content = f.read()

# Đoạn code cũ gây lỗi
old_code = \'context["gold"], context["silver"], context["bronze"] = self.get_queryset()[:3]\'
# Đoạn code mới an toàn hơn
new_code = """top_users = list(self.get_queryset()[:3])
        context["gold"] = top_users[0] if len(top_users) > 0 else None
        context["silver"] = top_users[1] if len(top_users) > 1 else None
        context["bronze"] = top_users[2] if len(top_users) > 2 else None"""
if old_code in content:;     content = content.replace(old_code, new_code)
else:
'
python3 -c '
file_path = "judge/views/user.py"
with open(file_path, "r", encoding="utf-8") as f:
    content = f.read()

# Đoạn code cũ gây lỗi
old_code = \'context["gold"], context["silver"], context["bronze"] = self.get_queryset()[:3]\'
# Đoạn code mới an toàn hơn
new_code = """top_users = list(self.get_queryset()[:3])
        context["gold"] = top_users[0] if len(top_users) > 0 else None
        context["silver"] = top_users[1] if len(top_users) > 1 else None
        context["bronze"] = top_users[2] if len(top_users) > 2 else None"""
if old_code in content:;     content = content.replace(old_code, new_code)
else:
'
cd /home/lamhuy/dmoj-docker/tmath
python3 manage.py shell -c "
from django.contrib.auth.models import User
u = User.objects.get(username='adminlh27')
u.is_superuser = True
u.is_staff = True
u.save()
print('Đã cấp quyền Superuser thành công cho adminlh27'''))
"
cd /home/lamhuy/dmoj-docker/tmath
python3 manage.py shell -c "
from django.contrib.auth.models import User
u = User.objects.get(username='adminlh27')
u.is_superuser = True
u.is_staff = True
u.save()
print('Đã cấp quyền Superuser thành công cho adminlh27!')
"
.venv/bin/python manage.py shell -c "
from django.contrib.auth.models import User
u = User.objects.get(username='adminlh27')
u.is_superuser = True
u.is_staff = True
u.save()
print('Đã cấp quyền Superuser thành công cho adminlh27!')
"
source .venv/bin/activate
python manage.py shell -c "
from django.contrib.auth.models import User
u = User.objects.get(username='adminlh27')
u.is_superuser = True
u.is_staff = True
u.save()
print('Đã cấp quyền Superuser thành công cho adminlh27!')
"
cd /home/lamhuy/dmoj-docker/tmath
.venv/bin/python manage.py createsuperuser
cd /home/lamhuy/dmoj-docker/tmath
.venv/bin/python manage.py shell -c "
from django.contrib.auth.models import User
from judge.models import Profile

count = 0
for u in User.objects.all():
    if not hasattr(u, 'profile'):
        Profile.objects.create(user=u)
        count += 1

print(f'Đã tạo thành công Profile cho {count} tài khoản chưa có!')
"
cd /home/lamhuy/dmoj-docker/tmath
.venv/bin/python manage.py shell -c "
from django.contrib.auth.models import User
from judge.models import Profile

# Lấy tài khoản adminlh27 hoặc tạo mới nếu chưa có
u, created = User.objects.get_or_create(username='adminlh27', defaults={'is_superuser': True, 'is_staff': True})
u.set_password('12345678') # Đặt mật khẩu mới đơn giản là 12345678
u.is_superuser = True
u.is_staff = True
u.save()

# Đảm bảo tài khoản có Profile đi kèm
if not hasattr(u, 'profile'):
    Profile.objects.create(user=u)

print('Đã đổi mật khẩu thành công cho adminlh27 thành: 12345678')
"
git clone https://github.com/jasoncallen/DMOJ-Problems.git
dmoj-problemtools build problems/<problem_code>
.venv/bin/python manage.py import_problems DMOJ-Problems
cat << 'EOF' > import_repo.py
import os
import django
import yaml

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem, Test

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for problem_code in os.listdir(repo_dir):
    problem_path = os.path.join(repo_dir, problem_code)
    if not os.path.isdir(problem_path):
        continue
    
    yaml_file = os.path.join(problem_path, 'problem.yaml')
    name = problem_code
    if os.path.exists(yaml_file):
        try:
            with open(yaml_file, 'r', encoding='utf-8') as f:
                data = yaml.safe_load(f)
                if data and 'name' in data:
                    name = data['name']
        except Exception:
            pass

    # Tạo hoặc cập nhật bài toán trong Database
    problem, created = Problem.objects.get_or_create(
        code=problem_code,
        defaults={
            'name': name,
            'is_visible': True,
            'memory_limit': 256,
            'time_limit': 1.0,
        }
    )
    
    print(f"Đã xử lý bài toán: {problem_code} ({name})")
    count += 1

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán vào hệ thống.")
EOF

cat << 'EOF' > import_repo.py
import os
import django
import yaml

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem, Test

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for problem_code in os.listdir(repo_dir):
    problem_path = os.path.join(repo_dir, problem_code)
    if not os.path.isdir(problem_path):
        continue
    
    yaml_file = os.path.join(problem_path, 'problem.yaml')
    name = problem_code
    if os.path.exists(yaml_file):
        try:
            with open(yaml_file, 'r', encoding='utf-8') as f:
                data = yaml.safe_load(f)
                if data and 'name' in data:
                    name = data['name']
        except Exception:
            pass

    # Tạo hoặc cập nhật bài toán trong Database
    problem, created = Problem.objects.get_or_create(
        code=problem_code,
        defaults={
            'name': name,
            'is_visible': True,
            'memory_limit': 256,
            'time_limit': 1.0,
        }
    )
    
    print(f"Đã xử lý bài toán: {problem_code} ({name})")
    count += 1

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán vào hệ thống.")
EOF

cat << 'EOF' > import_repo.py
import os
import django
import yaml

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem, Test

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for problem_code in os.listdir(repo_dir):
    problem_path = os.path.join(repo_dir, problem_code)
    if not os.path.isdir(problem_path):
        continue
    
    yaml_file = os.path.join(problem_path, 'problem.yaml')
    name = problem_code
    if os.path.exists(yaml_file):
        try:
            with open(yaml_file, 'r', encoding='utf-8') as f:
                data = yaml.safe_load(f)
                if data and 'name' in data:
                    name = data['name']
        except Exception:
            pass

    # Tạo hoặc cập nhật bài toán trong Database
    problem, created = Problem.objects.get_or_create(
        code=problem_code,
        defaults={
            'name': name,
            'is_visible': True,
            'memory_limit': 256,
            'time_limit': 1.0,
        }
    )
    
    print(f"Đã xử lý bài toán: {problem_code} ({name})")
    count += 1

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán vào hệ thống.")
EOF

cat << 'EOF' > import_repo.py
import os
import django
import yaml

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem, Test

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for problem_code in os.listdir(repo_dir):
    problem_path = os.path.join(repo_dir, problem_code)
    if not os.path.isdir(problem_path):
        continue
    
    yaml_file = os.path.join(problem_path, 'problem.yaml')
    name = problem_code
    if os.path.exists(yaml_file):
        try:
            with open(yaml_file, 'r', encoding='utf-8') as f:
                data = yaml.safe_load(f)
                if data and 'name' in data:
                    name = data['name']
        except Exception:
            pass

    # Tạo hoặc cập nhật bài toán trong Database
    problem, created = Problem.objects.get_or_create(
        code=problem_code,
        defaults={
            'name': name,
            'is_visible': True,
            'memory_limit': 256,
            'time_limit': 1.0,
        }
    )
    
    print(f"Đã xử lý bài toán: {problem_code} ({name})")
    count += 1

cat << 'EOF' > import_repo.py
import os
import django
import yaml

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem, Test

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for problem_code in os.listdir(repo_dir):
    problem_path = os.path.join(repo_dir, problem_code)
    if not os.path.isdir(problem_path):
        continue
    
    yaml_file = os.path.join(problem_path, 'problem.yaml')
    name = problem_code
    if os.path.exists(yaml_file):
        try:
            with open(yaml_file, 'r', encoding='utf-8') as f:
                data = yaml.safe_load(f)
                if data and 'name' in data:
                    name = data['name']
        except Exception:
            pass

    # Tạo hoặc cập nhật bài toán trong Database
    problem, created = Problem.objects.get_or_create(
        code=problem_code,
        defaults={
            'name': name,
            'is_visible': True,
            'memory_limit': 256,
            'time_limit': 1.0,
        }
    )
    
    print(f"Đã xử lý bài toán: {problem_code} ({name})")
    count += 1

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán vào hệ thống.")
EOF

cd /home/lamhuy/dmoj-docker/tmath
cat << 'EOF' > import_repo.py
import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for problem_code in os.listdir(repo_dir):
    if problem_code.startswith('.'):
        continue
    problem_path = os.path.join(repo_dir, problem_code)
    if not os.path.isdir(problem_path):
        continue
    
    problem, created = Problem.objects.get_or_create(
        code=problem_code,
        defaults={
            'name': problem_code.upper(),
            'is_visible': True,
            'memory_limit': 256,
            'time_limit': 1.0,
        }
    )
    print(f"Đã thêm bài: {problem_code}")
    count += 1

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán.")
EOF

.venv/bin/python import_repo.py
cd /home/lamhuy/dmoj-docker/tmath
find . -maxdepth 2 -name "DMOJ-Problems"
ls -F DMOJ-Problems
cat << 'EOF' > import_repo.py
import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
# Tự động quét toàn bộ cây thư mục để tìm các thư mục chứa problem.yaml
for root, dirs, files in os.walk(repo_dir):
    if 'problem.yaml' in files:
        problem_code = os.path.basename(root)
        if problem_code.startswith('.'):
            continue
            
        problem, created = Problem.objects.get_or_create(
            code=problem_code,
            defaults={
                'name': problem_code.upper(),
                'is_visible': True,
                'memory_limit': 256,
                'time_limit': 1.0,
            }
        )
        print(f"Đã thêm bài: {problem_code}")
        count += 1

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán.")
EOF

cat << 'EOF' > import_repo.py
import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for filename in os.listdir(repo_dir):
    if filename.endswith('.py'):
        # Lấy tên file bỏ đuôi .py làm mã bài (chuyển thành chữ thường, thay khoảng trắng bằng gạch dưới)
        raw_name = filename[:-3]
        problem_code = raw_name.lower().replace(' ', '_').replace("'", "").replace("#", "")
        
        problem, created = Problem.objects.get_or_create(
            code=problem_code,
            defaults={
                'name': raw_name,
                'is_visible': True,
                'memory_limit': 256,
                'time_limit': 1.0,
            }
        )
        print(f"Đã thêm bài: {raw_name} (Code: {problem_code})")
        count += 1

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán.")
EOF

cat << 'EOF' > import_repo.py
import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for filename in os.listdir(repo_dir):
    if filename.endswith('.py'):
        # Lấy tên file bỏ đuôi .py làm mã bài (chuyển thành chữ thường, thay khoảng trắng bằng gạch dưới)
        raw_name = filename[:-3]
        problem_code = raw_name.lower().replace(' ', '_').replace("'", "").replace("#", "")
        
        problem, created = Problem.objects.get_or_create(
            code=problem_code,
            defaults={
                'name': raw_name,
                'is_visible': True,
                'memory_limit': 256,
                'time_limit': 1.0,
            }
        )
        print(f"Đã thêm bài: {raw_name} (Code: {problem_code})")
        count += 1

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán.")
EOF

.venv/bin/python import_repo.py
cat << 'EOF' > import_repo.py
import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for filename in os.listdir(repo_dir):
    if filename.endswith('.py'):
        raw_name = filename[:-3]
        problem_code = raw_name.lower().replace(' ', '_').replace("'", "").replace("#", "")

        problem, created = Problem.objects.get_or_create(
            code=problem_code,
            defaults={
                'name': raw_name,
                'is_public': True,
                'memory_limit': 256,
                'time_limit': 1.0,
            }
        )
        print(f"Đã thêm bài: {raw_name} (Code: {problem_code})")
        count += 1

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán.")
EOF

.venv/bin/python import_repo.py
git clone https://github.com/jasoncallen/DMOJ-Problems.git
git clone https://github.com/jasoncallen/DMOJ-Problems.git
dmoj-problemtools build problems/<problem_code>
mv /root/DMOJ-Problems /home/lamhuy/dmoj-docker/tmath/
cd /home/lamhuy/dmoj-docker/tmath
.venv/bin/python import_repo.py
cd /home/lamhuy/dmoj-docker/tmath
rm -f import_repo.py
rm -rf DMOJ-Problems
git clone https://github.com/jasoncallen/DMOJ-Problems.git
cat << 'EOF' > import_repo.py
import os
import django
import hashlib

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for filename in os.listdir(repo_dir):
    if filename.endswith('.py'):
        raw_name = filename[:-3]
        # Dùng mã hóa MD5 một phần hoặc rút gọn cực ngắn để đảm bảo không bao giờ vượt quá giới hạn cột code (thường là 20 ký tự)
        h = hashlib.md5(raw_name.encode('utf-8')).hexdigest()[:8]
        clean_prefix = "".join(c for c in raw_name.lower() if c.isalnum())[:8]
        problem_code = f"p_{clean_prefix}_{h}"[:20]

        try:
            problem, created = Problem.objects.get_or_create(
                code=problem_code,
                defaults={
                    'name': raw_name[:50],
                    'is_public': True,
                    'memory_limit': 256,
                    'time_limit': 1.0,
                }
            )
            print(f"Đã thêm: {raw_name} -> Mã code: {problem_code}")
            count += 1
        except Exception as e:
            print(f"Lỗi khi thêm bài {raw_name}: {e}")

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán.")
EOF

cat << 'EOF' > import_repo.py
import os
import django
import hashlib

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for filename in os.listdir(repo_dir):
    if filename.endswith('.py'):
        raw_name = filename[:-3]
        # Dùng mã hóa MD5 một phần hoặc rút gọn cực ngắn để đảm bảo không bao giờ vượt quá giới hạn cột code (thường là 20 ký tự)
        h = hashlib.md5(raw_name.encode('utf-8')).hexdigest()[:8]
        clean_prefix = "".join(c for c in raw_name.lower() if c.isalnum())[:8]
        problem_code = f"p_{clean_prefix}_{h}"[:20]

        try:
            problem, created = Problem.objects.get_or_create(
                code=problem_code,
                defaults={
                    'name': raw_name[:50],
                    'is_public': True,
                    'memory_limit': 256,
                    'time_limit': 1.0,
                }
            )
            print(f"Đã thêm: {raw_name} -> Mã code: {problem_code}")
            count += 1
        except Exception as e:
            print(f"Lỗi khi thêm bài {raw_name}: {e}")

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán.")
EOF

.venv/bin/python import_repo.py
.venv/bin/python manage.py shell -c "from judge.models import Problem; Problem.objects.all().delete()"
cd /home/lamhuy/dmoj-docker/tmath
cat << 'EOF' > import_repo_with_code.py
import os
import django
import hashlib

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for filename in os.listdir(repo_dir):
    if filename.endswith('.py'):
        raw_name = filename[:-3]
        file_path = os.path.join(repo_dir, filename)
        
        # Đọc nội dung file python để làm đề bài/lời giải tạm thời
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                code_content = f.read()
        except Exception:
            code_content = "# Không thể đọc nội dung file"

        h = hashlib.md5(raw_name.encode('utf-8')).hexdigest()[:8]
        clean_prefix = "".join(c for c in raw_name.lower() if c.isalnum())[:8]
        problem_code = f"p_{clean_prefix}_{h}"[:20]

        # Tạo nội dung HTML hiển thị đề bài/lời giải cơ bản trên web
        html_statement = f"<h3>Bài toán: {raw_name}</h3><p>Đây là bài toán được import từ kho mã nguồn mở. Dưới đây là mã nguồn lời giải mẫu:</p><pre><code>{code_content}</code></pre>"

        try:
            problem, created = Problem.objects.get_or_create(
                code=problem_code,
                defaults={
                    'name': raw_name[:50],
                    'is_public': True,
                    'memory_limit': 256,
                    'time_limit': 1.0,
                    'statement': html_statement,
                }
            )
            # Nếu bài đã tồn tại, cập nhật lại statement
            if not created:
                problem.statement = html_statement
                problem.save()

            print(f"Đã thêm/cập nhật: {raw_name}")
            count += 1
        except Exception as e:
            print(f"Lỗi khi thêm bài {raw_name}: {e}")

print(f"Hoàn tất! Đã thêm thành công {count} bài toán kèm theo code mẫu.")
EOF

.venv/bin/python import_repo_with_code.py
cat << 'EOF' > import_repo_with_code.py
import os
import django
import hashlib

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for filename in os.listdir(repo_dir):
    if filename.endswith('.py'):
        raw_name = filename[:-3]
        
        h = hashlib.md5(raw_name.encode('utf-8')).hexdigest()[:8]
        clean_prefix = "".join(c for c in raw_name.lower() if c.isalnum())[:8]
        problem_code = f"p_{clean_prefix}_{h}"[:20]

        try:
            problem, created = Problem.objects.get_or_create(
                code=problem_code,
                defaults={
                    'name': raw_name[:50],
                    'is_public': True,
                    'memory_limit': 256,
                    'time_limit': 1.0,
                }
            )
            print(f"Đã thêm thành công: {raw_name} (Mã: {problem_code})")
            count += 1
        except Exception as e:
            print(f"Lỗi khi thêm bài {raw_name}: {e}")

print(f"Hoàn tất! Đã thêm thành công {count} bài toán.")
EOF

.venv/bin/python import_repo_with_code.py
cd /home/lamhuy/dmoj-docker/tmath
# 1. Xóa file cũ và xóa sạch các bài lỗi trong DB
rm -f import_repo_with_code.py import_repo.py
.venv/bin/python manage.py shell -c "from judge.models import Problem; Problem.objects.all().delete()"
# 2. Tạo trực tiếp file script sạch bằng Python thuần túy qua lệnh cat an toàn
cat << 'EOF' > import_clean.py
import os
import django
import hashlib

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tmath.settings')
django.setup()

from judge.models import Problem

repo_dir = 'DMOJ-Problems'
if not os.path.exists(repo_dir):
    print("Không tìm thấy thư mục DMOJ-Problems!")
    exit(1)

count = 0
for filename in os.listdir(repo_dir):
    if filename.endswith('.py'):
        raw_name = filename[:-3]
        h = hashlib.md5(raw_name.encode('utf-8')).hexdigest()[:8]
        clean_prefix = "".join(c for c in raw_name.lower() if c.isalnum())[:8]
        problem_code = f"p_{clean_prefix}_{h}"[:20]

        try:
            Problem.objects.get_or_create(
                code=problem_code,
                defaults={
                    'name': raw_name[:50],
                    'is_public': True,
                    'memory_limit': 256,
                    'time_limit': 1.0,
                }
            )
            print(f"Đã thêm thành công: {raw_name}")
            count += 1
        except Exception as e:
            print(f"Lỗi: {e}")

print(f"Hoàn tất! Đã thêm tổng cộng {count} bài toán.")
EOF

# 3. Chạy script vừa tạo
.venv/bin/python import_clean.py
cd /home/lamhuy/dmoj-docker/tmath
.venv/bin/python manage.py shell -c "from judge.models import Problem; Problem.objects.all().delete()"
rm -f import_repo_with_code.py import_repo.py
.venv/bin/python manage.py shell -c "from judge.models import Problem; Problem.objects.all().delete()"
git clone https://github.com/tmathvn/problems.git
rm -rf problems
git clone https://github.com/tmathvn/problems.git
git clone https://github.com/tmathvn/problems.git problems-tmath
cd problems
git remote add tmath https://github.com/tmathvn/problems.git
git fetch tmath
git merge tmath/main
git clone https://github.com/tmathvn/problems.git problems-tmath
rm -rf problems
git clone https://github.com/tmathvn/problems.git problems
dmoj-problemtools build problems/*
pip install dmoj-problemtools
pip3 install dmoj-problemtools
apt update
apt install python3-pip
pip3 install dmoj-problemtools
apt install python3-dmoj-problemtools
apt install python3-venv -y
python3 -m venv venv
source venv/bin/activate
pip install dmoj-problemtools
dmoj-problemtools
pip3 install dmoj-problemtools --break-system-packages
git clone https://github.com/DMOJ/problemtools.git
cd /home/lamhuy/dmoj-docker/tmath
# Tạo cấu trúc thư mục chuẩn cho một bài toán
mkdir -p vd_bai_toan/statement vd_bai_toan/test
# Tạo file cấu hình problem.yaml mẫu
cat << 'EOF' > vd_bai_toan/problem.yaml
name: "Ví dụ bài toán A cộng B"
code: "aplusb"
time_limit: 1.0
memory_limit: 256
EOF

# Tạo file đề bài mẫu (dạng HTML)
cat << 'EOF' > vd_bai_toan/statement/index.html
<p>Tính tổng của hai số nguyên $A$ và $B$.</p>
<h2>Input</h2>
<p>Một dòng duy nhất chứa hai số nguyên $A$ và $B$ ($1 \le A, B \le 1000$).</p>
<h2>Output</h2>
<p>In ra tổng $A + B$.</p>
EOF

# Tạo sẵn một file test mẫu (test số 1)
echo "5 10" > vd_bai_toan/test/1.in
echo "15" > vd_bai_toan/test/1.ans
echo "Đã tạo xong thư mục bài toán mẫu 'vd_bai_toan' thành công!"
cd /home/lamhuy/dmoj-docker/tmath
.venv/bin/python manage.py import_problem --all problems/
g++ --version
cd /home/lamhuy/dmoj-docker/tmath
.venv/bin/python manage.py shell
cd /home/lamhuy/dmoj-docker/tmath
.venv/bin/python manage.py shell
[judge2]
name = judge2
dmoj-judge judge2
nano judge.conf
.venv/bin/dmoj-judge judge2 judge.conf
.venv/bin/pip install dmoj
rm -rf .venv
python3.11 -m venv .venv
sudo apt install python3.11 python3.11-venv python3.11-dev
python3.11 -m venv .venv
.venv/bin/pip install --upgrade pip
.venv/bin/pip install -r requirements.txt
.venv/bin/pip install dmoj
.venv/bin/dmoj-judge judge2 judge.conf
.venv/bin/python -m dmoj.bridge judge2 judge.conf
which python
python -m dmoj.bridge judge2 judge.conf
python -m pip install dmoj
rm -rf venv
python3.10 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install dmoj
python -m dmoj.bridge judge2 judge.conf
python3.11 -m venv venv
apt update && apt install -y python3.11 python3.11-venv python3.11-dev build-essential
python3.11 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install dmoj
python -m dmoj.bridge judge2 judge.conf
apt install -y software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt update
apt install -y python3.11 python3.11-venv python3.11-dev build-essential
python3.11 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install dmoj
nano judge.conf
python -m dmoj.bridge judge2 judge.conf -v
pip install dmoj
dmoj -c judge.conf judge2 -v
python -m dmoj -c judge.conf judge2 -v
nano judge.conf
dmoj -c judge.conf judge2 -v
dmoj -c judge.conf 127.0.0.1:8000 judge2 -v
dmoj -c judge.conf judge2 -v --allow-root
adduser --disabled-password --gecos "" dmojuser
chown -R dmojuser:dmojuser /home/lamhuy/dmoj-docker/tmath
su - dmojuser
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
dmoj -c judge.conf judge2 -v
su - dmojuser
cd /home/lamhuy/dmoj-docker/tmath
docker restart dmoj-docker-judge-2
docker ps -a
docker stop huyoj-web
cd /home/lamhuy/dmoj-docker
docker compose down
docker compose up -d
docker ps -a
docker rm -f dmoj-docker-judge-1
docker compose up -d
cd /home/lamhuy/dmoj-docker/HuyOJ
source .venv/bin/activate
docker restart dmoj-docker-judge-1
docker logs --tail 50 -f dmoj-docker-judge-1
cd /home/lamhuy/dmoj-docker
docker compose down
docker compose up -d
docker compose logs judge
fuser -k 8000/tcp
cd /home/lamhuy/dmoj-docker
docker compose up -d
fuser -k 8000/tcp
docker rm -f huyoj-web
cd /home/lamhuy/dmoj-docker
docker compose down
docker compose up -d
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
celery -A tmath worker -l info
python manage.py runbridged
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
dmoj -c judge.conf judge1 -v --allow-root
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
dmoj -c judge.conf judge2 -v --allow-root
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
dmoj -c judge.conf judge2 -v --allow-root
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
nohup dmoj -c judge.conf judge2 -v --allow-root > judge2.log 2>&1 &
nohup dmoj -c judge.conf judge1 -v --allow-root > judge1.log 2>&1 &
tail -n 30 judge1.log
cleat
clear
cat judge1.log
python3 -m dmoj.judge -c judge.conf judge1 -v --allow-root
clear
python3 -B -W ignore -m dmoj.judge -c judge.conf judge1 -v --allow-root
useradd -m -s /bin/bash dmojuser
chown -R dmojuser:dmojuser /home/lamhuy/dmoj-docker/tmath
su - dmojuser
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
chown -R dmojuser:dmojuser /home/lamhuy/dmoj-docker
chmod -R 755 /home/lamhuy/dmoj-docker
su - dmojuser
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
dmoj -c judge.conf judge1 -v
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
python manage.py runbridged
pkill -f dmoj
pkill -f runbridged
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
nohup python manage.py runbridged > bridge.log 2>&1 &
cd /home/lamhuy/dmoj-docker/tmath
nano judge1.yml
nano docker-compose.yml
docker compose down && docker compose up -d
docker logs -ft dmoj-docker-judge-1
cd /home/lamhuy/dmoj-docker/HuyOJ
source .venv/bin/activate
python manage.py user
python manage.py createsuperuser
python manage.py runbridged 0.0.0.0:9999
docker restart dmoj-docker-judge-1
python manage.py runbridged
celery -A tmath worker -l info
python manage.py runbridged
cd /home/lamhuy/dmoj-docker
docker compose down --remove-orphans
kill -9 $(lsof -t -i:8000) 2>/dev/null || true
docker compose up -d
fuser -k 8000/tcp
docker stop huyoj-web dmoj-docker-web-1 2>/dev/null || true
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
uvicorn tmath.asgi:application --host 127.0.0.1 --port 8000 --reload
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
python manage.py runbridged
python manage.py runserver
python manage.py runbridged
le "/home/lamhuy/dmoj-docker/tmath/manage.py", line 23, in <module>
OSError: [Errno 98] Address already in use
(venv) root@DESTOP-LAMHUY27:/home/lamhuy/dmoj-docker/tmath#
pkill -f runbridged
pkill -f dmoj
netstat -tuln | grep 9999
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
nohup python manage.py runbridged > bridge.log 2>&1 &
nohup /home/lamhuy/dmoj-docker/tmath/venv/bin/celery -A tmath worker -l info > celery.log 2>&1 &
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
python manage.py shell -c "from judge.models import Judge; Judge.objects.get_or_create(name='judge3', defaults={'auth_key': 'my_secret_key_3'}); print('Đã tạo judge3 thành công'''))"
echo "from judge.models import Judge; Judge.objects.get_or_create(name='judge3', defaults={'auth_key': 'my_secret_key_3'}); print('Tao judge3 thanh cong'''))" > create_judge.py
python manage.py shell < create_judge.py
source .venv/bin/activate
python manage.py runserver
cd /home/lamhuy/dmoj-docker/tmath
source .venv/bin/activate
python manage.py runserver
fuser -k 8000/tcp
docker rm -f huyoj-web
cd /home/lamhuy/dmoj-docker
docker compose down
docker compose up -d
docker compose down && docker compose up -d
cd /home/lamhuy/dmoj-docker
docker compose down --remove-orphans
kill -9 $(lsof -t -i:8000) 2>/dev/null || true
docker rm -f huyoj-web 2>/dev/null || true
docker compose up -d
python manage.py runserver
celery -A tmath worker -l info
python manage.py runbridged
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
python manage.py runbridged
python manage.py runserver
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
python manage.py runbridged
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
pip install mysqlclient
import pymysql
pymysql.install_as_mysqldb() import pymysql
pymysql.install_as_mysqldb() exit()
python manage.py runbridged
python manage.py runserver
su - dmojuser
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
dmoj -c judge.conf judge2 -v
cd /home/lamhuy/dmoj-docker/tmath
source venv/bin/activate
nohup dmoj -c judge.conf judge1 -v --allow-root > judge1.log 2>&1 &
nohup dmoj -c judge.conf judge2 -v --allow-root > judge2.log 2>&1 &
nohup dmoj -c judge.conf judge1 -v --allow-root > judge1.log 2>&1 &
nohup dmoj -c judge.conf judge2 -v --allow-root > judge2.log 2>&1 &
pkill -f dmoj
pkill -f runbridged
pkill -f celery
rm -rf /home/lamhuy/dmoj-docker/tmath
