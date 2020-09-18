Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F88E27060E
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:13:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726168AbgIRUNi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:13:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726154AbgIRUNh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:13:37 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72FFFC0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:13:37 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id w2so6427341wmi.1
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GxgqoMUihVnBYcKK3++0fUno1KXCcWqFmu2cEU2H1Cw=;
        b=tj/IzhJnTPhcsDlaRalaDWA3OV/RDIcVHwJroFthdHmhFKzzMUIP56qQuwztsC0DPH
         7BTPvq4sewqW4kRIPTbtqbpkRXp/H50xMh1qpBeW2aqagO/Ky1x8jTpldvVYhJAqugWZ
         xo3EvV46hwAKMaXG/a0YVWVdOxat0ieamyktGbfbQ4+SL7zGC4vRprkPf0r7YNIv8ssj
         JuUs95EQbXVAlJwiol2eSh1ovpi8eRaM//1Ispdf3yiETQLyBUFhu/ztneY5XptoCwRD
         3eBihYC8bUOD/So8JoqXXbvOJMnlDPnpfEiKU5rdmiqGGIN6zB7Pa3Jk+m33dpVOgVhj
         +kNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GxgqoMUihVnBYcKK3++0fUno1KXCcWqFmu2cEU2H1Cw=;
        b=EP8gOHYAyYemf1LLD6LEzvuO15tLX4MpDRGwGVMhHTfUg2hU81vgORNs3DLa07SeKx
         v/2hG+5HdIj8KEcP6egldV1Xc6KGB5NeyESNj9ydhPbmKsPoTU4DelIF7GCCC49StH0A
         kcgVbOW0YUJf1deikY9MjBZFyYzaS3B/xZ6UjRiEj5OlflEf3p3GZisH9dZVueuoCu2T
         aZjFUlRpaJReeE2CPkfo0mnfiT2EYerLgfIpiHB4mmcYFmOydg7Pk5kAYEZLokRpPjgS
         a7N/SjrfH+nqIRJDTPNHOKPndp5paJ86CNzYy/DYC4htioKY/defRGSo4gwl+jQ3vlc9
         FvFw==
X-Gm-Message-State: AOAM53358dCuyDSwZxDNcxV4Sp8OJ7J8C+38sz+/ph/3RjU3hVr4Bvg1
        X15b2lCS2Ci/WOdlfODioKI=
X-Google-Smtp-Source: ABdhPJwsfuxNQoKsFaXLNqkklX1tGt/0iaYLc/6nSut6Sbm711qpD7MJJ6UArMq7LtcXGZeO+NXrKg==
X-Received: by 2002:a1c:7f8b:: with SMTP id a133mr18295683wmd.155.1600460016164;
        Fri, 18 Sep 2020 13:13:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 10sm6592820wmi.37.2020.09.18.13.13.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:13:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH 0/2] Document size_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c357dd2a-71b0-4f23-55e6-fbde975ae5ee@gmail.com>
Date:   Fri, 18 Sep 2020 22:13:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 1:27 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I documented size_t.
> 
> There is a minor thing with this patch:
> It references to a not yet documented type: ptrdiff_t
> It's just that I'm going to document it next...

No problem.

I realize you may want to add some pieces, after the comments from 
Florian and Paul, but this patch series is good for merging as is, and 
I'm merging it. You can send a follow-up patch mentioning %zd and %zu
when ready.


> In the See also, I just put a few important pages.
> Maybe you want to include a few more.

I added read(2) and write(2).

Thanks,

Michael



> Alejandro Colomar (2):
>   system_data_types.7: Document size_t
>   size_t.3: New link to new documented type in system_data_types(7)
> 
>  man3/size_t.3            |   1 +
>  man7/system_data_types.7 | 103 +++++++++++++++++++++++++++++++++++++--
>  2 files changed, 100 insertions(+), 4 deletions(-)
>  create mode 100644 man3/size_t.3
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
