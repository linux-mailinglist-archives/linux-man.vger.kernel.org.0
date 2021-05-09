Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65F863777E9
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 20:10:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbhEISLt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 14:11:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbhEISLt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 14:11:49 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63D20C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 11:10:46 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id i190so12001810pfc.12
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 11:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rhqEXIqYaWnVprPm2q8ojngrcpNH0lUWcNzrlHeTdYk=;
        b=FS/NXvtrul6IoYK4A89NBguvOqpewxKJoDU3CfXvOVunAs+wEe8uhzDAOo4ebh5TN6
         dlQLTVPNdRPXnwIvAunJ4BY4lb40VDtePT1ZVpHHR0xNVlj5TGl5BE6ONG2rY/g+kMHE
         jrSMqb0tb89BQgj/uyWIaOKsIlrOcPF3fynWPAVXhbqhxlRGgF5GsY/3Ao+f26OA5AsE
         o5k4ZYhyZWRfyzJBpfahY4hhmhpar4uRr63fhoOIfdheTiFcFRnic9zDv6Gh78Iml8lk
         lb+DQRB3zPFrLcFDZfiS6Va6wOy0K1rCkGcSOR0ek0zcodoqujKkE6ZM1u87/fIP3l0T
         F80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rhqEXIqYaWnVprPm2q8ojngrcpNH0lUWcNzrlHeTdYk=;
        b=NijHtRRevJaMD/gz4gq4meUQ+dbBMjlNzJTSekJ0PhHZPIf6QWyetbmZP6e7HeB4QD
         J5zfuchwkxNVEkCyjADlYAPa4/VrK7ufOukoBi3lANOIQbgd0Z3kFhltjfXmyM50yueO
         lNYp9TqZja9PiC5dEc2B4b6/WMe0OIlm3sXsULUQG5AkcrgXTGE9ddTUEg1hXqo5uEB8
         IX7Gb7paWkxTp83c65FA6GdtylxLaQ3IZXl1kzVQv91F6WTi/AX2JSDJuo1J3o/7R7fq
         jvCc/waRfvz+Mpv1azCVP1DonEszcPgX7RXhMs3BnaEn38va6bNSiPGRZwg3wkE8PyFg
         B1qg==
X-Gm-Message-State: AOAM531FkgXeqTRmdyVa6mnEczB8pdlBl+tHgimQhM+gyFx+WljQ9u+a
        27yAdzK6BGueqdL93g41j5MPYnW9kcE=
X-Google-Smtp-Source: ABdhPJx/XQZwdNSskDYMcQoeoFZEINwrg/7jVGA+FRf3qfeJxGas/Yltghm4+vUkwFFMqVwOPtXLoQ==
X-Received: by 2002:a63:160a:: with SMTP id w10mr21344067pgl.225.1620583845979;
        Sun, 09 May 2021 11:10:45 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id y199sm9289224pfc.191.2021.05.09.11.10.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 11:10:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] open_by_handle_at.2: Remove unused <sys/stat.h>
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210423095218.18425-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a56ff276-75e8-694a-6bba-f520e1c0f063@gmail.com>
Date:   Mon, 10 May 2021 06:10:41 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210423095218.18425-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/23/21 9:52 PM, Alejandro Colomar wrote:
> AFAICS, all types and constants used by these functions are
> defined in <fcntl.h>.

Thanks.

Patch applied.

Cheers,

Michael


> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/open_by_handle_at.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
> index 4a4ddc34e..fa7add5cf 100644
> --- a/man2/open_by_handle_at.2
> +++ b/man2/open_by_handle_at.2
> @@ -29,7 +29,6 @@ for a pathname and open file via a handle
>  .SH SYNOPSIS
>  .nf
>  .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
> -.B #include <sys/stat.h>
>  .B #include <fcntl.h>
>  .PP
>  .BI "int name_to_handle_at(int " dirfd ", const char *" pathname ,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
