Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF210407333
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:04:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234717AbhIJWFp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:05:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232360AbhIJWFo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:05:44 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A491CC061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:04:32 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id b6so4573115wrh.10
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hV5o1kFLqPVVuq6WejFvx6V1xy9GKnEWzRafAhPhDcM=;
        b=Rt5ukzrV0PDafD7zgERrpf+Bb1KGzWNtEthixq7Wk0o2s/8JB9nx4jjxXdETlxjm1l
         nGlkY/S9+0suk2Db6G8u2mzXpU74EnRn7ABLYXLRIl3QtZji9TXntzJ5iAr6sW9Rw3ez
         55M1o/2UYqMUGV6gH36cpxaM4eZYdPpAVXVlp8jdHHZlTLeSYeQ7Q69xsAxo/clwVmgn
         O+dhgEFFqUdXZxoVz8oP4SvCwgXoCvlq5bgBnzUG6vBfq41QE84HocKlzlWrN5MWaMPn
         VzQjYamd62qbCOL4hR/kdbjVY67UqDvxzu8l1DDieKdSxNkNh6s7qj1Or6+37H8yOWcc
         W7Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hV5o1kFLqPVVuq6WejFvx6V1xy9GKnEWzRafAhPhDcM=;
        b=a8bwTWvT50EMsFtyXricndi9EI7GbLjixLWDe0qGhSKcAl0x4N8GwOfzxZzUtG2V9J
         rJd0/+ztjny/2T3QnVXaE5dIpgT9RcIMNUa9MKgjR88TRfWt6LIz2UQzHigq48ln0KhZ
         rHXl+7XIcSmy6kRr7zT+or/PQyx8rRKvNtlyz4y/6v9h4uueYI1419mPG2hA78NNAlOL
         TvkhTzeTjOtdU7pVz2sQ2QjltV8YL0LJednVZS1C/3j4FRsadOm9wJjrwgy1K+TUJJDB
         6lmOaXwrEreTEhiQI2lY5ijbV0262xxU2eRT1KadIgvPiFzEcfKAWq2Mty+ineR+qMU5
         d/3g==
X-Gm-Message-State: AOAM531HaFJ7tw/5PQGcSnZ5rkxcGrAy9KkpE8pgsmIpkfNj92JkzyOC
        s29vKd0twdBqcFk69PAzKGY=
X-Google-Smtp-Source: ABdhPJxR2RCC3s2D54lbnZwSVSTVrdKAfkst9wlVwH1vPXSlPSPW9RQmlLVV8NcBGj/GfNijTDMcTw==
X-Received: by 2002:adf:fb8e:: with SMTP id a14mr739860wrr.40.1631311471225;
        Fri, 10 Sep 2021 15:04:31 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h15sm5781306wrc.19.2021.09.10.15.04.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 15:04:30 -0700 (PDT)
Subject: Re: [patch] nscd.conf.5: describe reloading, clarifications, v5
To:     Greg Banks <gbanks@linkedin.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        DJ Delorie <dj@redhat.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <BL0PR2101MB131635E1A9DD3F853D9EAE86A1F39@BL0PR2101MB1316.namprd21.prod.outlook.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e0095cb3-ce8a-0b36-e50c-1a4b556c7abc@gmail.com>
Date:   Sat, 11 Sep 2021 00:04:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <BL0PR2101MB131635E1A9DD3F853D9EAE86A1F39@BL0PR2101MB1316.namprd21.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Greg,

On 8/6/21 6:41 PM, Greg Banks wrote:
> The following changes since commit fbe71b1b79e72be3b9afc44b5d479e7fd84b598a:
> 
>    ioctl_tty.2: wfix (2021-07-26 01:31:54 +0200)
> 
> are available in the Git repository at:
> 
>    git@github.com:gnb/man-pages.git nscd.conf.5.v5
> 
> for you to fetch changes up to de00b682c0d2280c92c692fbcdb6cf5d4ca9bc01:
>  >    nscd.conf.5: describe reloading, clarifications, v5 (2021-08-06 
09:26:57 -0700)

Sorry for the delay.  Patch applied!
I also added a Signed-off-by line on your behalf.

Thanks!

Alex

