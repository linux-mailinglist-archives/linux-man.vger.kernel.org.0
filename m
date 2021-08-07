Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50E313E379D
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 01:49:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229842AbhHGXtR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 19:49:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229809AbhHGXtQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 19:49:16 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20D0FC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 16:48:52 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id f3so1674921plg.3
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 16:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BV5wmgX2rEnNl6TRY5eavtQGDg+DxbCe7P4e5W3yepo=;
        b=VCOEEfjoB0WUPi3ZSb3b6Fw5N5yOrTD/QccFcOr1tGb0swvLkTALH6puf1mgR0DrRM
         W54v4P/zD8WGDPq4yHTRLBAvxcUR25KGwgay3ah1rnUI0/jComsC9NpwDEKMJVg3kdWm
         fbnBmcTKS5uOYC0WWFxXxBNtNkV+fFNLTlXqBHjfdZxaBlw09N0jkOq+3/tlDaDBZxRa
         /3yOx12qdjiwP9pOl15anBUT7vK+ZTmpgF1NL+JVUnDQiR18v4HxZ5qO+dk37nM42xv0
         8M3o8N+B0ApV05VlGk+0xCRGSSjbt54qi93t0cBlV2NtVdK3bfAt3GjxFk7fnzin1HiC
         pIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BV5wmgX2rEnNl6TRY5eavtQGDg+DxbCe7P4e5W3yepo=;
        b=nMJFwi2NQiNSzFH8B8ZDk7vzd8IjdQmYAI/d2ajV9JahpWzOWv/VqXPLNUpDzpHe/P
         7MykPo4KdJduiNDhuFWYF6LP3VwKTHuuB9Y1WGCLSY9pmvTyPgsOxzWkSU0Rh6Y0jIoV
         MwqVkMlHEObAvh8MtZGd8jq2ttgYn8zeavyNWdRLYZ4tZswXZ/f1DiB7WKuA1FjnDC9K
         x3+lPWa5anzprzOvrLcT+xAFpsYsOrEUq2O0JwLvGIMjOF0BNtTkrIRFNrbQiO3VaDuS
         u1SSjKuQxqNNi91nx2qtDW+pepTVwuAzgysnB8IFjc6O3Q69EZCX/JKye+gCPypta5Rv
         gjzw==
X-Gm-Message-State: AOAM532E9ypCep2tbrG2rSaDRE/B7UA/jOIM/h9+BRnNPSk7m+DkLG5F
        9GcDjTHLuEZbmJGYO97VXwWOhsv0Gw0=
X-Google-Smtp-Source: ABdhPJyjBTz+J/Eo/aUcyF7pdNbUkCnBAT8cuCsciUBlSpoW2WyIpEX2svCMZt3V3n280/etak/i4Q==
X-Received: by 2002:a63:fb08:: with SMTP id o8mr40577pgh.72.1628380131404;
        Sat, 07 Aug 2021 16:48:51 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g22sm6001224pfo.164.2021.08.07.16.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 16:48:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 24/32] namespaces.7: fix confusion caused by text
 reorganization
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-25-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <08565d19-ff33-fc45-6d24-e2f94d2708be@gmail.com>
Date:   Sun, 8 Aug 2021 01:48:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-25-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Štěpán, Alex,

@Štěpán Thanks for spotting this!

On 7/28/21 10:20 PM, Alejandro Colomar wrote:
> From: Štěpán Němec <stepnem@gmail.com>
> 
> Since commit ee81d7e41852, the flags list has been (only) above, not
> below, these references.
> 
> (The flags table was added even before that, in commit
> 0b497138b908 ("namespaces.7: Add table of namespaces to top of page"))
> 
> Fixes: ee81d7e41852 ("namespaces.7: Include manual page references in the summary table of namespace types")
> Signed-off-by: Štěpán Němec <stepnem@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Cheers,

Michael

> ---
>  man7/namespaces.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/namespaces.7 b/man7/namespaces.7
> index d35c2d383..0ac32c77e 100644
> --- a/man7/namespaces.7
> +++ b/man7/namespaces.7
> @@ -97,7 +97,7 @@ If the
>  .I flags
>  argument of the call specifies one or more of the
>  .B CLONE_NEW*
> -flags listed below, then new namespaces are created for each flag,
> +flags listed above, then new namespaces are created for each flag,
>  and the child process is made a member of those namespaces.
>  (This system call also implements a number of features
>  unrelated to namespaces.)
> @@ -119,7 +119,7 @@ If the
>  .I flags
>  argument of the call specifies one or more of the
>  .B CLONE_NEW*
> -flags listed below, then new namespaces are created for each flag,
> +flags listed above, then new namespaces are created for each flag,
>  and the calling process is made a member of those namespaces.
>  (This system call also implements a number of features
>  unrelated to namespaces.)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
