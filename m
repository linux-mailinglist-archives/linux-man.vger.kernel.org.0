Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 126C62E86B3
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 08:34:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726210AbhABHdz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 02:33:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726080AbhABHdy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Jan 2021 02:33:54 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C061C061573
        for <linux-man@vger.kernel.org>; Fri,  1 Jan 2021 23:33:13 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id r7so25821266wrc.5
        for <linux-man@vger.kernel.org>; Fri, 01 Jan 2021 23:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4JDmFhJh2bUHIhvd99oNzkvwJPgXLZ+DBQzARxPK2uI=;
        b=i+d8sBGAueoI94+5sxNk6Q5uFQRjq9GiYqYxuZ+7kje6L+dIMoz3nxnbWAV0k0OqsT
         pa9tsMoXbg+o4mPQVRrxqH2lPzRY3HIvIaFiRLxX850fuFkum9rXVsomAwLTT5M5PBJc
         jw9cKcOfFyEnv9yFLFajzJJo9lFFwUFvZ5LhjwcJgtX131PcvjGrPuvKOJbni6UYBLhH
         NrcxMZatJIP9TELu3EfIJNxFaf6aWCiK1CqgNOqaGh4xYRMuWa/ud/EB+kyV2VEvDE+/
         l69wjMt7p0pa+fouGbL/6jKgYsP0vsXJtwFT8efjoFxUl550FSEgaSs3+HnYOgScwvjI
         xpkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4JDmFhJh2bUHIhvd99oNzkvwJPgXLZ+DBQzARxPK2uI=;
        b=fvzeQyxm39X2hZ744C7p9hIY2QamWKP6OZkggLd9uh+ThKYGI+7vjOwDKWriAd/h54
         kIL7H6WveAZ6hc5ONsWHtB69B5N1MEc6X/iAHa9r4nUsc5avHOeaajJf4xaU89uOgjnx
         Z0xJ2h9c+tD/wId7emiFxR9/1UhAXFxM6OlvSyierB8FbLjapkfT2RFG6q8HL0r7B9R5
         We3ImKREUaZvOiAsEMhRziXUflgQ27M4cSZPFeYMP+td45P/Fpx2W/WQOtvobTD72/kg
         KOgPBRs5kK/rKFQ7VnJ45TZXpsJfhu4HBrhPPVw9Sj7it2AUyWb6Ud+3cVj+e32R3K+a
         Gg5A==
X-Gm-Message-State: AOAM533X67tbxqRv5eP4/V4mCRAll5DA6PrewfEJ0kD1W5PoF8YKwGaq
        G9KyPXeJVthItcyw+8zv81aKYwDBjmg=
X-Google-Smtp-Source: ABdhPJzs2j+n6Zu0DWlRmH0izccFtrSFh7aeSMglLVM5QKd9BjqbSMZhBq/q8Rrps45CRilsSMUyPg==
X-Received: by 2002:adf:fc48:: with SMTP id e8mr70118079wrs.11.1609572790047;
        Fri, 01 Jan 2021 23:33:10 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id r20sm86371813wrg.66.2021.01.01.23.33.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jan 2021 23:33:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Various pages: Consistently use 'unsigned int'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
 <20201231130136.125543-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a5de6c39-a66f-48ee-f5ad-27599ddba590@gmail.com>
Date:   Sat, 2 Jan 2021 08:33:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201231130136.125543-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/31/20 2:01 PM, Alejandro Colomar wrote:
> Most pages use 'unsigned int' (and the kernel too).
> Make them all do so.
> 
> $ find man? -type f \
>   |xargs sed -i \
> 	-e 's/unsigned \*/unsigned int */g'
> 	-e 's/unsigned "/unsigned int "/g';
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Good work. Patch applied (manually, because I shot myself in 
the foot with the other recent work in SYNOPSIS).

Cheers,

Michael

