Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D44164823C8
	for <lists+linux-man@lfdr.de>; Fri, 31 Dec 2021 12:39:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbhLaLjF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Dec 2021 06:39:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbhLaLjF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Dec 2021 06:39:05 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 325E8C061574
        for <linux-man@vger.kernel.org>; Fri, 31 Dec 2021 03:39:05 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id a83-20020a1c9856000000b00344731e044bso14630487wme.1
        for <linux-man@vger.kernel.org>; Fri, 31 Dec 2021 03:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dbns90fW+YAZQ6T7/Yi+PcyaRlH2+HfNwLMOeP6H4ZY=;
        b=S/6eekP0c9vBXWqKQtrVqikyit7SLI3TmYVyyWBB7wOEkkx8bsnKyIxZBjEvk9qavU
         bEuyDhB0Gp7NL5Ib3Idr8yGOMzX6f9xRKMcKkZA9UipTrMdZkP+B2H0/XWG81dO5FHSY
         lq4lNJWfafh6mkGACrR328ydvMdP/244lFKXgjsC5vPm9u08SzEU52HmLYXhcH68RXrC
         rJ9puiHvLgnedn6PK9suO49CCpTtqv+TRkxZneirJ1s8M/IORmLFtts5E2ukZ+rdM5Ph
         wwAQnuU9HqkcIF+kaeJmg/0kafNv33Im3xDoVCOJemsUvjylAekUW4wez1z9fD/aBo8m
         nJQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dbns90fW+YAZQ6T7/Yi+PcyaRlH2+HfNwLMOeP6H4ZY=;
        b=bMC2wFxiQSWFLxYPqbhH2pZvvE8sQyhTCW/i+ct5xEmtTkEd4KxN2yar406b+k11an
         Vhdv8P3X0ZqApMqOcDbQ1N0J8UDyAs3fO+rzN2oqv7GwQ655RuGnTeIeqDgr2zhY8D+W
         RLvDZ+vkxaQ5YJxy6tj6i1SqcmkjfUi55o+BGAOMnIavMCmOyaYCVDESh6nQzYONsBW3
         tm+TzUqqHQaJheVGAJ8xXSH9EEVd2z2w+TbxZnr42TkNVs5F7Cjd7D+QwwckJPuz3zLg
         7vuKHkDIzI/yfIev1llB1llniXMFzQUtNPCpGRgrqyLSmZdbtnp+k/bxQmzpH+E0Uqk0
         l2Mg==
X-Gm-Message-State: AOAM530qk665cgAh24hswsova1CCSdrIK+zQneRn6zv+9TBk4vuGteZo
        oJUyVhbqqG3DaB3dqH+G0Gtb4RihbhM=
X-Google-Smtp-Source: ABdhPJztxC/iiYaoHbHtP06UNxKSgSaE34UyQ8zr6eqQuCH+qWBoVXYp2nBKjBId1VDZEiIKqnEnTw==
X-Received: by 2002:a7b:c087:: with SMTP id r7mr30020631wmh.17.1640950743645;
        Fri, 31 Dec 2021 03:39:03 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l2sm26767881wru.83.2021.12.31.03.39.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Dec 2021 03:39:03 -0800 (PST)
Message-ID: <2bcd174a-a08a-af32-ce72-12b9e46fb396@gmail.com>
Date:   Fri, 31 Dec 2021 12:39:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH] encrypt.3: encrypt/encrypt_r, not crypt/crypt_r were
 deleted from 2.28
Content-Language: en-US
To:     Huang Pei <huangpei@loongson.cn>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20211230094251.538-1-huangpei@loongson.cn>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211230094251.538-1-huangpei@loongson.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Huang,

On 12/30/21 10:42, Huang Pei wrote:
> See sysdeps/unix/sysv/linux/riscv/rv{32,64}/libcrypt.abilist from
> glibc
> 
> Signed-off-by: Huang Pei <huangpei@loongson.cn>

You're right, it seems:

alx@ady1:~/src/gnu/glibc$ git checkout glibc-2.28
Previous HEAD position was 23158b08a0 Update for 2.27 release
HEAD is now at 3c03baca37 Update NEWS, version.h, and features.h for 
glibc 2.28.
alx@ady1:~/src/gnu/glibc$
alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype crypt
crypt/crypt.h:36:
extern char *crypt (const char *__phrase, const char *__salt)
      __THROW __nonnull ((1, 2));
posix/unistd.h:1124:
extern char *crypt (const char *__key, const char *__salt)
      __THROW __nonnull ((1, 2));
alx@ady1:~/src/gnu/glibc$
alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype encrypt
alx@ady1:~/src/gnu/glibc$
alx@ady1:~/src/gnu/glibc$ git checkout glibc-2.27
Previous HEAD position was 3c03baca37 Update NEWS, version.h, and 
features.h for glibc 2.28.
HEAD is now at 23158b08a0 Update for 2.27 release
alx@ady1:~/src/gnu/glibc$
alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype crypt
crypt/crypt.h:32:
extern char *crypt (const char *__key, const char *__salt)
      __THROW __nonnull ((1, 2));
posix/unistd.h:1126:
extern char *crypt (const char *__key, const char *__salt)
      __THROW __nonnull ((1, 2));
alx@ady1:~/src/gnu/glibc$
alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype encrypt
crypt/crypt.h:40:
extern void encrypt (char *__glibc_block, int __edflag)
      __THROW __nonnull ((1));
posix/unistd.h:1131:
extern void encrypt (char *__glibc_block, int __edflag)
      __THROW __nonnull ((1));
alx@ady1:~/src/gnu/glibc$


I applied the patch to my tree.

Thanks,

Alex

> ---
>   man3/encrypt.3 | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/encrypt.3 b/man3/encrypt.3
> index b4be7f3e0..b7df15777 100644
> --- a/man3/encrypt.3
> +++ b/man3/encrypt.3
> @@ -124,8 +124,8 @@ The function is not provided.
>   .SH VERSIONS
>   Because they employ the DES block cipher,
>   which is no longer considered secure,
> -.BR crypt (),
> -.BR crypt_r (),
> +.BR encrypt (),
> +.BR encrypt_r (),
>   .BR setkey (),
>   and
>   .BR setkey_r ()

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
