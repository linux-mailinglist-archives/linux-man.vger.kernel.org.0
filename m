Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 825B42690AC
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 17:53:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726142AbgINPw7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 11:52:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726552AbgINPw1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 11:52:27 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F20EC06178A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 08:52:25 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id l15so6157974wmh.1
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 08:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kB2m/eLk/C/n07jS8/5Ty/4tOestl4MsXaaHV3aKmr4=;
        b=QTcX7gDwj+IxMMHjwrj/Ug0ScgSdAO06eJTLmRUDIBiHw4RYF5zNxIRt9niMaeTh90
         RTiewzCXcjzAKVEVpi1MDo2ZRNEziVx2bNKB6qYNRzRELTcvxL890SHx/iFov38lFcLG
         aNce4zGLVAnhJc5R5rPUDOf1vi4rkgLhI6Jssnh2Xt5c5WOqwBeMlE2yPp57NS+bBieZ
         kLoS8cJN29OHBqAvmKW5t+dQ8U6PfRF7p/a87Q5VNEF0Ou0Tod6cXOtMRIY8zO7b84Ob
         FOlxC7/C+s7f2+GLBUvLdmYPdMGGkqoAwUC+SQo9VL2WTek2bb+bIX10XgzlLyEMrlvH
         JwYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kB2m/eLk/C/n07jS8/5Ty/4tOestl4MsXaaHV3aKmr4=;
        b=k5XEBJQu81dn+GlnzeaSgQxt+qT3ya6/mW2wUmBf8/XGZdS8gnfzIUirP4ydymDamZ
         sgseFUO8v95xvSEAF2nLx2Wa89UzM23UZZzAD4Dmsh9m7MmCCFSfTRh99cmLG7L5tFpc
         w+ahzYEP8Qxe5HedGZZQw0oX4NMRqGNViqeF/d00zexy3+ma7gXqG04oTPAWQR/hOg+g
         FcGVLLg1/OuiRfwIPAR4ke0ZUbZcrCpZfUcQzbzR2xes/kmtkUCMUUM9vWJASjZQY/4U
         Y5Gjy1+ZVjOeZzc3nfjENbQsWorA16/XajfAIs2WnU8316J1C6iRd7eMDdEqlV5Nhcux
         wWlQ==
X-Gm-Message-State: AOAM532lPhH1FF9LxlglNWpqH2sDLqVKLUwcrbW7DZ6BKUEGW8BdWzkV
        jc8NLoYJtexWdzgYKdn9gEg=
X-Google-Smtp-Source: ABdhPJxYND8Z4b1RTImdifyvicPJ3EQL/4ldq+5Myz/SjSMB63Sg7FpPZ/5EDhzYPAV/Bm9tG4gyEA==
X-Received: by 2002:a1c:dec2:: with SMTP id v185mr40746wmg.1.1600098740380;
        Mon, 14 Sep 2020 08:52:20 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id h8sm20973088wrw.68.2020.09.14.08.52.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 08:52:19 -0700 (PDT)
Subject: Re: [RFC v2] system_data_types.7: Draft v2
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, fweimer@redhat.com,
        libbsd@lists.freedesktop.org, jwilk@jwilk.net
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200914140356.41476-1-colomar.6.4.3@gmail.com>
 <09c7993e-55a9-2916-f00a-2844441bc4b4@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <c87c65a9-af82-dc91-8792-ab3d2b2323d7@gmail.com>
Date:   Mon, 14 Sep 2020 17:52:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <09c7993e-55a9-2916-f00a-2844441bc4b4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 9/14/20 5:00 PM, Michael Kerrisk (man-pages) wrote:
> Small misunderstanding here, bu the way. I meant: after merging 
> the lists, sort by identifier name. Thus:
> 
> union sigval
> suseconds_t
> time_t
> timer_t
> struct timespec
> struct timeval

OK.

>> BTW, would you also add "struct-" and "union-" link pages?:
>>
>> man3/struct-timespec.3   |   1 +
>> man3/timespec.3          |   1 +
>>
>> instead of
>>
>> man3/timespec.3          |   1 +
> 
> I think just one link: the name of the type (without any
> "struct" or "union")

OK.

>> +.TP
>> +.BI "struct " timeval
>> +.IP
>> +Include:
>> +.I <sys/time.h>
> 
> or <sys/select.h>

True.

> (Really, a PDF copy of the standard is gpoing to help...)

I already have a login, and it works, but when I try to download the PDF
(just after accepting terms and conditions in downloads), another login
prompt appears and I can't log in that one.  I'll email them.

