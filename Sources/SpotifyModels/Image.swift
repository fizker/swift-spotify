import InitMacro
import Foundation

@Init
public struct Image: Codable, Sendable {
	public let url: URL
	public let height: Int?
	public let width: Int?
}
