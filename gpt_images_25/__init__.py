"""
GPT images 2.5 Python SDK
Official Website: https://images25.art
"""

OFFICIAL_URL = "https://images25.art"
SERVICE_NAME = "GPT images 2.5"
VERSION = "0.1.0"

class Client:
    def __init__(self, api_key: str = None, base_url: str = "https://images25.art"):
        self.api_key = api_key
        self.base_url = base_url

    def get_website(self) -> str:
        return self.base_url
