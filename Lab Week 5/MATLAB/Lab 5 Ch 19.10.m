function newPassword = ModifyPassword ( simplePassword )
    
    %Replacing variables
    newPassword=strrep(simplePassword,"i","!");
    newPassword=strrep(newPassword,"a","@");
    newPassword=strrep(newPassword,"m","M");
    newPassword=strrep(newPassword,"b","8");
    newPassword=strrep(newPassword,"o",".");
    
    %Remove all whitespaces
    newPassword=erase(newPassword," ");
    
    %Add q*s to the end of newPassword
    newPassword=strcat(newPassword,"q*s");
end
