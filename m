Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 425643E2926
	for <lists+linux-man@lfdr.de>; Fri,  6 Aug 2021 13:11:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232832AbhHFLLm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Aug 2021 07:11:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232403AbhHFLLm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Aug 2021 07:11:42 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B5CCC061798
        for <linux-man@vger.kernel.org>; Fri,  6 Aug 2021 04:11:26 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id c16so10565235wrp.13
        for <linux-man@vger.kernel.org>; Fri, 06 Aug 2021 04:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SeA8kdlnhVqv/gqyb6RaQGkka+jd06XKboNZbDF/uKo=;
        b=X8FT7tzP/AMNrpbs8tATmli92WuEsJMLGCLyftuFTQRY4QbMQyy8HZraVmFzzs+3l3
         +P+qFgdizZGbiag7Om/9C5/DCijFoLeAOVOxqykcyoJElFlIKxNboFozPOiQDIhABSte
         iz6MumGv45chpztdcYLuaVBr8UsGHXc3kuz/I2YXFATBN0jdkwaHzknIS7d7JU59TnGw
         vAbjYT0wpb1cosz6TyXoR+QY+f1gpoy/cRb9UX64Hy7+9/dNrdUdlWS238sUQnZPjwEg
         3pnxID1GYTSC3DyJ/T1MwDWYvpWMt4gXmLjJI9WfOPaR44HWFaIRhhLvXdYPYLegX/bL
         nlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SeA8kdlnhVqv/gqyb6RaQGkka+jd06XKboNZbDF/uKo=;
        b=dfhTqwshG3NxOuUC7wFeDvNZFR9hDsnQ4LabkaOz2psKpN6fft1LjffrY2RxI9ZxgL
         xaTzVZBU6QP4AfmdgBdJKbdYHlYI16jZb+KZr/cMfYV3PAwe0S7+975SgG/qbyca9KdD
         5Y1oqrIaAxTrZtUZdDOHATj5Ms84cNg7WfzJBgN7og6zwObtjcaB4wn1WDo+AMEDAeyN
         EV8sJOyFk6el+qsdMXohC5aLsc6hL/r/LBLWMx9scYVyobPa6IsZUj1TChlx8fLK5Sv4
         Y2skHyQJt0r+S1YOzUymruTETdboFooUld1VfD4WU8oOieI+EjS9gFjuy5qqIDyE+uEC
         vkCQ==
X-Gm-Message-State: AOAM531QI8jSgaZAjfYBTsyB89VZCgJvpgGQwzxAgHegc5B0Py6O/dMo
        4AEY8nSDoFA5WMrgO6o+iib8ViOvyos=
X-Google-Smtp-Source: ABdhPJwh74+QcPaIs1dle37MJYJWPhJlNkrkhEXuHki3vYblP0PH0FGaB8abxBMMyqNFD61I4JPW7w==
X-Received: by 2002:adf:ed82:: with SMTP id c2mr10298011wro.19.1628248285196;
        Fri, 06 Aug 2021 04:11:25 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w4sm9548852wrm.24.2021.08.06.04.11.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 04:11:24 -0700 (PDT)
Subject: Re: nscd.conf.5: describe reloading, clarifications, v4
To:     Greg Banks <gbanks@linkedin.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        DJ Delorie <dj@redhat.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <BL0PR2101MB13169E7F7783D74DE828D83EA1F29@BL0PR2101MB1316.namprd21.prod.outlook.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <10b8d641-67d7-21d0-45ab-9d5f7b11028f@gmail.com>
Date:   Fri, 6 Aug 2021 13:11:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <BL0PR2101MB13169E7F7783D74DE828D83EA1F29@BL0PR2101MB1316.namprd21.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Greg,

On 8/6/21 12:10 AM, Greg Banks wrote:
> The following changes since commit fbe71b1b79e72be3b9afc44b5d479e7fd84b598a:
> 
>    ioctl_tty.2: wfix (2021-07-26 01:31:54 +0200)
> 
> are available in the Git repository at:
> 
>    git@github.com:gnb/man-pages.git nscd.conf.5.v4
> 
> for you to fetch changes up to 2cb4e042b6aee518f1673d8897fd06056bd87767:
> 
>    nscd.conf.5: describe reloading, clarifications, v4 (2021-08-05 15:07:20 -0700)

Thanks for the research and the patch!

Please see some comments below.

Thanks,

Alex

