UPDATE users
SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = 'admin';

UPDATE user_logs
SET new_password = (
    SELECT new_password FROM user_logs
    WHERE "type" = 'insert' AND new_username = 'emily33'
)
WHERE "type" = 'update' AND old_username = 'admin' AND new_password = '982c0381c279d139fd221fce974916e7';
