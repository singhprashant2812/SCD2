{% snapshot issues_snapshot_check %}

{{
    config(
        target_database = "dbt",
        target_schema = "dit_poc",
        unique_key="ticket_id", 
        strategy="check", 
        check_cols="all", 
        transient=false
    )
}} 

select * from dit_poc.issues

{% endsnapshot %}