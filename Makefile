# Makefile for Practical DDD in Kotlin book

# Variables
BOOK_FILE = book.adoc
OUTPUT_PDF = Practical-DDD-in-Kotlin.pdf
ASCIIDOCTOR_PDF = asciidoctor-pdf

# Flags
# -v: verbose
# --failure-level=ERROR: Only stop on ERROR, not WARNING
# -b pdf: specify the backend
# -a source-highlighter=rouge: enable syntax highlighting
# -a pdf-themesdir=.: Look for theme in current directory
PDF_FLAGS = -v --failure-level=ERROR -a source-highlighter=rouge -b pdf -a "pdf-themesdir=." -o $(OUTPUT_PDF)

# Check for inotify-tools
CHECK_INOTIFY = @command -v inotifywait >/dev/null 2>&1 || (echo "ERROR: 'inotifywait' not found. Please install 'inotify-tools' (e.g., 'sudo apt install inotify-tools')." && exit 1)

# Targets

# Default target: build the PDF
all: build

# Build the PDF
build:
	@echo "Building $(OUTPUT_PDF)..."
	$(ASCIIDOCTOR_PDF) $(PDF_FLAGS) $(BOOK_FILE)
	@echo "Build complete."

# Run the auto-rebuild development mode (watches for file changes)
dev:
	@$(CHECK_INOTIFY)
	@make build
	@echo "Watching for .adoc, image, and .yml theme file changes... (Press Ctrl+C to stop)"
	@while true; do \
		inotifywait -q -r -e modify -e create -e delete --include '.*\.(adoc|png|jpg|jpeg|gif|yml)' ./; \
		echo "Change detected. Rebuilding PDF..."; \
		make build; \
	done

# Clean up build artifacts
clean:
	@echo "Cleaning build artifacts..."
	@rm -f $(OUTPUT_PDF)
	@echo "Clean complete."

# Phony targets don't represent files
.PHONY: all build dev clean
