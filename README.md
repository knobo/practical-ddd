# Practical DDD in Kotlin: A Problem-Solution Approach

Welcome to the open-source community project for the book "Practical DDD in Kotlin"! The goal of this book is to provide a practical, recipe-based guide to Domain-Driven Design (DDD) using Kotlin, inspired by the format of "Common Lisp Recipes."

## Book Structure

The book is divided into three main parts:

- **Part 1: The "Why" of DDD (Selling the Vision)**: Focuses on the organizational, business, and team-level challenges. These recipes are for convincing managers, project leads, and skeptical developers of DDD's value.
    
- **Part 2: Strategic Design (The Big Picture & The Map)**: Covers modeling the business landscape, defining boundaries (Bounded Contexts), and establishing a shared understanding (Ubiquitous Language).
    
- **Part 3: Tactical Design & Architecture (The Code & Implementation)**: Dives into implementing the domain model in Kotlin, covering the core building blocks, CQRS, Event Sourcing, and modern architectural patterns.
    

## How to Contribute

This is a community project, and we welcome contributions! Please follow these steps:

1.  **Fork** this repository.
    
2.  Create a new **branch** for your contribution (`git checkout -b feature/my-contribution`).
    
3.  Make your changes in the AsciiDoc files under the `src/` directory.
    
4.  **Commit** your changes (`git commit -m 'Adds new chapter on Aggregates'`).
    
5.  **Push** to your branch (`git push origin feature/my-contribution`).
    
6.  Open a **Pull Request**.
    

## Building the Book

This project uses [Asciidoctor](https://asciidoctor.org/ "null") to build the book from the `.adoc` source files.

### 1\. Installation

You will need Ruby and the `gem` package manager. You can check if you have them installed:

```
ruby -v
gem -v
```

If not, please install Ruby for your system (e.g., `sudo apt install ruby-full` on Ubuntu).

Once `gem` is available, install the required gems:

```
# Installs the main PDF generator
gem install asciidoctor-pdf

# Installs the Rouge syntax highlighter (for code blocks)
gem install rouge

# Installs a live-reload server for development (optional, for 'make dev')
gem install asciidoctor-live-reload
```

### 2\. How to Build

We have included a `Makefile` to simplify the build process.

- **To build the PDF:**
    
    ```
    make build
    ```
    
    This will run the `asciidoctor-pdf` command and generate `Practical-DDD-in-Kotlin.pdf` in the root directory.
    
- **To start the live-reload server (Dev Mode):**
    
    ```
    make dev
    ```
    
    This will start a local web server, open the book in your browser, and automatically rebuild and refresh the page every time you save an `.adoc` file.
    
- **To remove build artifacts:**
    
    ```
    make clean
    ```
    
    This will delete the generated PDF.
