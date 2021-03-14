Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1056F33A814
	for <lists+linux-man@lfdr.de>; Sun, 14 Mar 2021 21:57:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233389AbhCNU4y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 16:56:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229870AbhCNU4j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 16:56:39 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D02FC061574
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 13:56:37 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id w18so14997518edc.0
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 13:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EHxYQsfRAKc0odaUn1GaPfeVyWxE/t6Rf1jbD2BmKV4=;
        b=O748c+wWAEdBsc6dBFQdKXan+3AOJk5Dr+vv14jD8ZGM9IMNW4Dr6BlxdoNy3ikT+u
         QXGJHsSzgx744iyRKs/P2FKNJIcgqCSdHi3hz4uft82FLjDBPAnWZZc+KriSnfKrJD6Q
         wJbbRybSb302HlPh0o+mj4TX+1TCtq/yc8NPhvwnJcqzmSuMIytafNc2b4qrnMFDCrAS
         Kx0rHQHjEk2yoqxRBixSayzSWMA/3UYvcrQiWJxqvXTH9nt/TAgTZvapfNHUHNMRkugU
         7tk3/mNw3CklikzjCUIyv6FQSmeBtya/PuxpFWLuj64/ZXKS6L88A/Uo2xJw/t072Tzx
         iAMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EHxYQsfRAKc0odaUn1GaPfeVyWxE/t6Rf1jbD2BmKV4=;
        b=daI8TCmZCcUNseHnQxWfeWe2LTFWtt+M0SzqTTxp4VNC09V/jsRa8AcyWD2uqfoQUv
         pTaJLsbJf8xagHYaL3BpbKqEZA2p/HFaWVJ5j3l9+LK1Dfh/khd92gh7ud+GhjPPgrpE
         sHIA/gqBVJ1wG9l0y2softWX/tF/Kk3+xM5DvPRH93I/05pr0tnCgijpFX1DwY4pAOhQ
         kF255exG0K5jcMFhaUGg9Q9aD1PjXmG26iR0JLpxHR908xqvQ2GcMnp0u/dsucYkogC2
         jXAz49qtVpgLy2etgYQGF62hfG2riQcfvH4YegH+pvElNX72HgyDwNNJ8Acp9AZO9UUY
         B3Rw==
X-Gm-Message-State: AOAM531fVzM4hRFG6w9YyjvSlH66deX20e+2uznFfXSg+U83TrPhLJ5U
        rFhug2sogfIg2BboqbQcWDGWOoesCZ8=
X-Google-Smtp-Source: ABdhPJysGqwfEvWWISFV3XoL9t0V7IYkPMZp4oiLEVqRAn37tVkJhztHXLiHvGdUeqdclLBL06aqfQ==
X-Received: by 2002:aa7:c6da:: with SMTP id b26mr26697065eds.254.1615755396117;
        Sun, 14 Mar 2021 13:56:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id x21sm6657111eds.53.2021.03.14.13.56.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Mar 2021 13:56:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 00/17] man3: SYNOPSIS: Use 'restrict' in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c35c3d0f-703d-533f-318b-01f812314633@gmail.com>
Date:   Sun, 14 Mar 2021 21:56:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,


On 3/11/21 11:33 PM, Alejandro Colomar wrote:
> Hello Michael,
> This fixes the remaining pages. With this, all pages have been fixed to use
> 'restrict'.

Thank you!! Patches applied.

Cheers,

Michael

> Alejandro Colomar (17):
>   scanf.3: SYNOPSIS: Use 'restrict' in prototypes; ffix too.
>   tsearch.3: SYNOPSIS: Use 'restrict' in prototypes
>   unlocked_stdio.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcpcpy.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcpncpy.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcrtomb.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcscat.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcscpy.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcsncat.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcsncpy.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcsnrtombs.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcsrtombs.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcstoimax.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcstok.3: SYNOPSIS: Use 'restrict' in prototypes
>   wcstombs.3: SYNOPSIS: Use 'restrict' in prototypes
>   wmemcpy.3: SYNOPSIS: Use 'restrict' in prototypes
>   wordexp.3: SYNOPSIS: Use 'restrict' in prototypes
> 
>  man3/scanf.3          | 16 ++++++++++------
>  man3/tsearch.3        |  4 ++--
>  man3/unlocked_stdio.3 | 20 ++++++++++++--------
>  man3/wcpcpy.3         |  3 ++-
>  man3/wcpncpy.3        |  4 +++-
>  man3/wcrtomb.3        |  3 ++-
>  man3/wcscat.3         |  3 ++-
>  man3/wcscpy.3         |  3 ++-
>  man3/wcsncat.3        |  4 +++-
>  man3/wcsncpy.3        |  4 +++-
>  man3/wcsnrtombs.3     |  5 +++--
>  man3/wcsrtombs.3      |  4 ++--
>  man3/wcstoimax.3      |  8 ++++----
>  man3/wcstok.3         |  5 +++--
>  man3/wcstombs.3       |  3 ++-
>  man3/wmemcpy.3        |  4 +++-
>  man3/wordexp.3        |  3 ++-
>  17 files changed, 60 insertions(+), 36 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
