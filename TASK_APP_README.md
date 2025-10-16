# Task Management App with Messaging

A simple Rails 8 application for managing tasks with messaging functionality.

## Features

- **Create, Read, Update, Delete Tasks** - Full CRUD operations for tasks
- **Task Messaging** - Post messages on any task's show page
- **Message History** - View all messages for a task in chronological order
- **Clean UI** - Simple, responsive interface with modern styling

## Getting Started

The application is now running! Visit: **http://localhost:3000**

## Usage

### Tasks Page (/)
- View all tasks
- Create new tasks
- Edit or delete existing tasks

### Task Show Page (/tasks/:id)
- View task details
- See all messages for that task
- Post new messages using the form at the bottom

### Creating a Task
1. Click "New Task" button
2. Enter a title and description
3. Click "Create Task"

### Posting a Message
1. Navigate to a task's show page
2. Scroll to the "Post a Message" section
3. Enter your message in the textarea
4. Click "Post Message"
5. The page will refresh and show your new message

## Database Schema

### Tasks
- `id` - Primary key
- `title` - Task title (string)
- `description` - Task description (text)
- `created_at` - Timestamp
- `updated_at` - Timestamp

### Messages
- `id` - Primary key
- `content` - Message content (text)
- `task_id` - Foreign key to tasks
- `created_at` - Timestamp
- `updated_at` - Timestamp

## Sample Data

The database has been seeded with 3 sample tasks and 4 messages. You can:
- Reset the database: `rails db:reset`
- Re-seed data: `rails db:seed`

## Routes

```
GET    /                     - List all tasks (root)
GET    /tasks                - List all tasks
GET    /tasks/new            - New task form
POST   /tasks                - Create a task
GET    /tasks/:id            - Show task with messages
GET    /tasks/:id/edit       - Edit task form
PATCH  /tasks/:id            - Update a task
DELETE /tasks/:id            - Delete a task
POST   /tasks/:id/messages   - Create a message for a task
```

## Technologies Used

- Ruby on Rails 8.0.3
- PostgreSQL
- Turbo Rails (Hotwire)
- Stimulus
- Solid Cache, Solid Queue, Solid Cable
