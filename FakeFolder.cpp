#include <string>
#include <cstdlib>
#include <vector>
#include <iostream>

int main() {
    std::string parentFolder;
    std::cout << "Enter the parent folder path: ";
    std::getline(std::cin, parentFolder);

    // make sure there is no bug 
    if (parentFolder.back() != '\\') {
        parentFolder += "\\";
    }

    // names in vector 
    std::vector<std::string> folderNames = {
        "Recycle.{645ff040-5081-101b-9f08-00aa002f954e}",
        "Computer.{20D04FE0-3AEA-1069-A2D8-08002B30309D}",
        "Net.{992CFFA0-F557-101A-88EC-00DD010CCC48}",
        "Print.{2227a280-3aea-1069-a2de-08002b30309d}",
        "Panel.{21ec2020-3aea-1069-a2dd-08002b30309d}"
    };

    // looooop
    for (int i = 0; i < folderNames.size(); i++) {
        std::string folderName = parentFolder + folderNames[i];

        // created folder
        if (std::system(("mkdir " + folderName).c_str()) == 0) {
            std::cout << "Successfully created folder: " << folderName << "\n";
        }
        else {
            std::cout << "Failed to create folder: " << folderName << "\n";
        }
    }

    return 0;
}
