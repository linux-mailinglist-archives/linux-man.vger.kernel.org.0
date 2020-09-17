Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD7D426D78E
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 11:24:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726298AbgIQJXw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 05:23:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726185AbgIQJXw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 05:23:52 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53055C06174A
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 02:23:51 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z4so1260600wrr.4
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 02:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:references:subject:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9rGxqDVDbzW6dtxeClSWFdt4ZUNFvD04UTqd0dMT9h0=;
        b=G/Tby2YcltobqC1HJANmHe5u6wUOQ2HzLIYOZ4JIyHyLj7w6VYLIxtwkw4UIOru94V
         7ZyaSuItcCzCpeClIHTqcMpJqYYB+ap+4um0IbV9W9UwSPRA1w2c3GsZEF7Vel3wsWPy
         SeBP2tUQZ7ayZ+8mdTfGfEuymMmB59i8tyPhsleFF9BqAi+DyvjWnRxFyFgNdI2t2rA3
         WYk7jw+gKHUOVtIE8nAGEq89HmRe2aDbvralyXu8SEMyAtaJNkGEfpBXghdgEDunof6f
         qLrKVZDjcUSl3BOlnZi2qIBH9mYhaFPfkKtc8i8PqzNLYqPAX9xMrv1HNzrxC8DvT31O
         Hi+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:subject:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9rGxqDVDbzW6dtxeClSWFdt4ZUNFvD04UTqd0dMT9h0=;
        b=LCYax41DMNWXvID9cjQgqFmTCK9mse0DcKF/Y4cuRq9FYVQUkPz6RR8f4WzhyXzm/R
         J/7m2Bz2+mSO1fYCCKvI2pqTT1CKcM6rBmCyKZpXCvWQT9Rh9/n92130z6nSQT55TDoq
         PS8ECt5zv5NlmVSP5xHdZ+wOlfTbU9i0lY00LdwWUBGGHoOC2ip+aLVTjN99lpkgjZK2
         vbm86+PJ6MjvrT1Tw/s6PFBabGFB+Cjtdmr5ioqINYbf8cMUd+UcasqVX1cjxnCMgiXK
         TDqspFDoBc17IhDh0GAmJJCNFuAzThT/LwYGVke011uaKZt6hFBYK1dBJ9espV07tjdr
         MBSg==
X-Gm-Message-State: AOAM530z5Ak/QK0CgQRduNo3ExmF3iotYR630YDX18J1z8gMG+3yvFOu
        AMPkuEbnLPQhyA8MRwe1vWg=
X-Google-Smtp-Source: ABdhPJxDJE6QEyk+Mmc9aGX75JxPqVmLwuR8DcwVrKLM/89V0HyBiXmhi87UEwK10EBgUconMkLI1w==
X-Received: by 2002:a5d:518b:: with SMTP id k11mr30496964wrv.369.1600334629321;
        Thu, 17 Sep 2020 02:23:49 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id c10sm9943280wmk.30.2020.09.17.02.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 02:23:48 -0700 (PDT)
To:     tg@mirbsd.org
Cc:     Andries.Brouwer@cwi.nl, colomar.6.4.3@gmail.com,
        fweimer@redhat.com, jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <Pine.BSM.4.64L.2009162128250.11176@herc.mirbsd.org>
Subject: Re: [RFC v6] system_data_types.7: Document types: sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec, timeval
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <a96fa988-3c59-58dc-02d4-6ac21da3bd03@gmail.com>
Date:   Thu, 17 Sep 2020 11:23:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <Pine.BSM.4.64L.2009162128250.11176@herc.mirbsd.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Thorsten,

 >> POSIX does more or less the same:
 >> It has a ¿main? header where the type is defined
 >
 > It does?

It doesn't explicitly say so (AFACS; I didn't read the standard so deep).

But it hints so.

 > When I look at one of the headers, for example…
 > https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/sys_time.h.html
 > … I see a number of types being defined, but the types don’t have
 > their own pages nor is described which is the “main” header (the same
 > goes for constants, e.g. NULL is defined by several headers).
 >
 > Or is wording like…
 >
 >      The <stdlib.h> header shall define NULL as described in 
[10]<stddef.h>.

Yes, the POSIX standard defines types (and in general everything) in
one header.  And then other headers refer the definition to that header,
with that wording you extracted.

The C standard does more or less the same thing:

Extracts from C18:

§ 6.5.3.3 (5)
"The value of the result of both operators is implementation-defined,
and its type (an unsignedinteger type) is size_t, defined
in <stddef.h> (and other headers)."

§ 7.19
"  Common definitions <stddef.h>
The header <stddef.h> defines the following macros and declares the
following types. Some are also defined in other headers, as noted in
their respective subclauses.

The types are
[...]
size_t
which is the unsigned integer type of the result of the sizeof operator;
[...]
"

§ 7.21
"  Input/output <stdio.h>
Introduction
The header <stdio.h> defines several macros, and declares three types
and many functions for performing input and output.
The types declared are size_t (described in 7.19);
[...]
"


 > … where you get the notion of a “main header” from?
 > If so, where in the standard is this expectation documented?

It's not that the standards document it, but in practice it is so.

The main point of differentiating those headers from the rest would be:

- It is likely that it's the lightest header you need to get that type
   (usually most types are in <stddef.h> or <sys/types.h> or <sys/time.h>
   or <stdint.h>, which are very light headers, and the rest of the
   headers just need the types the many function prototypes, which
   you don't need).

- If one wants to find the actual documentation for a type, it's easier
   if you know which header you should look at, although I have to admit
   that if you see any of the other headers, it clearly redirects you,
   so not very important.

- If you just include any of the headers in the list for just getting
   one type (e.g., you included <monetary.h> to get 'ssize_t'),
   a reader of the code might spend a few minutes wondering why the hell
   is that header included.  It's ok if you need monetary for something
   else, and you also happen to need 'ssize_t' and omit <sys/types.h>
   because you happen to have the definition already, but including that
   header just for 'ssize_t' would be a shooting offense, IMO.


Thanks,

Alex
