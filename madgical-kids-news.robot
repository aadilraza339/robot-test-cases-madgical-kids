*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Library           PIL



*** Variables ***
${website_url}    http://madgical-kids-times.s3-website.ap-south-1.amazonaws.com/
${browser}    chrome
${expected_count}    10
# article card's xpath
${xpath_expression}    //*[@id="root"]/div/div[3]/div
# Category xpath 
${category_xpath}    //*[@id="root"]/div/div[2]/div
${expected_category_Count}   5
# Article hero image class name
${article_image}    article_image__0B0TA
${article_image_download_directory}  path/to/your/directory  # Replace with the path to your download directory

*** Test Cases ***
Open the URL and Take a Screenshot
    Open Browser    ${website_url}    ${browser}  # Replace with your URL and browser of choice
    Maximize Browser Window
    # Wait until an element with a specific ID (e.g., "some_element_class") becomes visible
    Wait Until Element Is Visible    class=articles_card_block__KJy8k
    Capture Page Screenshot
    Close Browser



*** Test Cases ***
Category tests
    Open Browser    ${website_url}    ${browser} 
    Maximize Browser Window

    # Check the number of category count
    # Get the count of elements matching the XPath expression
    ${actual_count}    Get Element Count    ${category_xpath}

    # Convert actual_count to an integer
    ${actual_count_as_int}    Evaluate    int(${actual_count})

    # Log the actual count and expected count for debugging
    Log    Actual Count: ${actual_count_as_int}
    Log    Expected Count: ${expected_category_Count}
    # Compare the actual count with the expected count
    Should Be Equal As Integers    ${actual_count_as_int}    ${expected_category_Count}

    # Log all the category names
    # Get all elements matching the XPath expression
    @{elements}    Get WebElements    xpath=//*[@id="root"]/div/div[2]
    # Loop through the elements and log their text
    FOR    ${element}    IN    @{elements}
        ${text}    Get Text    ${element}
        Log    Category Text: ${text}
    END

    Close Browser



*** Test Cases ***
Articles card Count
    Open Browser    ${website_url}    ${browser} 
    Maximize Browser Window

    # Wait until an element with a specific ID (e.g., "some_element_class") becomes visible
    Wait Until Element Is Visible    class=articles_card_block__KJy8k
    
    # Get the count of elements matching the XPath expression
    ${actual_count}    Get Element Count    ${xpath_expression}

    # Convert actual_count to an integer
    ${actual_count_as_int}    Evaluate    int(${actual_count})

    # Log the actual count and expected count for debugging
    Log    Actual Count: ${actual_count_as_int}
    Log    Expected Count: ${expected_count}

    # Compare the actual count with the expected count
    Should Be Equal As Integers    ${actual_count_as_int}    ${expected_count}

    Close Browser



*** Test Cases ***
Open a Article
    Open Browser    ${website_url}    ${browser}  # Replace with your URL and browser of choice
    Maximize Browser Window
    # Wait until an element with a specific ID (e.g., "some_element_class") becomes visible
    Wait Until Element Is Visible    class=articles_card_block__KJy8k

    Click Element    xpath=//*[@id="root"]/div/div[3]/div[1]

    Close Browser