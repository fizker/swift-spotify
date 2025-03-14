import InitMacro
import Foundation

@Init
public struct Image: Codable {
	public let url: URL
	public let height: Int
	public let width: Int
}
