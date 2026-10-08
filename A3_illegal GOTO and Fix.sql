BEGIN
    GOTO my_label;
    DBMS_OUTPUT.PUT_LINE('This line is skipped');
    <<my_label>>
    DBMS_OUTPUT.PUT_LINE('We reached the label successfully');
END;
/