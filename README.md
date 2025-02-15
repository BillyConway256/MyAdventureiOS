# MyAdventureiOS

**MyAdventure** is a simple, interactive “choose your own adventure” style iOS app. The user navigates through a branching storyline by making choices at each step, leading to different outcomes. This app demonstrates:

1. **Story Data Structure**: Each step in the adventure is represented by a custom model that includes descriptive text and potential choices.
2. **MVC Architecture**: The data (Model), user interface elements (View), and logic (Controller) are cleanly separated.
3. **Multiple Endings**: The user’s choices can lead to success, alternate paths, or abrupt ends.
4. **Adaptive Layout**: The interface uses Auto Layout (or SwiftUI layouts) to display neatly across various device sizes and orientations, including iPad and landscape modes.
5. **User-Friendly UI**: Clear labels, buttons, and optional scrolling ensure the text is easy to read and navigate.

## Key Features

- **Branching Narrative**: Each choice leads to a new “step” in the story, providing multiple layers of exploration.
- **Dynamic UI**: The app adapts to different screen sizes, hiding or showing choice buttons as needed.
- **Simple Reset**: A reset button lets users replay the adventure from the start.
- **Scalable Design**: Additional steps or choices can be easily added to the data structure to expand the storyline.

## Getting Started

1. **Clone or Download** the repository.
2. **Open** the Xcode project.
3. **Run** on an iOS Simulator or a physical device.
4. **Make Choices** at each prompt to progress through the story and discover different endings.

## How It Works (High-Level)

1. **Model**: A `AdventureManager` class and `AdventureStep` struct store the story data and manage navigation between steps.
2. **ViewController**: Presents the current step’s description and choice buttons, updating the view when a user makes a choice.
3. **UI**: A multi-line label for the story text and buttons for user choices. Auto Layout (or SwiftUI) ensures the layout is responsive and neat.

Enjoy creating and playing your own **MyAdventure**!
