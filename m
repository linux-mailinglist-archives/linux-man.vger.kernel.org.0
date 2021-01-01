Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 645DE2E85D4
	for <lists+linux-man@lfdr.de>; Fri,  1 Jan 2021 23:33:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727216AbhAAWdC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 Jan 2021 17:33:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727147AbhAAWdC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 Jan 2021 17:33:02 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C05E4C061573
        for <linux-man@vger.kernel.org>; Fri,  1 Jan 2021 14:32:21 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id t30so23219373wrb.0
        for <linux-man@vger.kernel.org>; Fri, 01 Jan 2021 14:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1noScX4tiamFqctFSnD8f5lbRW6qnkMw7i9xRTcUbeA=;
        b=u1KLGcVBCWTIbh78HWTbVwxzoAwLd3dTgkGTO0TNKU+39gD1j5855p4MYe1b4Cl5Ee
         FfYdePlowImHjsk4b6PWtkKWlPLIywh59dVYdsQJFa0SYE/KIouISEwY2jC6cb1Hmugp
         66MbLq81pDZmuRTJMLoNloKBxtonGZrhVOZhd+pw7PQZGYCpNKsqK+90wgUhNpQLtfvE
         Dt1YpTpd/lvVN3eueWwn2oBUv/OBvNQfknixVmHb4Pa1BsdauuCwdtcgLze2p2kokpe6
         0rTvSvDqtl4kG50uF6eevn4ZuRS2k+pLGwtx4nHRWGfltcEs/y1IxFwlFISE0aKW9ArF
         rE3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1noScX4tiamFqctFSnD8f5lbRW6qnkMw7i9xRTcUbeA=;
        b=DY76UjaSlDSYN4Ao8e9a/HKWSP0A7/1H3bbKb6M7CiZIdcP7xJgHkRe7DBWqMJL6Fi
         8o8Jd/vGoP7ba+dgkShA2FFU2XTZuc0H5DnMe39ydLP9v9C7aa9P3Y2XTGfL9dMaP8IP
         SIOZ+jvWjxptrpNkJVdFSrSmWf1T48g/NMnX/0HHR/lpkVVorh07DsZvAZKwvgSWkNL+
         dyoE4ylBS0aoTgSK07B4h6dTpdVMqsBq5e5Ve60uwgyTz4ZZxUCvXECClBLgZDsNhSxd
         gDz76V1RCyyKLSk5AdA8p1dik8ojrMXqXgSS2ITqUvUOtY4mHSDt5S05taDLAczt1TdA
         b0qQ==
X-Gm-Message-State: AOAM530w8dOVrHbymEU/Gp0M7k8/fq/QHtEKMasaC5XjCgSsDkZUbziE
        CqQRJO6Eogaz9eV3eRDK0AM=
X-Google-Smtp-Source: ABdhPJyWFPVMh/3eRu4lmI0IjyNnyEkAWMOQUnZtzMcpdTNTj8egwQXLuYF9//YHbu0xRdf0DVqmAA==
X-Received: by 2002:a5d:6045:: with SMTP id j5mr67708050wrt.223.1609540340530;
        Fri, 01 Jan 2021 14:32:20 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id c81sm18337097wmd.6.2021.01.01.14.32.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jan 2021 14:32:19 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] system_data_types.7: Add off64_t to
 system_data_types(7)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201231191457.672921-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f8a6d945-2582-815c-b076-7c2efa46bc62@gmail.com>
Date:   Fri, 1 Jan 2021 23:32:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201231191457.672921-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/31/20 8:14 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 44 ++++++++++++++++++++++++++++++++++------
>  1 file changed, 38 insertions(+), 6 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index d2a271a3b..7f3309517 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -726,6 +726,38 @@ C99 and later; POSIX.1-2001 and later.
>  .IR "See also" :
>  .BR lldiv (3)
>  .RE
> +.\"------------------------------------- off64_t ----------------------/
> +.TP
> +.I off64_t
> +.RS
> +.IR Include :
> +.IR <sys/types.h> .
> +.PP
> +Used for file sizes.
> +It is a 64-bit signed integer type.
> +.PP
> +.IR "Conforming to" :
> +Present in glibc.
> +It is not standardized by the C language standard nor POSIX.
> +.PP
> +.IR Notes :
> +The feature test macro
> +.B _LARGEFILE64_SOURCE
> +has to be defined for this type to be available.
> +.PP
> +.IR "See also" :
> +.BR copy_file_range (2),
> +.BR readahead (2),
> +.BR sync_file_range (2),
> +.BR lseek64 (3),
> +.BR feature_test_macros (7)
> +.PP
> +See also the
> +.\" .I loff_t
> +.\" and
> +.I off_t
> +type in this page.
> +.RE
>  .\"------------------------------------- off_t ------------------------/
>  .TP
>  .I off_t
> @@ -775,12 +807,12 @@ the width of this type can be controlled with the feature test macro
>  .BR lockf (3),
>  .BR posix_fallocate (3),
>  .BR feature_test_macros (7)
> -.\".PP		TODO: loff_t, off64_t
> -.\"See also the
> -.\".I loff_t
> -.\"and
> -.\".I off64_t
> -.\"types in this page.
> +.PP
> +See also the
> +.\" .I loff_t
> +.\" and
> +.I off64_t
> +type in this page.
>  .RE
>  .\"------------------------------------- pid_t ------------------------/
>  .TP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
