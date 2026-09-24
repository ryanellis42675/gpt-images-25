//! # GPT images 2.5 SDK
//!
//! Official client wrapper and integration helper for [GPT images 2.5](https://images25.art).
//! Create and edit stunning visuals in seconds with our AI prompt-to-picture generator.
//!
//! - **Homepage:** [https://images25.art](https://images25.art)
//! - **Documentation:** [https://docs.rs/gpt_images_25](https://docs.rs/gpt_images_25)

pub const OFFICIAL_URL: &str = "https://images25.art";
pub const SERVICE_NAME: &str = "GPT images 2.5";
pub const VERSION: &str = "0.1.0";

/// Configuration client for GPT images 2.5.
pub struct Client {
    pub base_url: String,
    pub api_key: Option<String>,
}

impl Default for Client {
    fn default() -> Self {
        Self {
            base_url: OFFICIAL_URL.to_string(),
            api_key: None,
        }
    }
}
