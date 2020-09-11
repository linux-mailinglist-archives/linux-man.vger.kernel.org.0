Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19DD9265F4E
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 14:13:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725783AbgIKMNB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 08:13:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725822AbgIKMMp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 08:12:45 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF3B0C061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 05:11:45 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id w5so11237453wrp.8
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 05:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0OCeBj2Fd0kmZL3OBSWTpnurv+xFfvcLEGX1nwTsS7Q=;
        b=JyPWVfj29zQKj5Dp6iCObItTLzdBbKcrioBZ4dPC3+3FMceUwqiVlJc97KROrna3fq
         Fk4oSsKKuPPnaGfDdGI20pzuss8sVD4MaMaCEzcuq/aFIsqBFObkIJWIJLqq7TTKvAvv
         xUHBE8m1n1ke2ehO9cgxjKpdgLLuE4FWE3QBX2mueRKjgM4efvJoSorCyBvFYS9QE4ye
         6+6hPLjVzTAKESopFNbxCnOm+6jO6J7pIcqShR92/mopdKN+ShEcrXPS3qkCcsgQ5UkG
         hMosDsXDwKVhmtKeObNqTl3SdOJM1bAej+BGIhvvJbt7+qwBTmqwaDuKc4/7f7LdaAxN
         17iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0OCeBj2Fd0kmZL3OBSWTpnurv+xFfvcLEGX1nwTsS7Q=;
        b=io8v9llgIAC04+vtrLe6FP7fnT3pElaSFie3vYk4HnNriooGZVFptojmdpAFGfeKfE
         WyXCpxDsTzR6/Bi+OmQHOSnuQaLX8QgF6XGu9u21ZjmYgef6aJDVyMp8UfeoTsqMGdg6
         YoH2eWBTl6lB8KmK9AR7SiQVTlBvc/ycVqGsGxlklNbumFAV7yncu6guAZI88ybn6mEp
         xJlFTm/0u3n4MNrav21UsMykuUkgmJfAcZzxPFLAItNnSYbhFtAUHDPkgA4eSBvNc8wS
         Ur3VQ4DWtx+dyzQkhbGJ2eNaLYBodAehPpuiYw1Y8bq6rtzLAdFuiNjA1IGjnyy4jock
         ysFg==
X-Gm-Message-State: AOAM530TRRnoRjtZuo5ZadGJjMxbyrBmYJ3lk8Z4xeJ5oTSV4uGLjrwC
        hGt7LL/devJSXJ04hyPxH+zBVVRLo8E=
X-Google-Smtp-Source: ABdhPJxsJSh4z9HUzDpId7gD3yMxuerZcqSKqScsoVGJcqN6L5N8DvkR1+Oxn00NZUSN4SWhKslxYA==
X-Received: by 2002:adf:9ed4:: with SMTP id b20mr1813902wrf.206.1599826304172;
        Fri, 11 Sep 2020 05:11:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id q12sm4380693wrp.17.2020.09.11.05.11.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 05:11:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] bswap.3: Use strtoull() for parsing 64-bit numbers
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200911114446.3971-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9fda07d3-74bc-24b4-c2de-ab522d7e5bb6@gmail.com>
Date:   Fri, 11 Sep 2020 14:11:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911114446.3971-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 9/11/20 1:44 PM, Jakub Wilk wrote:
> Before, on 32-bit systems:
> 
>     $ ./a.out 0x0123456789abcdef
>     0xffffffff ==> 0xffffffff00000000
> 
> After:
> 
>     $ ./a.out 0x0123456789abcdef
>     0x123456789abcdef ==> 0xefcdab8967452301
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Sigh!

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/bswap.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/bswap.3 b/man3/bswap.3
> index 412e1702f..ce847580a 100644
> --- a/man3/bswap.3
> +++ b/man3/bswap.3
> @@ -72,7 +72,7 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
>  
> -    x = strtoul(argv[1], NULL, 0);
> +    x = strtoull(argv[1], NULL, 0);
>      printf("0x%" PRIx64 " ==> 0x%" PRIx64 "\en", x, bswap_64(x));
>  
>      exit(EXIT_SUCCESS);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
