# PasBuild Script

PasBuild is a Bash script designed to enhance dependency management in Pascal.
Created by [Evan Perreau](https://dev-boost.fr).

## Installation

### Linux

1. Clone this repository to get example code or download the `pasbuild.sh` script.

2. Make the script executable:
   
   ```shell
   chmod +x pasbuild.sh
   ```

3. You can now use the script by running:
   
   ```shell
   ./pasbuild.sh <file_name>
   ```

4. If you want to make it globally accessible:
   
   ```shell
   sudo mv build.sh /usr/local/bin/pasbuild
   sudo chmod +x /usr/local/bin/pasbuild
   ```

5.  You can now use the script everywhere by running:
   
   ```shell
   pasbuild <file_name>
   ```

### Windows

1. Clone this repository to get example code or download the `pasbuild.sh` script.

2. To run Bash scripts on Windows, you'll need a Bash environment. One common option is [Git for Windows](https://gitforwindows.org/). Install it if you haven't already.

3. Open a Git Bash shell and navigate to the directory containing the `pasbuild.sh` script.

4. You can now use the script by running:
   
   ```shell
   bash pasbuild.sh <file_name>
   ```

5. If you want to make it globally accessible, you need to add it to your PATH:
   
   1. **Open System Properties Window**:
   - Right-click on "This PC" (or "Computer" depending on your Windows version) on your desktop or in the Start menu.
   - Select "Properties."
   2. **Access Advanced System Settings**:
   - In the "System Properties" window, click on "Advanced system settings" in the left panel.
   3. **Open Environment Variables Window**:
   - In the "System Properties" window, click the "Environment Variables" button in the "Advanced" tab.
   4. **Edit the PATH Variable**:
   - In the "Environment Variables" window, under the "System variables" section, look for the variable named "Path" or "PATH" in the list of system variables.
   - Select "Path" and click the "Edit" button.
   5. **Add a Directory to the PATH**:
   - In the "Edit Environment Variable" window, click the "New" button.
   - Add the full path of the directory you want to add to the PATH. For example, if you want to add "C:\Path\To\pathbuild," enter this string.
   - Click "OK" to add the path.
   6. **Save Changes**:
   - Click "OK" to close the "Edit Environment Variable" window.
   - Click "OK" again to close the "Environment Variables" window.
   7. **Restart the Command Prompt**:
   - If you already have a Command Prompt window open, close it and open a new one to apply the changes to the PATH.
   8. **Execute the pasbuild command**
      
      ```shell
      pasbuild.sh <file_name>
      ```

## Usage

- You need to create a lib directory to put all your libraries in this.

## Output

- The script will check if the specified Pascal file exists and display an error message if it doesn't.
- It will index Pascal dependencies and save them to a file called `pasbuild.lock`.
- Then, it will compile the Pascal file with the necessary dependencies and display the compilation result.



**Bash script created by [Evan Perreau](https://dev-boost.fr/).**
