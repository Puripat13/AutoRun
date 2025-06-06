import subprocess

scripts = ["scrap1.py", "scrap2.py", "scrap3.py", "scrap4.py"]
for script in scripts:
    print(f"🚀 รัน {script}...")
    subprocess.run(["python", script])
