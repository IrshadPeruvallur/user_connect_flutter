# UserConnect

UserConnect is a Flutter app designed to list all users from a company's data. The app fetches user data through an API and is built using modern Flutter practices.

## Features

- **Fetch Data from API:** Retrieves user data from a specified API using Dio.
- **State Management:** Uses Provider for efficient state management.
- **Folder Structure:** Follows the MVC (Model-View-Controller) architecture for better organization.
- **Custom Widgets:** Implements custom widgets for enhanced UI.
- **Error Handling:** Includes comprehensive error handling and loading states.
- **Pull-to-Refresh:** Allows users to refresh the list of users by pulling down.

## Screenshots


![Screenshot_1723103099](https://github.com/user-attachments/assets/e953af64-4fb2-4e57-bd74-9c5c62dbf483)
![Screenshot_1723102496](https://github.com/user-attachments/assets/21cb5545-96e2-4fef-a6bb-68e32ed7945e)
![Screenshot_1723102492](https://github.com/user-attachments/assets/4ad921d4-e573-4e30-af32-2a25edf6f77e)

## Dependencies

- `google_fonts: ^6.2.1`
- `efenfty_icons: ^1.0.7`
- `dio: ^5.5.0+1`
- `provider: ^6.1.2`

## Permissions

- **Internet:** Required for fetching data from the API.

## Assets

- **Logo Folder:** Contains logo assets.
- **Icons Folder:** Contains icon assets.


## Folder Structure

The app follows the MVC pattern with the following folder structure:

- `lib/`
  - `models/` - Contains data models for the app.
  - `views/` - Contains the UI components and screens.
  - `controllers/` - Manages the state and business logic.
  - `services/` - Contains services for API communication and other functionalities.
  - `widgets/` - Contains reusable custom widgets.
  - `constants/` - Contains constant values.


## API Configuration

Configure your API endpoint in the `lib/services/api_service.dart` file.

## Contact

For any questions or feedback, please reach out to me at [irshadpukayoor@gmail.com](mailto:irshadpukayoor@gmail.com).

