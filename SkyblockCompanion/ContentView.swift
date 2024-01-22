import SwiftUI

struct Profile: Codable {
	let profiles: ProfileId
}

struct ProfileId: Codable {
	let uuid: ProfileDetails
	
	enum CodingKeys: String, CodingKey {
		case uuid = "11a4a746-30bb-4dfd-980f-39c4dfd84412"
	}
}

struct ProfileDetails: Codable {
	let profileId: String
	let cuteName: String
	let gameMode: String
	let current: Bool
	let raw: RawData
	let data: ProfileData
}

struct RawData: Codable {
}

struct ProfileData: Codable {
  let displayName: String
}

enum SBError: Error {
	case invalidURL
	case invalidResponse
	case invalidData
	case dataCorrupted
	case keyNotFound
	case valueNotFound
	case typeMismatch
}

// MARK: - Raw
struct Raw: Codable {
}

struct BackgroundView: View {
	var body: some View {
		HStack(spacing: 0) {
		}
		.background(Color.red)
	}
}

struct ContentView: View {
  @State private var profile: Profile?
  
  var body: some View {
	
	  
	  ZStack() {
		// App background color
		  Color(red: 0.129, green: 0.15, blue: 0.16)
		  
		Text("MVP+ " + (profile?.profiles.uuid.data.displayName ?? "Username"))
			.font(Font.custom("Inter", size: 30))
			.foregroundColor(.white)
			.offset(x: -7, y: -288)
		  
		  Text("Orange (Ironman)")
			.font(Font.custom("Inter", size: 20))
			.foregroundColor(.white)
			.offset(x: -7.50, y: -258)
		  
		  
		  // Player level
		  ZStack() {
			
			// Level background
			UnevenRoundedRectangle(
			  topLeadingRadius: 0,
			  bottomLeadingRadius: 0,
			  bottomTrailingRadius: 15,
			  topTrailingRadius: 15
			)
			.foregroundColor(Color(red: 0.42, green: 0.46, blue: 0.49))
			.frame(width: 204, height: 48)
			.offset(x: 36.50, y: 0)
			.opacity(0.50)
			.shadow(
			  color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			)
			
			// Level fill
			UnevenRoundedRectangle(
			  topLeadingRadius: 0,
			  bottomLeadingRadius: 0,
			  bottomTrailingRadius: 15,
			  topTrailingRadius: 15
			)
			.foregroundColor(Color(red: 0.12, green: 0.43, blue: 0.12))
			.frame(width: 158, height: 48)
			.offset(x: 13.50, y: 0)
			.shadow(
			  color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			)
			
			// Level text background
			UnevenRoundedRectangle(
			  topLeadingRadius: 15,
			  bottomLeadingRadius: 15,
			  bottomTrailingRadius: 0,
			  topTrailingRadius: 0
			)
			.foregroundColor(Color(red: 0.68, green: 0.71, blue: 0.74))
			.frame(width: 73, height: 48)
			.offset(x: -102, y: 0)
			.opacity(0.50)
			.shadow(
			  color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			)
			
			// Level text
			Text("lvl 46")
			  .font(Font.custom("Inter", size: 20))
			  .foregroundColor(.black)
			  .offset(x: -99.50, y: 0)
			
			// XP text
			Text("85 / 100 XP")
			  .font(Font.custom("Inter", size: 20))
			  .foregroundColor(.white)
			  .offset(x: 29, y: 0)
			  .blendMode(.overlay)
		  }
		  .frame(width: 277, height: 48)
		  .offset(x: 0, y: -199)
		  
		  // Equipment panel
		  ZStack() {
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 131, height: 377)
			  .background(Color(red: 0.42, green: 0.46, blue: 0.49))
			  .cornerRadius(15)
			  .offset(x: 0, y: 0)
			  .opacity(0.50)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 71, height: 71)
			  .background(
				AsyncImage(url: URL(string: "https://via.placeholder.com/71x71"))
			  )
			  .cornerRadius(15)
			  .offset(x: 0, y: -122)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 71, height: 71)
			  .background(
				AsyncImage(url: URL(string: "https://via.placeholder.com/71x71"))
			  )
			  .cornerRadius(15)
			  .offset(x: 0, y: 126)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 71, height: 71)
			  .background(
				AsyncImage(url: URL(string: "https://via.placeholder.com/71x71"))
			  )
			  .cornerRadius(15)
			  .offset(x: 0, y: 42)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 71, height: 71)
			  .background(
				AsyncImage(url: URL(string: "https://via.placeholder.com/71x71"))
			  )
			  .cornerRadius(15)
			  .offset(x: 0, y: -42)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Text("Equipment")
			  .font(Font.custom("Inter", size: 20))
			  .foregroundColor(.white)
			  .offset(x: 0, y: -174.50)
		  }
		  .frame(width: 131, height: 377)
		  .offset(x: 73, y: 58.50)
		  
		  // Armor panel
		  ZStack() {
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 131, height: 377)
			  .background(Color(red: 0.42, green: 0.46, blue: 0.49))
			  .cornerRadius(15)
			  .offset(x: 0, y: 0)
			  .opacity(0.50)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 67, height: 68)
			  .background(
				AsyncImage(url: URL(string: "https://via.placeholder.com/67x68"))
			  )
			  .cornerRadius(15)
			  .offset(x: 0, y: -120.50)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 67, height: 68)
			  .background(
				AsyncImage(url: URL(string: "https://via.placeholder.com/67x68"))
			  )
			  .cornerRadius(15)
			  .offset(x: 0, y: 127.50)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 67, height: 68)
			  .background(
				AsyncImage(url: URL(string: "https://via.placeholder.com/67x68"))
			  )
			  .cornerRadius(15)
			  .offset(x: 0, y: 40.50)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 67, height: 68)
			  .background(
				AsyncImage(url: URL(string: "https://via.placeholder.com/67x68"))
			  )
			  .cornerRadius(15)
			  .offset(x: 0, y: -41.50)
			  .shadow(
				color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
			  )
			Text("Armor")
			  .font(Font.custom("Inter", size: 20))
			  .foregroundColor(.white)
			  .offset(x: -0.50, y: -174.50)
		  }
		  .frame(width: 131, height: 377)
		  .offset(x: -73, y: 58.50)
		  
		  
		  
		  Image(systemName: "sidebar.left")
			.resizable()
			.foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
			.frame(width: 35, height: 30)
			.offset(x: -139, y: -343.50)
		  
		  // Active Pet Panel
		  ZStack() {
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 270, height: 111)
			  .background(Color(red: 0.42, green: 0.46, blue: 0.49))
			  .cornerRadius(15)
			  .offset(x: 0, y: 0)
			  .opacity(0.50)
			Text("Active Pet")
			  .font(Font.custom("Inter", size: 20))
			  .foregroundColor(.white)
			  .offset(x: 48.50, y: -33.50)
			Rectangle()
			  .foregroundColor(.clear)
			  .frame(width: 94, height: 97)
			  .background(
				AsyncImage(url: URL(string: "https://via.placeholder.com/94x97"))
			  )
			  .cornerRadius(15)
			  .offset(x: -82, y: -1)
			Text("Rare bee")
			  .font(Font.custom("Inter", size: 20))
			  .foregroundColor(.white)
			  .offset(x: 48.50, y: -0.50)
			Text("lvl 81")
			  .font(Font.custom("Inter", size: 15))
			  .foregroundColor(.white)
			  .offset(x: 49, y: 18.50)
		  }
		  .frame(width: 270, height: 111)
		  .offset(x: 3.50, y: 328.50)
	  }
	  .ignoresSafeArea()
	  .task {
		  do {
			  profile = try await fetchData()
		  } catch SBError.invalidURL {
			  print("Invalid URL")
		  } catch SBError.invalidResponse {
			  print("Invalid Response")
		  } catch SBError.invalidData {
			  print("Invalid Data")
		  } catch {
			  print("unexpected error")
		  }
	  }
	
  }
  
  func fetchData() async throws -> Profile {
	  let endpoint = "https://sky.shiiyu.moe/api/v2/profile/Kayuuti"
	  
	  guard let url = URL(string: endpoint) else {
		  throw SBError.invalidURL
	  }
	  
	  let (data,response) = try await URLSession.shared.data(from: url)
	  
	  guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
		  throw SBError.invalidResponse
	  }
	  
	  do {
		  let decoder = JSONDecoder()
		  decoder.keyDecodingStrategy = .convertFromSnakeCase
		  return try decoder.decode(Profile.self, from: data)
	  } catch let DecodingError.dataCorrupted(context) {
		  print(context)
		  throw SBError.dataCorrupted
	  } catch let DecodingError.keyNotFound(key, context) {
		  print("Key '\(key)' not found:", context.debugDescription)
		  print("codingPath:", context.codingPath)
		  throw SBError.keyNotFound
	  } catch let DecodingError.valueNotFound(value, context) {
		  print("Value '\(value)' not found:", context.debugDescription)
		  print("codingPath:", context.codingPath)
		  throw SBError.valueNotFound
	  } catch let DecodingError.typeMismatch(type, context)  {
		  print("Type '\(type)' mismatch:", context.debugDescription)
		  print("codingPath:", context.codingPath)
		  throw SBError.typeMismatch
	  } catch {
		  print("error: ", error)
		  throw SBError.invalidData
	  }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
