Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0E80281F55
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 01:44:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725379AbgJBXoj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 19:44:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725554AbgJBXoi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 19:44:38 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 731C1C0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 16:44:38 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id j136so3295046wmj.2
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 16:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+JoIdcbY98ViLUA523Kk7PRiBhSdBpniG0/GR6tV1Lo=;
        b=AzkXbQ7yghtpuTzQ1+4ZcFbH6ds3mqYMIuzLOG00AJM0tiIPti4F7dTIgAdaCVBa29
         8FQyPgTepMcVInbfDeb4DlifV8HEYZ3t73tJ9eNEJHPncYGoQYu++GmRNLHBbxLmjj9K
         /inDMpzVkBENT4E6OtVc8O5kthSgk1R/uEjsov+0D/FusywHcUm1AXltjLdckielfDpE
         +KhTsB9Anppv+4y0WuJOCUrCZ5vwpw5QvgRrY9o6MdvBNYjJtdKV+xmAZemluVyKCt9h
         IIiusxF6lX5ZQYbl8ai61vEoVNeg5liE+gjgYuAEeU6jZyJA7GoSwRUP1/W/x3Matpkv
         UmYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+JoIdcbY98ViLUA523Kk7PRiBhSdBpniG0/GR6tV1Lo=;
        b=jt6zGbxj/2bTOMHQfeoCwW60yoWeKq6sxUzNLj6J4mfJRDJtpy6QMVZ6r44/21wvcW
         5j8ihbHVQb948LERjrUiFjZme25dPXdP4tfG2NCMUQSdrHFl1tCtEdmoM6ineXkLjvuY
         E8pfHpHRSUFYImlszExNPrImf+4RleDzzRQBVzLxS+QQlyYB9gvQ7QqfPCZSSbxnGVd7
         /3UJiTMd41hEUY6A1Ec10yS8bPkr3AamrFcWz455tMihSAWLZVM/7qn210F61LB6g9Jy
         BK3pYf2fBzZM+oHhe7uxumO4yRvOKTG673gWnPMpm0aSiW+9g44PJB77cvMfFmHHE6rS
         GL5A==
X-Gm-Message-State: AOAM532Wpt/Llg2Dx9GU93d1oVgPAD5Ka00joaSP1CducUbIZq8LCytP
        fgS4AlR9NM+YUDJFmDaVn3A=
X-Google-Smtp-Source: ABdhPJytOEZ8r7tR6OT+5kyDg10YrvEXQ6rfJvQjkp/h3jf50rkJJJn73KwYYUhnzdcn+/pa5B3bHg==
X-Received: by 2002:a7b:cf27:: with SMTP id m7mr5185367wmg.74.1601682277180;
        Fri, 02 Oct 2020 16:44:37 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v4sm3247646wmg.35.2020.10.02.16.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 16:44:36 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: Re: [PATCH 1/4] system_data_types.7: Add '__int128'
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Florian Weimer <fweimer@redhat.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        mtk.manpages@gmail.com
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
 <20201001163443.106933-2-colomar.6.4.3@gmail.com>
 <87eemg97ew.fsf@oldenburg2.str.redhat.com>
 <f08ea5cf-d4ae-54aa-405b-829909156186@cs.ucla.edu>
 <bcce5f89-6682-e089-d129-43c36fe3f392@gmail.com>
 <daa5c152-0462-19d2-d327-0042f405a40c@cs.ucla.edu>
 <be53c11a-1729-e895-e5a5-b9b6a42f29de@gmail.com>
 <936422e4-d292-d435-6c3c-333b924b8ad0@cs.ucla.edu>
Message-ID: <1f1430df-4bca-5cb4-1fc9-ae24c6a355bf@gmail.com>
Date:   Sat, 3 Oct 2020 01:44:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <936422e4-d292-d435-6c3c-333b924b8ad0@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 2020-10-02 22:19, Paul Eggert wrote:
 > On 10/2/20 1:03 PM, Alejandro Colomar wrote:
 >> I know it's not in stdint,
 >> but I mean that it behaves as any other stdint type.

With caveats, of course.

 >
 > It doesn't. There's no portable way to use scanf and printf on it.

I didn't need to.  Yes that's a problem.
It may be possible to write a custom specifier for printf,
but I didn't try.  I wrote one for printing binary,
and it's not that difficult.

If you really need it, this might help:

https://github.com/alejandro-colomar/libalx/blob/d193b5648834c135824a5ba68d0ffcd2d38155a8/src/base/stdio/printf/b.c

 > You can't reliably convert it to intmax_t.

Well, intmax_t isn't really that useful.
I see it more like a generic type, than an actual type.

I guess you could have

typedef __int128 intwidest_t;

if you find it's useful to you.


 > It doesn't have the associated _MIN and _MAX macros
 > that the stdint types do. It's a completely different animal.

Those are really easy to write.
For my use cases, they have been enough.
These might be useful to you:


#define UINT128_C(c)	((uint128_t)c)
#define INT128_C(c)	(( int128_t)c)
#define UINT128_MAX	((uint128_t)~UINT128_C(0))
#define INT128_MAX	(( int128_t)(UINT128_MAX >> 1))
#define INT128_MIN	(( int128_t)(-INT128_MAX - 1))


 >
 > If all you need are a few bit-twiddling tricks on x86-64, it should
 > work. But watch out if you try to do something fancy, like multiply or
 > divide or read or print or atomics. There's a good reason it's excluded
 > from intmax_t.

I know, they aren't perfect.
But they are still very useful,
and don't see a good reason to not document them.

Cheers,

Alex
