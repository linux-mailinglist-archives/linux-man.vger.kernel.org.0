Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C3BE2695AF
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 21:34:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725951AbgINTeK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 15:34:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725953AbgINTd6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 15:33:58 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25CA8C06174A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 12:33:58 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id m6so899468wrn.0
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 12:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=j2+fSSgwh97DOUH71JuqWBCn7BBRbOft9Plnfe3s9Q0=;
        b=D6Tpyd27cF0/izy9UF7CkFpXiBfBLbA7Z7ioSZPk4e0CzC4VXP/E8dP/zuSRJ4nvso
         N3Ah7fTDi6FH+deX7ga0Zt1iEhID4owQuuvxfIb6op0MrhO+H0Gxa1MU8P0JJZ3kCJDP
         YfYBOvCY2iFXxEJdt6+jHRR+8x7qgA8V1GzxcMmHM87gztBFGiOZYxD2ti8xRIFvbINZ
         cEPwMK+Yy36hbiKXlv5MMTIdR961ONUJjSNWH7vThGBkJXoETGO3b7vYjuB6MkrpXciA
         3sG7LvlLtIkkiz64Nl55YY6h88tZTbXkbnFU4lh0Kj6BsroUmA1Jt6d60bfUGc08rEOY
         eNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j2+fSSgwh97DOUH71JuqWBCn7BBRbOft9Plnfe3s9Q0=;
        b=OSpKKQ9JGjgx9GuRJzrWM4rMWFC+FXAkFrcZHSSsR5teZ3t5hCdKTb3RPwiwtVDhwN
         6XDh/zrrEKuIXWEyQW5geHiUc7XKDV6osExtmPSp5vv9mCSxTdNJ9juPAuoqMwS0S1js
         i6LTy0ioItuuQt2OXDHdPzyiHnhUPFtZCzeO7Upca46gpTS+Z3getb/vtv2fJy3nJb3f
         97c6E8f178FVw+fMnhHlLYngYE3yhCuEUUFZAJ0Vc9o+QUhprzTPtoO8yR4rTjFtnvAB
         E3CBusmFrY55+PFCdjDB5Jvgx7YEaVco3tyEdahJAodz025T7Xz+CPBpc3v0TCWuimdR
         4BPw==
X-Gm-Message-State: AOAM530YNtMp9yV9NF+dHfL4ZZ46xULLTrEZA/W9G0PYzq8LuaWtSiRc
        Ud4OmsjKNVaow5yGGaYmTMGTVbpEwDM=
X-Google-Smtp-Source: ABdhPJyK5m2aPdSbsasfCxM2jbiJazGGiTfHeQ1q2X+b4EClKuFBj28y8HlwGddsMZrb0NmHx/WSqw==
X-Received: by 2002:a5d:4ccc:: with SMTP id c12mr17311956wrt.160.1600112035783;
        Mon, 14 Sep 2020 12:33:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id p3sm19549958wmm.40.2020.09.14.12.33.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 12:33:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        fweimer@redhat.com, libbsd@lists.freedesktop.org, jwilk@jwilk.net
Subject: Re: [RFC v2] system_data_types.7: Draft v2
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200914140356.41476-1-colomar.6.4.3@gmail.com>
 <09c7993e-55a9-2916-f00a-2844441bc4b4@gmail.com>
 <c87c65a9-af82-dc91-8792-ab3d2b2323d7@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <64d8ce29-1727-4ce4-17ed-7fde3d6d6e18@gmail.com>
Date:   Mon, 14 Sep 2020 21:33:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c87c65a9-af82-dc91-8792-ab3d2b2323d7@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/14/20 5:52 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 9/14/20 5:00 PM, Michael Kerrisk (man-pages) wrote:
>> Small misunderstanding here, bu the way. I meant: after merging 
>> the lists, sort by identifier name. Thus:
>>
>> union sigval
>> suseconds_t
>> time_t
>> timer_t
>> struct timespec
>> struct timeval
> 
> OK.

As I think about more, maybe the list of type keywords could even
omit 'struct' and 'union', since the struct/union definition will be shown
in the following text. Your thoughts?

[...]

>>> +.IP
>>> +.EX
>>> +struct timeval {
>>> +    time_t      tv_sec;  /* Seconds */
>>> +    suseconds_t tv_usec; /* Microseconds */
>>> +};
>>> +.EE
>>> +.IP
>>> +Describes times in seconds and microseconds.
>>
>> According to POSIX, this shall be a signed integer type.
> 
> ???

Ooops -- I think I misplaced that sentence. It related to suseconds_t.

[...]

>>> +.BR adjtimex (2),
>>> [...]
>>> +.BR socket (7)
>>> +.TP
>>> +.I suseconds_t
>>> +.IP
>>> +Include:
>>> +.I <sys/types.h>
>>> +.IP
>>> +Used for time in microseconds.
>>> +It shall be a signed integer type
>>
>> s/It/According to POSIX, it/
> 
> As this type is POSIX-only, I thought it was redundant.  Don't you?

I think it's clearer to be explicit. Otherwise, the reader has to do
some deductive work.

>>> +capable of storing values at least in the range [-1, 1000000].
>>> +.IP
>>> +Conforming to: POSIX.1-xxxx and later.>> +.IP
>>> +See also:
>>> +.\".BR getitimer (2),
>>> +.\".BR gettimeofday (2),
>>> +.\".BR select (2),
>>> +.\".BR adjtime (3),
>>> +.\".BR ntp_gettime (3),
>>> +.BR timeval (3)
>>> +.\".BR timeradd (3)
>>
>> The above is a little too circular for my taste :-).
> 
> Maybe... I'll leave it commented, just in case some day the list is
> splitted.
> 
>>
>> How about just saying: 
>>
>> [[
>> This type is used for one of the 
>> fields of the timeval structure (see below).
>> ]]
> 
> That's too long for my taste :)
> 
> How about?:
> 
> [[
> See the timeval structure in this page.
> ]]

Vale.

[...]

>>> +.BR clock_getres (2),
>>> [...]
>>> +.BR timeradd (3)
>>> +.TP
>>> +.I timer_t
>>> +.IP
>>> +Include:
>>
>> Add "<time.h> or"
> 
> POSIX says:
> 
> The <time.h> header shall define the clockid_t and timer_t types as
> described in <sys/types.h>.
> 
> That pattern is used by POSIX (AFAIK; I only guessed it by reading many
> of those) when the type is defined by inclusion of another header
> (<time.h> includes <sys/types.h> I guess).
> 
> If I added every header that has a line like that, the lists of headers
> would be much bigger for most of the types.  It could be good, but I
> don't know if we should do it.  Maybe we should limit to the headers
> that are required by CXX and the ones where the POSIX docs actually
> document the type (this header doesn't define it, and instead it defers
> to <sys//types.h> for example).
> 
> Your thoughts?

I think the list would not be so long. Maybe two headers sometimes,
occasionally three, but I doubt more. At least right now, I think we
should do it; I may yet be shown the error of my ways :-).


>>> +.I <sys/types.h>
>>> +.IP
>>> +Used for timer ID returned by timer_create().
>>> +There are no defined comparison or assignment operators for this type.
>>
>> Where is that mentioned in the standard, by the way?
> 
> https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/sys_types.h.html
> 
> DESCRIPTION:
> 
> [...]
> 
> There are no defined comparison or assignment operators for the
> following types:
> 
> [...]
> 
> timer_t

Thanks. It's good that you included that sentence in the man page.

[...]

Good progress so far. Thanks, Alex!

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
