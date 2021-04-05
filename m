Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B8EE35413A
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:44:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232820AbhDEKmR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:42:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232035AbhDEKmQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:42:16 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C01FBC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:42:10 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id h10so12039051edt.13
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MgZgBjpFkf/JFI5+E5+gw3nnwjUBoWZEjiYKim66X9Q=;
        b=EgubH3qSpwVsPzhIr+wKKRVda4NuV9L802Upl310xT258I1O/kFqf4n1S7Ui3bqVXM
         wOVD8BQasasoAXN+XfJR5x15AHMfhEifkTHs4wtbF1Gw2YJunEgc9W5SefysmV+8hnzQ
         gLCVxMV6AzAobhNflZdjssu9CkIAKeF9mGPvolcfU3X5fki+YtVlTrYKLDh0rOGZzs/m
         9vtIxt4D1fOcIujqPreVrdTlcjUDyewIIf3eQ2WGyTHRvwiLjPfHDsYqtqJL291bJstI
         otGAdFsQSY2dtyAqzf4cpMhSbf6q07DX1REDMvm5YkllWrq3LGTGu9GcbG5KvzurcBBk
         cXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MgZgBjpFkf/JFI5+E5+gw3nnwjUBoWZEjiYKim66X9Q=;
        b=k+RbofHuAxPetHfYcFqvBTejGHo00XIBw7i2NnKu3Y39DO2fVXgVaHVXkpzsb4lqqO
         Z3iBCGNmc/xjlH2KslnxNq6I6rm+ku8q6dY/sZb0iO7OKyI7hyqjGQSdDuXoR86U9TzB
         7zKRPnS4vVdlq/XhFGahxdiqdPzL4Aj1/a8l3Lfre9CetsT0hvdfn+eG7z5gx4r7AZnA
         XZstgmgdHeUD26OGnks1BHi8/YVSsp4D1n6BCcDk5q7iiogbAZ3nNvF16vUoKKcXjaw0
         7OmeSwNAX7Nd3xQtmBMis+P73Eh2xYbz60/AYRDV++9zzoA+5JHtGVt8OKE5n0+5gNaR
         oWig==
X-Gm-Message-State: AOAM531lmT+32BcEw+Ls5F+SPdBEHSZmlmw2P70jAjJEdQ8OWfSx1lHF
        sxxmui4zRpgEzjKNYH/vLndJXkJ9q8s=
X-Google-Smtp-Source: ABdhPJy96EyNLSaDpbRIfVKTqb/L/bP21tPGahwDAbNsCJs7Cc0C/t1xx3va5k0f9i+Lx8u97HkKVA==
X-Received: by 2002:aa7:dd97:: with SMTP id g23mr30578253edv.154.1617619329526;
        Mon, 05 Apr 2021 03:42:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id lx5sm27216ejb.47.2021.04.05.03.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:42:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 20/35] futimesat.2: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-21-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4f478ef0-763a-2b6a-d7c4-e6098ca72867@gmail.com>
Date:   Mon, 5 Apr 2021 12:42:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-21-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello ALex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Patch applied.

Thanks,

Michael


> ---
>  man2/futimesat.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/futimesat.2 b/man2/futimesat.2
> index 6ac9a9200..86e941fe5 100644
> --- a/man2/futimesat.2
> +++ b/man2/futimesat.2
> @@ -28,7 +28,7 @@ futimesat \- change timestamps of a file relative to a \
>  directory file descriptor
>  .SH SYNOPSIS
>  .nf
> -.B #include <fcntl.h>           /* Definition of AT_* constants */
> +.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
>  .B #include <sys/time.h>
>  .PP
>  .BI "int futimesat(int " dirfd ", const char *" pathname ,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
