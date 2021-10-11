Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 327BC428ABC
	for <lists+linux-man@lfdr.de>; Mon, 11 Oct 2021 12:27:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235602AbhJKK3b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Oct 2021 06:29:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235446AbhJKK3b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Oct 2021 06:29:31 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77489C061570
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 03:27:31 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id k7so54413582wrd.13
        for <linux-man@vger.kernel.org>; Mon, 11 Oct 2021 03:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+Y+w8GRX0rNLMThcobbckt0d0L9t5I0JQwVe6ZJO3Jc=;
        b=iGB8+W2vghCTrzRbu54ATEFsXzBoALTfWDZcAfMK/4BIGWBB3rvKB5X+q5FG8D4kW8
         y+tNsm4dqcBFTd24w2nNFd3NxX497x8XGtOmeJFlpqsoDsXpe+dvP9f4bix9OahmJFLm
         1RZ0yqsefEIf1/3gV4Hn4y2C2LUybSbEUWOefauwxEqjEpMR1Ic8kdw0cStEqGNNR5cU
         yRVIiWW254+UwcqYG7oKJeJYTSDU75g2Co32LV2eiTVHdRyZT7TtmdLQ4ZJKUZyAPOz5
         +5Pvmc/x0wqYWFOJQjqYyLkmKrAEN4WjoTBOzuZfH4s4pFIkyhDX6vmMr/p/7gn34aei
         73/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+Y+w8GRX0rNLMThcobbckt0d0L9t5I0JQwVe6ZJO3Jc=;
        b=UXCO4Sdnvz9HVQBfoe21nXHAzgk2F89mdAm3PKCOwBvvmBuMKUx0qtfcF3NMm4IXdz
         ppfR+RG1NgDob/KvpvE45z8ylAR8e9XuFRuUJRZGcv/1N/qzKJQ+6t6yizGVKxKjH32x
         eOfjvxu1RrgfGmtJz1A48JINNkJ0zJo8SoHi3K1h4Y6NfQi17oqmy6XZMshXNTEqqDHd
         ecBeJQiEkk6dXtblzzZ1Q8H0VVLOruNkFj+wRlwNQWiupnHqAP/w+DVSIZGQWhvPop7t
         V2V+ScSig/nC8ke/h/+sWDY8E4MrhK8wXEpwiD4OT/O+51cTxVaQN9tTSrjLkzeKAvZt
         PNEQ==
X-Gm-Message-State: AOAM531NeDlK/jWe0dJdx9FqBCFoQLclgcIyPGGcvM0ZUwErVvtH7NJI
        R+Hr6pD5H4cg8ln2dKRcNAM=
X-Google-Smtp-Source: ABdhPJwnkwBCyd9PmEn1Me7/u3iCTq8a9yCvl6jNcgd47Nu0s6UWLw9U7Q28jhkmgjRqpknERpClkA==
X-Received: by 2002:a7b:c742:: with SMTP id w2mr11114790wmk.61.1633948050119;
        Mon, 11 Oct 2021 03:27:30 -0700 (PDT)
Received: from [10.8.0.26] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l17sm7238762wrx.24.2021.10.11.03.27.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Oct 2021 03:27:29 -0700 (PDT)
Subject: Re: [PATCH] ctime.3: mktime() may modify tm_hour due to tm_isdst
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>
References: <20211010105245.53896-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
Date:   Mon, 11 Oct 2021 12:27:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211010105245.53896-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Please don't apply this patch.  I'll resend with the same contents but 
with a different commit message.

On 10/10/21 12:52 PM, Alejandro Colomar wrote:
> If the input DST value is the opposite of the one that mktime()
> uses, which comes from the current system timezone (see tzset(3)),
> mktime() will modify the hour (and if it's in a day limit, it may
> carry up to modify other fields) to normalize the time to the
> correct DST.
> 
> If a user wants to avoid this, it should use UTC time, which never
> has DST.  For that, setenv("TZ", "", 1); sets UTC time for the
> program.  After that, the program should specify that DST is not
> in effect, by setting tm_isdst to 0 (or let the system guess it
> with -1), since setting tm_isdst to a positive value will result
> in an error, (probably) due to mktime() considering that it is
> invalid to have DST enabled for UTC times.

Today I found timegm(3), which does the same as mktime(3) with TZ set to 
UTC, but doesn't require the whole program to be using UTC times, so 
I'll add this to the commit message.

BTW, timegm(3) says that you should "avoid their use" because timegm(3) 
is a Linux and BSD extension, but its use can NOT be avoided (well, it 
can, but if not done very carefully, you are likely to introduce bugs 
due to setenv(3) not being thread-safe), so I'd remove that sentence 
from timegm(3).  I think it should be in POSIX.  As FreeBSD timegm(3) 
says, there's no (safe and easy) way to roll your own timegm() based on 
standard functions:

[
      The timegm() function is not specified by any standard; its 
function can-
      not be completely emulated	using the standard functions described 
above.
]

Thanks,

Alex


> 
> Cc: Paul Eggert <eggert@cs.ucla.edu>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>   man3/ctime.3 | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/man3/ctime.3 b/man3/ctime.3
> index 0e2068a09..7a5714be8 100644
> --- a/man3/ctime.3
> +++ b/man3/ctime.3
> @@ -260,6 +260,13 @@ normalized (so that, for example, 40 October is changed into 9 November);
>   is set (regardless of its initial value)
>   to a positive value or to 0, respectively,
>   to indicate whether DST is or is not in effect at the specified time.
> +If the initial value of
> +.I tm_isdst
> +is inconsistent with the one set by
> +.BR mktime (),
> +.I tm_hour
> +(and possibly other fields)
> +will be modified to normalize the time to the correct DST.
>   Calling
>   .BR mktime ()
>   also sets the external variable \fItzname\fP with
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