> ---
>  man2/getcpu.2     | 4 ++--
>  man2/io_setup.2   | 2 +-
>  man2/mbind.2      | 2 +-
>  man3/cfree.3      | 2 +-
>  man3/des_crypt.3  | 8 ++++----
>  man3/getrpcport.3 | 2 +-
>  man3/random.3     | 4 ++--
>  man3/xdr.3        | 2 +-
>  8 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/man2/getcpu.2 b/man2/getcpu.2
> index fc36b43b5..46e4d53ff 100644
> --- a/man2/getcpu.2
> +++ b/man2/getcpu.2
> @@ -16,8 +16,8 @@ getcpu \- determine CPU and NUMA node on which the calling thread is running
>  .nf
>  .B #include <linux/getcpu.h>
>  .PP
> -.BI "int getcpu(unsigned *" cpu ", unsigned *" node \
> -", struct getcpu_cache *" tcache );
> +.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node ,
> +.BI "           struct getcpu_cache *" tcache );
>  .fi
>  .SH DESCRIPTION
>  The
> diff --git a/man2/io_setup.2 b/man2/io_setup.2
> index e08d19bb8..bd52a5311 100644
> --- a/man2/io_setup.2
> +++ b/man2/io_setup.2
> @@ -11,7 +11,7 @@ io_setup \- create an asynchronous I/O context
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "long io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
> +.BI "long io_setup(unsigned int " nr_events ", aio_context_t *" ctx_idp );
>  .fi
>  .PP
>  .IR Note :
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index bf66dfc6c..d98969e7f 100644
> --- a/man2/mbind.2
> +++ b/man2/mbind.2
> @@ -41,7 +41,7 @@ mbind \- set memory policy for a memory range
>  .PP
>  .BI "long mbind(void *" addr ", unsigned long " len  ", int " mode ,
>  .BI "           const unsigned long *" nodemask  ", unsigned long " maxnode ,
> -.BI "           unsigned " flags );
> +.BI "           unsigned int " flags );
>  .PP
>  Link with \fI\-lnuma\fP.
>  .fi
> diff --git a/man3/cfree.3 b/man3/cfree.3
> index 2a09527a7..74223db71 100644
> --- a/man3/cfree.3
> +++ b/man3/cfree.3
> @@ -36,7 +36,7 @@ cfree \- free allocated memory
>  .BI "void cfree(void *" ptr );
>  .PP
>  /* In SCO OpenServer */
> -.BI "void cfree(char *" ptr ", unsigned " num ", unsigned " size );
> +.BI "void cfree(char *" ptr ", unsigned int " num ", unsigned int " size );
>  .PP
>  /* In Solaris watchmalloc.so.1 */
>  .BI "void cfree(void *" ptr ", size_t " nelem ", size_t " elsize );
> diff --git a/man3/des_crypt.3 b/man3/des_crypt.3
> index 7f34c1585..66fe78337 100644
> --- a/man3/des_crypt.3
> +++ b/man3/des_crypt.3
> @@ -21,11 +21,11 @@ DES encryption
>  .\" .B #include <des_crypt.h>
>  .B #include <rpc/des_crypt.h>
>  .PP
> -.BI "int ecb_crypt(char *" key ", char *" data ", unsigned " datalen ,
> -.BI "              unsigned " mode );
> +.BI "int ecb_crypt(char *" key ", char *" data ", unsigned int " datalen ,
> +.BI "              unsigned int " mode );
>  .PP
> -.BI "int cbc_crypt(char *" key ", char *" data ", unsigned " datalen ,
> -.BI "              unsigned " mode ", char *" ivec );
> +.BI "int cbc_crypt(char *" key ", char *" data ", unsigned int " datalen ,
> +.BI "              unsigned int " mode ", char *" ivec );
>  .PP
>  .BI "void des_setparity(char *" key );
>  .PP
> diff --git a/man3/getrpcport.3 b/man3/getrpcport.3
> index 2eba5d30a..d5753d39b 100644
> --- a/man3/getrpcport.3
> +++ b/man3/getrpcport.3
> @@ -13,7 +13,7 @@ getrpcport \- get RPC port number
>  .B "#include <rpc/rpc.h>"
>  .PP
>  .BI "int getrpcport(const char *" host ", unsigned long " prognum ,
> -.BI "               unsigned long " versnum ", unsigned " proto );
> +.BI "               unsigned long " versnum ", unsigned int " proto );
>  .fi
>  .SH DESCRIPTION
>  .BR getrpcport ()
> diff --git a/man3/random.3 b/man3/random.3
> index d1b8e1981..c9066e446 100644
> --- a/man3/random.3
> +++ b/man3/random.3
> @@ -39,9 +39,9 @@ random, srandom, initstate, setstate \- random number generator
>  .PP
>  .B long random(void);
>  .PP
> -.BI "void srandom(unsigned " seed );
> +.BI "void srandom(unsigned int " seed );
>  .PP
> -.BI "char *initstate(unsigned " seed ", char *" state ", size_t " n );
> +.BI "char *initstate(unsigned int " seed ", char *" state ", size_t " n );
>  .PP
>  .BI "char *setstate(char *" state );
>  .fi
> diff --git a/man3/xdr.3 b/man3/xdr.3
> index 713827567..978a50660 100644
> --- a/man3/xdr.3
> +++ b/man3/xdr.3
> @@ -433,7 +433,7 @@ C characters and their external representations.
>  This routine returns one if it succeeds, zero otherwise.
>  .PP
>  .nf
> -.BI "bool_t xdr_u_int(XDR *" xdrs ", unsigned *" up );
> +.BI "bool_t xdr_u_int(XDR *" xdrs ", unsigned int *" up );
>  .fi
>  .IP
>  A filter primitive that translates between C
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
