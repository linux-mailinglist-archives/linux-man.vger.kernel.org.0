Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED02F430B59
	for <lists+linux-man@lfdr.de>; Sun, 17 Oct 2021 20:02:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231655AbhJQSER (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Oct 2021 14:04:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230463AbhJQSEQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Oct 2021 14:04:16 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE8FC06161C
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 11:02:06 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id u8-20020a05600c440800b0030d90076dabso4643506wmn.1
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 11:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FXgpZTk9U5WNXpFIHXmnCCXHXeCoKvGr6qD/dcVIZy4=;
        b=TULitL6avKoTMGVE3h0JDB8dTkx4Ws5sDRAzp6AIyab1EzvgWngtsJ4bx21Y8sjw11
         duZfqEyWmCJTZQDW2Pvsi/00mqUl/m9mnXE2c2nau/JKqIZv33gkAGkHkn+N7wwx9Zsu
         0TPrztTn2o5lID5ce3TBlieXNEpb5Vwc0XlPMzBRVH7fRcDSSZz2pcwRiB78aL7xtbE4
         wLih1NZp3anlHbdXSd+lSk6Cnb0t3qN0amkryMA2CGmk91/gmmQjVijAGI0Mh4IOHq81
         Tn7q5AJ1MQlYpSBUFBfTBqYjqHy4Qr3SrY89jfGqCOb1H49JNcfTOzyfjWU9FeUzYcRS
         GL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FXgpZTk9U5WNXpFIHXmnCCXHXeCoKvGr6qD/dcVIZy4=;
        b=KsULxH7k1/oQx6M1hJPLtmuA0G2JcKfNqHhplLghwpydjP2Z9XEMCDybY0KYMKH3dT
         BixJAcng/pCIcs0rgg6u5nc/BM5Xi8ipezW0FNR7dCwjExa9tIAdJ9+Ojl6AFmUOV+BG
         HOJ/ypaLzOOmlWDQLhnOlhxpowk3jhaXpJfAh3W9xXVkShXjIGTiOY8UFBFchPZyy70C
         13K5XetN8yvu8yTm00QVK0YvIllrXbyATrPBaK2/aqtjAYNdkaTCA8Rdz7Y4EY8p3PO6
         sTLjzRggZ2K3ItSu/qG1SIhhCDtcfFdV2A+IzqLX717gPrZYX5dCRJ1uTypzDJUlM5Ua
         hdsA==
X-Gm-Message-State: AOAM531N8LkidW7MxKa7o39UPMZUicFcKjDp7D1cxELMNl9b+ZyjCmaN
        J/haVWFHqoGNSSoCycaxNainE7KJ+S8=
X-Google-Smtp-Source: ABdhPJykAirNEVUBJJPB9dMuwiSrMtXEHURJHC6zq8sMbi2ymHSSdvam8KmNANfYwVn5IjDxdiBdtQ==
X-Received: by 2002:a1c:9d97:: with SMTP id g145mr25409705wme.78.1634493725209;
        Sun, 17 Oct 2021 11:02:05 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l2sm17193734wmi.1.2021.10.17.11.02.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Oct 2021 11:02:04 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] timegm.3: Remove recommendation against use of
 timegm()
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     libc-alpha@sourceware.org, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <20211011111237.9414-2-alx.manpages@gmail.com>
 <15d7b96d-13d0-86c1-48f3-24a637ab8e30@cs.ucla.edu>
 <e46d9e6b-c2c8-66e3-6b18-f24ef718f59f@gmail.com>
 <38fa4e31-f70d-f3f3-e964-b4831b750271@cs.ucla.edu>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <532c26f8-25e4-699a-49be-a3368a6ea84d@gmail.com>
Date:   Sun, 17 Oct 2021 20:02:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <38fa4e31-f70d-f3f3-e964-b4831b750271@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 10/16/21 2:20 AM, Paul Eggert wrote:
> On 10/15/21 3:03 PM, Alejandro Colomar (man-pages) wrote:
> 
>> Actually, since timegm(3) is implemented in terms of mktime(3), as far 
>> as I could read from glibc code, the problem will be the same, I think.
> 
> No, because another thread could setenv ("TZ", ...) between the time 
> that you call mktime and the time you look at the 'timezone' variable. 
> So even though mktime itself is thread-safe, the expression 'mktime(tm) 
> - timezone' is not.

Yes, there are probably many bugs in that sample code I wrote, which 
glibc solves in its timegm(3) implementation.  That probably gives more 
force to the original point: timegm(3) is the only non-error-prone 
solution in glibc for using UTC times, so it should not be marked as 
"avoid using".  The standards should get a function that does that, be 
it timegm(), mktime_z(), or both.

Just for curiosity, I'm not sure about this, but from what I've seen, 
the only lock in glibc is in gmtime(), which is called repeatedly from 
within mktime().  If another thread calls setenv("TZ"...) in between one 
of those calls, wouldn't it produce the same problems?

> 
>> But timegm(3) shouldn't need to depend on environment variables.
> 
> It does depend, if leap seconds are involved.

Okay.  (I don't know too much about those.)

> 
>>> and the subtraction might overflow.
>>
>> Yup, casting to int64_t needed.
> 
> That would help, but it still wouldn't suffice. It'd mishandle -1 
> returns, for example.

Ahh, yes.

> Plus, we're better of not putting today's hardware 
> assumptions into code (suppose int is 64 bits in future machines?).
> 
>> BTW, I had a look at mktime source code, and it uses long, which might 
>> be 32 bits, and then there's a lot of checking for overflow.
> 
> mktime uses long_int, which is not necessarily 'long'. And no matter 
> what type you pick, it could overflow on some platform, even if it's an 
> only-hypothetical platform now.

I think that's not a problem for the following reasons:

- int is unlikely to be >32 bits.  If so, we would miss one of the 
"conventional" types: int8_t, int16_t, int32_t couldn't map to 
fundamental types, unless we add a new type (short short int?), which is 
also unlikely because scanf() already uses %hhi for signed char.  I 
think it's more likely to see something like 'long long long int'.

- The current types can already handle 128-bit archs (just use the same 
mapping as in amd64 and change long long int to be int128_t), so maybe 
we'll need the triple long when we get to 256-bit archs.  Very 
hypothetically, that is.

- Even if int ever happened to be 64 bit, this problem would still be 
something very theoretical, since INT64_MAX is way greater than the age 
of the universe, and many orders of magnitude greater than the expected 
lifespan of the sun, and therefore the concept of leap years, months, 
ydays, wdays, and so on will be meaningless for such values.  How many 
seconds since the Epoch will have happened the 2nd March of the year 
that the Milky Way collides with Andromeda, at 11:30?  I think the 
correct answer to that question should be undefined behavior; or an 
error if you want to be nice.

So I wouldn't care for now, and maybe just add some initial check such as:

if (tm->tm_year > SOME_ARBITRARY_HUGE_VALUE || tm->tm_mon > 
SOME_ARBITRARY_HUGE_VALUE || ...) {
	errno = EOVERFLOW;
	return -1;
}

and then go on.


Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
