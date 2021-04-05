Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80578354199
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:37:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232735AbhDELhV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:37:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232683AbhDELhV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:37:21 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 993D0C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:37:15 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id u5so16400695ejn.8
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bGSrbJpZDa85/HPKLzpea7+7CLJh0p/+ja3/E7+XyGo=;
        b=d8oXaEI6dJk1gv7TfQzRYC8jRoeE9hsgomQN1+yOdsZXJkZQtAKoVVU3ck2sxNgVuP
         3XqfW06tuNfiuDC5QUqUTs1np8RO+BXTdgPdEaqfCnnOicTWVs2L4RrMdMVqYYDDtaMw
         cTztG3h4PFdeU/SMGj3pboBpGaFfmzKPFo2WSKbrkFstO0reFrKnl5bLWkZtHym1FN8B
         w4RuM/XnDgZqWZrjg9VU8e8oQrKgAWXVoig9ZLkI9UsotEZhs7iAVMFZ7WmkHUU/F3Pg
         bv4CQ1jMLxkjes522yxFnxo3WSjcSTy44IM2FDT5N9O4IuGO/CxSEOZjGVFaVbSuucsX
         pE4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bGSrbJpZDa85/HPKLzpea7+7CLJh0p/+ja3/E7+XyGo=;
        b=mzZpPfxoUvhq6bPe+W+NIaqCLlXWYBYU/KqskZbTeGEYzVWmorClIpzyJdlg8Jx6AV
         eXmNNC6V0g+X0wpTj8mFpuf9xGBfzZtnVklzN4YFsQfJrc9YRFn8bbr7+fN2UjdeH/A7
         k337T1n9oxEnngPLHTD/jKGJFBxt8vWK8KhlE4B3dgjzLs1SdlzFhE+AhQ5+WHbv6pE+
         xclpbzgYXJbgfwF3iuPVKFebRuKk93k3ABo8xQIjmZvXe6CIfkPDhcTmRSCSqHFURUB4
         DxYXIwGCzJkZ/FX0skoxwyZRSpzyJtLDCzvZ2ir3B0hixEwCcBWnxR906vrQXX2AGsiu
         6jxw==
X-Gm-Message-State: AOAM530UXQq8uM0732yTpn+8wrwGzeKsQAV6gwzQuSAIvqsa5h/cyk+A
        85i6Jj5tly8k/mVv2PgXW8c=
X-Google-Smtp-Source: ABdhPJymP9UvKVplSTz0PmyoMRfpCo8wjvjZVCzvpPHJDDzBmhsYhhLjejeRqjLFQhiephfSzxVWRw==
X-Received: by 2002:a17:906:b74e:: with SMTP id fx14mr1181352ejb.466.1617622634424;
        Mon, 05 Apr 2021 04:37:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id x4sm10445919edd.58.2021.04.05.04.37.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:37:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 21/35] getdents.2: Use syscall(SYS_...); for system
 calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-22-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7581b384-5caf-40a8-152e-fee7fbd2c5b6@gmail.com>
Date:   Mon, 5 Apr 2021 13:37:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-22-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/getdents.2 | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)

Patch applied.

Thanks,

Michael


> diff --git a/man2/getdents.2 b/man2/getdents.2
> index ec00a73ba..6a9f4e04c 100644
> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -33,7 +33,11 @@
>  getdents, getdents64 \- get directory entries
>  .SH SYNOPSIS
>  .nf
> -.BI "long getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
> +.PP
> +.BI "long syscall(SYS_getdents, unsigned int " fd \
> +", struct linux_dirent *" dirp ,
>  .BI "             unsigned int " count );
>  .PP
>  .BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
> @@ -43,9 +47,9 @@ getdents, getdents64 \- get directory entries
>  .fi
>  .PP
>  .IR Note :
> -There is no glibc wrapper for
> -.BR getdents ();
> -see NOTES.
> +There is no definition of
> +.B struct linux_dirent
> +in glibc; see NOTES.
>  .SH DESCRIPTION
>  These are not the interfaces you are interested in.
>  Look at
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
