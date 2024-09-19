import re
import json
import requests

# 请求的URL
url = "http://10.255.0.19/drcom/login"

# 请求的参数
params = {
    "callback": "dr1003",
    "DDDDD": "xxxxxxxx@xxx",  # 学号@运营商 eg: cmcc/移动、unicom/联通、aust/电信
    "upass": "xxxxxxxx",      # 登录密码
    "0MKKey": "123456",
}
# 发送GET请求
response = requests.get(url, params=params)

# 输出响应结果
match = re.search(r"\((\{.*\})\)", response.text)
if match:
    json_str = match.group(1)
    try:
        json_data = json.loads(json_str)
        result_value = json_data.get("result")
        if result_value:
            print("登陆成功")
        else:
            print("认证失败")
    except json.JSONDecodeError:
        print("JSON解析失败")
else:
    print("返回内容里未能找到可匹配的JSON")
