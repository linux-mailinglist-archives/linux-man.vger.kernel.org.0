Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81BA131722C
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 22:17:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232045AbhBJVRU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 16:17:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232110AbhBJVRR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 16:17:17 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 750DCC061756
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:16:37 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id s5so4696073edw.8
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w8qqVNb2AMe5SmAJv45BdhEEWA/CkhNSpJJ8+QMCJlU=;
        b=J0LkxyMT+dH3cJupe+SnN8ocUiuGmPSoHphESCo1+pOaogMwm8L0v4IXfgIAFa8VwA
         MO8ypE65hbT9IVjNZ2KyMJQBh4g3xan3dQJUA4QV46OsfQGlW5+/rdasqg/fFBIgMnwb
         fM5UR5A+ON3+ahvi/k1yvYxGHwDydLH+xodFWFD6+dx5rqOlTM/o5ngRF/QkURIaX86F
         M2zdyJIed4ikd0rkN/Llbd/fQfHNwNa8sz90HMbzxwYgT0Bg2RCpHYltP6FT8JlmOO87
         R6N5wIT5jND5l/KnQFZcmLSAjszwEELc73ysZSMx4JLKoDzsIQ5GzlebfP8als710+SL
         kf3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w8qqVNb2AMe5SmAJv45BdhEEWA/CkhNSpJJ8+QMCJlU=;
        b=TBfj8wVqRNpsx0rKhbEceFnXMi71uYpRt4uXSho1/Tokgii4i2IYLouEM4gX0GZfeV
         GIr26JGpiY2GUfBfijniu+0dIFMxWj5ZSl9QwvyicgblqIwLfuVigvIvryl8qQRAeMx1
         9iU4Oh+Gxu7rPHVaTD+Hez+kJZWB3/tKwdQfYJGcaYtuHa0i/8g1enD6KlBhgIgriQzp
         /oHROJ16kGLRGkEzYPaUhnnKnM0gB+OJLNiV3kE/FUssw+boC2A32okeaqS09lcdgonZ
         Afcpov+dPExKQxhTFMfArrlpMhTIDVVfM2q1C65O2I076H9WL5UOlO/n8mSxfqXU46YQ
         0dVg==
X-Gm-Message-State: AOAM533f9DHV0LDiIUDJGrdpIIArm3yYMe6cKfLoYZw2632XAI4yzpsu
        DO8h9IrGLrPEr6mmpIqJLMk=
X-Google-Smtp-Source: ABdhPJwZ/yGA98tm6HkKsXJ1iUUkKT9iCTwBb4TVzFh5ulbj1I/6WViatmR6gDjOgib+a6CSydQ6vQ==
X-Received: by 2002:aa7:d6c2:: with SMTP id x2mr5067003edr.225.1612991796261;
        Wed, 10 Feb 2021 13:16:36 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id zk6sm2205373ejb.119.2021.02.10.13.16.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:16:35 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: Re: queue.7, stailq.3, (simpleq.3): Document SIMPLEQ as an alias of
 STAILQ
To:     Zack Weinberg <zackw@panix.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
 <17824adc-1b73-cae4-781a-6ad8893c3c66@gmail.com>
 <864a2689-0c9a-40c9-3732-d99bc44fed4d@gmail.com>
 <CAKCAbMgpXzH3nFyyn3fO3rjwNsG1ZBEkK89ce6r1JLPQL9oKZA@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7e5e14ee-9fce-27a0-07b9-803f4fafa287@gmail.com>
Date:   Wed, 10 Feb 2021 22:16:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CAKCAbMgpXzH3nFyyn3fO3rjwNsG1ZBEkK89ce6r1JLPQL9oKZA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Zack,,On 2/10/21 4:38 PM, Zack Weinberg wrote:
> On Wed, Feb 10, 2021 at 10:13 AM Alejandro Colomar (man-pages) via
> Libc-alpha <libc-alpha@sourceware.org> wrote:
>>> BTW, a suggestion for glibc:  glibc could simplify the code with things like
>>>
>>> #define SIMPLEQ_ENTRY(type) STAILQ(type)
>> s/STAILQ/&_ENTRY/
>>>
>>> It would make it more obvious that they're the same thing.
> 
> I don't know about anyone else on the glibc team, but I personally
> consider the entirety of <sys/queue.h> to be provided only for some
> degree of backward compatibility with old applications that were
> ported from BSD; new code should not use it.  I'd *like* to formally
> deprecate it, but I expect that would cause too much breakage to be
> viable.  Anyway, I hope you can understand why I'm not interested in
> messing with its contents at all.
> 
> (Can we add a statement to the effect that new code should not use
> <sys/queue.h> to all of the related manpages, please?)

I'm not against this, as I think I commented in the past.
But I'd prefer to have some rough consensus about this from
the glibc team before making suchg a change.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
