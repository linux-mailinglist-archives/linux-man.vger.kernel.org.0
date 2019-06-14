Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 25275462FD
	for <lists+linux-man@lfdr.de>; Fri, 14 Jun 2019 17:36:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725996AbfFNPgX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Jun 2019 11:36:23 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:55504 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725780AbfFNPgX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Jun 2019 11:36:23 -0400
Received: by mail-wm1-f65.google.com with SMTP id a15so2810214wmj.5
        for <linux-man@vger.kernel.org>; Fri, 14 Jun 2019 08:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=njLAmT/E9TRJtErViQRyHPNwZ6UJmuKlfhffe62DJBI=;
        b=a0GDnB+LMj3x3qOCi4tiA2Z3m5S1Ql9RsMCDIUZ8ysNg0b4jYgMpk8YLvn+TN+RNW7
         uSYt3MSMruX+a75Qa7tcD9jfLWv3aIQldSuxDXdpyAFEiaR8i0/PcYa7zJe1Z1wjH3Td
         rrxy/If702T6/DMCCI1xAHG13ymM1VpJV/ESW2OMRru0TIEbz9rSN2yMR2PTGy8DVI5+
         z/EAydJr92n2q9KwZd7VRZ21FrDd0y7gDCsYe30b4aHIvnazrT9Boysp7czfImfseEy5
         8/B/nGBMM12qMKdeQQw0Uak3fPvpVp48U7Blcx8IAnTY4BPV1XJdx1d4YLeOr3g6zPRi
         Y6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=njLAmT/E9TRJtErViQRyHPNwZ6UJmuKlfhffe62DJBI=;
        b=JiT+jdYzkS6umZbSHTdAGi4TvuwvGHCMO5weQgC97VWgLfY/GLEtfr15znOIwPhKli
         fCRRt9a5E0btS5KpN5/X6TcUxs22qsodtGUkrUyNdNm/V2rXBLZSl2IY7NitHAQa62eS
         gahe8UZujcrx5v6XwFlzmM/rzCGtyicd0XyUwa/9O/NHbKLd+Vk9p8kcqvyCtmzjEiXO
         tNBoixysWT3bUU/+O9FoohC6dNf9n4TnIKQ5GN5hBwg7hxe9MEGwHi9Z3lFJJgG9wpcO
         I0M38LJhyk81UEE4Dg61lZ/A9A5eGT0v1MoZEYY6hasvyBebPsL4KYqBPq+cGwvQbGFR
         Y65g==
X-Gm-Message-State: APjAAAUR4cPYA445V2QR5Zb5kV5M/pA+qhq6yAnPXCbXcFlM7tUiFCrh
        XAWDkMNeA3KqMlGUEhu4GMc=
X-Google-Smtp-Source: APXvYqxxEaxu6/2gfxgdbW/AL6XBcjUI8oHst5S9bmcwBNMaERtA8J+YxIEqDKuODdpuR8alonQ9dw==
X-Received: by 2002:a1c:df46:: with SMTP id w67mr8122323wmg.69.1560526581301;
        Fri, 14 Jun 2019 08:36:21 -0700 (PDT)
Received: from [192.168.43.179] (x527179a7.dyn.telefonica.de. [82.113.121.167])
        by smtp.gmail.com with ESMTPSA id b8sm3118966wrr.88.2019.06.14.08.36.19
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Jun 2019 08:36:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH] pkey_alloc.2, mprotect.2: _GNU_SOURCE is required for the
 pkey functions.
To:     Mark Wielaard <mark@klomp.org>
References: <1559171155-2044-1-git-send-email-mark@klomp.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6097969b-eaa5-ee5a-ec1b-cf347b953c8c@gmail.com>
Date:   Fri, 14 Jun 2019 17:35:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1559171155-2044-1-git-send-email-mark@klomp.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mark,

On 5/30/19 1:05 AM, Mark Wielaard wrote:
> To get the pkey_alloc, pkey_free and pkey_mprotect functions
> _GNU_SOURCE needs to be defined before including sys/mman.h.

Thanks for the patch, Mark.

Florian, thanks for the review.

Patch applied.

Cheers,

Michael

> Signed-off-by: Mark Wielaard <mark@klomp.org>
> ---
>   man2/mprotect.2   | 4 ++++
>   man2/pkey_alloc.2 | 1 +
>   2 files changed, 5 insertions(+)
> 
> diff --git a/man2/mprotect.2 b/man2/mprotect.2
> index 9bb02eb..4d29f66 100644
> --- a/man2/mprotect.2
> +++ b/man2/mprotect.2
> @@ -38,6 +38,10 @@ mprotect, pkey_mprotect \- set protection on a region of memory
>   .B #include <sys/mman.h>
>   .PP
>   .BI "int mprotect(void *" addr ", size_t " len ", int " prot );
> +
> +.BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
> +.B #include <sys/mman.h>
> +.PP
>   .BI "int pkey_mprotect(void *" addr ", size_t " len ", int " prot ", int " pkey ");
>   .fi
>   .SH DESCRIPTION
> diff --git a/man2/pkey_alloc.2 b/man2/pkey_alloc.2
> index ce9bd96..d82f316 100644
> --- a/man2/pkey_alloc.2
> +++ b/man2/pkey_alloc.2
> @@ -27,6 +27,7 @@
>   pkey_alloc, pkey_free \- allocate or free a protection key
>   .SH SYNOPSIS
>   .nf
> +.BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
>   .B #include <sys/mman.h>
>   .PP
>   .BI "int pkey_alloc(unsigned int " flags ", unsigned int " access_rights ");"
> 
