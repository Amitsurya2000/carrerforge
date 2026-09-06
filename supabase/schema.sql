-- CareerForge customer data
-- Run this in the Supabase SQL editor once, then set SUPABASE_URL and
-- SUPABASE_SERVICE_ROLE_KEY in Vercel.
create table if not exists public.customers (
  email           text primary key,
  name            text,
  phone           text,
  years           text,
  target_salary   text,
  dream_companies text,
  extra           text,
  resume          text,
  job             text,
  created_at      timestamptz not null default now(),
  last_seen_at    timestamptz
);

alter table public.customers enable row level security;

-- The server calls with the service-role key (bypasses RLS). No public client
-- access is needed, so no policies are required until you add your own auth.