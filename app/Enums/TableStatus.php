<?php 

namespace App\Enums;

enum TableStatus: string 
{
    case Pending = 'Pending';
    case Avalaiable = 'avaliable';
    case Unavaliable = 'unavaliable';
}