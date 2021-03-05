Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A074232EB94
	for <lists+linux-man@lfdr.de>; Fri,  5 Mar 2021 13:49:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbhCEMtN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 07:49:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbhCEMsn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 07:48:43 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53D94C061756
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 04:48:43 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id w7so1331203wmb.5
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 04:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MPAXZ+AnO8t2L2+XhAVGNXW/qMg5GNn+FfrqIVRlrcQ=;
        b=QjBAj+94PXL5MeiRQEGciXG1zB+4pR2LrT1UV26jEdWFfev+GsOUrZZM6zaa5e6Sv9
         twkQqLASd93EY22mJkYPbxEJkC7C5SnQsjsCKeCLupRgrGiUg6+YEbwrXHtKRVORCzpk
         DD7u/WQXx7uiqleknA9wbsNBbz6xR5zEQImkjg9j376fGzauCUFx2vZSoDig27vLzacN
         v5SE9bFXfY2Qzn/NknDyLhdpNSKdipEiWqhbCEZ5dN2DGu+dSj+CcBuOJj+QEnLKo5HL
         umAuL8otHRbXHG49Yzdast2BqRHMre4eFyyxtRi4vq8FcWYvfC5uZjwL5qO7MuV46ekn
         a3SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MPAXZ+AnO8t2L2+XhAVGNXW/qMg5GNn+FfrqIVRlrcQ=;
        b=SYDAVSdkOYAf8tW0iXDr+IVCZM+KinCsCguip5+UkGJwj+r/ay1E7cVnJuG84Y+Ykb
         HRZ2gUpYyKI08B917pv2sXs5z19w9bwL74a0LMmtGHUvhcAfpZj+gDGxB4rjz7KZmrJ/
         voqbFiwNaPFReLJAF2e12Fx0cbKoOR85t06SBZLXfLqBD5DCOr74ap81x0V1lT51w9U1
         /rzNmUvhv9PDnB/Emdh75q3f2EFqAmcZFVwH5Pp/Db+kn9MrUfF7jUhxXfmi5yhKrpEn
         ueGvCpXG7oOBr84dU2zZHmHTm4ZBrb0lK0W7vD1PeU1xVQbd2hWaBXYMNuoMlEns8fXc
         g0Kg==
X-Gm-Message-State: AOAM532O0OYqMBnPqiUiJ/GtQ8LvOCSIN1IETGHLZL0N+wpDHxXBuVmi
        Q7pR3gcRQ6pOvfpOxiMRHlE=
X-Google-Smtp-Source: ABdhPJxwJkgVxCz8Pktam4FPY2RQ7EXHSyl/RCGJr8JBUcb8qIYVbZpB+bWl2X6+z2kQFv0GAuYE5g==
X-Received: by 2002:a1c:bb0b:: with SMTP id l11mr8969548wmf.150.1614948522114;
        Fri, 05 Mar 2021 04:48:42 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 9sm2609400wmf.13.2021.03.05.04.48.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Mar 2021 04:48:41 -0800 (PST)
Subject: Re: [PATCH] makecontext.3: Fix function declarator with empty
 parentheses.
To:     Florian Weimer <fweimer@redhat.com>
Cc:     Zack Weinberg <zackw@panix.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Andreas Schwab <schwab@linux-m68k.org>
References: <20210304194534.130735-1-alx.manpages@gmail.com>
 <CAKCAbMg3G4EAeuUhN9EQTDnrTSD0sPoH0uH1=kkpfj9qYorPdg@mail.gmail.com>
 <87v9a6hbgt.fsf@oldenburg.str.redhat.com>
 <c5df9263-edb8-c50a-e691-a454d4ae833f@gmail.com>
 <8735x9hpe7.fsf@oldenburg.str.redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2b3d9f1d-287a-9747-0666-fb4d9331b494@gmail.com>
Date:   Fri, 5 Mar 2021 13:48:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <8735x9hpe7.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian,

On 3/5/21 11:21 AM, Florian Weimer wrote:
> * Alejandro Colomar:
>> Florian, should I file a bug in glibc's bugzilla?
> 
> I don't know.  SUSv2 has (void *func) (), which would make this a glibc
> bug.  I'm not sure if I have easy access to POSIX.1 from 2001, which I
> believe still has this function.
> 
> I am not sure if all glibc implementations of makecontext can be used to
> call variadic functions.

I reported the bug: <https://sourceware.org/bugzilla/show_bug.cgi?id=27523>

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
