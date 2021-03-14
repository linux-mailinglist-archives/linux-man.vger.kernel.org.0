Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DD8433A84C
	for <lists+linux-man@lfdr.de>; Sun, 14 Mar 2021 22:40:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233906AbhCNVkI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 17:40:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232431AbhCNVjm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 17:39:42 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8DFFC061574
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 14:39:41 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id h13so15049974eds.5
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 14:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wDf60HXUHXZD9ZURfqXPwSeJsw2cL02yBFAZ/uz5/Ic=;
        b=Z7GQ5xV3GD24+srJWCexYI8xJfvlAp+UIQ1nTlBkcME8TKQTE1DrUVjv2nMsgn6FPP
         K0wF5Kt2TAQuvzSIE7vHvpPIm91GlbnB9+T9Q2usx3sKtzgDQuAAC8l+e6XIf/YLDgxE
         JqXDp1K1F8ix3nAc6HtAEASnwgl7ILMOuldsiuKPaqxScp6/wGpEsorMutMh6j99RpaI
         NH5mLNKMddVI1xsOWJ27LaFqOmkt12PkDSqUqZWxn6hCqtmey5x6NM49rcYOWlUlcFOt
         4M5u5iifwzEsfFXRC5hRClRnuUMe93mHiYRe4B3iOzl/EfslmGc4++29DPvMf2T85qfB
         rIuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wDf60HXUHXZD9ZURfqXPwSeJsw2cL02yBFAZ/uz5/Ic=;
        b=GYqbdJYKjlqTD4ZPnM/VxJm6gLL+77FB7/0GGugbPqhe/vNUP4+pWoT1xbmOy1sg2+
         an74JBjjds00NhH5b/P30DsLIVXL4I1ouhjToAB8bvGkmV93xqxzs4Uxg/AujHNXJG4U
         0QqcEcVOyMk1GqVHOCnWzlimNi5jeFlJgVv830k/7/c391+8KIZDGPnwjI8XqAdgpqpU
         kCUZb3V4etokbNTaXQ6htsZj+EpMkoEkKkpZAIsZZ24UyRvJZoXcUJqXMNi1BgklIEAq
         Ymgv+eIdgTzEsstYtToyCi6LNlnI3JyAQRu3FxF7cTxlSPmvx1Vz9X0pru06BBwAi67/
         WWgg==
X-Gm-Message-State: AOAM532nahSJCSf5SYvrpWdtfA7cZfIN+kU1jKvrE+qdU/WkiLCMOD68
        x8jVgSXNH66/KrpeQVloZ/k3vVOot60=
X-Google-Smtp-Source: ABdhPJwcAF80lwajMqJAcp8GqUZZd1E1zPFhq86AyetjemeIvljbGnuiSz+WKszA8j/vNcc3TfTlRA==
X-Received: by 2002:a05:6402:31b7:: with SMTP id dj23mr26930917edb.245.1615757975261;
        Sun, 14 Mar 2021 14:39:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id jv19sm6208872ejc.74.2021.03.14.14.39.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Mar 2021 14:39:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Formatting very long function parameters
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <2e686e13-f846-573f-1468-5e652d571e89@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c715d679-bb93-eb18-cc89-58af42c52692@gmail.com>
Date:   Sun, 14 Mar 2021 22:39:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <2e686e13-f846-573f-1468-5e652d571e89@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/8/21 2:54 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I have a problem with pthread_mutexattr_getpshared(3).
> After adding 'restrict', the first parameter alone would use 81 columns,
> so I came with 3 options:
> 
> A)	Move the parameter to a new line,
> 	leaving the open parenthesis at the end of a line.
> 
> [
>         int pthread_mutexattr_getpshared(
>                                       const pthread_mutexattr_t 
> *restrict attr,
>                                       int *restrict pshared);
>         int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
>                                       int pshared);
> ]
> 
> B)	Compact the pointer to use only 80 columns,
> 	by deleting a cosmetic whitespace,
> 	and exceptionally ignore the 78-column right margin.
> 
> [
>         int pthread_mutexattr_getpshared(const 
> pthread_mutexattr_t*restrict attr,
>                                          int *restrict pshared);
>         int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
>                                          int pshared);
> ]
> 
> C)	(What POSIX does) Break the 1st parameter at the pointer:
> 
> [
>         int pthread_mutexattr_getpshared(const pthread_mutexattr_t
>                                          *restrict attr,
>                                          int *restrict pshared);
>         int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
>                                          int pshared);
> ]
> 
> 
> I did the 1st one, but I'm not sure about it.  Do you have any preference?

I think (A) is more or less the way to go. But, so long as we
can't line anything up below the "(" of any function declaration,
I decided to tweak that a little so that the follow-on arguments
are not so deeply indented (which looks a little strange, I find).
Thus my commit 48ee34e75.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