> 
> ----------------------------------------------------------------
> Greg Banks (1):
>        nscd.conf.5: describe reloading, clarifications, v4
> 
>   man5/nscd.conf.5 | 112 +++++++++++++++++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 109 insertions(+), 3 deletions(-)
> 
> diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
> index 7356bf7c2..9635922fd 100644
> --- a/man5/nscd.conf.5
> +++ b/man5/nscd.conf.5
> @@ -1,5 +1,6 @@
>   .\" Copyright (c) 1999, 2000 SuSE GmbH Nuernberg, Germany
>   .\" Author: Thorsten Kukuk <kukuk@suse.de>
> +.\" Updates: Greg Banks <gbanks@linkedin.com> Copyright (c) 2021 Microsoft Corp.
>   .\"
>   .\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
>   .\" This program is free software; you can redistribute it and/or
> @@ -53,9 +54,12 @@ The default is 0.
>   .B threads
>   .I number
>   .RS
> -This is the number of threads that are started to wait for
> +This is the initial number of threads that are started to wait for
>   requests.
>   At least five threads will always be created.
> +The number of threads may increase dynamically up to
> +.B max\-threads
> +in response to demand from clients, but never decreases.
>   .RE
>   .PP
>   .B max\-threads
> @@ -83,9 +87,20 @@ Specifies the user who is allowed to request statistics.
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

Only decimal or hexadecimal?

 From what you say above that values greater than 255 behave 
equivalently to 255, and also this, I suspect this is being parsed with 
strtoul(), and they also accept octal with 0... notation.

Also, I guess this behavior is common to all numeric values, so maybe 
it's a better idea to put it in a common paragraph (if you know for sure 
that this is the case).

> +The special value
> +.B unlimited
> +is case-insensitive.
> +The default limit is 5.
> +A limit of 0 turns off the reloading feature.
> +See NOTES below for further discussion of reloading.

Apart from the comment above, I applied some minor formatting fixes to 
your text (see below; whitespace, punctuation, and a typo); could you 
include them in your next revision?

Thanks,

Alex


diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
index 9635922fd..7534b77e6 100644
--- a/man5/nscd.conf.5
+++ b/man5/nscd.conf.5
@@ -59,7 +59,8 @@ requests.
  At least five threads will always be created.
  The number of threads may increase dynamically up to
  .B max\-threads
-in response to demand from clients, but never decreases.
+in response to demand from clients,
+but never decreases.
  .RE
  .PP
  .B max\-threads
@@ -259,7 +260,8 @@ The default values used in the configuration file of
  your distribution might differ.
  .SS Reloading
  .BR nscd (8)
-has a feature called reloading whose behavior can be surprising.
+has a feature called reloading,
+whose behavior can be surprising.
  .PP
  Reloading is enabled when the
  .B reload-count
@@ -270,10 +272,11 @@ although your distribution may differ.
  When reloading is enabled,
  positive cached entries (the results of successful queries)
  do not simply expire when their TTL is up.
-Instead, at the expiry time
+Instead, at the expiry time,
  .B nscd
  will "reload",
-i.e., re-issue to the name service the same query that created the 
cached entry,
+i.e.,
+re-issue to the name service the same query that created the cached entry,
  to get a new value to cache.
  Depending on
  .I /etc/nsswitch.conf
@@ -284,20 +287,20 @@ until
  .B reload-count
  reloads have happened for the entry,
  and only then will it actually be removed from the cache.
-A request from a client which hits the entry will reset the
-reload counter on the entry.
+A request from a client which hits the entry will
+reset the reload counter on the entry.
  Purging the cache using
  .I nscd\~-i
  overrides the reload logic and removes the entry.
  .PP
-Reloading has the effect of extending cache entry TTLs without
-compromising on cache coherency,
+Reloading has the effect of extending cache entry TTLs
+without compromising on cache coherency,
  at the cost of additional load on the backing name service.
  Whether this is a good idea on your system depends on
  details of your applications' behavior,
  your name service,
  and the effective TTL values of your cache entries.
  Note that for some name services
  (for example, DNS),
  the effective TTL is the value returned from the name service and
  .I not
@@ -308,7 +311,7 @@ attribute.
  Please consider the following advice carefully:
  .IP \(bu
  If your application will make a second request for the same name,
-after more then 1 TTL but before
+after more than 1 TTL but before
  .B reload\-count
  TTLs,
  and is sensitive to the latency of a cache miss,
@@ -330,8 +333,8 @@ Setting
  to
  .B unlimited
  is almost never a good idea,
-as it will result in a cache that never expires entries and puts 
never-ending
-additional load on the backing name service.
+as it will result in a cache that never expires entries
+and puts never-ending additional load on the backing name service.
  .PP
  Some distributions have an init script for
  .BR nscd (8)


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
