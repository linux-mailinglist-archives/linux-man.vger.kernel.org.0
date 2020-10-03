Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95CBF28224C
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 10:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725747AbgJCIBR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 04:01:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725648AbgJCIBR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 04:01:17 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 534E9C0613D0;
        Sat,  3 Oct 2020 01:01:17 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so4207014wrx.7;
        Sat, 03 Oct 2020 01:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xGg6/DlTgRiZYgeJUNpmWMMltCPe/23JNK6DpZ6B8BQ=;
        b=hEGCJ/SpzrLLOExlD5Xh3KRNb4U++7bmDU6XEvAGT7fVnrgFkPrdLqwrysvPd6gOk5
         z60WN4Ld/U9hBm85PREq0oSj/Qm3jWA+7EmmjhrDjfzyHV7wNSOJX7ICpub/gRnXMcAU
         Vdq6d8idQW8Mn3Q/10lD8ykEpTPEUQpzZrq6vQ84eH8L/Bz+rTCYnZ/wx7M6+Tzf1Zjt
         i2z0eKdY7qa71lsdRYGuSrCp5OWKeAFfzl6QbnXRJyriepdh5eJo5MqAMyYNDDu5QSsd
         jhQ94eHh1lVSWrANEaz2roVlTaFXMSDH0BEYGKlr7ZiIn6IF7yPuSXmjPHEHbPZMKrRm
         /+rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xGg6/DlTgRiZYgeJUNpmWMMltCPe/23JNK6DpZ6B8BQ=;
        b=e7LX2CkZq84R9JXQrYD+KpLQSzw6wk1QUngOH1DQXjPP6RvRyIKfCIdn0BeRfpFzZM
         Qvhzx0MYJJEu51a/RDYtifjsmq4f9QaYq8UqJmhDpB83yWGrGD7HPnmj4KrV0jwUo33Y
         k8e0Ju82ozgThFQn/hxS6bXIwcqERPLFcPIvWWNPPUP3b3kejsqS6g8IZ/vVhIenf0m5
         C3lqmRSDSGRDGOJAcazlZsSxOTIbInz8wlu8bTYp4uOAUB5zyk+nUs5cxuAgQLtsJ276
         XAi+er5PIwGFDW6NLtCaH7/rwuReAgA7qw/2mrlFoXC2rK/ZWCFTL8+9ITcavSghqxyy
         SaXA==
X-Gm-Message-State: AOAM533fW4+WuqfhA5tG6Syv3W2Z4uDrHh4qtsk1scpMxqlY/Ksg2nvW
        Ryu6RQIX8FHN3JRSQWO4VOE=
X-Google-Smtp-Source: ABdhPJwGg/LdQ23GAg/+fW0nD98qE36bk13GpxGU8kmkjVloNXh2WVwjv3Jf9WfnCnankiYFkgJouA==
X-Received: by 2002:adf:e3cf:: with SMTP id k15mr6598434wrm.291.1601712076006;
        Sat, 03 Oct 2020 01:01:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id d5sm4544012wrb.28.2020.10.03.01.01.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 01:01:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        eggert@cs.ucla.edu, linux-kernel@vger.kernel.org,
        jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
Subject: Re: [PATCH v5 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201002151419.32053-1-colomar.6.4.3@gmail.com>
 <20201002192814.14113-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <48129b0c-d87a-83eb-882e-f59c4da5bee9@gmail.com>
Date:   Sat, 3 Oct 2020 10:01:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201002192814.14113-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 10/2/20 9:28 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied.

Thanks,

Michael


> system_data_types.7: void *: Add info about generic function parameters and return value
> 
> Reported-by: Paul Eggert <eggert@cs.ucla.edu>
> Reported-by: David Laight <David.Laight@ACULAB.COM>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> system_data_types.7: void *: Add info about pointer artihmetic
> 
> Reported-by: Paul Eggert <eggert@cs.ucla.edu>
> Reported-by: David Laight <David.Laight@ACULAB.COM>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> system_data_types.7: void *: Add Versions notes
> 
> Compatibility between function pointers and void * hasn't always been so.
> Document when that was added to POSIX.
> 
> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> system_data_types.7: void *: wfix
> 
> Reported-by: Jonathan Wakely <jwakely.gcc@gmail.com>
> Reported-by: Paul Eggert <eggert@cs.ucla.edu>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 76 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 74 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index c82d3b388..7c1198802 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -679,7 +679,6 @@ See also the
>  .I uintptr_t
>  and
>  .I void *
> -.\" TODO: Document void *
>  types in this page.
>  .RE
>  .\"------------------------------------- lconv ------------------------/
> @@ -1780,7 +1779,6 @@ See also the
>  .I intptr_t
>  and
>  .I void *
> -.\" TODO: Document void *
>  types in this page.
>  .RE
>  .\"------------------------------------- va_list ----------------------/
> @@ -1814,6 +1812,80 @@ See also:
>  .BR va_copy (3),
>  .BR va_end (3)
>  .RE
> +.\"------------------------------------- void * -----------------------/
> +.TP
> +.I void *
> +.RS
> +According to the C language standard,
> +a pointer to any object type may be converted to a pointer to
> +.I void
> +and back.
> +POSIX further requires that any pointer,
> +including pointers to functions,
> +may be converted to a pointer to
> +.I void
> +and back.
> +.PP
> +Conversions from and to any other pointer type are done implicitly,
> +not requiring casts at all.
> +Note that this feature prevents any kind of type checking:
> +the programmer should be careful not to convert a
> +.I void *
> +value to a type incompatible to that of the underlying data,
> +because that would result in undefined behavior.
> +.PP
> +This type is useful in function parameters and return value
> +to allow passing values of any type.
> +The function will typically use some mechanism to know
> +the real type of the data being passed via a pointer to
> +.IR void .
> +.PP
> +A value of this type can't be dereferenced,
> +as it would give a value of type
> +.IR void ,
> +which is not possible.
> +Likewise, pointer arithmetic is not possible with this type.
> +However, in GNU C, pointer arithmetic is allowed
> +as an extension to the standard;
> +this is done by treating the size of a
> +.I void
> +or of a function as 1.
> +A consequence of this is that
> +.I sizeof
> +is also allowed on
> +.I void
> +and on function types, and returns 1.
> +.PP
> +The conversion specifier for
> +.I void *
> +for the
> +.BR printf (3)
> +and the
> +.BR scanf (3)
> +families of functions is
> +.BR p .
> +.PP
> +Versions:
> +The POSIX requirement about compatibility between
> +.I void *
> +and function pointers was added in
> +POSIX.1-2008 Technical Corrigendum 1 (2013).
> +.PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR malloc (3),
> +.BR memcmp (3),
> +.BR memcpy (3),
> +.BR memset (3)
> +.PP
> +See also the
> +.I intptr_t
> +and
> +.I uintptr_t
> +types in this page.
> +.RE
>  .\"--------------------------------------------------------------------/
>  .SH NOTES
>  The structures described in this manual page shall contain,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
