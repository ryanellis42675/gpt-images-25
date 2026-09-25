import Foundation

/// Official multi-language SDK and metadata helper for GPT images 2.5
/// Free AI Image Generator & Conversational Inpainting Online
/// https://images25.art
public struct GptImages25 {
    public static let version = "0.1.2"
    public static let homepage = URL(string: "https://images25.art")!
    public static let documentation = URL(string: "https://images25.art")!
    
    public struct FlarePrompt {
        public let prompt: String
        public let aspectRatio: String
        public let engine: String
        public let url: URL
        
        public init(prompt: String, aspectRatio: String = "16:9") {
            self.prompt = prompt
            self.aspectRatio = aspectRatio
            self.engine = "flare-engine-v2.5"
            self.url = GptImages25.homepage
        }
    }
}
