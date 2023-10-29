# WhatsApp Clone

WhatsApp Clone is a messaging app that replicates the core features of the popular WhatsApp application. It allows users to send text messages, make voice and video calls, share media, and more. This README provides an overview of the app and instructions for setup and usage.

## Features

- **User Authentication**: Users can sign up and log in with their phone numbers, similar to WhatsApp.
- **Chat Messaging**: Send and receive text messages in real-time with other users.
- **Voice and Video Calls**: Make voice and video calls to your contacts.
- **Media Sharing**: Share images, videos, documents, and other files with your contacts.
- **Group Chats**: Create and participate in group chats with multiple users.
- **Push Notifications**: Receive real-time notifications for new messages and calls.
- **End-to-End Encryption**: Ensure the privacy and security of your conversations.

## Installation

1. Clone the repository to your local machine:

  ```
  git clone https://github.com/yourusername/whatsapp-clone.git
  ```

2. Install the necessary dependencies:
  ```
  cd whatsapp-clone
  flutter pub get
  ```

3. Run the app on an emulator or physical device:
  ```
  flutter run
  ```

4. Configuration
  - Update the Firebase configuration in the google-services.json or GoogleService-Info.plist files for Android and iOS respectively.
  - Set up your Firebase project for authentication, real-time database, and cloud functions.
  - Update the server URL for push notifications (e.g., FCM or a custom server).

5. Usage
  - Launch the app and sign up or log in with your phone number.
  - Add contacts and start chatting.
  - Make voice and video calls by selecting a contact and choosing the call option.
  - Share media by tapping the attachment icon in the chat interface.
  - Create or join group chats.
  - Customize your profile settings.

6. Contributing
  - Contributions are welcome! Please follow these steps:

    - Fork the repository.
    - Create a new branch for your feature or bug fix.
    - Make your changes and commit them with clear messages.
    - Create a pull request, explaining the changes you made.