But for now I can live with the HTML version.

> 
>> +.IP
>> +.EX
>> +struct timeval {
>> +    time_t      tv_sec;  /* Seconds */
>> +    suseconds_t tv_usec; /* Microseconds */
>> +};
>> +.EE
>> +.IP
>> +Describes times in seconds and microseconds.
> 
> According to POSIX, this shall be a signed integer type.

???

> 
>> +.IP
>> +Conforming to: POSIX.1-xxxx and later.
>> +.IP
>> +See also:
> 
> I think there are several in the following list that should be removed...

Probably.  I'll have a look at them later.

> 
>> +.BR adjtimex (2),
>> [...]
>> +.BR socket (7)
>> +.TP
>> +.I suseconds_t
>> +.IP
>> +Include:
>> +.I <sys/types.h>
>> +.IP
>> +Used for time in microseconds.
>> +It shall be a signed integer type
> 
> s/It/According to POSIX, it/

As this type is POSIX-only, I thought it was redundant.  Don't you?

> 
>> +capable of storing values at least in the range [-1, 1000000].
>> +.IP
>> +Conforming to: POSIX.1-xxxx and later.>> +.IP
>> +See also:
>> +.\".BR getitimer (2),
>> +.\".BR gettimeofday (2),
>> +.\".BR select (2),
>> +.\".BR adjtime (3),
>> +.\".BR ntp_gettime (3),
>> +.BR timeval (3)
>> +.\".BR timeradd (3)
> 
> The above is a little too circular for my taste :-).

Maybe... I'll leave it commented, just in case some day the list is
splitted.

> 
> How about just saying: 
> 
> [[
> This type is used for one of the 
> fields of the timeval structure (see below).
> ]]

That's too long for my taste :)

How about?:

[[
See the timeval structure in this page.
]]

> 
>> +.TP
>> +.I time_t
>> +.IP
>> +Include:
>> +.I <time.h>
>> +or
>> +.I <sys/types.h>
>> +.IP
>> +Used for time in seconds.
>> +In POSIX, it shall be an integer type.
> 
> s/In/According to/

OK.

> 
>> +.IP
>> +Conforming to: C99 and later; POSIX.1-xxxx and later.
>> +.IP
>> +See also:
> 
> Many items in the following list should go...

Yes

> 
>> +.BR clock_getres (2),
>> [...]
>> +.BR timeradd (3)
>> +.TP
>> +.I timer_t
>> +.IP
>> +Include:
> 
> Add "<time.h> or"

POSIX says:

The <time.h> header shall define the clockid_t and timer_t types as
described in <sys/types.h>.

That pattern is used by POSIX (AFAIK; I only guessed it by reading many
of those) when the type is defined by inclusion of another header
(<time.h> includes <sys/types.h> I guess).

If I added every header that has a line like that, the lists of headers
would be much bigger for most of the types.  It could be good, but I
don't know if we should do it.  Maybe we should limit to the headers
that are required by CXX and the ones where the POSIX docs actually
document the type (this header doesn't define it, and instead it defers
to <sys//types.h> for example).

Your thoughts?

> 
>> +.I <sys/types.h>
>> +.IP
>> +Used for timer ID returned by timer_create().
>> +There are no defined comparison or assignment operators for this type.
> 
> Where is that mentioned in the standard, by the way?

https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/sys_types.h.html

DESCRIPTION:

[...]

There are no defined comparison or assignment operators for the
following types:

[...]

timer_t

> 
>> +.IP
>> +Conforming to: POSIX.1-xxxx and later.
>> +.IP
>> +See also:
>> +.BR timer_create (2),
>> +.BR timer_delete (2),
>> +.BR timer_getoverrun (2),
>> +.BR timer_settime (2)
>> +.TP
>> +.BI "union " sigval
>> +.IP
>> +Include:
>> +.I <signal.h>
>> +.IP
>> +.EX
>> +union sigval {
>> +    int     sigval_int; /* Integer value */
>> +    void   *sigval_ptr; /* Pointer value */
>> +};
>> +.EE
>> +.IP
>> +Data passed with notification.
> 
> s/notification/a signal/

OK.

> 
>> +.IP
>> +Conforming to: POSIX.1-xxxx and later.
>> +.IP
>> +See also:
>> +.BR rt_sigqueueinfo (2),
>> +.BR sigaction (2),
>> +.BR mq_notify (3),
>> +.BR pthread_sigqueue (3),
>> +.BR sigqueue (3),
>> +.BR sigevent (7)
> 
> Thanks,
> 
> Michael
> 
> 

Thanks,

Alex
