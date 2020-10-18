Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D2F7291636
	for <lists+linux-man@lfdr.de>; Sun, 18 Oct 2020 07:56:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725468AbgJRF4w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Oct 2020 01:56:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725275AbgJRF4w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Oct 2020 01:56:52 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A496C061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 22:56:52 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id h5so7797923wrv.7
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 22:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3k8ItmYOdtZOZ/STByiKQgruNwWf9XWvzYbzvtwVzM0=;
        b=RUXpdDbT3tWd6C3HG6nt8jr1qB8MQkWGeLq1z5gxEiyRnU1fidw0OYsPUBubdNmQSB
         41p2XqWWIU26pJekxuqQ6K8bszGPstbV5BOXuuHAIfXEaVXYPe2d+chhlG4XCF4oE8AV
         7HFp4nqRTszuqjme/33hl2eZ44kPMquTx2Wd3PiQNJ1Sw5c0r0qKJcoyjt8HBZa9lWo4
         QQ+Yc3MjUi+HctMxekJk7j6sQz0pmBKU1ZaNVwTUC7uL9Fo8Uvw8Xv6TfC5IKfFrIx26
         OZx1j6LAjfzWA5h4rfk5D98MU9maOR/mPCE7DNCLD4wf89BQ5SKKQIOUye6wqzDt8W24
         udPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3k8ItmYOdtZOZ/STByiKQgruNwWf9XWvzYbzvtwVzM0=;
        b=FRIqjzLEoTYyVR9wVuWyCvVQkra9Mz9r1g8m2w/A51Lhdj4CHQiXlmBZ35KEkFJfo/
         ID6Wn5OiYphFcwwwDcLAudmwpEnLf49DTC9GRIdKn30HVxJsq3mSe32sHhU5xnYXdcaN
         8hINfuxHjQLSEA3ov/bfL+XkBT5CnJBBBv5MS0CMs+b9x4fjYXAAFKqNSlNgwvNQS0Wj
         hLF/9iwuDb7/NE+BL7R/6o9h65eE4QkndGAV1yYAdxiHYesCXIWgp/CU1Bg1IJEBUwaf
         +jUK2y+YS01wsA8KW+8brlICfAZeGRMlGO32Qr1oGQBLZ3ajK0gw5Mvsoh5xsYGOqDhd
         EOZg==
X-Gm-Message-State: AOAM531bBzUn7qmCAR5hc0xErmIddxq5j2iD4EJ8fWXzpE+Y09E+p8AQ
        HeJEfMb9Wn1OG8h3UElcWrE=
X-Google-Smtp-Source: ABdhPJwAvm5Bioyb/+MX13doaleIFFtUNqZ3nKobiDo9+PpNuEUFMBnTCTpnnOVjp4n7LtJvFBJv/Q==
X-Received: by 2002:a5d:5701:: with SMTP id a1mr12921659wrv.414.1603000610928;
        Sat, 17 Oct 2020 22:56:50 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id o5sm5312562wrw.76.2020.10.17.22.56.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2020 22:56:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/3] system_data_types.7: Add 'clock_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <20201017213758.9270-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e9162722-25f4-6d00-00c4-73ffb4fb6528@gmail.com>
Date:   Sun, 18 Oct 2020 07:56:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201017213758.9270-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/17/20 11:37 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> Does that dash (in "real-floating") need to be escaped?

No.

> In my terminal I see it correctly,
> but I've seen you escaping some of them and don't know the reason why.

See man-pages(7):

   Real minus character
       Where a real minus character is required (e.g., for  numbers  such
       as  -1,  for  man  page cross references such as utf-8(7), or when
       writing options that have a leading dash, such as in  ls -l),  use
       the following form in the man page source:

           \-

       This guideline applies also to code examples.

The point is that a real-minux sign is needed to that code snippets
can be cut and pasted.

> Should they be escaped always, or is it only sometimes, and when?

In normal text, no escape is needed.

>  man7/system_data_types.7 | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)


> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index dc5f65c0d..6a1442ccd 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -85,6 +85,28 @@ See also:
>  .BR aio_write (3),
>  .BR lio_listio (3)
>  .RE
> +.\"------------------------------------- clock_t ----------------------/
> +.TP
> +.I clock_t
> +.RS
> +Include:
> +.I <time.h>
> +or
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <sys/time.h> .
> +.PP
> +Used for system time in clock ticks.

Please make it:
"Used for system time either in clock ticks or CLOCKS_PER_SEC"

This type has a strange history. In my book, I note:

    Although the clock_t return type of clock() is the same
    data type that is used in the times() call, the units of
    measurement employed by these two interfaces are
    different. This is the result of historically conflicting
    definitions of clock_t in POSIX.1 and the C programming
    language standard.

> +According to POSIX,
> +it shall be an integer type or a real-floating type.
> +.PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR times (2),
> +.BR clock (3)
> +.RE
>  .\"------------------------------------- div_t ------------------------/
>  .TP
>  .I div_t

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
