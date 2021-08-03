Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A9A53DEE1C
	for <lists+linux-man@lfdr.de>; Tue,  3 Aug 2021 14:46:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236039AbhHCMqz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Aug 2021 08:46:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236022AbhHCMqz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Aug 2021 08:46:55 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EDDFC061757
        for <linux-man@vger.kernel.org>; Tue,  3 Aug 2021 05:46:43 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id h14so25155365wrx.10
        for <linux-man@vger.kernel.org>; Tue, 03 Aug 2021 05:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YBQrnzxCsCrZBNaPLqFpY03+dT5Ae21IudIu33BW5WI=;
        b=Ag9JLR9ayWCnwIkIya9sPHFE8KEuXv85lRqe8NWvB5WfCslqCPLySW2tRHeYcgPq/f
         2M/QK7PoQMJiPZhAI4qzqLECnnyHAcR7pa8g6WZC8juE2U9Xx9tMAS4g+OOL2Jtl25IT
         fegNxmE/f6Khq2YIpXwt3U83j4rAJaQ//Qv7z89JB0q4/uo2AWwqyCW4OTh4VzDTMzhi
         z8MfOOoEYFqiESIC8BBUL+brPJotQHtsPN+i0LHCBiuujSoPf+MD+kjNPH+vsGRcAJK/
         3HGQWf5IzFb8VFiSGSn+TD99Li0bsViPKShZMgmtd6DY50jORLnqQW09cs8RoDWA/Sc8
         /fHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YBQrnzxCsCrZBNaPLqFpY03+dT5Ae21IudIu33BW5WI=;
        b=QQXKgqHZfQ5GBkIhrxv5hdTIersOMAlnLCjoGkE0fqJ8clxBhBAgXXypp+sEY+TiSj
         RlsonTurAA0lukCUqvvStxGMnDmZU08AT1h0unXe3ZyHM5RFqtUslOQjbzpeKjlOgoYI
         JYVJ2oiCbex5VSoZTk6iN1/yo7rnLJYIJqV1FFDxwm3pP6wXILiIgjHXDDj8nt8UlrHP
         TITXQMxYyQ8R2U4cgdcIKoj7sBFtAZf34k3ymFvsUpvOlb8qrK2MSJ6Pg7vbPsYjv4EF
         2CgmsFpU3vCiyLDLSFAsIthctZpIZoR53wciH4/r3d3R7LKIIeweaoolozMhLFiBgQch
         xsMQ==
X-Gm-Message-State: AOAM532ZtJTkIi6uZ3NMrYM98BT4UxfYrd2HaPnRvbgt3pKchIT+ohLi
        eD1XQVma4MQXvB4hoz3g6ZhN9Y1F5L0=
X-Google-Smtp-Source: ABdhPJzp3TGSj0mhZAlTBUDwzRaYryoZ6qGGw5mcG3mB2n1EUzp55Mtt/GZRFSDeoTxrAHQWA0b91A==
X-Received: by 2002:a5d:69d0:: with SMTP id s16mr23761138wrw.246.1627994802208;
        Tue, 03 Aug 2021 05:46:42 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id f5sm14526454wrs.5.2021.08.03.05.46.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 05:46:41 -0700 (PDT)
Subject: Re: [PATCH] mount_setattr.2: Minor tweaks to Chirstian's patch
To:     Christian Brauner <christian.brauner@ubuntu.com>
Cc:     Christian Brauner <brauner@kernel.org>, linux-man@vger.kernel.org
References: <20210802104215.525543-1-brauner@kernel.org>
 <20210803113540.330533-1-alx.manpages@gmail.com>
 <20210803122832.3c7c6g4o5wg5pazb@wittgenstein>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <7bd63ed9-d775-6120-db74-9592eacd6f32@gmail.com>
Date:   Tue, 3 Aug 2021 14:46:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210803122832.3c7c6g4o5wg5pazb@wittgenstein>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Christian!

On 8/3/21 2:28 PM, Christian Brauner wrote:
>> Hi, Christian!
>>
>> I applied your v4 patch.
>> On top of it I applied this fix.
>> Could you please check that the non-whitespace non-formatting
>> changes are correct?
> 
> Looks great.

Thanks.

> 
>> Also, please have a look at the whitespace and formatting fixes :)
> 
> Yep, I did. You tried to make sure that all bullet points created via
> \(bu are aligned with the regular text and not indented. You forgot one,
> I think. I think you need the following patch on top of your patch:

Yup, good catch!  Fixed.

Cheers,

Alex

> 
> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
> index 29d308f65..70ab4592e 100644
> --- a/man2/mount_setattr.2
> +++ b/man2/mount_setattr.2
> @@ -778,7 +778,6 @@ and let
>   .I ksize
>   be the size of the structure which the kernel supports,
>   then there are three cases to consider:
> -.RS
>   .IP \(bu
>   If
>   .I ksize
> @@ -815,7 +814,6 @@ then \-1 is returned and
>   is set to
>   .BR E2BIG .
>   This provides forwards-compatibility.
> -.RE
>   .PP
>   Because the definition of
>   .I struct mount_attr
> 
> Thank you! Very happy we'll have a manpage for this soon.
> Christian
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
