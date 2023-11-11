import SwiftUI

struct HomeView: View {
    @State private var showMenu = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    TopBar(showMenu: $showMenu)
                    
                    if showMenu {
                        menu()
                            .padding(.top)
                    }
                    
                    rectanglev(text: "Home")
                        .padding(.top)
                    
                    SectionHeader(title: "Who Are You?")
                    
                    UserButton(title: "EDUCATOR", destination: EducatorView().navigationBarBackButtonHidden(true), color: Color("Color1"))
                    Spacer(minLength: 50)
                    UserButton(title: "SENIOR", destination: SeniorView().navigationBarBackButtonHidden(true), color: Color("Color2"))
                        .padding(.bottom)
                    
                    Spacer(minLength: 50)
                    
                    Footer()
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TopBar: View {
    @Binding var showMenu: Bool
    var body: some View {
        HStack {
            LogoImage()
            
            Spacer()
            
            MenuButton(showMenu: $showMenu)
        }
        .padding(.horizontal)
    }
}

struct TopBar1: View {
    @Binding var showMenu: Bool
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        HStack {
            Button(action: {
                print("Back button tapped") // Debug print
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left")
                    .font(.title.bold())
                    .foregroundStyle(.black.opacity(0.6))
            }
            
            LogoImage()
            
            Spacer()
            
            MenuButton(showMenu: $showMenu)
        }
        .padding(.horizontal)
    }
}

struct TopBar3: View {
    @Binding var showMenu: Bool
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        HStack {
            NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)) {
                Image(systemName: "chevron.left")
                    .font(.title.bold())
                    .foregroundStyle(.black.opacity(0.6))
            }
            
            LogoImage()
            
            Spacer()
            
            MenuButton(showMenu: $showMenu)
        }
        .padding(.horizontal)
    }
}


struct LogoImage: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 150)
    }
}

struct MenuButton: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            showMenu.toggle()
        }) {
            Image(systemName: showMenu ? "xmark" : "line.horizontal.3")
                .font(.title3.bold())
                .foregroundStyle(.black.opacity(0.6))
        }
    }
}

struct SectionHeader: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title.bold())
            .padding()
    }
}

struct UserButton<Destination: View>: View {
    let title: String
    let destination: Destination
    let color: Color
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 300, height: 60)
                .background(color)
                .cornerRadius(30)
        }
    }
}

struct Footer: View {
    var body: some View {
        VStack(spacing: 30) {
            Image(.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            Text("MBAT4Seniors All Rights Reserved.")
                .foregroundColor(.blue)
                .font(.subheadline)
            
            Image(.footer)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple.opacity(0.3))
    }
}

// Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
