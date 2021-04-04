Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F273235398D
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 21:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231407AbhDDTv5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 15:51:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbhDDTv4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 15:51:56 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0133DC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 12:51:50 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id e14so14236328ejz.11
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 12:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7V0UCtUHMz+AaTJV6LIintpQuuVXXIaUfjVbj86HudQ=;
        b=raD7ZAn4dt2Gransysf9jxwSNIhPv5LIroyVT+lHSNoQU8RItxmnIDsUDtyjswXcV9
         HZtHgEv7BrfTeqEF9nFV8bPQgv7l6KvLSScFQ4jETsT5G0kamRyKrDVzwL6oMqzTMlRx
         XiosgnFzrnw3jTFdTR98F2QLvSHoZa2UtcO6HLinyAYl6hxaL900u8JLRngY/8t0scf/
         5hHu2qaG7CFmzDihaG7KpgKbRcosXNJYPrACfvLpbfujEw0jS9y5uJOXKuicIDG0X8Z4
         hZVadx88PVd4viPmNVPIVBKR70bDFP+bRhLLwhcrGG4AmJ6R+551t8HOhvXaD303cj1v
         xWTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7V0UCtUHMz+AaTJV6LIintpQuuVXXIaUfjVbj86HudQ=;
        b=IaUmCvTugJv4+lI97As1mYRT6FRRi95+qQcFTUCg4eSrlZ3hcgC6kcUX5ph/+mntox
         /Fh4+YA+Xv/tafyi5C8IQ3qQdsunWMeQu59IC+ckbKj3KUDIP/5pocZ7fz8afW2IfR2x
         tlgMhhqdVvrUOelbdWiFB3sLsbPx9RL6IJ2teuwvqF+ahhGUX/vpkIT1B0xjqmHVAaIA
         Bo+e5aa64a7XxRWnhW6mQuuC9O3xEldP+wvZRQzRVX3zYkLxsTbH4/XFa2mQs5UYFroP
         rsEQfRbwxvEe9fRLHorfU0CDai5alp6nwl8p9XoNxJH8MOYBA+Bdm36YIePqRfGSN7Xj
         TMDg==
X-Gm-Message-State: AOAM532GHB+iJByUF7F9f2AAfEHjdRl4AMzup7wKT478XDlNXyCQPh03
        dp2tjxJObJ4Z8tlKRe8LDU/FaBNdOHw=
X-Google-Smtp-Source: ABdhPJzR1TbJyr4bIdBKkZOBmbXZReQMTdjj6oBr5dsTYg04k7M54IvSgbkpJtS2BfVN/cIJorTibw==
X-Received: by 2002:a17:907:2509:: with SMTP id y9mr12690281ejl.170.1617565909353;
        Sun, 04 Apr 2021 12:51:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id gn19sm7010674ejc.4.2021.04.04.12.51.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 12:51:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Josh Triplett <josh@joshtriplett.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] exec.3: Fix description of 'e' variants
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210319235717.28264-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <91a2304c-4eb7-e5e2-7352-97180db99872@gmail.com>
Date:   Sun, 4 Apr 2021 21:51:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210319235717.28264-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 3/20/21 12:57 AM, Alejandro Colomar wrote:
> From: Josh Triplett <josh@joshtriplett.org>
> 
> The envp argument specifies the environment of the new process image,
> not "the environment of the caller".

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Josh Triplett <josh@joshtriplett.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/exec.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/exec.3 b/man3/exec.3
> index 211e06421..3d936d08d 100644
> --- a/man3/exec.3
> +++ b/man3/exec.3
> @@ -116,7 +116,7 @@ The array of pointers
>  .I must
>  be terminated by a null pointer.
>  .SS e - execle(), execvpe()
> -The environment of the caller is specified via the argument
> +The environment of the new process image is specified via the argument
>  .IR envp .
>  The
>  .I envp
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