> 
> ----------------------------------------------------------------
> Greg Banks (1):
>        nscd.conf.5: describe reloading, clarifications, v5
> 
>   man5/nscd.conf.5 | 115 +++++++++++++++++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 112 insertions(+), 3 deletions(-)
> 
> diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
> index 7356bf7c2..25ee4901b 100644
> --- a/man5/nscd.conf.5
> +++ b/man5/nscd.conf.5
> @@ -1,5 +1,6 @@
>   .\" Copyright (c) 1999, 2000 SuSE GmbH Nuernberg, Germany
>   .\" Author: Thorsten Kukuk <kukuk@suse.de>
> +.\" Updates: Greg Banks <gbanks@linkedin.com> Copyright (c) 2021 Microsoft Corp.
>   .\"
>   .\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
>   .\" This program is free software; you can redistribute it and/or
> @@ -53,9 +54,13 @@ The default is 0.
>   .B threads
>   .I number
>   .RS
> -This is the number of threads that are started to wait for
> +This is the initial number of threads that are started to wait for
>   requests.
>   At least five threads will always be created.
> +The number of threads may increase dynamically up to
> +.B max\-threads
> +in response to demand from clients,
> +but never decreases.
>   .RE
>   .PP
>   .B max\-threads
> @@ -83,9 +88,20 @@ Specifies the user who is allowed to request statistics.
>   unlimited |
>   .I number
>   .RS
> -Limit on the number of times a cached entry gets reloaded without being used
> +Sets a limit on the number of times a cached entry
> +gets reloaded without being used
>   before it gets removed.
> -The default is 5.
> +The limit can take values ranging from 0 to 254;
> +values 255 or higher behave the same as
> +.BR unlimited .
> +Limit values can be specified in either decimal
> +or hexadecimal with a "0x" prefix.
> +The special value
> +.B unlimited
> +is case-insensitive.
> +The default limit is 5.
> +A limit of 0 turns off the reloading feature.
> +See NOTES below for further discussion of reloading.
>   .RE
>   .PP
>   .B paranoia
> @@ -128,6 +144,9 @@ in the specified cache for
>   is in seconds.
>   Larger values increase cache hit rates and reduce mean
>   response times, but increase problems with cache coherence.
> +Note that for some name services (including specifically DNS)
> +the TTL returned from the name service is used and
> +this attribute is ignored.
>   .RE
>   .PP
>   .B negative\-time\-to\-live
> @@ -166,6 +185,7 @@ The files are
>   .IR /etc/passwd ,
>   .IR /etc/group ,
>   .IR /etc/hosts ,
> +.IR /etc/resolv.conf ,
>   .IR /etc/services ,
>   and
>   .IR /etc/netgroup .
> @@ -194,6 +214,8 @@ is shared with the clients so
>   that they can directly search in them instead of having to ask the
>   daemon over the socket each time a lookup is performed.
>   The default is no.
> +Note that a cache miss will still result in
> +asking the daemon over the socket.
>   .RE
>   .PP
>   .B max\-db\-size
> @@ -236,6 +258,93 @@ from the source code of
>   and are used if not overridden in the configuration file.
>   The default values used in the configuration file of
>   your distribution might differ.
> +.SS Reloading
> +.BR nscd (8)
> +has a feature called reloading,
> +whose behavior can be surprising.
> +.PP
> +Reloading is enabled when the
> +.B reload-count
> +attribute has a non-zero value.
> +The default value in the source code enables reloading,
> +although your distribution may differ.
> +.PP
> +When reloading is enabled,
> +positive cached entries (the results of successful queries)
> +do not simply expire when their TTL is up.
> +Instead, at the expiry time,
> +.B nscd
> +will "reload",
> +i.e.,
> +re-issue to the name service the same query that created the cached entry,
> +to get a new value to cache.
> +Depending on
> +.I /etc/nsswitch.conf
> +this may mean that a DNS, LDAP, or NIS request is made.
> +If the new query is successful,
> +reloading will repeat when the new value would expire,
> +until
> +.B reload-count
> +reloads have happened for the entry,
> +and only then will it actually be removed from the cache.
> +A request from a client which hits the entry will
> +reset the reload counter on the entry.
> +Purging the cache using
> +.I nscd\~-i
> +overrides the reload logic and removes the entry.
> +.PP
> +Reloading has the effect of extending cache entry TTLs
> +without compromising on cache coherency,
> +at the cost of additional load on the backing name service.
> +Whether this is a good idea on your system depends on
> +details of your applications' behavior,
> +your name service,
> +and the effective TTL values of your cache entries.
> +Note that for some name services
> +(for example, DNS),
> +the effective TTL is the value returned from the name service and
> +.I not
> +the value of the
> +.B positive\-time\-to\-live
> +attribute.
> +.PP
> +Please consider the following advice carefully:
> +.IP \(bu
> +If your application will make a second request for the same name,
> +after more than 1 TTL but before
> +.B reload\-count
> +TTLs,
> +and is sensitive to the latency of a cache miss,
> +then reloading may be a good idea for you.
> +.IP \(bu
> +If your name service is configured to return very short TTLs,
> +and your applications only make requests rarely under normal circumstances,
> +then reloading may result in additional load on your backing name service
> +without any benefit to applications,
> +which is probably a bad idea for you.
> +.IP \(bu
> +If your name service capacity is limited,
> +reloading may have the surprising effect of
> +increasing load on your name service instead of reducing it,
> +and may be a bad idea for you.
> +.IP \(bu
> +Setting
> +.B reload\-count
> +to
> +.B unlimited
> +is almost never a good idea,
> +as it will result in a cache that never expires entries
> +and puts never-ending additional load on the backing name service.
> +.PP
> +Some distributions have an init script for
> +.BR nscd (8)
> +with a
> +.I reload
> +command which uses
> +.I nscd\~-i
> +to purge the cache.
> +That use of the word "reload" is entirely different
> +from the "reloading" described here.
>   .SH SEE ALSO
>   .BR nscd (8)
>   .\" .SH AUTHOR
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
