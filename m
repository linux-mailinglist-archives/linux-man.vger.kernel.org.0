Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFA5433A812
	for <lists+linux-man@lfdr.de>; Sun, 14 Mar 2021 21:52:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234111AbhCNUwJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 16:52:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229870AbhCNUvu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 16:51:50 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCB8AC061574
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 13:51:49 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id bf3so14962985edb.6
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 13:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VjIfwdcHqI6iK6hSJ7k7S0h7kK0ccAlZ7PPns3fQdJ4=;
        b=liw1EdS1wlnr4mZSPUE6aIEzwDFBPSCXKqDyyo0Dm97qDEKDH9CIis27VWV1FbxqRF
         iHq8K8/kcUu9+Hs6+vvkx9K7Zmq2Os936l6CbOJWfsRwLYpdEp1ZCUUa8A9M35oOL1Ia
         AzXoeyCI0zuoVUPLsMxx73EIzjLly0SVvqGa7l2OFAJpoT1gQZI0dNsMV0gftSN25+kv
         YeQ2SBWhAAViOeUYT8JfrgnwA+YxVhwIkt0sTrZePCRDN/qn5fNSrQ7S/e5fr3oHjB8a
         ZuA9fn+01XQypSB0UUzYoR8xMWD6Y4ur8tx3L74ksZT6EQxGxLS01N8ptPLNjwYjFO33
         kR4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VjIfwdcHqI6iK6hSJ7k7S0h7kK0ccAlZ7PPns3fQdJ4=;
        b=aEGc5hOM5ohp4ydUT4Q0kzHSbhKA2f2lh6gn9pY6PxBjBfsTts5VYH303StssvZy21
         ypK67zB7OxyUB0nzZYStG1vIsoTPIHHiYcriq/bwSQB80dYg7l/McQOdAUz+5oL6bwU8
         T6VArIrQxE6D5qFUmH5GXBBvMM218F0a9I3Wpy/bhO6O5Y4EQkVl6hgy4gCJMGAHFsoq
         CqT9JVvXsRaLYIOCl9VpvehHi7ROxsrRq2BkUP5XFwhcgXOo+UBQIxof3AdlDuvSIm1g
         dE7VMtwWplpiZYGStefH25oELhYyZRtOpvlXgDhOXUapDKTZbaWtUT2CR/CgA1FMrKT9
         2/ww==
X-Gm-Message-State: AOAM532RMYqzGkQ36TyccfREBvLVxsy5gVjplzbZGfxT2n5f5HrIAmnS
        ahPjzU6hCHTMs9RxuqSnKE0=
X-Google-Smtp-Source: ABdhPJxhqr/HJZt+uhOyIILvWpNzVlsS0ZvrlscsrWggRtn6js3paF+s/eba1e9/d6fk72s890lL6w==
X-Received: by 2002:aa7:c4cc:: with SMTP id p12mr25814596edr.325.1615755108522;
        Sun, 14 Mar 2021 13:51:48 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id c10sm6902118edt.64.2021.03.14.13.51.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Mar 2021 13:51:47 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 00/24] man3: SYNOPSIS: Use 'restrict' in prototypes (batch
 5)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c2920146-e8d2-ea8c-80fa-76c56e5ac6a9@gmail.com>
Date:   Sun, 14 Mar 2021 21:51:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 3/10/21 7:31 PM, Alejandro Colomar wrote:
> This fixes up til trunc.3 

trunc.3? I'm a little confused, since the last patch is for swab.3.

> (I didn't send you scanf.3
> in this patch set because I did in my mom's computer and forgot to push).

:-).

> When you come back and merge all of the pending patches, I'll send/resend
> anything that's not in sync anyway.
> So don't worry about missing some of them.

I've applied all of the below patches.

Thanks once again for all of this work!

Cheers,

Michael

> Alejandro Colomar (24):
>   sem_getvalue.3: SYNOPSIS: Use 'restrict' in prototypes
>   sem_wait.3: SYNOPSIS: Use 'restrict' in prototypes
>   setaliasent.3: SYNOPSIS: Use 'restrict' in prototypes
>   setbuf.3: SYNOPSIS: Use 'restrict' in prototypes
>   setbuf.3: SYNOPSIS: Use 'restrict' in prototypes
>   setnetgrent.3: SYNOPSIS: Use 'restrict' in prototypes
>   sigwait.3: SYNOPSIS: Use 'restrict' in prototypes
>   statvfs.3: SYNOPSIS: Use 'restrict' in prototypes
>   stpcpy.3: SYNOPSIS: Use 'restrict' in prototypes
>   stpncpy.3: SYNOPSIS: Use 'restrict' in prototypes
>   strcat.3: SYNOPSIS: Use 'restrict' in prototypes
>   strcpy.3: SYNOPSIS: Use 'restrict' in prototypes
>   strfmon.3: SYNOPSIS: Use 'restrict' in prototypes
>   strftime.3: SYNOPSIS: Use 'restrict' in prototypes
>   string.3: SYNOPSIS: Use 'restrict' in prototypes
>   string.3: SYNOPSIS: Use 'restrict' in prototypes
>   strptime.3: SYNOPSIS: Use 'restrict' in prototypes
>   strsep.3: SYNOPSIS: Use 'restrict' in prototypes
>   strtod.3: SYNOPSIS: Use 'restrict' in prototypes
>   strtoimax.3: SYNOPSIS: Use 'restrict' in prototypes
>   strtok.3: SYNOPSIS: Use 'restrict' in prototypes
>   strtol.3, strtoul.3: SYNOPSIS: Use 'restrict' in prototypes
>   strxfrm.3: SYNOPSIS: Use 'restrict' in prototypes
>   swab.3: SYNOPSIS: Use 'restrict' in prototypes
> 
>  man3/sem_getvalue.3 |  2 +-
>  man3/sem_wait.3     |  3 ++-
>  man3/setaliasent.3  | 13 +++++++------
>  man3/setbuf.3       |  9 +++++----
>  man3/setnetgrent.3  | 12 +++++++-----
>  man3/sigwait.3      |  2 +-
>  man3/statvfs.3      |  3 ++-
>  man3/stpcpy.3       |  2 +-
>  man3/stpncpy.3      |  3 ++-
>  man3/strcat.3       |  5 +++--
>  man3/strcpy.3       |  5 +++--
>  man3/strfmon.3      |  7 ++++---
>  man3/strftime.3     |  5 +++--
>  man3/string.3       | 21 ++++++++++++---------
>  man3/strptime.3     |  3 ++-
>  man3/strsep.3       |  2 +-
>  man3/strtod.3       |  7 ++++---
>  man3/strtoimax.3    |  6 ++++--
>  man3/strtok.3       |  5 +++--
>  man3/strtol.3       |  7 ++++---
>  man3/strtoul.3      |  8 ++++----
>  man3/strxfrm.3      |  3 ++-
>  man3/swab.3         |  3 ++-
>  23 files changed, 79 insertions(+), 57 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
