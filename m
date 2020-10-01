Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C75D27FE72
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:33:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731893AbgJALdE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:33:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731692AbgJALdE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:33:04 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDA8AC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:33:03 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id x23so2530924wmi.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=O4HWdMKStYcaV7oIvMg3PCC9Lm25klzb3llW7PO5uVU=;
        b=mB5ortVds//qhmX5D5sq6rxz2kGDPc7kVfrfJB4vvG4fVM//ow+HYtSYkk2bCpmnuR
         O3N7huItxNSSc1nnd78znT9OyGrYtKDJAKf9TlvCDLpMrDF91BrfVoHaQzIsWZ5xLAZI
         IZlHt5U7LXRPJ8+1cm5kq9EclHb4YiuZgY+iC1BJyCznXoikrJdiWBrjx8mS0cjH0f0i
         b15FFQhaS2f1F4ytEhEWnHQjZ7gXxSr6GXp7ys0wpgm+Aknuw4K98gzFObzYSs/ltFRt
         Oqawvb5FxKgPwCzrpM/TZl0o2KnO6P1Y7LKMQZOQBvtwfPon9VEckjXiTw4b+lz4fvUc
         aZbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=O4HWdMKStYcaV7oIvMg3PCC9Lm25klzb3llW7PO5uVU=;
        b=AT+ihvrdHxkX/x28Q1zWlbV1zYDL6WRs6zNzNG/TYrB5imGv19EfCnyF3Eei2qMJY8
         7pxIpAJxXmtc27C/U4ZV3MgIm0XpN37Wevn8IpGkumj8rzbyCFbNykRdEq3pt4kkQJNQ
         t1Rd6/DpnJsUYkeXP7YOMB8egNMYSxFSCOXEZalg7YrH7dPHYK+SD3wTqfUZrkcg2RpP
         hwYyEoT35m01cDZXOZTt/QQarv1+uldzp8M35F4upbNBAAo8MqRIJIE5IPWW1uh3FskP
         u9EVnfb7tvVvb4eszn/zyRput+boIrPBcKHI9wTQ4a/pfJZbAh125NOe6EX55ME79cX2
         QQJA==
X-Gm-Message-State: AOAM5317C8tqRJ3tHgyLPzk6MUTdX7I2Lwwy2LXEnAPettNV/kt7eg1y
        OgGyEvGBZHRxNJE+5AvHVW4=
X-Google-Smtp-Source: ABdhPJxmlps2Meaaf6/5zhhs395c0/QUb/KSHvYbPoC0KiXz3bi03BgBaCvFY7rOJ5yKLVZVgUoNwQ==
X-Received: by 2002:a05:600c:220f:: with SMTP id z15mr7807256wml.87.1601551982347;
        Thu, 01 Oct 2020 04:33:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id h16sm9027405wre.87.2020.10.01.04.33.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:33:01 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 02/16] system_data_types.7: srcfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <56f05482-abd4-785a-aa63-44e4a271a1b6@gmail.com>
Date:   Thu, 1 Oct 2020 13:33:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001101559.77163-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/1/20 12:15 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

I don't mind applying this patch (and I have done so),
but I think patches like this need a brief commit message 
to explain why you are making the change.

Thanks,

Michael

