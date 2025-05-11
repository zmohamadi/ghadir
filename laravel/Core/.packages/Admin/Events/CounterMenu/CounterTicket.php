<?php

namespace Admin\Events\CounterMenu;

use Illuminate\Queue\SerializesModels;

class CounterTicket
{
    use SerializesModels;

    /**
     * title in table base_counts For update count : 'tickets' - 'waiting-tickets'
     */

    public function __construct(
        public ?int $id = 0,
    ) {}
}
