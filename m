Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EAD6374B4F
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 00:37:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233535AbhEEWid (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 May 2021 18:38:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232579AbhEEWid (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 May 2021 18:38:33 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C671C061574
        for <linux-man@vger.kernel.org>; Wed,  5 May 2021 15:37:36 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id k4-20020a7bc4040000b02901331d89fb83so1980606wmi.5
        for <linux-man@vger.kernel.org>; Wed, 05 May 2021 15:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5dEB9Z2zZYTfdqGRWJlt3JaluxTYG6GMlv3TLOLN944=;
        b=c8Bc1Edc9gdw44zzRK1odFKKKoRkV8oeigzHxrdvs5jmMz1yeBUkBMNu4AUehwjXHf
         Y4Oc7hDRsFBcAh/dmQYLCVP6D/NIJw3NHhmFuA1yYL5whojl50V9KamPbbLm0cQRGqN+
         KV7V1Cr1sX5HBtrOYiI0gzV8s5u4MuyTz5usr+bReDPKbloW8AZHL1os+gMsAcOFxguN
         Bn0LOax56Vyp6633hx0bfYHBxDuwlAq0PuE3bIvj+NU/MuM5Zq+6ZpGyQXly+qotLDjy
         jh+TeYOCZnP6zAJYdZLQifAoHBWxbxEknpn+pJbZ3FztmR3/nJBSz95QYIDk9VFtJlw+
         gxZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5dEB9Z2zZYTfdqGRWJlt3JaluxTYG6GMlv3TLOLN944=;
        b=hvhTPgNGKc92ri0gEVYs6JLPQtnJ59/KYKdGKXL9RbGlhkH8SKb5FT0sWoSCMdFerh
         eViiRpiO4WsmeYOYtKoYc7CFrXmmUYnS920k0agDgjaoAXQIxq6KP7FdgDmh7X8fzgPo
         8ztYklEhptXUB/MO7ck9YVB4DA45UVlWWSvEqUALS63Sxew2AOcvc+YHSKaCvnE+A1e1
         RyO0aYKdXJdW3ZbtesCZDmdCkNDmXCl/SFIP6pUhvrwJKE1qK2v85sJyyvcn++fMfJsG
         eAeCad9DxzSHcGtNm2LzI8Hnmu0UakhNrl2luL/faCV7kQe/U1GlT+cQxpCZnmJH0XGr
         Ddlw==
X-Gm-Message-State: AOAM533NlW5cHr43LUyGpkrk34bGMg/UlOgFhOMR+5Hnkze9zHNvkOVN
        ghGbfE9FIwnWXVZqxzsIsEE=
X-Google-Smtp-Source: ABdhPJzweVBRjEnVvetk6Fx9qPdKgbkCE/GPUlYEMAjA7rMo5Fzfpw5GGZ5d52DzxKvU6Mx03GQopw==
X-Received: by 2002:a1c:c385:: with SMTP id t127mr842988wmf.169.1620254254919;
        Wed, 05 May 2021 15:37:34 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m13sm919114wrw.86.2021.05.05.15.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 15:37:34 -0700 (PDT)
Subject: Re: Bug reporting
To:     Dave Chupreev <cdn.dev@yandex.ru>
References: <1621111620246345@mail.yandex.ru>
Cc:     linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Roland McGrath <roland@hack.frob.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9068beb3-70a7-ad96-e260-f53a886d622c@gmail.com>
Date:   Thu, 6 May 2021 00:37:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <1621111620246345@mail.yandex.ru>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[ added a few CCs ]

Hello Dave,

On 5/5/21 10:30 PM, Dave Chupreev wrote:
> Hello, Alejandro.
>  
> On page 138

I guess you refer to TLPI, written by Michael.

> 
>      1.
> 
>         Your version of /unsetenv() /should check to see whether there
>         are multiple definitions of an environment variable, and remove
>         them all.
> 
> How can I add such variables which have many definitions? According to
> *putenv* and *setenv* functions, variables with the same names are
> replaced if encountered.

I haven't read that part of the book yet, so I ignore the context.  But
AFAIK, that can't happen on Linux, as you pointed out (probably neither
on Unix systems in general, but I don't know for sure, probably Michael
does).  I guess the only possibility is if an attacker somehow modified
your environment and inserted multiple copies of an env variable.

The book (TLPI) states that glibc does check that, so I digged into the
sources and found that in <stdlib/setenv.c>, around line 290
(<https://sourceware.org/git?p=glibc.git;a=blob;f=stdlib/setenv.c;h=893f081af6b5a21b999a4056757fd69d1386c0d4;hb=HEAD#l290>).
 That behavior was introduced by Roland in commit
196980f5117c8d38f10d64bf67eeb0924651675f
(<https://sourceware.org/git/?p=glibc.git;a=commit;h=196980f5117c8d38f10d64bf67eeb0924651675f>),
so maybe he can better explain the reasons behind the change (the commit
msg is quite unexplicative) if he still remembers (that goes back to 1995).

Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
