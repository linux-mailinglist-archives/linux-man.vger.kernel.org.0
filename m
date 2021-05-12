Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF7D637EFB4
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 01:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230308AbhELXWf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 May 2021 19:22:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349406AbhELWdZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 May 2021 18:33:25 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34460C061760
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 15:32:14 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id p14-20020a05600c358eb029015c01f207d7so3772286wmq.5
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 15:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9y2hInGxzegT4svP4CDRVqYYVpPndff7NkVXSp9EOhc=;
        b=ghp+Di+sf13MP97KHvry8961xfS4kunS93n/oXe0WtO+Rurf94h3ChGZpZ4x69ksm0
         KgVXjUEAMw1vTWTs58HIHqhKKJzo/8Gs+HNtVtB++ba4YN4u21Fc9HZxSlt72LEjcPan
         aOa/tuDneDLX7CFaxZuHHfTm7/DOGqaSZuiH30UKCST4nVaOVBtTGEG77BIyxNfn0KYR
         pmG5gUM6HNAsNe09GDjZkw4F0d+MXPWug5OEaW578TLLSUqFduVVJNNLsFbYBA249/6J
         7co3I6zEWw1vyfDetz+GfiJJ/Zk9/zffP3zVfcnKG4kzjmv9Bhs1nTYYWufI36STbSia
         uWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9y2hInGxzegT4svP4CDRVqYYVpPndff7NkVXSp9EOhc=;
        b=A0vPYV6s4PX9AJCW1cGm2Lhf2dGNSJmwJQvYH/ly8kZA6HqwPIxbcl6qGA7ds2vyXO
         9zdEEeIloJrZH9BzeOqXywr6w0GjVaUSSDePATqI0WFljIN2Or5JgzT21f4nPiX672ko
         BZOaxS6MuQA/oVJjklqWDXh6odflLb6+l0FSnjHfsAn/4AeBTVDz9tPZvpQQe0Me0egG
         vMUR9dkPUY24crlDt88SeJYZwML3MSipdyTW+PD5roG+CotgvkGOPcZJQ8HjB16T1zjv
         pwnIP4nerH9s4H//IGVN9UUV9a3wNathyfWI3iVoMQqYuBYV7wW0eU8PxNoO+Eie+gnD
         kVhQ==
X-Gm-Message-State: AOAM532u0N9rwCP634VdX94Sl5EpAOIg6ddDQiIa93tOAslTktdFp3ZQ
        URCXvhyW6/eh/AP3PR28ThY=
X-Google-Smtp-Source: ABdhPJw+M8ZfzieJYT6GLANohYCkHhYXvtcdf0VW73RBztLRJ+5rROzgx6ZahSx+csDEtyfi3F/z7w==
X-Received: by 2002:a05:600c:28b:: with SMTP id 11mr719529wmk.27.1620858733011;
        Wed, 12 May 2021 15:32:13 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y17sm1115876wrw.90.2021.05.12.15.32.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 15:32:12 -0700 (PDT)
Subject: Re: [PATCH] MAX.3, MIN.3: New page (and link page) to document MAX()
 and MIN()
To:     Paul Eggert <eggert@cs.ucla.edu>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210512204311.19399-1-alx.manpages@gmail.com>
 <ca33b912-2273-b1d0-57b8-b94a19822bfd@cs.ucla.edu>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b09b67a5-2006-62b7-13fc-1930b34e848b@gmail.com>
Date:   Thu, 13 May 2021 00:32:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <ca33b912-2273-b1d0-57b8-b94a19822bfd@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Paul,

On 5/12/21 11:17 PM, Paul Eggert wrote:
> On 5/12/21 1:43 PM, Alejandro Colomar via Libc-alpha wrote:
> 
>> +If any of the arguments is of a floating-point type,
> 
> "any" -> "either"

Okay.  I thought that either meant XOR, but now I learnt it may also be OR.

> 
>> +these macros shouldn't be used
> 
> That's too strong. It's often OK to use MAX and MIN on floating point
> arguments.

Yup, I changed it a few minutes later.

> 
>> +The arguments may be evaluated more than once,
>> +and their types might be promoted to a common type
>> +if both arguments aren't of the same type.
> 
> This is muddy. It should state clearly that even if A and B are both
> integers, MAX (a, b) might not return their maximum. For example, on a
> typical C platform today, MAX (-1, 2147483648) returns 4294967295 and
> MIN (-1, 2147483648) returns 2147483648.

Hmm, yes, I'll add a BUGS section for this.  Usual arithmetic
conversions and why you should avoid them :)

> 
> Also, the man page shouldn't require the arguments to be evaluated at
> least once. It's possible to implement MAX so that it sometimes doesn't
> evaluate one argument, and the documentation shouldn't preclude such an
> implementation.

In which case they might not be evaluated at all?  I'm curious.
Maybe if one of the arguments is literal NAN and the implementation
raises an exception for it?

> 
> The man page should more specifically mention that although MIN and MAX
> are defined <sys/param.h> on GNU platforms, other platforms define them
> elsewhere or not at all.

Okay.

> 
>> +These macros return the value of one of their arguments,
> 
> Unfortunately they don't necessarily do that, as shown in the MAX
> example above.

Fixed.

> 
> I suggest looking at the remarks about MAX and MIN that are made here,
> and incorporating the useful parts of these remarks into the man page:
> 
> https://git.savannah.gnu.org/cgit/gnulib.git/tree/lib/minmax.h
> 

Okay.

Thank you very much!

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
