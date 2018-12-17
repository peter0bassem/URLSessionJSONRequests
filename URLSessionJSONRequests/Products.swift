/* 
Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Products : Codable {
	let id : Int?
	let user_id : Int?
	let user_type : String?
	let main_dep_id : Int?
	let dep_id : Int?
	let ar_title : String?
	let en_title : String?
	let en_content : String?
	let ar_content : String?
	let stock : Int?
	let price : String?
	let size : String?
	let color : String?
	let photo : String?
	let weight : String?
	let created_at : String?
	let updated_at : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case user_id = "user_id"
		case user_type = "user_type"
		case main_dep_id = "main_dep_id"
		case dep_id = "dep_id"
		case ar_title = "ar_title"
		case en_title = "en_title"
		case en_content = "en_content"
		case ar_content = "ar_content"
		case stock = "stock"
		case price = "price"
		case size = "size"
		case color = "color"
		case photo = "photo"
		case weight = "weight"
		case created_at = "created_at"
		case updated_at = "updated_at"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		user_id = try values.decodeIfPresent(Int.self, forKey: .user_id)
		user_type = try values.decodeIfPresent(String.self, forKey: .user_type)
		main_dep_id = try values.decodeIfPresent(Int.self, forKey: .main_dep_id)
		dep_id = try values.decodeIfPresent(Int.self, forKey: .dep_id)
		ar_title = try values.decodeIfPresent(String.self, forKey: .ar_title)
		en_title = try values.decodeIfPresent(String.self, forKey: .en_title)
		en_content = try values.decodeIfPresent(String.self, forKey: .en_content)
		ar_content = try values.decodeIfPresent(String.self, forKey: .ar_content)
		stock = try values.decodeIfPresent(Int.self, forKey: .stock)
		price = try values.decodeIfPresent(String.self, forKey: .price)
		size = try values.decodeIfPresent(String.self, forKey: .size)
		color = try values.decodeIfPresent(String.self, forKey: .color)
		photo = try values.decodeIfPresent(String.self, forKey: .photo)
		weight = try values.decodeIfPresent(String.self, forKey: .weight)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
	}

}