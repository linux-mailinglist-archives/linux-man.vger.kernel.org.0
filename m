Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 276EF26059F
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 22:22:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730261AbgIGUWV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 16:22:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730316AbgIGUWS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 16:22:18 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09D69C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 13:22:18 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id g4so16919921wrs.5
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 13:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hqwcKHuFmg/+XDq6fcuEHlOgk2FjhHfn1/2AixRNwqQ=;
        b=lJVqoO/XcdY2Ryb3Uvq3dulybmSoOhrN0Rw2jsh8OnIyBgyy3n7p+dBmE0NoxeNPnd
         FXOSw9K1EiHHoLEKIGo0CutmrE+YE/f3D2lA8a+ts/I1IEvCPDjBhUgtn4qxnDqox0XP
         UORTiKcnOoGX/CemQvLYbhmazJ9SkUMdWtERilJYNNBdEqXdwzm14xt7KQiDzyFM9J+9
         fytHzMe17FLeTNe2CEYoYzqE2r7THeECF7EZ9Mu/A6UTfljWPJ+Q0++dwxp0r9Fg7wAW
         WNnuZefYzmJrKMQZQHAlQ8qoqvEaS0QKsOjd0nigRt4d3/o27xmrETDe1Ge1Jf1UqcYB
         6mgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hqwcKHuFmg/+XDq6fcuEHlOgk2FjhHfn1/2AixRNwqQ=;
        b=qMhZEMxn3W2fYb42aWHs9DtZjB4IT6RtrVzjXLaib+89AG+0M4Rc6ol9QDnZ4ygBJS
         qniMR9ETwrHu1+d+F0ly01zZXs3fE0JBpWfoKHeTqa79Ju+xsLpdq8O3KUvpI9gh0r2e
         rD5HnYwjov7S5ZaBd8bNVK7It92Rd6Xy1sSODewI5ntZ+TJW2Uq2K98QZCjgiOQ6I2/9
         +xWInqJd0mTnJSTlH5wYrGl9l8GMTNOqQUbKuzXpf/g3HQ/MQ2S00X2Cpwm/mTDQrfZT
         xoyFXrydGvty6g5abxJJrrrGAy2ri7yz1+9tNATJ7jNWECLdMHIgPcA2jrHLerBMcd6L
         AWYA==
X-Gm-Message-State: AOAM531DUUfY45MjAoh8NdABgXIJjMu1V5TBDkhyfK41LAYy+oCpx1EW
        Jnrl/M58xpLwYILUifLxE2pRoDVWCLw=
X-Google-Smtp-Source: ABdhPJyiscwCWg+eWqn4XrF0EuPNfwEfossaM7QBTlOu3Z6GmKBlqaYo3fSVP8qYfaFo7nl2UYgtlg==
X-Received: by 2002:adf:fbc7:: with SMTP id d7mr23570995wrs.208.1599510136522;
        Mon, 07 Sep 2020 13:22:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id v3sm28449633wmh.6.2020.09.07.13.22.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 13:22:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_getattr_np.3: Use "%zu" and "%zx" when printing
 'size_t' values
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200907201735.3221-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b12abfa3-9c66-6957-6732-b9fd901dc974@gmail.com>
Date:   Mon, 7 Sep 2020 22:22:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907201735.3221-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/7/20 10:17 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/pthread_getattr_np.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/pthread_getattr_np.3 b/man3/pthread_getattr_np.3
> index 863a44819..2989381e8 100644
> --- a/man3/pthread_getattr_np.3
> +++ b/man3/pthread_getattr_np.3
> @@ -213,7 +213,7 @@ display_stack_related_attributes(pthread_attr_t *attr, char *prefix)
>      s = pthread_attr_getguardsize(attr, &guard_size);
>      if (s != 0)
>          handle_error_en(s, "pthread_attr_getguardsize");
> -    printf("%sGuard size          = %d bytes\en", prefix, guard_size);
> +    printf("%sGuard size          = %zu bytes\en", prefix, guard_size);
>  
>      s = pthread_attr_getstack(attr, &stack_addr, &stack_size);
>      if (s != 0)
> @@ -222,7 +222,7 @@ display_stack_related_attributes(pthread_attr_t *attr, char *prefix)
>      if (stack_size > 0)
>          printf(" (EOS = %p)", (char *) stack_addr + stack_size);
>      printf("\en");
> -    printf("%sStack size          = 0x%x (%d) bytes\en",
> +    printf("%sStack size          = 0x%zx (%zu) bytes\en",
>              prefix, stack_size, stack_size);
>  }
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
