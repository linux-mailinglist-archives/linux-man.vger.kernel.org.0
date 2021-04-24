Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31DDF36A1D1
	for <lists+linux-man@lfdr.de>; Sat, 24 Apr 2021 17:46:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231940AbhDXPrC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Apr 2021 11:47:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231892AbhDXPrB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Apr 2021 11:47:01 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26E25C061574
        for <linux-man@vger.kernel.org>; Sat, 24 Apr 2021 08:46:21 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id k14so1442612wrv.5
        for <linux-man@vger.kernel.org>; Sat, 24 Apr 2021 08:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L625xC97j4ATBRwCibmjj0QnRYeh5XUj47lANFJx3CI=;
        b=QydSVbI7js8jW1IfzTV1XB57kEfn0mB3ATasret06uEaQfPvzz1eLBVzC8gQfoNS+e
         HQGd2/x7qt3ZPLJJ6OkEQtl9sRPSZGcJC9mROTd2TGRrtsbb0eRivzf9x4REY/Kd/X50
         8CCvmbRW6Han3lG1NIORU24pseiecaUQf6MHZt8nAk2CWwY8w9NTp5+XB+36tSLZHS2c
         W/b9Gf15wWaAxSB2RLGSUJcHBCAXYmSYlzcLIR/IOFtP5rZ/StlPX2OAwvW4JCrmmU2U
         sUQUZycDXxqq83/KoqcZD00pKeXL23splFzfIyHbgn+nA4kE4j/8f5dPbOAcavLf/wmO
         Bu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L625xC97j4ATBRwCibmjj0QnRYeh5XUj47lANFJx3CI=;
        b=B4ZTzLJx3duCact3+yaBW6YEJTDO9jP196f1Zk/ej2rn1CXTeKhhr5trnA8rNgr2Yz
         qrzrgpGto89xyFlFag4Lw6+b3C8B2JMKdtsWUW3zwSTc1dAgVi0UF3g8XZ4Bffa8OcRW
         Wtgx4uu2MfNatHD2kg8UZ3H0fAYFVA2Rqe7Trv3TCemXDrVY+ryyJ7Mp7N6hL7Jy7vdh
         5yT3V+5B2foP+XwjgquBDkuyRhyrCnzP8HvrFhyZV1LXJBb8FWX2sdMeevj1qNmMu1Z3
         pzbQc4HNzDz1jVw0sXd0jq4K1okCcN7M0PVhQeOGZBS0VTbCYX/BXNVixSD0W0D2ESdJ
         +I7Q==
X-Gm-Message-State: AOAM530ql0G742qNf/OgCwirlRPN9fI+Y9upd2ksm6XtDHBkzQ114uQT
        3ngdIWTQIyF6Hod48wGFW1oBzhGexS8RHA==
X-Google-Smtp-Source: ABdhPJxrQlxuRh7dW8ftDERbBmnU8rR8872eJJ4kfB6ZG3qKiyp7dX9cQmCVdXEE+eM+LkhVd5QNVQ==
X-Received: by 2002:a05:6000:12cb:: with SMTP id l11mr11537696wrx.267.1619279179901;
        Sat, 24 Apr 2021 08:46:19 -0700 (PDT)
Received: from [192.168.0.169] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i11sm2150330wrp.56.2021.04.24.08.46.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Apr 2021 08:46:19 -0700 (PDT)
Subject: Re: [PATCH v5 00/35] SYNOPSIS: Use syscall(SYS_...); and fix
 '#include's
To:     Florian Weimer <fweimer@redhat.com>
Cc:     "Michael Kerrisk (man-pages) via Libc-alpha" 
        <libc-alpha@sourceware.org>, Jakub Wilk <jwilk@jwilk.net>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-1-alx.manpages@gmail.com>
 <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com>
 <87y2doni1m.fsf@oldenburg.str.redhat.com>
 <365dc717-eb20-4549-9b6a-09eeadcfc89d@gmail.com>
 <87pmyoqjnw.fsf@oldenburg.str.redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3d6feff0-f65b-f086-aa2a-be21ff90ccfe@gmail.com>
Date:   Sat, 24 Apr 2021 17:46:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <87pmyoqjnw.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian,

On 4/21/21 7:41 AM, Florian Weimer wrote:
> * Alejandro Colomar:
> 
>>> Or, more succinctly, put the types in comments:
>>>
>>>     syscall(SYS_arch_prctl, /* int */ code, /* unsigned long */ addr);
>>
>> I'm not sure.  I see the point in doing this, but I think I prefer my
>> version, because it has less noise.  But I might be a bit biased :)
> 
> Not everyone is deeply familiar with C syntax.  Anyone who uses the
> example literally will be disappointed.

I've been thinking about this for some days.  Although this syntax has 
become very familiar to me with time, I agree that the first times I saw 
it, it looked somewhat weird.  Each of the three variants (yours, 
Jakub's, and mine (which is actually not mine, but one already present 
in some pages)) has some good advantages and some disadvantages.

But the manual pages have been using the syntax I proposed, for those 
cases where a constant is to be used always, so in doubt, as I'm right 
now, I'll opt for that one.

Also, those system calls without a wrapper are probably rare enough so 
that people that need them probably know enough of C to understand the 
syntax.  I, for example, first had to use one of those, membarrier(2), 
after around 7 years of C programming.  I remember being surprised by 
not having the prototype and having to declare it myself (the SYNOPSIS 
was a bit buggy by that time).  But by completely reading the page and 
especially the EXAMPLES section, I think one can learn how to use it. 
Reading syscall(2) also helps.

I'll keep my proposed syntax.

Nevertheless, thanks for suggesting alternatives, and giving your 
reasons.  I'll keep thinking about it and see if I come with something 
better.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
