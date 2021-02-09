Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63B04314E3D
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 12:30:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229744AbhBIL25 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 06:28:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbhBIL2l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 06:28:41 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FAB3C061786
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 03:27:55 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id l12so21218429wry.2
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 03:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zZol8ntDVWCGT/aRtEkEZnfsI15ew6RPzdu36w3xPUY=;
        b=lhntzeEVanhLSpsMqskwzWcaZojDw66Kgw1xKM6SV7ahoH90dQvm3DIvdOnwvLOjTN
         T2qsWAxQPGzICmUsq4uvmIz4s01xWjaOa3b9kz8/TDCHjVdPZetfEhq6ncZBA4118gSH
         BAxteBvMQvVY+RPoYlC/V1gh0gnQrnJI441tZ2L6ZXD+HWdilWfMeXSr/8Nrqg6oChlz
         TI6zykBWO8+eFZCtiZwsn9njmNBbc32KQGFPS69NfsIo8y8xOlELqPirnzrt3jSbfyaL
         wn9UCulqNme3SwdjdsYFJVYU5s7a3qgu5cAG9rRJ4sYGajremH2TVNTm9OYNb4j0EwYf
         xsZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zZol8ntDVWCGT/aRtEkEZnfsI15ew6RPzdu36w3xPUY=;
        b=mom8UuZelBVPHarPXgfZ5ypkyWTbAtJiFwbB44nPuobABylLx8EN8+mcHpNvl/S4cf
         k5ia6IhLieN9kjOR3tbNIe9dNfbOcOSMY+7LNN+h8QFzz03W2gTEQdcldZAsM86rRyoF
         GrJSdtuziDkyzqvEc36Ey+sBE/5ut0/vD8y9whnpSiHCzjWrXi2S+I32iF1pejVaGutF
         6etwMLy1MBDzLmuQO90A3ToTAG67yX1HZGZUAM9hM63brMo6pmG4LGln61qDAtqEL3uz
         iSYq3AsfQ/Ns8iy7LdXjsasZ+SjNOMjPmatmK77zvRFlG06WMiyrAJ5cHCXyAL4YaxPH
         fCMQ==
X-Gm-Message-State: AOAM530b2xe5Hb7SHSvUAmSPbYgltvhQ4BEeCuDfHhLWmud0JjnWCqTI
        67qLuH30AHzbd8PgoJxcby39IMHqQ99o6Q==
X-Google-Smtp-Source: ABdhPJzuNfjvdSi3R+rL9FyArz4qgw8IZTT0bMpIKcM3shEOdjJjZV+xzV5YWxjwLZCoIKt7HYoQJQ==
X-Received: by 2002:a5d:4e10:: with SMTP id p16mr15166029wrt.360.1612870074396;
        Tue, 09 Feb 2021 03:27:54 -0800 (PST)
Received: from [10.8.0.78] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id i10sm11516004wrp.0.2021.02.09.03.27.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 03:27:54 -0800 (PST)
Subject: Re: Why does stat(2) say <unistd.h> is needed?
To:     Jonathan Wakely <jwakely@redhat.com>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210209110912.GX3008@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6d13f96f-d42b-7748-21f2-da5e7c88345d@gmail.com>
Date:   Tue, 9 Feb 2021 12:27:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210209110912.GX3008@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonathan,

On 2/9/21 12:09 PM, Jonathan Wakely wrote:
> The stat(2) man page says:
> 
> SYNOPSIS
>         #include <sys/types.h>
>         #include <sys/stat.h>
>         #include <unistd.h>
> 
>         int stat(const char *pathname, struct stat *statbuf);
>         int fstat(int fd, struct stat *statbuf);
>         int lstat(const char *pathname, struct stat *statbuf);
> 
> But I don't see anything there that would require <unistd.h>. POSIX
> doesn't require it (and since POSIX.1-2001 no longer requires
> <sys/types.h>, saying "Although <sys/types.h> was required for
> conforming implementations of previous POSIX specifications, it was
> not required for UNIX applications.")
> 
> Is the inclusion of <unistd.h> there a mistake?
> 
> I've been trying to track down why a libstdc++ header includes
> <unistd.h> for no apparent reason, and my best guess is that it's a
> result of this man page saying to do it.
>
As far as we can tell, there's no reason to include it.  See 
<https://lore.kernel.org/linux-man/97457bf2-2b29-af4b-c910-2391c69c4134@gmail.com/>.

We haven't fixed it yet, because I'd like to fix all of the pages, and 
that's likely to take months (reading through every manual page in 
senctions 2 & 3, reading thorugh every included header, checking POSIX 
requirements, asking Michael if there may be historical reasons for a 
specific case, ...), but I'll do it some day.

For now, if you submit a patch, I'll merge it.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
