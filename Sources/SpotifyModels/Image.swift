import InitMacro
import Foundation

@Init
public struct Image: Codable, Sendable {
	public var url: URL
	public var height: Int?
	public var width: Int?
}
