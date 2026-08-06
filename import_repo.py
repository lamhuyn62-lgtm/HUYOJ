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
