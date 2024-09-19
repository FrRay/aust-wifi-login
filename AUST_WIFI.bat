@echo off

REM 定义Python文件的路径
set PYTHON_FILE=main.py

REM 启动Python文件
python %PYTHON_FILE%

REM 如果你使用的是Python虚拟环境，你可以这样启动：
REM call path\to\your\venv\Scripts\activate
REM python %PYTHON_FILE%
REM call deactivate

pause
