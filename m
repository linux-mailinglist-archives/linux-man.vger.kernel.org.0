Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 919A835C190
	for <lists+linux-man@lfdr.de>; Mon, 12 Apr 2021 11:31:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239390AbhDLJbb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Apr 2021 05:31:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240921AbhDLJYy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Apr 2021 05:24:54 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FD69C061362
        for <linux-man@vger.kernel.org>; Mon, 12 Apr 2021 02:22:35 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id k128so6366684wmk.4
        for <linux-man@vger.kernel.org>; Mon, 12 Apr 2021 02:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=74mo/JJMqYIM4+zo2xRZtsFarloF4M+a197YqTM6bL0=;
        b=SdQuSNfllzHlMem6kcTpvzuI8hiMa0LJDn49V9OgZ44StFhm9Z9IQldGMUHPfmgMvp
         yGCApJVJ0g35pG6aj3lOZknHWJVvHnUAiHMbLNyFxMSXYLAX7huvcuwYBxeZ8J/RHDhM
         FZSSeG0vL0/HFrnNMxN69I1Gso5EE+ruaNP/uPfTu5ndTXgf//Ey8TTiXYuI7df3WpFV
         +FLkjTZ9uphu2XijUau7TuYUNHpyAHYQ70VUHuDoZpfFMOpRiAr4kDoQNXkxQPUGIGHU
         5F0iNbYb8PkOAh0SLEYZEeXtoA6Vs9IxpMEaMf5UJla681t1mEPwp7Wbstb1QvwDAG1q
         4ilw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=74mo/JJMqYIM4+zo2xRZtsFarloF4M+a197YqTM6bL0=;
        b=GuaSTud8UwDBdj5wFJxas9PJVmtUsqccxxG0tUz5zhpk8PBjvShOHYC2Dw5heZgJOC
         wBBwmiyp8xa2gFC+KMgEONuEhFLk8g/814S89sCUVUm8lPslH6RmCfx3GzPPrpJN3FQh
         2kyGmGUTyB4o+DUeu+C048KSkSCrnOC5bBVSuomlX5ixePYSZHWjqsWo3IlHtutA5zZ3
         NbA3MYan9uz4atD2PEgS0/+rA42buc7zC8AWCYM0u+uiNmX6Pl8dKxXAP/SpDExdiOdS
         XTtLfpg3nFO6dlGv+1ZlJoF/gxfzWc8MmodsN0s1LX5qlse6Vk0TZMYg1GpDyNRrC8OZ
         RL9w==
X-Gm-Message-State: AOAM531KJ7ih74U1udPkMtn3ZoFaspCUKAlHYVYNBVhdMY6BDjp2CVVq
        Agj3u+l1y8VhT+wg/dC7HHEKk0U7zyA=
X-Google-Smtp-Source: ABdhPJw5Sc91U5AM37rRJkYOo8/zGpT6WgNmMV+RWBN6fcHA801LtL9wwnVOpzYBoaq56E9eR/p9cg==
X-Received: by 2002:a7b:cd07:: with SMTP id f7mr1056894wmj.119.1618219354365;
        Mon, 12 Apr 2021 02:22:34 -0700 (PDT)
Received: from [10.8.0.194] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z15sm16559199wrw.38.2021.04.12.02.22.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:22:34 -0700 (PDT)
Subject: Re: [PATCH] setbuf.3: fix the error in section BUGS
To:     Zhiheng Li <phoenix_lzh@sina.com>
References: <20210412074443.15363-1-phoenix_lzh@sina.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <67c8cd43-4a0e-570a-4e4d-7539a3cd3ec8@gmail.com>
Date:   Mon, 12 Apr 2021 11:22:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210412074443.15363-1-phoenix_lzh@sina.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/12/21 9:44 AM, Zhiheng Li wrote:
> ---
>   man3/setbuf.3 | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/setbuf.3 b/man3/setbuf.3
> index 5e5d57f89..e6d41b2a9 100644
> --- a/man3/setbuf.3
> +++ b/man3/setbuf.3
> @@ -224,14 +224,15 @@ For example, the following is invalid:
>   .PP
>   .EX
>   #include <stdio.h>
> +#include <unistd.h>
>   
>   int
>   main(void)
>   {
>       char buf[BUFSIZ];
> -    setbuf(stdin, buf);
> +    setbuf(stdout, buf);
>       printf("Hello, world!\en");
> -    return 0;
> +    _exit(0);
>   }
>   .EE
>   .SH SEE ALSO
> 

Hello Zhiheng Li,

I never used setbuf(3), so I don't know much about this example and why 
it is "invalid", and therefore also don't know why it is wrong in being 
invalid.

As far as I can see, 'stdin' just seems to be a typo because it's not 
being used, and probably 'stdout' was meant instead, as you point out.

What about _exit(0)?  Why _exit(2) and not return (or equivalently 
exit(3))?  Could you explain that a bit more?

BTW, Could you please use a mailer that allows you to write plain text 
emails?  Mozilla Thunderbird may be easy to use for you, and it comes 
with most Linux distros.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
