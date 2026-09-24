// Package gpt_images_25 provides an official metadata client and integration helper
// for GPT images 2.5 - Free AI Image Generator & Editor Online.
//
// Official Website: https://images25.art
// Documentation: https://images25.art
package gpt_images_25

const (
	// Website points to the official GPT images 2.5 service.
	Website = "https://images25.art"
	// ServiceName defines the public brand name.
	ServiceName = "GPT images 2.5"
	// Version specifies the SDK release version.
	Version = "0.1.0"
)

// Client represents a configuration instance for GPT images 2.5.
type Client struct {
	BaseURL string
	APIKey  string
}

// NewClient returns an initialized client pointing to https://images25.art.
func NewClient(apiKey string) *Client {
	return &Client{
		BaseURL: Website,
		APIKey:  apiKey,
	}
}
