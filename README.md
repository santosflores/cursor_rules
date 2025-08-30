# Cursor Rules Repository

A centralized repository containing development rules and guidelines for consistent coding practices across projects. This repository is designed to be used as a git submodule in any development project.

## Overview

This repository contains a collection of Cursor rules that provide guidance for:

- **Angular Development** - Best practices, patterns, and conventions for Angular applications
- **TypeScript Development** - TypeScript coding standards and guidelines
- **Dart Development** - Dart/Flutter development practices and conventions
- **Task Processing** - Guidelines for processing and managing development tasks
- **Product Management** - Product development workflows and practices

## Available Rules

### Development Rules

- **`angular-developer.mdc`** - Comprehensive Angular development guidelines including component patterns, service architecture, and best practices
- **`typescript-developer.mdc`** - TypeScript coding standards, type safety practices, and modern JavaScript/TypeScript patterns
- **`dart-developer.mdc`** - Dart and Flutter development conventions, widget patterns, and state management practices

### Workflow Rules

1. **`product-manager.mdc`** - Product development workflows, user story creation, and project management practices
2. **`data-layer-analyst.mdc`** - Extract from the PRD the data entities involved on the product
3. **`software-architect.mdc`** - Creates Software Architecutre documents using the PRD and the Data Layer Analysis
4. **`generate-task-list.mdc`** - Standards for generating and structuring task lists from requirements
5. **`process-task-list.mdc`** - Guidelines for processing and organizing development tasks and requirements

## Usage as Git Submodule

### Adding to a New Project

1. **Initialize the submodule in your project:**

   ```bash
   git submodule add https://github.com/yourusername/cursor_rules.git .cursor/rules
   ```

2. **Initialize and update the submodule:**

   ```bash
   git submodule update --init --recursive
   ```

3. **Configure Cursor to use the rules:**
   - The rules will be automatically available in your `.cursor/rules/` directory
   - Cursor will load these rules when working in your project

### Updating Rules

1. **Update the submodule to the latest version:**

   ```bash
   git submodule update --remote
   ```

2. **Commit the updated submodule reference:**

   ```bash
   git add .cursor/rules
   git commit -m "Update cursor rules submodule"
   ```

### Cloning a Project with Submodules

When cloning a project that uses this repository as a submodule:

```bash
git clone --recursive <repository-url>
```

Or if already cloned:

```bash
git submodule update --init --recursive
```

## Rule Structure

Each rule file (`.mdc`) contains:

- **Purpose and scope** of the rule
- **Specific guidelines** and best practices
- **Code examples** and patterns
- **Common pitfalls** to avoid
- **Integration notes** for different project types

## Contributing

To add or modify rules:

1. Create or edit rule files in `.cursor/rules/`
2. Follow the existing naming convention: `kebab-case.mdc`
3. Update this README to document new rules
4. Commit and push changes
5. Update the submodule in projects that use this repository

## Project Integration

### For New Projects

1. Add this repository as a submodule
2. Configure your IDE/editor to recognize the rules
3. Reference specific rules in your project documentation

### For Existing Projects

1. Add the submodule to your existing project
2. Review and adapt rules to match your project's specific needs
3. Update team documentation to reference these centralized rules

## Maintenance

- **Regular Updates**: Keep rules updated with latest best practices
- **Version Tagging**: Use git tags for stable rule versions
- **Backward Compatibility**: Maintain compatibility with existing projects
- **Documentation**: Keep this README updated with new rules and changes

---