> ---
>  man7/system_data_types.7 | 105 ++++++++++++++++++++++++++-------------
>  1 file changed, 70 insertions(+), 35 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 9cf67ee6f..a653a7b11 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -71,7 +71,8 @@ struct aiocb {
>  For further information about this structure, see
>  .BR aio (7).
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR aio_cancel (3),
> @@ -102,7 +103,8 @@ It is the type of the value returned by the
>  .BR div (3)
>  function.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR div (3)
> @@ -143,7 +145,8 @@ the type of
>  .I double_t
>  is implementation-defined.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also the
>  .I float_t
> @@ -161,7 +164,8 @@ This type represents the entire floating-point environment,
>  including control modes and status flags; for further details, see
>  .BR fenv (3).
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR fenv (3)
> @@ -178,7 +182,8 @@ This type represents the floating-point status flags collectively;
>  for further details see
>  .BR fenv (3).
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR fenv (3)
> @@ -195,7 +200,8 @@ Alternatively,
>  .PP
>  An object type used for streams.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR fclose (3),
> @@ -243,7 +249,8 @@ the type of
>  .I float_t
>  is implementation-defined.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also the
>  .I double_t
> @@ -270,7 +277,8 @@ A type used to hold group IDs.
>  According to POSIX,
>  this shall be an integer type.
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR chown (2),
> @@ -299,7 +307,8 @@ this shall be an integer type that can be used to contain a
>  or
>  .IR gid_t .
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR getpriority (2),
> @@ -324,7 +333,8 @@ It is the type of the value returned by the
>  .BR imaxdiv (3)
>  function.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR imaxdiv (3)
> @@ -379,7 +389,8 @@ is defined and
>  .I long long
>  is less than 128 bits wide.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also the
>  .I uintmax_t
> @@ -453,7 +464,8 @@ for scanning
>  .I int8_t
>  values.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also the
>  .IR __int128 ,
> @@ -505,7 +517,8 @@ Contains members related to the formatting of numeric values.
>  In the "C" locale, its members have the values
>  shown in the comments above.
>  .PP
> -Conforming to: C11 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C11 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR setlocale (3),
> @@ -532,7 +545,8 @@ It is the type of the value returned by the
>  .BR ldiv (3)
>  function.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR ldiv (3)
> @@ -556,7 +570,8 @@ It is the type of the value returned by the
>  .BR lldiv (3)
>  function.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR lldiv (3)
> @@ -591,7 +606,8 @@ where the width of
>  is no greater than the width of the type
>  .IR long .
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR fork (2),
> @@ -638,7 +654,8 @@ for printing
>  .I ptrdiff_t
>  values.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also the
>  .I size_t
> @@ -666,7 +683,8 @@ typedef struct {
>  .PP
>  This is a structure type used in regular expression matching.
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR regexec (3)
> @@ -686,9 +704,11 @@ type or a
>  .I ssize_t
>  type.
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
> -Notes: Prior to POSIX.1-2008, the type was capable of storing
> +Notes:
> +Prior to POSIX.1-2008, the type was capable of storing
>  the largest value that can be stored in either an
>  .I off_t
>  type or a
> @@ -731,7 +751,8 @@ struct sigevent {
>  For further details about this type, see
>  .BR sigevent (7).
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  Notes:
>  .I <aio.h>
> @@ -778,7 +799,8 @@ For further details on this structure
>  (including additional, Linux-specific fields), see
>  .BR sigaction (2).
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR pidfd_send_signal (2),
> @@ -802,7 +824,8 @@ or
>  This is a type that represents a set of signals.
>  According to POSIX, this shall be an integer or structure type.
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR epoll_pwait (2),
> @@ -833,7 +856,8 @@ union sigval {
>  .PP
>  Data passed with a signal.
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR pthread_sigqueue (3),
> @@ -915,7 +939,8 @@ for printing
>  .I size_t
>  values.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  Notes:
>  .IR <aio.h> ,
> @@ -1002,7 +1027,8 @@ by converting the value to
>  and using its length modifier
>  .RB ( j ).
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR read (2),
> @@ -1039,7 +1065,8 @@ where the width of
>  is no greater than the width of the type
>  .IR long .
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also the
>  .I timeval
> @@ -1068,7 +1095,8 @@ or
>  Used for time in seconds.
>  According to POSIX, it shall be an integer type.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  Notes:
>  .I <sched.h>
> @@ -1097,7 +1125,8 @@ Used for timer ID returned by
>  According to POSIX,
>  there are no defined comparison or assignment operators for this type.
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR timer_create (2),
> @@ -1130,7 +1159,8 @@ struct timespec {
>  .PP
>  Describes times in seconds and nanoseconds.
>  .PP
> -Conforming to: C11 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C11 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR clock_gettime (2),
> @@ -1161,7 +1191,8 @@ struct timeval {
>  .PP
>  Describes times in seconds and microseconds.
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR gettimeofday (2),
> @@ -1191,7 +1222,8 @@ A type used to hold user IDs.
>  According to POSIX,
>  this shall be an integer type.
>  .PP
> -Conforming to: POSIX.1-2001 and later.
> +Conforming to:
> +POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR chown (2),
> @@ -1250,7 +1282,8 @@ is defined and
>  .I unsigned long long
>  is less than 128 bits wide.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also the
>  .I intmax_t
> @@ -1327,7 +1360,8 @@ for scanning
>  .I uint16_t
>  values.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also the
>  .IR __int128 ,
> @@ -1361,7 +1395,8 @@ and
>  .BR va_end (3)
>  to traverse the list of arguments.
>  .PP
> -Conforming to: C99 and later; POSIX.1-2001 and later.
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
>  .PP
>  See also:
>  .BR va_start (3),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
