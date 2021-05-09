Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD3E9377893
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbhEIVDQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:03:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbhEIVDQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:03:16 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02330C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:02:12 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id b14-20020a17090a6e0eb0290155c7f6a356so7166372pjk.0
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C190HiF6QzF/9NFkScIIx7pxd+rHIcPOWpMfgzNvY/4=;
        b=fyZiEOoO4TaigJcFWD9jG0gjYa3ZteJYTTxhEvBt0girRlE0UweRtz/OzM9Jdm7mB3
         CABM/CJcpkILegXCoCYUlUPXjX9IHgFnyZJLa+30pVkA1qTIpNrds+4jOXJFx2brkyPE
         qcalIF7pNNDEAq8FXGaeIZFV0052erxEgRl3YPJxKBXgKnETJHa/T8jt/eefva1JHD97
         Ru+9jKTQaXylEPwtgrHWKy2UFKRD1OHX3oOwr59/aX6C2kkX7J8gl5errg2jiAGfSH/c
         XR/EzBCDgCtrNw++l6e/ghT8qDDsqKDvUn7YngVjIoN+bxAMV+nl/R5+CHVXNL6VQW/C
         xV6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C190HiF6QzF/9NFkScIIx7pxd+rHIcPOWpMfgzNvY/4=;
        b=HQwjpwzo7qZBxSktxzivyWCBVZ9P7K7p4HrdOYfLhhidpVw2ZAMeOfAymNOwQH19wd
         UYyioAklo8b+bet9974nB8GQwN4RksJyaQTbZeasnxVs6jfhMnOH2vEbR0Uda8kVUGkJ
         iyIL20XBV9/y0jpA2MbwWgXwcbP1qZD4jlhfeCsFboDr32QYdpd6l5JyaaHx6mF6todm
         zHzulhBUliXktC5LtxBvg4ktQ+9JJ2h960pQ8NbgvM0WSSh9L4O6n3GeSc7spC4fOxV3
         DTVrS+zNSbKEiABF7lUsIDKhwrOcsbNTfiNQZMojkyqnBb6o0cb+vZY4B3tJzsiWrZ8v
         iHhw==
X-Gm-Message-State: AOAM533wiVfKKk5X0bwmQHWA4O69nYCeM1nCJMo07vhXKOvB/pnxt4/R
        W9DarfHlnMmPOj5xjNKfpKK+5nRN1cw=
X-Google-Smtp-Source: ABdhPJyGReReCGwiIT2+vUvvWtmlAtm1FSwraFmudVY0Gyjyq2seh2qwdIdG0AXVaCpsNca1PNvCjA==
X-Received: by 2002:a17:90b:3891:: with SMTP id mu17mr23946102pjb.151.1620594132409;
        Sun, 09 May 2021 14:02:12 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id g16sm3424128pfq.157.2021.05.09.14.02.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 14:02:12 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH v6 0/3] Use standard features in the Makefile
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210406111448.20392-1-alx.manpages@gmail.com>
 <20210408085713.7093-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b7e20ce5-3bf1-5c03-9492-418ab4ea9131@gmail.com>
Date:   Mon, 10 May 2021 09:02:08 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210408085713.7093-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/8/21 8:57 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I was probably a bit distracted when I sent v5.  The .gitignore I sent had
> many issues.  I rewrote it from scratch and did some thorough testing this time.
> 
> Alejandro Colomar (3):
>   Makefile: Use standard features (IMPORTANT: default prefix changed)
>   Makefile: Fix bug when running in parallel
>   .gitignore: Add file
> 
>  .gitignore |  12 ++++++
>  Makefile   | 116 ++++++++++++++++++++++++++++++++++++++++++-----------
>  2 files changed, 104 insertions(+), 24 deletions(-)
>  create mode 100644 .gitignore

None of the patches in this series applies. Did I miss some prerequisite
patches?

Thanks,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
