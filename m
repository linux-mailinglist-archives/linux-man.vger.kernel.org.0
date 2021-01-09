Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC7C62EFEA8
	for <lists+linux-man@lfdr.de>; Sat,  9 Jan 2021 09:43:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726374AbhAIInd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Jan 2021 03:43:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbhAIInb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Jan 2021 03:43:31 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6730FC061573
        for <linux-man@vger.kernel.org>; Sat,  9 Jan 2021 00:42:51 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id q75so10412384wme.2
        for <linux-man@vger.kernel.org>; Sat, 09 Jan 2021 00:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NhxVMxoc1rxCsh3HgpWvuoHSVZyha1T4AfOoVZxSsEY=;
        b=gT5xNEi6mxVK9Osqnx9bmgmIbLofeXkTfL0TpB69vqTX2LFQanAIABwRWUoXkLKcxp
         nBqCGBhug1xjK+KWFR9to+xsb8l71rJ5qAL1n1c0ZZ4vD8SZESA3Yntpptm7Uq/N/qU8
         dHelDIhJh5Y1tsuf1+wc+DsxgznMqQVa1U73UnYvC9qgcFFHhu+vb6slsUm84sUaAaiw
         NGioCRTrni5nw3Kkw3BzzUG576SlsasPdg7jLQS2HpITvTt5Q0CWcxBX70WlDt+X36TU
         qjTFUJlI/Nx1+YRttnUnChG1kaKi/fK0hVpriAsbHeqQZrfJR8Mwmr8FUxkv/s+bduj9
         Xb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NhxVMxoc1rxCsh3HgpWvuoHSVZyha1T4AfOoVZxSsEY=;
        b=bkfYJQBu8651QMtMRJh/6XTIUy54Jf6yIYx7XKN1laWu4FOL2QW7XGb3rQiAvyEtpa
         h7lq9CxWRO4dnbFWf8RdOX+mJzpQaJH032tKivWKUMBVCWZG4tz/ZgOc4ROjSDQGj65R
         IgPv3FUG4yvRl1Y0B2pfcJzyA1Xv46KKfXtOebeY8NWVfTfPr/ZxGFHCt1UIN3lefg8G
         ZcTbZlUZs++JXb1J2kkEhkFV7ppeqhsl6lVl42H79t0BF6i+je8apc48KX4a6YERsAZw
         scqD53/wh1Vx7qgQ7GE+lvnvlOFUnvVrFchiR9//CVvm1dJx7P7/9DaLEUuNrawRLQ5+
         TStg==
X-Gm-Message-State: AOAM5328R5zHzOFhgghH2fC9OzV/RWSEYO02smE52G8kVISD/rN5D98L
        X3PDN0B2hjtQvoLqRH72O2Ttt79gryk=
X-Google-Smtp-Source: ABdhPJyJlRq4HGMMGrGXhMtJ3dVUHLA8W1IeCFuOYJavfPduA9sjkv5e2mJ50GC24V5fMo1pn47olQ==
X-Received: by 2002:a1c:e142:: with SMTP id y63mr6663102wmg.28.1610181769789;
        Sat, 09 Jan 2021 00:42:49 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id d9sm17802446wrc.87.2021.01.09.00.42.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 00:42:48 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: setlocale.3: Wording issues
To:     Bruno Haible <bruno@clisp.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com>
 <879e52c6-e4f7-e5ea-5766-4893d01038db@gmail.com>
 <0e50d381-73aa-970e-43b7-42519fcd8540@gmail.com> <1666349.hQisT8tt6K@omega>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <37d97703-66d2-0f20-d725-4b0350e15e07@gmail.com>
Date:   Sat, 9 Jan 2021 09:42:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <1666349.hQisT8tt6K@omega>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/8/21 5:10 PM, Bruno Haible wrote:
> Alejandro Colomar (man-pages) wrote:
>>>>>>>        (a) using the values returned from a localeconv(3)  call  for  lo‐
>>>>>>>            cale-dependent information;
>>>>>>>
>>>>>>>        (c) using the multibyte and wide character functions for text pro‐
>>>>>>>            cessing if MB_CUR_MAX > 1; and
>>>>>>>
>>>>>>>        (c) using strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3) to com‐
>>>>>>>            pare strings.
> 
> If you feel it's better to separate the functions for strings from the functions
> for wide strings, I would write it like this:
> 
>         * using the values returned from a localeconv(3)  call  for  lo‐
>           cale-dependent information;
> 
>         * using the multibyte and wide character functions for text pro‐
>           cessing if MB_CUR_MAX > 1;
> 
>         * using strcoll(3) or strxfrm(3) to compare strings; and
> 
>         * using wcscoll(3) or wcsxfrm(3) to compare wide-character strings.

Thanks, Bruno!

> Regarding the type of enumeration, I generally use
>   - (1), (2), (3), ... when the order matters, e.g. to describe steps that
>     need to be done one after the other,
>   - (a), (b), (c), ... for alternatives ("or"),
>   - simple *, *, *, ... for other enumerations.

Agreed. I changed it.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
