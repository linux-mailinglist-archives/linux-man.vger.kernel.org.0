Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6551ADB84
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 12:49:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729476AbgDQKp6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 06:45:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1730095AbgDQKp5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 06:45:57 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC6D8C061A0C
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:45:56 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id d27so2543310wra.1
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lc7hWcmz2OTdnAIqjOoVdsA11M0oDJw+IgilHWtF2bc=;
        b=Nr6MijLsGFZtyxn/xpfXL0Ntz14gxk/b94O4/BR10wTj7jKA2h1+5mOwNf4M0B2Kv7
         cl89S6iktYHfdM4o7xsmK4g19tIjKIZdv978cVVu0UJT8kNRiyPbDucn+gxJ1pLUBqNQ
         yTwnfX/H1n427krZtRkg+Ygz6ks9x7N4snHdw1U6WjdtZbIdWf1ulCqmfvKCeKb99PlL
         4K+EnTq8PVk+P2tUYfkYLmCl4GjCB3/3HfubsbXXQv2TaY/BSSmmN5HJ7nEpIWK2IMPe
         f7GMXNKYYTNFOwKWRSmWjDf8oKF6uBbm67Z2hKbDhIOfKc79K9Nlv5qhLnG9VVbc0dWa
         sCQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lc7hWcmz2OTdnAIqjOoVdsA11M0oDJw+IgilHWtF2bc=;
        b=IT3jV9AxRFh3Dl+YJdlqCW1xOwIDyiFoYeF4Lt0I5D28VEQU2WL7Dm+q3dr85dU+YM
         8WDf5AjHSR7l0Gpps0I2oaj04Cuaiglqd/h412oM5Q1Wc1LgNwpfvq6XsVStt8pnwGa1
         DvdVx0jA7znv3egbPLuGsehHzmxIILgizeADk22mi7XFibe2Pa8qYObOFlH711gkYkUa
         eavgdH2MPMgSKKKwtgGyBbCVPWkhfzhsH2JDZX8830kBO0NUFGA1+AEiOp/9FeGOjB+j
         bEVsVLZByffzr7srOfiqAv378YdhMm7yEVvh4vftSTyQ7TwLSAdMuRucCjlmXPj6E5rL
         k1uw==
X-Gm-Message-State: AGi0PuYLmn2N82AhvxYTne3OLxMGztUJOQIHforht3vqMEww6bc0T8vl
        XX3/56/c9yG7ryGqmvqgzkM=
X-Google-Smtp-Source: APiQypI8+ovA+/I8qSCyAAO3F7hXrjUGZXR7gnrmZ8dgJUsNkivgtpp7fYyTrpHUtFDvp9Re1pIPkw==
X-Received: by 2002:a5d:4485:: with SMTP id j5mr3007718wrq.427.1587120355580;
        Fri, 17 Apr 2020 03:45:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id p190sm7248460wmp.38.2020.04.17.03.45.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 03:45:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH v2 3/4] posix_spawn.3: Clarify by using name of steps
 rather than syscalls
To:     Olivier Gayot <olivier.gayot@sigexec.com>
References: <20181016193751.4473-1-olivier.gayot@sigexec.com>
 <20181016193751.4473-4-olivier.gayot@sigexec.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5c0c4db9-79e8-7b1f-ebae-3fed2e28f4d3@gmail.com>
Date:   Fri, 17 Apr 2020 12:45:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20181016193751.4473-4-olivier.gayot@sigexec.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Olivier,

On 10/16/18 9:37 PM, Olivier Gayot wrote:
> The implementation of the fork() step in posix_spawn(2) relies on either
> fork(2), vfork(2) or clone(2) depending on the version of the
> glibc and the arguments passed to posix_spawn(2).
> 
> It is sometimes ambiguous whether, when we are mentioning "fork(2)", we
> are referring to the fork() step or the actual fork(2) syscall.
> 
> This patch hopefully avoids the ambiguity by replacing confusing
> occurrences by "the xxx() step" where appropriate.
> 
> Signed-off-by: Olivier Gayot <olivier.gayot@sigexec.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/posix_spawn.3 | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
> index 8badb43bf..72e7509d8 100644
> --- a/man3/posix_spawn.3
> +++ b/man3/posix_spawn.3
> @@ -220,10 +220,10 @@ the requested file.
>  .PP
>  .SS pre-exec() step: housekeeping
>  In between the
> -.BR fork (2)
> +.BR fork()
>  and the
> -.BR exec (3),
> -a child process may need to perform a set of housekeeping actions.
> +.BR exec()
> +steps, a child process may need to perform a set of housekeeping actions.
>  The
>  .BR posix_spawn ()
>  and
> @@ -478,8 +478,8 @@ and
>  place the PID of the child process in
>  .IR pid ,
>  and return 0.
> -If there is an error before or during the
> -.BR fork (2),
> +If there is an error during the
> +.BR fork() step,
>  then no child is created,
>  the contents of
>  .IR *pid
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
