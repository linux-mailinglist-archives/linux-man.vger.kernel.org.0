Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9F6D31F96E
	for <lists+linux-man@lfdr.de>; Fri, 19 Feb 2021 13:32:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbhBSMc0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 07:32:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbhBSMcY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 07:32:24 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33F8DC061756
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 04:31:44 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id t15so8156926wrx.13
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 04:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z96E4x6B+cknI/4dYR5U+D9ytgnKWsi5AO8ayaE/Lfo=;
        b=hijkWF8ppXr+31VrITjMC2X5Y2+EJosoD6G8JbZ0Bpl6tJ1XU5oAv7/Dm9ImzwK8qr
         MwWuvEErFhlJgAhcY5pBaK6V6u937zuvVj8d2StYul1mueI2qabiOuN7KXIcacwMSo99
         1Z2T1pTH8NsxuFSoHhTegG91VTXDg5j9qmDJEf9w4mIej4EnTo4nDPf3Puzm5oJkz1S0
         inGqjw10xqJo9svQqYR0vLvqzgt46bVdZod9GIz+XzMntocTseYj6YAinF6Lc+2CoUaV
         NawFS9UbrL/tpUTPlj1nr12k3E40RvGwKZNrtfvGZlFYG94+LDhH8waSrA0iRhapPok8
         EGGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=z96E4x6B+cknI/4dYR5U+D9ytgnKWsi5AO8ayaE/Lfo=;
        b=Xsln4w3HOYDKrC4uFX3/SCZ8F9ouqaswNb9xBUr1Lk6j2wRi7QU6FY6AU7HZGj9Lei
         3EgMbfsNeY3Jqs0nYLz7bVkWWJXNeYJA/r5stR6K5n//Syg9UKF+aPVirqpNOjOU3DZh
         OahTl7NtS8HBQtIm578Y00mv2mUvN05/+2G0X1H1JhV9ky4BqJAib4zV7m01TZAzPkMY
         QW76HPBpxW4ho4RJzENJrx9V38IoTgu2ZESF7kxF9aDFb28t9QIFwvht7P+g6UzBFJ6e
         pKHOY2UphcF/d2xsWKW9LQruvC+JsmJ617Pw67VAZqrSX3moCqR+9I6hzSvaHUMuVpIW
         mAUQ==
X-Gm-Message-State: AOAM5300XhAHXl9+LaT76ncLIIvkiw0cl839yqC4eh+DXo9nncpYCvym
        hUszxDSQs1FM5pAx5USImjo=
X-Google-Smtp-Source: ABdhPJzflS8ub3WLbnVsrpl1kCsCD0l4nN6KacnfX2rcBXpjP3qf1HS0V8HuiskQh/q0VhTdm6jPLQ==
X-Received: by 2002:adf:e8d2:: with SMTP id k18mr1292674wrn.286.1613737902914;
        Fri, 19 Feb 2021 04:31:42 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id r7sm11173264wmh.38.2021.02.19.04.31.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 04:31:42 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/6] abort.3: SYNOPSIS: Use 'noreturn' in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210218212358.246072-1-alx.manpages@gmail.com>
 <20210218212358.246072-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0f80aeba-a619-4b9f-3d99-70a6777080b3@gmail.com>
Date:   Fri, 19 Feb 2021 13:31:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210218212358.246072-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/18/21 10:23 PM, Alejandro Colomar wrote:
> POSIX specifies that abort() shall not return.
> Glibc uses __attribute__((__noreturn__)).
> Let's use standard C11 'noreturn' in the manual page.

C11!? I'm only just getting over C99... But okay, it seems
reasonable :-). I applied all of the patches.

Cheers,

Michael
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/abort.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/abort.3 b/man3/abort.3
> index 71d555841..b33d23ad1 100644
> --- a/man3/abort.3
> +++ b/man3/abort.3
> @@ -38,7 +38,7 @@ abort \- cause abnormal process termination
>  .nf
>  .B #include <stdlib.h>
>  .PP
> -.B void abort(void);
> +.B noreturn void abort(void);
>  .fi
>  .SH DESCRIPTION
>  The
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
