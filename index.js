/**
 * GPT images 2.5 Official Client SDK
 * Official Website: https://images25.art
 */
class GptImages25Client {
  constructor(apiKey = null, baseURL = "https://images25.art") {
    this.apiKey = apiKey;
    this.baseURL = baseURL;
  }

  getOfficialWebsite() {
    return this.baseURL;
  }
}

module.exports = {
  Client: GptImages25Client,
  OFFICIAL_URL: "https://images25.art",
  SERVICE_NAME: "GPT images 2.5"
};
