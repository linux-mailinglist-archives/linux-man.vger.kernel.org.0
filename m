Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A36612A20AC
	for <lists+linux-man@lfdr.de>; Sun,  1 Nov 2020 19:04:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727170AbgKASEy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Nov 2020 13:04:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727111AbgKASEy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Nov 2020 13:04:54 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11295C0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 10:04:54 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id y21so1703488wmj.0
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 10:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Z99nLiomB1UQSEzUZ+SYZumnIS73AdLfEo1PvN3z2Mk=;
        b=s2w1vbMw4nR7OguSYYXaRnz1f4lojx2m+wMgJNwEPFgoC19EUpPHzHfyPtCaDthvq5
         8Myuuua0vipqAXqDaf9s3gkiCvfgdbLTxwQmWao9dAXnQnZ0Unpxut9okK0W2uKomUuE
         SQ7trMOi45pduN9b0IwEGHE4TaJ8vRa8JdjdLlzgGPXc3tmoRvOwQvH/k4seMTzKxm9y
         X8cQAi5W1vHozjAq4c2o/dzOABXrEDTQvZwP7vnHaBUV5dn/Y8bFXj8DWOW9oAqyxtO/
         xBjMCfxoQDBFyf3301RojHvVHkGNP4rQMmjBiPVFMXnkJDIt5kM80QBer4WKj7nq548o
         B8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Z99nLiomB1UQSEzUZ+SYZumnIS73AdLfEo1PvN3z2Mk=;
        b=sTSmTOtXBUz+buhj+U0Y2gStMC79OXBkihJlhJUYLUoEVU3j7+De3EQMokVoYUhQHf
         t5p7RVAUDxRS0nnDofXnU1ZR2tbaOYxxaG1j7ChJy0841ZzfIyAsIUHLlhqzj7Ww2n2r
         9qBaNra23oVWWnqTCWG1tSM8SepgFjJ9sF4Zk3BCQcF6VTbX7yWYreyp0fsUidRsGT12
         pAe+V9LHPN2q9snZfF2fF1YQNhXq52hWK68sJVBpOV/Pxrp31w+YDaLyfhKymIH2ORPh
         xe0rKFRCn7sO93nNggVQ0DMOmteEXd+Om3SVK31WIrJB5ufwxBHaqjooVuVslPeHywXy
         QkuA==
X-Gm-Message-State: AOAM533TfAT3yNocMJHrBgqN6xvGO/nUsDYMWKv5GSriEpaCunRu8P4a
        ngwXIn9wTQFUb385OG0rAK2b0Z61yyM=
X-Google-Smtp-Source: ABdhPJxaZfJvId0GdjR2adv0tJyrwHNvGVi42yVn4IupOoZwkFyYVmG3G5+XABW3E5hGW1d4JShoIg==
X-Received: by 2002:a1c:2ec6:: with SMTP id u189mr13974970wmu.85.1604253892484;
        Sun, 01 Nov 2020 10:04:52 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id g66sm12674394wmg.37.2020.11.01.10.04.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 10:04:51 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] openat.2: SYNOPSIS: return long
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201101151538.195120-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <004a827c-6558-46ed-26cf-542178864690@gmail.com>
Date:   Sun, 1 Nov 2020 19:04:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201101151538.195120-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/1/20 4:15 PM, Alejandro Colomar wrote:
> The Linux kernel uses long as the return type for this syscall.
> As glibc provides no wrapper, use the same type the kernel uses.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Applied.

Cheers,

Michael

> ---
>  man2/openat2.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index 3ea50138b..80e75139e 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -31,8 +31,8 @@ openat2 \- open and possibly create a file (extended)
>  .B #include <fcntl.h>
>  .B #include <openat2.h>
>  .PP
> -.BI "int openat2(int " dirfd ", const char *" pathname ,
> -.BI "            struct open_how *" how ", size_t " size ");"
> +.BI "long openat2(int " dirfd ", const char *" pathname ,
> +.BI "            struct open_how *" how ", size_t " size );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
