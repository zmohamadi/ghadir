<?php

namespace Admin\Listeners\CounterMenu;

use Admin\Events\CounterMenu\CounterTicket;

class CounterTicketListener
{
    public function handle(CounterTicket $event)
    {
        $id = $event->id;
        
        /**
         * Update field count of tables base_counts For tickets 
         */
        if($id == 1 || $id == 0)
            \DB::update("UPDATE base_counts SET `count` =
                (SELECT count(*) FROM tickets
                    WHERE tickets.deleted_at IS null) WHERE base_counts.title = 'tickets'");

        /**
         * Update field count of tables base_counts For waiting-tickets 
         */
        if($id == 2 || $id == 0)
            \DB::update("UPDATE base_counts SET `count` =
                (SELECT count(*) FROM tickets
                    WHERE tickets.reply_status_id != 3 AND tickets.deleted_at IS null) WHERE base_counts.title = 'waiting-tickets'");
    }
}