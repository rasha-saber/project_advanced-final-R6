<?php

namespace App\Mail;


use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailables\Address;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;


class ContactMail extends Mailable
{
    use Queueable, SerializesModels;

    public  $data;
    /**
     * Create a new message instance.
     */
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {

        $email = $this->data['sender_email'] ?? 'rashsaber19@.com';
        $name = $this->data['sender_name'] ?? 'Default Name';

        return new Envelope(
            from: new Address($email, $name),

            subject: $this->data['subject'],
        );
    }

    /**
     * Get the message content definition.
     */
    public function content()

    {
        return new Content(
            view: 'Mail.contact',

            with: [
                'body' => $this->data['body']
            ],
        );

        return $this->view('Mail.contact')->with('data',  $this->data);
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }
}
