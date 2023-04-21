CREATE PROCEDURE create_surgical_provider_for_roles (user_username varchar(50),user_gender VARCHAR(50),user_roles varchar(200))
  BEGIN
    SET @roles = user_roles;
    SET @user_id = (select user_id from users where username=user_username);
    select @user_id;
    SET @person_id = (select person_id from users where username=user_username);
    select @person_id;
    update person SET gender=user_gender where person_id=@person_id;
    WHILE (LOCATE(',', @roles) > 0) DO
    select @roles;
      SET @role = SUBSTRING(@roles,1, LOCATE(',',@roles)-1); 
      SET @roles = SUBSTRING(@roles, LOCATE(',',@roles) + 1); 
      select @role;
      select @roles;
      INSERT INTO user_role VALUES (@user_id, @role);
    END WHILE;
  END;
