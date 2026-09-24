export declare class Client {
  apiKey: string | null;
  baseURL: string;
  constructor(apiKey?: string | null, baseURL?: string);
  getOfficialWebsite(): string;
}
export declare const OFFICIAL_URL: string;
export declare const SERVICE_NAME: string;
