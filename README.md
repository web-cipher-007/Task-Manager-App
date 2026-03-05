# Task Manager App

A production-ready Task Manager app built using Flutter. User can create tasks, catch deadlines, update status, etc.

## Features
- **Secure Authentication**: Email/Password login via Supabase Auth.
- **CRUD Operations**: Create, Read, Update, and Delete tasks.
- **Real-time Sync**: Reactive UI that updates on database changes.
- **UX Polish**: Pull-to-refresh, Swipe-to-delete, and Loading/Error states.

## Architecture & Stack
- **Architecture**: Clean Architecture (Layered) for separation of concerns.
- **State Management**: [Riverpod 2.x](https://riverpod.dev) using `AsyncNotifier` for robust data fetching.
- **Backend**: [Supabase](https://supabase.com) (PostgreSQL + RLS Security).
- **Design**: Material 3 with Google Fonts (Poppins).

## Setup
1. Clone the repo.
2. Create a `.env` file in the root.
3. Add `SUPABASE_URL` and `SUPABASE_ANON_KEY`.
4. Run `flutter pub get`.
5. Run `flutter run`.


## App Screenshots
<div align="center">
  <table>
    <tr>
      <td><img width="1080" height="2424" alt="Screenshot_1772714821" src="https://github.com/user-attachments/assets/05161c3b-2669-4bc8-91e5-a3957756a906" /></td>
      <td><img width="1080" height="2424" alt="Screenshot_1772714854" src="https://github.com/user-attachments/assets/1d75a653-fbd1-4ecf-b305-560f6bfe7d56" /></td>
      <td><img width="1080" height="2424" alt="Screenshot_1772714858" src="https://github.com/user-attachments/assets/b13972fa-2152-4047-965e-fb6bf79a5321" /></td>
    </tr>
  </table>
</div>

