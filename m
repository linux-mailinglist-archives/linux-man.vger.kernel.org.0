Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41D272FA507
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:44:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392507AbhARPnf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:43:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393517AbhARPll (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:41:41 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB63FC061574
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:40:55 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id gx5so5052527ejb.7
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HX2x1U2RQw2z0Eesw6fqFsc4v456t26ggnrkRonTOqY=;
        b=rjeAQq7Ie6h1q8eg2yeW6O+VevTayI2IP+oKdW98HcBBiSJHCIBfOrO9eyOpsibpyZ
         IzRqNmNYHGCOeBn4MT2gZQCTywmq9+Y7UR/VDsMQq/qTHLljsR/hxP9RCvf4a13I7sW8
         z1GJZwZuoya7rMlRd1lAbSAZ8qX1SFEH7/v5BNfYp4o+GiT/06RyNemkrfpfs2WDC928
         3zL2eeFn9aByLy47jFeDGFtI1Z2y17o5SF3jcJMqU5opMyMLpsNWOMNRVMl3fNLmBkYl
         H9ncKQ+Vxxf9xfTLON/1apM1qMkfRlu+xaD3ZgabjKQnlfUbJyxU3ZyOLvvBhLBvw1mN
         VXJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HX2x1U2RQw2z0Eesw6fqFsc4v456t26ggnrkRonTOqY=;
        b=ok7wQ/TSwKMkjFKqTfgIVkuRRos+LW4f44DW4EYD9B0j2CqXOxhwoyucs+mP5nHEa/
         Qeiy+C/WHzXBsdCLbmjVOWxzGj6FLMZGi92m+ZRs6k9BnBTyBUDXZjbA9zB91hI+ydN1
         slVx4MLhSNRNt4OP0OxHfNiZNCdIVW4u/BCHqmnNTUUhsrRB4IOf6cELzLlvr25WoWoB
         7hyPLns4Fkkq5+pq71zMAbaWZS3V/PZa8uLQRkqTHbhg28oHVGo3ayBKYxIXHTz4oiOb
         vKL+Ko//dZ+AVNmEOMYxRZ70UbmqWKtGHZJTG5IvjTNsG7q4rPLfVsNKWRL6kPAPDyWY
         xKBQ==
X-Gm-Message-State: AOAM530cp5JdAlVHxv/h0HhiHzpovYWczJLVez68LfJ4AmVV9sKAfrn7
        uC0eNOPhY0qZWpiFJYDuCpG5FIXW+X8=
X-Google-Smtp-Source: ABdhPJxDFS2hbQNDp+6qF7sWKgXLs7oKCG1756wO0wLBPklby07g/4bJ+Rruh30jGRiANidIMF+2Dw==
X-Received: by 2002:a17:906:4694:: with SMTP id a20mr169940ejr.201.1610984453978;
        Mon, 18 Jan 2021 07:40:53 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id s19sm11185300edx.7.2021.01.18.07.40.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:40:53 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pipe.7: tfix
To:     alx.manpages@gmail.com, Jakub Wilk <jwilk@jwilk.net>
References: <20210118091717.7042-1-jwilk@jwilk.net>
 <3bfc7e28-9663-40d0-a4b2-5ce9cefca01b@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <345ab74a-c8fa-b5ea-89b6-73b7001e4fb7@gmail.com>
Date:   Mon, 18 Jan 2021 16:40:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <3bfc7e28-9663-40d0-a4b2-5ce9cefca01b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex (and Jakub)

On 1/18/21 4:19 PM, Alejandro Colomar (mailing lists; readonly) wrote:
> On 1/18/21 10:17 AM, Jakub Wilk wrote:
>> Escape hyphens.
> 
> Hi Jakub,
> 
> Would you mind adding not only 'what',
> but also (and especially) 'why' is does it?
> I mean, 20 years from now we might wonder why we escaped hyphens.
>
> Adding for example the following to the commit message might help:
> 
> [
> $ man 7 man-pages 2>/dev/null \
>   |sed -n '/Generating optimal glyphs/,/\\-/p';
>    Generating optimal glyphs
>        Where a real minus character is required (e.g., for numbers
>        such as -1, for man page cross references such as utf-8(7),
>        or when writing options that have a leading dash,  such  as
>        in ls -l), use the following form in the man page source:
> 
>            \-
> ]
> 
> I'm also wondering... are there any other places where this patch would
> also be needed?

Well, it is documented in our man-pages(7). I think just an
"As per man-pages(7), ..." would suffice. But even without
it, I would not worry too much.

I think it's great when you add stuff like this little script in 
your commit messages, but I don't want to impose that burden on
others.

Thanks,

Michael



>> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
>> ---
>>  man7/pipe.7 | 18 +++++++++---------
>>  1 file changed, 9 insertions(+), 9 deletions(-)
>>
>> diff --git a/man7/pipe.7 b/man7/pipe.7
>> index 21c8fa79b..c3210320c 100644
>> --- a/man7/pipe.7
>> +++ b/man7/pipe.7
>> @@ -163,7 +163,7 @@ but is provided on many implementations.
>>  .SS /proc files
>>  On Linux, the following files control how much memory can be used for pipes:
>>  .TP
>> -.IR /proc/sys/fs/pipe-max-pages " (only in Linux 2.6.34)"
>> +.IR /proc/sys/fs/pipe\-max\-pages " (only in Linux 2.6.34)"
>>  .\" commit b492e95be0ae672922f4734acf3f5d35c30be948
>>  An upper limit, in pages, on the capacity that an unprivileged user
>>  (one without the
>> @@ -175,9 +175,9 @@ The default value for this limit is 16 times the default pipe capacity
>>  (see above); the lower limit is two pages.
>>  .IP
>>  This interface was removed in Linux 2.6.35, in favor of
>> -.IR /proc/sys/fs/pipe-max-size .
>> +.IR /proc/sys/fs/pipe\-max\-size .
>>  .TP
>> -.IR /proc/sys/fs/pipe-max-size " (since Linux 2.6.35)"
>> +.IR /proc/sys/fs/pipe\-max\-size " (since Linux 2.6.35)"
>>  .\" commit ff9da691c0498ff81fdd014e7a0731dab2337dac
>>  The maximum size (in bytes) of individual pipes that can be set
>>  .\" This limit is not checked on pipe creation, where the capacity is
>> @@ -202,7 +202,7 @@ Since Linux 4.9,
>>  the value on this file also acts as a ceiling on the default capacity
>>  of a new pipe or newly opened FIFO.
>>  .TP
>> -.IR /proc/sys/fs/pipe-user-pages-hard " (since Linux 4.5)"
>> +.IR /proc/sys/fs/pipe\-user\-pages\-hard " (since Linux 4.5)"
>>  .\" commit 759c01142a5d0f364a462346168a56de28a80f52
>>  The hard limit on the total size (in pages) of all pipes created or set by
>>  a single unprivileged user (i.e., one with neither the
>> @@ -220,7 +220,7 @@ no hard limit is applied.
>>  .\" The default was chosen to avoid breaking existing applications that
>>  .\" make intensive use of pipes (e.g., for splicing).
>>  .TP
>> -.IR /proc/sys/fs/pipe-user-pages-soft " (since Linux 4.5)"
>> +.IR /proc/sys/fs/pipe\-user\-pages\-soft " (since Linux 4.5)"
>>  .\" commit 759c01142a5d0f364a462346168a56de28a80f52
>>  The soft limit on the total size (in pages) of all pipes created or set by
>>  a single unprivileged user (i.e., one with neither the
>> @@ -238,9 +238,9 @@ The default value for this file is 16384,
>>  which permits creating up to 1024 pipes with the default capacity.
>>  .PP
>>  Before Linux 4.9, some bugs affected the handling of the
>> -.IR pipe-user-pages-soft
>> +.IR pipe\-user\-pages\-soft
>>  and
>> -.IR pipe-user-pages-hard
>> +.IR pipe\-user\-pages\-hard
>>  limits; see BUGS.
>>  .\"
>>  .SS PIPE_BUF
>> @@ -342,9 +342,9 @@ Portable applications should avoid reliance on
>>  bidirectional pipe semantics.
>>  .SS BUGS
>>  Before Linux 4.9, some bugs affected the handling of the
>> -.IR pipe-user-pages-soft
>> +.IR pipe\-user\-pages\-soft
>>  and
>> -.IR pipe-user-pages-hard
>> +.IR pipe\-user\-pages\-hard
>>  limits when using the
>>  .BR fcntl (2)
>>  .BR F_SETPIPE_SZ
>>
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
