-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Bezi L','bezi@gmail' , 'bezi' ,'MOCK'),
  ('Noah E','noahl@gmail' , 'noah' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'bez' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
    )