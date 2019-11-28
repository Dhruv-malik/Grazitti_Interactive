with events as (
  select campaign_id,
         email_id,
         sent_date,
         decode(first_opened_date,null,0,1) as opened,
         decode(unsubscribed,null,0,1) as unsubscribed
         from {{ref('event_email_summary')}}
  )
