Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E85EFB1CBB
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 13:57:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729614AbfIML5o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 07:57:44 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:35959 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729608AbfIML5n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 07:57:43 -0400
Received: by mail-wm1-f68.google.com with SMTP id t3so2488560wmj.1;
        Fri, 13 Sep 2019 04:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BMmRWs6G0MCl1BNkpJxf2D90U8PXhDb67NpHDN2LZq0=;
        b=ZiEua0oA4N8rsikb+7CdAUniLkuy9Fl1EbE6IDAVy61zN1MWVhOpgqnC/O1rbOkNvR
         q8nK+EEPPY5LBWKAQxF+gX7NXEMUYz4bacBGihuLtP18MhBrLLbjbmLT2opdwm2wIhpJ
         r3C443WHfqMBQ4gmkMxQe/an3ou/3uTOKuLGMn4D38DN0YgIimnYYu1yl91aXLj4B9U/
         ISJYXkP6TaPDrRTzMBiD186tKK8xkJhnqohRX+hCiFQBVVeKssApnNSlsYET+nqad5Ue
         y5HnC8dDcdfKWuBOnSHNheZpG1zSUGS3sQzKb4HsNzqQgi9vwvBddnQ7X0Eh56d+kD7H
         MGfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BMmRWs6G0MCl1BNkpJxf2D90U8PXhDb67NpHDN2LZq0=;
        b=ocPPAJBAjmXlF0DhAe6V4U1oQgwm7bqzJwbvI+NkJaS8BENKx5wv73EGYx3Hz7rVws
         qTnwuHMqrZYv07dF4Yy7hE/wwiQJCspDp0vsy0QsUOcoTzjo9lmQH+jlCFmDgRGSSGy+
         FxN/pwV/X3OSPeaxawYvoXeywna4s6z9ktycwoGBsO3eI2YjbiqeMDBkcAfT7X+/dke7
         FexSEuefdwukD5tOsJf0gqAbZ6mpogSZXEzCmVEXvAKZyoXverNJNw5yg0ceBZPd/ZGA
         Sz/D5iKlF1EUR7Nyb9UZf8jhF9VPgAHhSv28uqYsOxjW/CLUxuFp/CNdd+4KdzHD5MML
         Emsg==
X-Gm-Message-State: APjAAAUxsjec2GTis1iUqYIPunrqwyGgIXY+TJTxZhCvvRiKvxnCPXt+
        IeAT73POT2iJGaATAL4wbDs=
X-Google-Smtp-Source: APXvYqyb9+QCqrd+582GqcTKjy5WNBjw141uRO78z/ZBVdd6QkxlcLygWoVwn9dAVSu+/TLsHydqbA==
X-Received: by 2002:a7b:c054:: with SMTP id u20mr2994210wmc.11.1568375861408;
        Fri, 13 Sep 2019 04:57:41 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id z4sm1581083wrh.93.2019.09.13.04.57.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 04:57:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-aio@vger.kernel.org,
        Damir Shaikhutdinov <Damir.Shaikhutdinov@opensynergy.com>
Subject: Re: [PATCH v2] io_submit.2: Fix kernel version numbers for
 'aio_rw_flags' flags
To:     Matti Moell <Matti.Moell@opensynergy.com>
References: <852f4b43-b2ca-6823-7c42-2e8c766f79e9@opensynergy.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3410f0f4-9608-879a-a994-2479343ce186@gmail.com>
Date:   Fri, 13 Sep 2019 13:57:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <852f4b43-b2ca-6823-7c42-2e8c766f79e9@opensynergy.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Matti,

On 8/20/19 7:04 PM, Matti Moell wrote:
> Even though the RFW_* flags were first introduced in Linux 4.6, they
> could not be used with aio until 4.13 where the aio_rw_flags field was
> added to struct iocb (9830f4be159b "fs: Use RWF_* flags for AIO
> operations"). Correct the stated version for each flag.
> 
> Fixes: 2f72816f8680 ("io_submit.2: Add kernel version numbers for various 'aio_rw_flags' flags")
> Signed-off-by: Matti Möll <Matti.Moell@opensynergy.com>

Thanks. Patch applied.

Cheers,

Michael


> ---
> Changelog:
> v2:
>  - Fix kernel version from 4.12 to 4.13
> ---
>  man2/io_submit.2 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/io_submit.2 b/man2/io_submit.2
> index ed98da46c999..1b5fd405a00e 100644
> --- a/man2/io_submit.2
> +++ b/man2/io_submit.2
> @@ -91,7 +91,7 @@ The
>  field is ignored.
>  The file offset is not changed.
>  .TP
> -.BR RWF_DSYNC " (since Linux 4.7)"
> +.BR RWF_DSYNC " (since Linux 4.13)"
>  Write operation complete according to requirement of
>  synchronized I/O data integrity.
>  See the description of the flag of the same name in
> @@ -101,7 +101,7 @@ as well the description of
>  in
>  .BR open (2).
>  .TP
> -.BR RWF_HIPRI " (since Linux 4.6)"
> +.BR RWF_HIPRI " (since Linux 4.13)"
>  High priority request, poll if possible
>  .TP
>  .BR RWF_NOWAIT " (since Linux 4.14)"
> @@ -118,7 +118,7 @@ field of the
>  structure (see
>  .BR io_getevents (2)).
>  .TP
> -.BR RWF_SYNC " (since Linux 4.7)"
> +.BR RWF_SYNC " (since Linux 4.13)"
>  Write operation complete according to requirement of
>  synchronized I/O file integrity.
>  See the description of the flag of the same name in
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
