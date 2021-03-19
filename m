Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FBC43426FA
	for <lists+linux-man@lfdr.de>; Fri, 19 Mar 2021 21:36:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230206AbhCSUfg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 16:35:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230273AbhCSUfF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 16:35:05 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F2D8C06175F
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 13:35:04 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id w203-20020a1c49d40000b029010c706d0642so8936379wma.0
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 13:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xguUs7KhjI6HHnwjKnATX81dPZ2l9/KI4cGLompbbVA=;
        b=qoYq+x6IOfBquu1GBCq6UycXh0fXbqm6zzPDyQ9qUkqlr6GxMi7QijZ+nrUm24axjg
         SBD043G2QPYo0/UF9GWtddhjwKSoR3DK/pOsVN+o47RKhLjp94DZBE+gRuo/GcR5xz5V
         PdSwwgXXu9Q0UjBKkIlozHgWMLq/JNDS3J4zAlm7BBLcuvfid5fkPkj4tTI1J1y4NUa3
         z+7DQx/nr5h3wnOKPwDX4gSFS0VrPVh719ejm4Popq9yMw9QWBrPooXv8BvBwPOnUKtg
         EfjxpPziqZWPopd9JgclRiIRp3MXyG7yI7wpobpdeuKRe7n2rMCFKVBpyK/vAKhaGiW2
         ieig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xguUs7KhjI6HHnwjKnATX81dPZ2l9/KI4cGLompbbVA=;
        b=W69QIKpruVqAeUD6eN7fHjPiskdLeYj08/FpjXK4v67A590RgLurYpNSqHMT0NdTv0
         /P2c/6oh2AX5jcV5j5S0KJJUTQmFwscaQQDEhmW1WTEhYt2g+W/rE3CdwXpBFqhKr/cc
         C2qiPcSXSm3YqNGNQ+lsUHOZ7WpWkMQ4znUVFZE3/4FBf8Bz/PcAwgVs1quuCdmWZ9DC
         /sL8t6XtdckhKbYM5rTbMpWnGmpNKtEwWuiF26wv4r3XLIxeERU9n1cgpAS2MatkRSOi
         lBsKxI9DvoAFDdiZLtDbYMq+JaGUxFAJwkk5bdhrnYgI2UFoX6H2HizmT2IZmdxmeyn/
         oBvg==
X-Gm-Message-State: AOAM532EgjqyrldhFIvHJbH0qfGAxC4In5eL9x76nQaGgj5M563qYyo+
        iD5zxUVMO1NutMHKgmTG0P0=
X-Google-Smtp-Source: ABdhPJwsAfFk8zVoup3uZDKTQXM7HhJEcvXbeBe2wA4+zt9OMpKPxj3dUSC6VXgPt2aLt824WA26jA==
X-Received: by 2002:a05:600c:4fcb:: with SMTP id o11mr5268714wmq.117.1616186103146;
        Fri, 19 Mar 2021 13:35:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n6sm11357588wrw.63.2021.03.19.13.35.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 13:35:02 -0700 (PDT)
Subject: Re: [PATCH] Various pages: Remove unused <sys/types.h>
To:     Joseph Myers <joseph@codesourcery.com>,
        Zack Weinberg <zackw@panix.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <20210314160134.127878-1-alx.manpages@gmail.com>
 <CAKCAbMiJO8gq7LoDi-iTvmqvDpwUXXnTs8ABHXvin-psyo3+QQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2103151819440.20846@digraph.polyomino.org.uk>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <574cb3b0-bc99-2c19-2647-566916b9826a@gmail.com>
Date:   Fri, 19 Mar 2021 21:35:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2103151819440.20846@digraph.polyomino.org.uk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Joseph,

On 3/15/21 7:25 PM, Joseph Myers wrote:
> On Sun, 14 Mar 2021, Zack Weinberg wrote:
> 
>> I endorse this change.  For glibc, if the header file containing the
>> function prototype doesn't also provide everything you need to call
>> the function, it's a bug (except for a few cases where the relevant
>> standards prevent us from doing this, e.g. a function that calls
>> vprintf will need the macros in <stdarg.h>, but the C standard
>> specifically forbids <stdio.h> to include <stdarg.h>).
> 
> And in particular, where older POSIX doesn't require the types used in the 
> function declarations to be defined by a header, but permits them to be 
> defined by virtue of the general *_t reservation in POSIX (that's not in 
> ISO C), it's appropriate to define those types whenever declaring 
> functions that use them, rather than only for the newer POSIX versions 
> that require those types to be defined alongside declaring the functions 
> that use them.  (So we could simplify some of the conditionals in unistd.h 
> and remove the "# define uid_t __uid_t" and similar hacks in 
> conform/data/unistd.h-data, for example.)


If you plan to do that (simplify glibc), maybe the changes I'm doing
right now may help you.  It'll take me a few months to complete, but I
plan to further clean the includes in the SYNOPSIS of man[23], so that
only the include that provides the prototype is listed, and if any other
headers are needed, they'll have an explicit comment about why.

After that is merged, you should be able to list all the SYNOPSIS of
man[23] (check our <scripts/bash_aliases> for that) and see which
specify more than one header (and therefore you'll be able to check if a
standard requires it, or if it's a bug in glibc).  I'll CC you both when
I push those changes.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
