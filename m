Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60DF92ED05D
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 14:06:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727453AbhAGNGY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 08:06:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727327AbhAGNGY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 08:06:24 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAF94C0612F4
        for <linux-man@vger.kernel.org>; Thu,  7 Jan 2021 05:05:43 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id ga15so9613748ejb.4
        for <linux-man@vger.kernel.org>; Thu, 07 Jan 2021 05:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yffjiNx3c85ZdrAME2zp4NaZQHCvYzm4gqA4ytztSmw=;
        b=DzPVb21rD2Pz1vTf25nIxTAqkhEUgtrkgmlqmUVHlCvefLmrmfV3P+P7R94lsfQqTa
         uLtEKIO0iJjIpXRhnogCNtUJsD09gbFqooP1I7jlbl1oiXk3xVXBg5TPwlfo25OmK4B0
         aW7gsvtSpp0AS1lBf3pw7UGrPy2tBasDOiJI03QadrcXjwVJq2Mf88L1hX+THre2nSJ5
         yID0Rb/g/XZFObckziosqQdl4NvbfHe43pTVuJmjI5eMRIPYPZP9kF5BfINx0z6WXQb4
         JIHXocxvd7Gf/zMtSsmu62wCdCsOQ51+qlUr0DTO7+r/oOmX9oWKmf/TM0SvVkm7v50J
         5CWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yffjiNx3c85ZdrAME2zp4NaZQHCvYzm4gqA4ytztSmw=;
        b=nDhIFUgTcKgFWtR6ng4h0frJrjt+aJtmUo52cdhSVnKbkm09Xzf6ajOH2HYcG1FTRO
         reh0XT2mA9R1YVWpqCX/Lb9vv8s/AXOoR6KAv/9N01paPgPX/tZYQRDN+AF821YqgB8Y
         0VqCim1JFPntovA7p+IUeIzSQu41i7RETGHun+LgPU7ngOplGw9np1cEnZ2XWF71xqZs
         UeLr39OGCkcF/a7jUQ6EjR7XunHKmNLze/WIfp+OnuQ/OUqVqd53lEziVHo3AES8WSLn
         guEc08c64gtlgc/mqyn7xYenaNfqV+dFSK0L+vYHQkOUUxvuQDNnWqSHiMvjKUXm55DW
         +rSQ==
X-Gm-Message-State: AOAM533wqni4TENEN8VsTPxhkb76U50k0iV5NGMzaATSf3IGnlmFS6il
        /DERSGciq+qRmIR8GIPkGy7qfmNHiNg=
X-Google-Smtp-Source: ABdhPJxaxYPYymvsJJFHJBKJ4c5mcgmlsdG2zKwHj2Pe4rrQRLE72ZTHjuB3s5XZ3d91SP3hwPBYaw==
X-Received: by 2002:a17:906:94d4:: with SMTP id d20mr6190874ejy.475.1610024742670;
        Thu, 07 Jan 2021 05:05:42 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id p12sm2398464ejc.116.2021.01.07.05.05.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 05:05:41 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Yang Xu <xuyang2018.jy@cn.fujitsu.com>,
        linux-man@vger.kernel.org,
        Manfred Spraul <manfred@colorfullife.com>
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201229110309.7774-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2aa8a09b-b61f-6294-26e5-1cafb3941489@gmail.com>
Date:   Thu, 7 Jan 2021 14:05:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201229110309.7774-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, hi Xang,

On 12/29/20 12:03 PM, Alejandro Colomar wrote:
> From: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> 
> Since kernel commit a280d6dc77eb
> ("ipc/sem: introduce semctl(SEM_STAT_ANY)"),
> it only skips read access check when using SEM_STAT_ANY command.
> And it should use the semid_ds struct instead of seminfo struct.
> Fix this.
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> Acked-by: Manfred Spraul <manfred@colorfullife.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied. My apologies for the delay.

Thanks,

Michael

> ---
> 
> Hi Michael,
> 
> Here's a recent patch from Yang Xu.
> 
> Cheers,
> 
> Alex
> 
>  man2/semctl.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/semctl.2 b/man2/semctl.2
> index ed5e79efd..e562d0bc4 100644
> --- a/man2/semctl.2
> +++ b/man2/semctl.2
> @@ -297,8 +297,8 @@ all semaphore sets on the system.
>  .TP
>  .BR SEM_STAT_ANY " (Linux-specific, since Linux 4.17)"
>  Return a
> -.I seminfo
> -structure containing the same information as for
> +.I semid_ds
> +structure as for
>  .BR SEM_STAT .
>  However,
>  .I sem_perm.mode
> 
> base-commit: c55f66855eccfcd92b35fe7b13a326121f2ee0fd
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
