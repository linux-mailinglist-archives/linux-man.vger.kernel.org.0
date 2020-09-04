Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 628C125DD0D
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:20:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730727AbgIDPUG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:20:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbgIDPUF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:20:05 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0308FC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:20:05 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id s13so6397750wmh.4
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4zoE+4eoxo0tq83bX2RzO1lvfyuXOfdgQxhvjxJjaS0=;
        b=p76FYCN48pozmCh8IypS5xP31Z8BLphMkQal44JYxJGmZV+MqZGAjoSe16+uJVZTsG
         DAiQhJDVHlqkixw7LBEsWdaedULtqWRX7Dd2f8gUuVvUtx/eon8ki+/CeSZFQfNhdel0
         rVvSk6Ljj4xeD39nWMMq2ZXmGojLSNB4ergJlXoF4GXZYpV2zypFtK0Sw1Nb4Sjy7eQQ
         CDLUQ0dMpCmxfrcad2r8JVd87wQ+PVXWcL7TAhl0jKtYbnL6bZdbwxxPRmEP4uHctEcS
         gMDiLP4yAmarfiPJZvFijRmgMm6MFCZk3ebB7gNWpswLrBHbkVbwY1EFQOrtovhhAzjo
         m2fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4zoE+4eoxo0tq83bX2RzO1lvfyuXOfdgQxhvjxJjaS0=;
        b=bG6cxHsHzdMcxWcavaYNwKTXqdX9Baw+LSLAQO77xvj2laZY2D8qVjWFAlLqJymRGt
         m8ZiwjdNiUTqCBmybRmqATwqzqxbACP5Pddfkf++tkep8Jfp6Oa8vWnHlBjedtAG5VyI
         2ScA9lcFXnhxddnak9ThwCX9AhsGj+ONQowGZwoBQh+KBbdgI9fe56HFpFj9QOdDW7pS
         xI2aHfIKd2EySKv5/96Ic7FQ8dtQ6OJwBP1+llJpgSGN+jQ1iU/CTYIKdV6jnpQYiPsD
         fSwm3GqVwSfmXyDmJjt8T8zfTRTc3ppuF2QFAqNKK1Pz0KVDBc/QuhDn7hQi8JYUWqsH
         Bkjw==
X-Gm-Message-State: AOAM531WoVAb+8oM2DtSku66FLEKCY0f2PBJojsaCEzxvg9s/BZj9eUV
        tfjZS/55tkkVRdVqJ2GaNAg=
X-Google-Smtp-Source: ABdhPJyF9duLp5Rwbl9nRD3vN8M0FyADWnpegSs61XrMfP3D0iNh4OFOO9xFJRR8ujgmNwcRyusfVw==
X-Received: by 2002:a1c:7911:: with SMTP id l17mr7990481wme.179.1599232803715;
        Fri, 04 Sep 2020 08:20:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id h186sm12103328wmf.24.2020.09.04.08.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:20:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 14/34] cmsg.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8192a9cb-c492-3cb8-8e1f-d161e812833f@gmail.com>
Date:   Fri, 4 Sep 2020 17:20:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/4/20 3:52 PM, Alejandro Colomar wrote:
>>From 374b31bee6762314ab48988e2e78a3a6a2f96834 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:44:54 +0200
> Subject: [PATCH 14/34] cmsg.3: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/cmsg.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/cmsg.3 b/man3/cmsg.3
> index 3d6288901..8d0ad6666 100644
> --- a/man3/cmsg.3
> +++ b/man3/cmsg.3
> @@ -241,8 +241,8 @@ msg.msg_controllen = sizeof(u.buf);
>  cmsg = CMSG_FIRSTHDR(&msg);
>  cmsg\->cmsg_level = SOL_SOCKET;
>  cmsg\->cmsg_type = SCM_RIGHTS;
> -cmsg\->cmsg_len = CMSG_LEN(sizeof(int) * NUM_FD);
> -memcpy(CMSG_DATA(cmsg), myfds, sizeof(int) * NUM_FD);
> +cmsg\->cmsg_len = CMSG_LEN(sizeof(myfds));
> +memcpy(CMSG_DATA(cmsg), myfds, sizeof(myfds));
>  .EE
>  .in
>  .SH SEE ALSO

Thanks. Patch applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
