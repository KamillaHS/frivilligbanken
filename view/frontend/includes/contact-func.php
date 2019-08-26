<?php

/* there needs to be a db function here that gets employees and their emails, so that the contact works properly */

if(isset($_POST['submit-form'])) {
    $topic = $_POST['topic'];

    if($topic == 1) {
        if (!isset($_POST['email'])) {
            echo "<script>location.href = '/kontakt'</script>";
        } else {
            $email_to = "kamilla.strobaek@gmail.com";
            $subject = "Subject";
            //Error handling function, to be called if errors are found during filtering.
            function err($error)
            {
                echo "Error processing your form input<br /><br />";
                echo "<b>The errors are:</b><br />";
                echo $error . "<br /><br />";
                die();
            }

            // function for stripping bad user input
            function badWordCleaner($string)
            {
                $bad = array("content-type", "bcc:", "to:", "cc:", "href");
                return str_replace($bad, "", $string);
            }

            // validation expected data exists
            if (!isset($_POST['fullName']) ||
                !isset($_POST['email']) ||
                !isset($_POST['topic']) ||
                !isset($_POST['message'])) {
                err('no input to validate.');
            }
            //Current date and time timestamp creator.
            function currentTime()
            {
                date_default_timezone_set('Europe/Copenhagen');
                $date = date_create();
                $dateOutput = date_format($date, 'Y-m-d H:i:s');
                return $dateOutput;
            }

            //Filtering the inputs (serverside)
            $fullName = $_POST['fullName'];
            $email = $_POST['email'];
            $topic = $_POST['topic'];
            $message = $_POST['message'];
            $err_msg = "";
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $err_msg .= 'Email addressen ser ikke ud til at være korrekt...<br />';
            }
            $string_exp = "/^[A-Za-z .'-æøåÆØÅ]+$/";
            if (!preg_match($string_exp, $fullName)) {
                $err_msg .= 'Navnet, du har indtastet er ikke muligt at sende...<br />';
            }
            if (strlen($message) < 2) {
                $err_msg .= 'Besdken, du har indtastet er ikke mulig at sende...<br />';
            }
            if (strlen($err_msg) > 0) {
                err($err_msg);
            }
            // setting up the messages:
            $email_message = "Form details below.\n\n";
            $email_message .= "Name: " . badWordCleaner($fullName) . "\n";
            $email_message .= "Email: " . badWordCleaner($email) . "\n";
            $email_message .= "Emne" . $topic . "\n";
            $email_message .= "Message: " . badWordCleaner($message) . "\n";
            $headers = 'From: ' . $email . "\r\n" .
                'Reply-To: ' . $email . "\r\n" .
                'X-Mailer: PHP/' . phpversion();
            mail($email_to, $subject, $email_message, $headers);
            $email_message2 = "Email form copy, thank you for your email.\n\nCopy details below:\n\n";
            $email_message2 .= "Send from Name: " . badWordCleaner($fullName);
            $email_message2 .= "Email: " . badWordCleaner($email) . "\n";
            $email_message2 .= "Emne" . $topic . "\n";
            $email_message2 .= "Message: " . badWordCleaner($message) . "\n";
            $email_message2 .= "Time: " . currentTime() . "\n";
            $headers2 = 'From: ' . $email_to . "\r\n" .
                'Reply-To: ' . $email_to . "\r\n" .
                'X-Mailer: PHP/' . phpversion();
            mail(badWordCleaner($email), "Email copy from web", $email_message2, $headers2);
            //<!-- your success msg -->
            echo "Thank you for your message $email_message";
        }
    }

    elseif($topic == 2) {
        if (!isset($_POST['email'])) {
            echo "<script>location.href = '/kontakt'</script>";
        } else {
            $email_to = "kamilla.love.horse@gmail.com";
            $subject = "Subject";
            //Error handling function, to be called if errors are found during filtering.
            function err($error)
            {
                echo "Error processing your form input<br /><br />";
                echo "<b>The errors are:</b><br />";
                echo $error . "<br /><br />";
                die();
            }

            // function for stripping bad user input
            function badWordCleaner($string)
            {
                $bad = array("content-type", "bcc:", "to:", "cc:", "href");
                return str_replace($bad, "", $string);
            }

            // validation expected data exists
            if (!isset($_POST['fullName']) ||
                !isset($_POST['email']) ||
                !isset($_POST['topic']) ||
                !isset($_POST['message'])) {
                err('no input to validate.');
            }
            //Current date and time timestamp creator.
            function currentTime()
            {
                date_default_timezone_set('Europe/Copenhagen');
                $date = date_create();
                $dateOutput = date_format($date, 'Y-m-d H:i:s');
                return $dateOutput;
            }

            //Filtering the inputs (serverside)
            $fullName = $_POST['fullName'];
            $email = $_POST['email'];
            $topic = $_POST['topic'];
            $message = $_POST['message'];
            $err_msg = "";
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $err_msg .= 'Email addressen ser ikke ud til at være korrekt...<br />';
            }
            $string_exp = "/^[A-Za-z .'-æøåÆØÅ]+$/";
            if (!preg_match($string_exp, $fullName)) {
                $err_msg .= 'Navnet, du har indtastet er ikke muligt at sende...<br />';
            }
            if (strlen($message) < 2) {
                $err_msg .= 'Besdken, du har indtastet er ikke mulig at sende...<br />';
            }
            if (strlen($err_msg) > 0) {
                err($err_msg);
            }
            // setting up the messages:
            $email_message = "Form details below.\n\n";
            $email_message .= "Name: " . badWordCleaner($fullName) . "\n";
            $email_message .= "Email: " . badWordCleaner($email) . "\n";
            $email_message .= "Emne" . $topic . "\n";
            $email_message .= "Message: " . badWordCleaner($message) . "\n";
            $headers = 'From: ' . $email . "\r\n" .
                'Reply-To: ' . $email . "\r\n" .
                'X-Mailer: PHP/' . phpversion();
            mail($email_to, $subject, $email_message, $headers);
            $email_message2 = "Email form copy, thank you for your email.\n\nCopy details below:\n\n";
            $email_message2 .= "Send from Name: " . badWordCleaner($fullName);
            $email_message2 .= "Email: " . badWordCleaner($email) . "\n";
            $email_message2 .= "Emne" . $topic . "\n";
            $email_message2 .= "Message: " . badWordCleaner($message) . "\n";
            $email_message2 .= "Time: " . currentTime() . "\n";
            $headers2 = 'From: ' . $email_to . "\r\n" .
                'Reply-To: ' . $email_to . "\r\n" .
                'X-Mailer: PHP/' . phpversion();
            mail(badWordCleaner($email), "Email copy from web", $email_message2, $headers2);
            //<!-- your success msg -->
            echo "Thank you for your message $email_message";
        }
    }

    elseif($topic == 3) {
        if (!isset($_POST['email'])) {
            echo "<script>location.href = '/kontakt'</script>";
        } else {
            $email_to = "kamilla.strobaek@gmail.com";
            $subject = "Subject";
            //Error handling function, to be called if errors are found during filtering.
            function err($error)
            {
                echo "Error processing your form input<br /><br />";
                echo "<b>The errors are:</b><br />";
                echo $error . "<br /><br />";
                die();
            }

            // function for stripping bad user input
            function badWordCleaner($string)
            {
                $bad = array("content-type", "bcc:", "to:", "cc:", "href");
                return str_replace($bad, "", $string);
            }

            // validation expected data exists
            if (!isset($_POST['fullName']) ||
                !isset($_POST['email']) ||
                !isset($_POST['topic']) ||
                !isset($_POST['message'])) {
                err('no input to validate.');
            }
            //Current date and time timestamp creator.
            function currentTime()
            {
                date_default_timezone_set('Europe/Copenhagen');
                $date = date_create();
                $dateOutput = date_format($date, 'Y-m-d H:i:s');
                return $dateOutput;
            }

            //Filtering the inputs (serverside)
            $fullName = $_POST['fullName'];
            $email = $_POST['email'];
            $topic = $_POST['topic'];
            $message = $_POST['message'];
            $err_msg = "";
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $err_msg .= 'Email addressen ser ikke ud til at være korrekt...<br />';
            }
            $string_exp = "/^[A-Za-z .'-æøåÆØÅ]+$/";
            if (!preg_match($string_exp, $fullName)) {
                $err_msg .= 'Navnet, du har indtastet er ikke muligt at sende...<br />';
            }
            if (strlen($message) < 2) {
                $err_msg .= 'Besdken, du har indtastet er ikke mulig at sende...<br />';
            }
            if (strlen($err_msg) > 0) {
                err($err_msg);
            }
            // setting up the messages:
            $email_message = "Form details below.\n\n";
            $email_message .= "Name: " . badWordCleaner($fullName) . "\n";
            $email_message .= "Email: " . badWordCleaner($email) . "\n";
            $email_message .= "Emne" . $topic . "\n";
            $email_message .= "Message: " . badWordCleaner($message) . "\n";
            $headers = 'From: ' . $email . "\r\n" .
                'Reply-To: ' . $email . "\r\n" .
                'X-Mailer: PHP/' . phpversion();
            mail($email_to, $subject, $email_message, $headers);
            $email_message2 = "Email form copy, thank you for your email.\n\nCopy details below:\n\n";
            $email_message2 .= "Send from Name: " . badWordCleaner($fullName);
            $email_message2 .= "Email: " . badWordCleaner($email) . "\n";
            $email_message2 .= "Emne" . $topic . "\n";
            $email_message2 .= "Message: " . badWordCleaner($message) . "\n";
            $email_message2 .= "Time: " . currentTime() . "\n";
            $headers2 = 'From: ' . $email_to . "\r\n" .
                'Reply-To: ' . $email_to . "\r\n" .
                'X-Mailer: PHP/' . phpversion();
            mail(badWordCleaner($email), "Email copy from web", $email_message2, $headers2);
            //<!-- your success msg -->
            echo "Thank you for your message $email_message";
        }
    }
}