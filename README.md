# Practical DDD in Kotlin: A Problem-Solution Approach

Welcome to the open-source community project for the book "Practical DDD in Kotlin"! The goal of this book is to provide a practical, recipe-based guide to Domain-Driven Design (DDD) using Kotlin, inspired by the format of "Common Lisp Recipes."

## Book Structure

The book is divided into three main parts:

*   **Part 1: The "Why" of DDD (Selling the Vision)**: Focuses on the organizational, business, and team-level challenges. These recipes are for convincing managers, project leads, and skeptical developers of DDD's value.
*   **Part 2: Strategic Design (The Big Picture & The Map)**: Covers modeling the business landscape, defining boundaries (Bounded Contexts), and establishing a shared understanding (Ubiquitous Language).
*   **Part 3: Tactical Design & Architecture (The Code & Implementation)**: Dives into implementing the domain model in Kotlin, covering the core building blocks, CQRS, Event Sourcing, and modern architectural patterns.

## How to Contribute

This is a community project, and we welcome contributions! Please follow these steps:

1.  **Fork** this repository.
2.  Create a new **branch** for your contribution (`git checkout -b feature/my-contribution`).
3.  Make your changes in the AsciiDoc files under the `src/` directory.
4.  **Commit** your changes (`git commit -m 'Adds new chapter on Aggregates'`).
5.  **Push** to your branch (`git push origin feature/my-contribution`).
6.  Open a **Pull Request**.

## Building the Book Locally

To build the PDF file locally, you need [Asciidoctor](https://asciidoctor.org/).

1.  **Install Asciidoctor PDF**:
    ```bash
    gem install asciidoctor-pdf
    ```
2.  **Build the book**:
    ```bash
    asciidoctor-pdf book.adoc -o Practical-DDD-in-Kotlin.pdf
    ```

A new PDF file will be generated in the root directory.

