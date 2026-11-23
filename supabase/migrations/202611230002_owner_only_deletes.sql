-- NJAMA CREATIONS — owner-only deletion safeguards
-- Restrictive DELETE policies are intentional: existing FOR ALL policies are
-- permissive and combine with OR. A second permissive owner-only policy would
-- NOT prevent a customer/team member from deleting rows allowed by an older
-- FOR ALL policy. These restrictive policies AND with the existing policies.
--
-- This migration changes deletion authorization only. It does not delete data,
-- alter SELECT/INSERT/UPDATE access, or change authentication.

begin;

drop policy if exists "bookings_owner_only_delete" on public.bookings;
create policy "bookings_owner_only_delete" on public.bookings
as restrictive
for delete to authenticated
using (public.is_owner());

drop policy if exists "customers_owner_only_delete" on public.customers;
create policy "customers_owner_only_delete" on public.customers
as restrictive
for delete to authenticated
using (public.is_owner());

drop policy if exists "invoices_owner_only_delete" on public.invoices;
create policy "invoices_owner_only_delete" on public.invoices
as restrictive
for delete to authenticated
using (public.is_owner());

drop policy if exists "payments_owner_only_delete" on public.payments;
create policy "payments_owner_only_delete" on public.payments
as restrictive
for delete to authenticated
using (public.is_owner());

drop policy if exists "projects_owner_only_delete" on public.projects;
create policy "projects_owner_only_delete" on public.projects
as restrictive
for delete to authenticated
using (public.is_owner());

drop policy if exists "tasks_owner_only_delete" on public.tasks;
create policy "tasks_owner_only_delete" on public.tasks
as restrictive
for delete to authenticated
using (public.is_owner());

drop policy if exists "equipment_owner_only_delete" on public.equipment;
create policy "equipment_owner_only_delete" on public.equipment
as restrictive
for delete to authenticated
using (public.is_owner());

commit;
