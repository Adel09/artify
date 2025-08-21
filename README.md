# Artify App

A simple Flutter application that allows users to draw on a canvas, adjust brush settings, and share their drawings. The app features a responsive UI, freehand drawing with a custom painter, and a toolbar for adjusting brush size, color, and opacity.

## Features

- **Drawing Canvas**: Freehand drawing using a `CustomPainter`, with support for separate strokes (each stroke is independent and doesn't connect to others).
- **Brush Settings**:
  - **Size**: Adjustable via a slider (1 to 50 pixels).
  - **Color**: Basic color picker with multiple colors.
  - **Opacity**: Adjustable via a slider (0% to 100%, in 10% increments).
- **Brush Preview**: Live preview of the current brush color, size, and opacity.
- **Sharing**: Capture the canvas as a PNG image and share it via the device's native share dialog.
- **Clear Canvas**: Option to clear all strokes.
- **Responsive Layout**: Adapts to tablets (wider toolbar) and phones.

## Project Structure

The app is organized into a modular structure for better maintainability:

- **`lib/components/`**: Contains reusable UI components:
  - `bottom_sheet.dart`: Placeholder for bottom sheet UI.
  - `buttons.dart`: Custom button widgets.
  - `color_item.dart`: Color picker items.
  - `drawing_canvas.dart`: Custom painter for drawing strokes.
  - `spacer.dart`: Spacer widgets for layout.
  - `styles.dart`: Styling definitions.
  - `texts.dart`: Text styling utilities.
- **`lib/controllers/`**: State management logic:
  - `brush_controller.dart`: Manages brush settings and strokes using GetX.
- **`lib/models/`**: Data models:
  - `stroke.dart`: Defines the `Stroke` class for storing stroke data.
- **`lib/screens/`**: Screen definitions:
  - `about/about_screen.dart`: About page (if implemented).
  - `canvas/canvas_screen.dart`: Main drawing canvas screen.
  - `canvas/palette_bottomsheet.dart`: Bottom sheet for palette settings.
  - `dashboard/dashboard.dart`: Main dashboard or entry screen.
- **`lib/main.dart`**: Entry point of the application.

## State Management

The app uses **GetX** for state management due to its simplicity and reactivity. Key aspects:
- **BrushController**: Manages reactive variables (`brushSize`, `brushColor`, `brushOpacity`) and a list of `Stroke` objects (`strokes`).
- **Stroke Model**: Stores each stroke's points, brush size, and color (including opacity) to ensure previous strokes retain their settings.
- **Reactivity**: The UI updates automatically with `Obx` widgets observing changes in the controller.

## Setup Instructions

1. **Prerequisites**:
   - Flutter SDK (version 3.0 or higher recommended).
   - Dart SDK.
   - A code editor (e.g., VS Code, Android Studio).

2. **Dependencies**:
   Add the following to your `pubspec.yaml`:
   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     get: ^4.6.6
     share_plus: ^7.2.2
     path_provider: ^2.1.1
   ```
   Run `flutter pub get` to install dependencies.

3. **Running the App**:
   - Connect a device or emulator.
   - Run `flutter run` in the project directory.
   - Ensure permissions for file access (handled by `share_plus` and `path_provider` on most platforms).

## Usage

- **Drawing**: Tap and drag on the canvas to draw. Each stroke (from tap to release) is independent.
- **Brush Settings**:
  - Use the **Brush Size** slider to adjust stroke thickness (1–20 pixels).
  - Use the **Brush Opacity** slider to adjust transparency (0%–100%).
  - Tap a color in the **Color Picker** to change the brush color.
- **Preview**: The circular preview shows the current brush color, size, and opacity.
- **Share**: Tap the share button (AppBar) to capture the canvas as a PNG and share it.
- **Clear**: Tap the clear button (AppBar) to reset the canvas.

## Mobile Screenshots

- **Main Canvas (Phone)**: Shows the drawing canvas and toolbar on a mobile device.
- **Brush Settings (Phone)**: Displays the sliders and color picker in portrait mode.
- **Share Action (Phone)**: Captures the share dialog after tapping the share button.

## Tablet Screenshots

- **Main Canvas (Tablet)**: Displays a wider canvas and toolbar layout optimized for tablets.
- **Brush Settings (Tablet)**: Shows the expanded toolbar with sliders and color picker in landscape mode.
- **Share Action (Tablet)**: Captures the share dialog on a larger screen.
