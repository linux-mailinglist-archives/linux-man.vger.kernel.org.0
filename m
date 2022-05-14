Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F263527129
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 15:12:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229717AbiENNMk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 09:12:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbiENNMi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 09:12:38 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F4BA2E08B
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 06:12:36 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id j25so13639302wrc.9
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 06:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ug6B79BCL8ANVZ2WZeoVzBlYivLam16yEu5P7sL7vVE=;
        b=n8FPgHp//DYxHEXLfvixaJ7ANFECWflOIDNYI0SdMXYVjB4N+BR+HUg9KbxeCP0z2c
         lMx4/YRw2XRPqE1Z7IDmDu/1fwB+MIc3MhU3mAfMn1d4Q575OK63RjztYYQDo24Ml6CH
         4rvM5KZo7v6OnVK/wUbd0olqbYOebULekvwNQkpqEOx5ZYV2PTqUlIek8d9LJ4/2R72M
         D5qNpAvpb2fHurA2wpLh4MK+IVR/ryS1p2uA+8kLdDNyJbnAaBNsLpLtO7uVDjWEueeM
         73p8OtWAhCxUK/UgbTgAYw4QGJcoRla6KoyFNkRhlf4ZWvyoikSxYQlGQDkSSMonvDTc
         w0dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ug6B79BCL8ANVZ2WZeoVzBlYivLam16yEu5P7sL7vVE=;
        b=4BiXg3OA+DUo62js9JDfY061bCjafRAD6KhIpl96uuj4bwMk8Qq0AoQteNEZ4tfKiO
         ZNOPNbSSP19rnLjy4+KmibTGH74RAmw6mPlCrxM8D24atobBXNpGoLdVhsNC9ahDdqm5
         Wqn65sezLp2YpCwLUpmdYJZaQqYsOlWe4AT/JDLhmJap2Hcgnpf1NoxwtJz4VzzWG9n8
         2mv5PXiY6wODM5o+mpIpSNlPQnQ3fYjI5AAK9bVBNwvXVpE+dXT2a4xSyjPN/Lp+WV0l
         fGRb9sRKVXzPGK8nPOK/pr2EDG3kMnm/c31/PQA3M6RK0PcphAjbh1zP7mSqPWEkkwmS
         6NDQ==
X-Gm-Message-State: AOAM5336Id1eTh+ou5ABFY9W1IHpu1DbsoiOiUyeqciSihHjCfeyxrfZ
        yiYK7Wiqn/yUO9SwQorUc8c=
X-Google-Smtp-Source: ABdhPJzELskMGTHqrNHKT8MFTn45TKZdcJFWEoTWebPnJSV1k17ajdJhZ6PonAyvJGI6wyUMTY39hQ==
X-Received: by 2002:adf:fc11:0:b0:20c:5fc2:2ee0 with SMTP id i17-20020adffc11000000b0020c5fc22ee0mr7590266wrr.225.1652533955023;
        Sat, 14 May 2022 06:12:35 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b26-20020a7bc25a000000b003942a244ed6sm5188031wmj.27.2022.05.14.06.12.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 06:12:34 -0700 (PDT)
Message-ID: <60295764-e14c-9570-8ed3-3975c913e72c@gmail.com>
Date:   Sat, 14 May 2022 15:12:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4] fanotify: Document FAN_REPORT_PIDFD Feature
Content-Language: en-US
To:     Matthew Bobrowski <repnop@google.com>, mtk.manpages@gmail.com
Cc:     jack@suse.cz, amir73il@gmail.com, linux-man@vger.kernel.org
References: <1af583adb1f368c51f1976db7bf3a27530cdc06f.1650408011.git.repnop@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <1af583adb1f368c51f1976db7bf3a27530cdc06f.1650408011.git.repnop@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Matthew,

On 4/20/22 00:43, Matthew Bobrowski wrote:
> Update the fanotify API documentation to include details on the new
> FAN_REPORT_PIDFD feature. This patch also includes a generic section
> describing the concept of information records which are supported by
> the fanotify API.
> 
> Signed-off-by: Matthew Bobrowski <repnop@google.com>
> Reviewed-by: Jan Kara <jack@suse.cz>
> Reviewed-by: Amir Goldstein <amir73il@gmail.com>
> ---
> 
> Changes in v4:
> 
> * Applied style and grammatical suggestions by Alejandro Colomar
>    [0]. This includes the use of Oxford-style commas and semantic
>    newlines.

I've further edited the patch a bit (only whitespace) regarding semantic 
newlines.  I'll send it as a reply to this patch in a moment.

Apart from that, I couldn't understand a paragraph.  See below.


Thanks,

Alex

> 
> [0] https://lore.kernel.org/linux-man/f40ff271-a18e-9833-f858-9abf3bb19cd2@gmail.com/
> 
>   man2/fanotify_init.2 |  34 +++++++
>   man7/fanotify.7      | 213 +++++++++++++++++++++++++++++++++++--------
>   2 files changed, 209 insertions(+), 38 deletions(-)
> 
[...]
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index f8345b3f5..bf648782c 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
[...]
> @@ -498,6 +592,49 @@ and the file handle is followed by a null terminated string that identifies the
>   name of a directory entry in that directory, or '.' to identify the directory
>   object itself.
>   .PP
> +The fields of the
> +.I fanotify_event_info_pidfd
> +structure are as follows:
> +.TP
> +.I hdr
> +This is a structure of type
> +.IR fanotify_event_info_header .
> +When an fanotify group is initialized using
> +.BR FAN_REPORT_PIDFD ,
> +the
> +.I info_type
> +field value of the
> +.I fanotify_event_info_header
> +is set to
> +.BR FAN_EVENT_INFO_TYPE_PIDFD .
> +.TP
> +.I pidfd
> +This is a process file descriptor that refers to the process
> +responsible for generating the event.
> +The returned process file descriptor is no different from one which
> +could be obtained manually if
> +.BR pidfd_open (2)
> +were to be called on
> +.IR fanotify_event_metadata.pid .


> +In the instance that an error is encountered during pidfd creation for
> +one of two possible error types represented by a negative integer
> +value may be returned in this
> +.I pidfd
> +field.

I couldn't understand the paragraph above.  Could you maybe rephrase it 
a bit?  Maybe add some commas?

> +In cases where the process responsible for generating the event has
> +terminated prior to the event listener being able to read events from the
> +notification queue,
> +.B FAN_NOPIDFD
> +is returned.
> +The pidfd creation for an event is only performed at the time the
> +events are read from the notification queue.
> +All other possible pidfd creation failures are represented by
> +.BR FAN_EPIDFD.
> +Once the event listener has dealt with an event and the pidfd is no
> +longer required,
> +the pidfd should be closed via
> +.BR close(2).
> +.PP
>   The following macros are provided to iterate over a buffer containing
>   fanotify event metadata returned by a
>   .BR read (2)

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
