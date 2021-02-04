Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79BFF30F3D5
	for <lists+linux-man@lfdr.de>; Thu,  4 Feb 2021 14:26:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236285AbhBDNZb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Feb 2021 08:25:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235605AbhBDNZa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Feb 2021 08:25:30 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA01AC0613D6;
        Thu,  4 Feb 2021 05:24:49 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id v15so3498433wrx.4;
        Thu, 04 Feb 2021 05:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2JrbOeo/eqiuhhp4mAU8EY7YTJyXEBNxg+GowildY+Y=;
        b=fmxPYbdXNhu8Nzj05yTd9MFre9DKptuDsTCJmhfyOwyEuhOwmQcNDj32U4pAQpiVAk
         Nps2u1b6GFyatQTlI7Z21dFsiUlUdZDTpfLc5qVxfh5mPdjvR3xE2YR68i34EhScw7yx
         XONPWHHQ8CWvqqreKeo6IGwQ9KxgxnPRHlKAJo/EsU2cTqQLIFQwr5j3siRSHlaWg2Z4
         5seuVDtEHHpEWR1Uw97tm+qZOBlGDr2ghW/fNOmOnu1ACR/4xHo6IuNo5cvZqxaP+meg
         buLxYDyi5fgCybS5PEooQSOq0f+/97tQJGZu9Wnqft7GcJjVH/0HlthH2vzRG2L2+Xc4
         xpPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2JrbOeo/eqiuhhp4mAU8EY7YTJyXEBNxg+GowildY+Y=;
        b=taekPeIkNmxvmtYYMlKjThfwNcOZJaKAZ2ijF1PXbAzd2cbIvvos7YbdhbyfUOXghF
         WLfGeUxQHnuxyKnWObgF8H+MFjYmBQV8tnE7J3ECwdIB5o1HEFc+YXS1mV2z960a5Hdc
         hYByrvn/bxVuTcdiLZVvi0Y43dSW0VyHZTIVw7rl3F9gUQ2MokKgEShXSLcWHGi+bt18
         RQ+lPjckhd7Cy/WMidajwpWFgBK99eH9m48fv5lCV+kxnwiZOhwColGOBBvcmwgFNHjX
         jxOLVksy8ZUmYNPNb9sqnApGCLQ4LzlXihCHqzHk5vg2o56rxpbz/+xqgEAX1hv0x2po
         j1Ew==
X-Gm-Message-State: AOAM530INxJgA3TFwT+ThRwkOHJnyB8+Bo/XUUgOT0nI9JliSCnDRqxf
        E0vCyVuPIDin5gLuqJUhDtYKaAnGzcg=
X-Google-Smtp-Source: ABdhPJzMqgdrN9PXO+YaFnuK/OyTsth1c7LFxbqA+hx9vhHGLsnHT4tb0Vkill50W+l9KA4KWFobKQ==
X-Received: by 2002:adf:f303:: with SMTP id i3mr9261684wro.60.1612445088600;
        Thu, 04 Feb 2021 05:24:48 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id l11sm7721279wrt.23.2021.02.04.05.24.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 05:24:48 -0800 (PST)
Subject: Re: outb.2: What to do with prototypes?
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
References: <6336a172-6bc5-bad8-21a4-0309a83728e7@gmail.com>
Message-ID: <81b3d032-b862-f255-1e58-2c319772713f@gmail.com>
Date:   Thu, 4 Feb 2021 14:24:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <6336a172-6bc5-bad8-21a4-0309a83728e7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/4/21 1:59 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> What would you do with the prototypes in outb.2?
> They are different in glibc and the kernel.
> However, since these are functions to be called mostly withing the
> kernel, the kernel prototype is more important.  Would you use the glibc
> one in SYNOPSIS, and then a C library / kernel differences with the
> kernel prototypes?
> 
> Thanks,
> 
> Alex
> 

BTW, the declarations of those functions in the kernel are a bit
different from the rest.  My grep_syscall function couldn't find them.
There's no sys_inb, nor does it use SYSCALL_DEFINE?().

There are a lot of different declarations like plain 'inb' (some static,
some extern).  Where is the actual syscall defined?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
