# Local Development Guide

This document outlines how to run the project components locally for development.

## Overview
To run the full application locally, you need to run the **Frontend** and the **Server** in separate terminal windows.

## 1. Run the Server
The server handles the backend API and logic.

1. Open a terminal in the root directory (`aura-styler`).
2. Run the server using `nodemon` to automatically restart on changes:

   ```bash
   npx nodemon server/index.js
   ```

## 2. Run the Frontend
The frontend is built with separate client-side code.

1. Open a **second** terminal window.
2. Navigate to the client directory:
   
   ```bash
   cd client
   ```

3. Start the development server:

   ```bash
   npm run dev
   ```

   You should now be able to access the application in your browser (typically at `http://localhost:5173` if using Vite).
