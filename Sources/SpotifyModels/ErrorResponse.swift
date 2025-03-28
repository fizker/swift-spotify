import CustomCodableMacro
import InitMacro

@CustomCodable
@Init
public struct ErrorResponse: Codable, Sendable {
	public let status: Int
	public let message: String

	public init(from decoder: any Decoder) throws {
		let wrapper = try decoder.container(keyedBy: WrapperKeys.self)
		let container = try wrapper.nestedContainer(keyedBy: CodingKeys.self, forKey: .error)
		self.status = try container.decode(Int.self, forKey: .status)
		self.message = try container.decode(String.self, forKey: .message)
	}

	public func encode(to encoder: any Encoder) throws {
		var wrapper = encoder.container(keyedBy: WrapperKeys.self)
		var container = wrapper.nestedContainer(keyedBy: CodingKeys.self, forKey: .error)
		try container.encode(status, forKey: .status)
		try container.encode(message, forKey: .message)
	}

	private enum WrapperKeys: String, CodingKey {
		case error
	}
}
