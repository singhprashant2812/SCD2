{% snapshot issues_snapshot_time %}

{{
    config(
        target_database = "dbt",
        target_schema = "dit_poc",
        unique_key="ticket_id", 
        strategy="timestamp", 
        updated_at='last_updated_dt', 
        transient=false,
    )
}} 

select * from dit_poc.issues

{% endsnapshot %}