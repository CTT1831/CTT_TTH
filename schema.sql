-- Chạy trong Supabase SQL Editor. BẮT BUỘC dùng RLS trước khi đăng web.
create table if not exists public.personal_data (
 user_id uuid not null references auth.users(id) on delete cascade,
 section text not null check (section in ('transactions','debts','tasks','logs','bills')),
 content jsonb not null default '[]'::jsonb,
 updated_at timestamptz not null default now(),
 primary key (user_id, section)
);
alter table public.personal_data enable row level security;
grant select, insert, update on public.personal_data to authenticated;
revoke all on public.personal_data from anon;
drop policy if exists "read own" on public.personal_data;
drop policy if exists "insert own" on public.personal_data;
drop policy if exists "update own" on public.personal_data;
create policy "read own" on public.personal_data for select to authenticated using ((select auth.uid()) = user_id);
create policy "insert own" on public.personal_data for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "update own" on public.personal_data for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
