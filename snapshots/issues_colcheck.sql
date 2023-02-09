{% snapshot issues_snapshot %}

{{
    config(
        target_database = dbt,
        target_schema = dit_poc,
        unique_key="ticket_id", 
        strategy="check", 
        check_cols="all", 
        transient=false
    )
}} select * from {{ source('dit_poc', 'issues') }}

{% endsnapshot %}