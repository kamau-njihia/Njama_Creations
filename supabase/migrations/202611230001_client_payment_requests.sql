-- NJAMA CREATIONS — client payment request workflow
-- Adds a narrowly scoped client INSERT permission. Existing approval remains owner-controlled.
begin;

drop policy if exists "payments_client_submit_pending" on public.payments;
create policy "payments_client_submit_pending" on public.payments
for insert to authenticated
with check (
  status = 'pending'
  and recorded_by = (select auth.uid())
  and approved_by is null
  and approved_at is null
  and exists (
    select 1
    from public.customers c
    where c.id = payments.customer_id
      and c.auth_user_id = (select auth.uid())
  )
);

commit;
