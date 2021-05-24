Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63C1138F3C1
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 21:34:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233259AbhEXTfv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 15:35:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233070AbhEXTfv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 15:35:51 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5C7CC061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 12:34:22 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id q5so29669563wrs.4
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 12:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8HQxTvcM7wV7GxSsuycpdo+HK+r9OW1pCmI/vwN2ROg=;
        b=Z6iZ9AIQPwt2BW2YdhFGbqUJgvw2pzQoKnvbSD6jL9MjE3efr93mD4VaXWfdLZo4jV
         zDI2QRrkKW66urcRNY6GRxBvVb8iPsHHVfhmyUj6kCPXnkdLu047XH2iltuncnvU6Pe4
         8AlBZzg/HseuDXIcjn6csf2w5pA+w9m2LcylKjbvbwvcycDzx6XXxyOZSJaEn2thwDB7
         96Z3U5RQAIUAM5/x0iY5uoYQlwCEP3XFUFzNGGuKuLa8WU9CZ3OOWUZ//9rcmQlPWYIl
         dO5uFGTVnAFquBisRq6xdFQkh5D7H1bbcidFxfTW+oaj8lgHpYkJF6vKYKcLobOUC/9+
         y09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8HQxTvcM7wV7GxSsuycpdo+HK+r9OW1pCmI/vwN2ROg=;
        b=sqqFwMyQ00hsoMBIYpZraYzWfyq26tSq1jdfn9Th5+SleH0NUJi7Shek3/JzDAOiFh
         wO3DKycRt2+dINYgzcAGui7+VISrpfsrRqyECR+8Vg9744IhR20dxih7HMdKaUN6VYf9
         qpmKqMExYG6e4Wpe4DtrXyR46/ciuidnYa9zN6YimXkmpWLr3xtXzx4ieZzWveI6Ol59
         5j9gmoRhnsnIdv8VlvVxN6C7XR4CcI0GckVolxh1z98YvKY72qAdv2oYiFyQkr0voVGE
         SwcgUoZCdDi2SmZqsGVslO+ohVED7WaDMSWfZfZ/n8Vd4xukXn2O/oxbwF/LcA5OGIYd
         LD9w==
X-Gm-Message-State: AOAM5309A9rx+mi7RPMoWqnIAH/2EHH2c3Ixlc28dilZRC5rtlY9wcuK
        hK2W1q13nQvmKqU6LmJXGrc=
X-Google-Smtp-Source: ABdhPJw8HVIOhw9vCp7vuMeFWc4Nw+Vg4dXMommiNumJiEQmbUD4erQ7+U7da3hWH+GNp5G2kTobFw==
X-Received: by 2002:a5d:6d04:: with SMTP id e4mr22895608wrq.344.1621884861295;
        Mon, 24 May 2021 12:34:21 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m6sm736389wml.3.2021.05.24.12.34.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 12:34:20 -0700 (PDT)
Subject: Re: [PATCH v2 03/10] seccomp.2: Document why each header is needed
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        Tyler Hicks <tyhicks@canonical.com>,
        Will Drewry <wad@chromium.org>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-3-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cd876e7c-7236-8530-e0a7-b2940587ad42@gmail.com>
Date:   Mon, 24 May 2021 21:34:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 5/24/21 8:19 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Tyler Hicks <tyhicks@canonical.com>
> Cc: Will Drewry <wad@chromium.org>
> Cc: Michael Kerrisk <mtk.manpages@gmail.com>
> ---

Please discards this one, for the same reasons as in v1: repeated.
See 
<https://lore.kernel.org/linux-man/20210515182254.186607-1-alx.manpages@gmail.com/T/#u> 
instead.

That one has a better mail.

Thanks,

Alex


>   man2/seccomp.2 | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/man2/seccomp.2 b/man2/seccomp.2
> index 584a16f22..1be7d6766 100644
> --- a/man2/seccomp.2
> +++ b/man2/seccomp.2
> @@ -30,11 +30,11 @@
>   seccomp \- operate on Secure Computing state of the process
>   .SH SYNOPSIS
>   .nf
> -.B #include <linux/seccomp.h>
> -.B #include <linux/filter.h>
> -.B #include <linux/audit.h>
> -.B #include <linux/signal.h>
> -.B #include <sys/ptrace.h>
> +.BR "#include <linux/seccomp.h>" "  /* Definition of " SECCOMP_* " constants */"
> +.BR "#include <linux/filter.h>" "   /* Definition of " "struct sock_fprog" " */"
> +.BR "#include <linux/audit.h>" "    /* Definition of " AUDIT_* " constants */"
> +.BR "#include <linux/signal.h>" "   /* Definition of " SIG* " constants */"
> +.BR "#include <sys/ptrace.h>" "     /* Definition of " PTRACE_* " constants */"
>   .\" Kees Cook noted: Anything that uses SECCOMP_RET_TRACE returns will
>   .\"                  need <sys/ptrace.h>
>   .PP
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
