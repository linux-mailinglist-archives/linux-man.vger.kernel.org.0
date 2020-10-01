Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 602DB27FE71
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:32:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731902AbgJALcs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:32:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731692AbgJALcr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:32:47 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96DECC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:32:47 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id t10so5287121wrv.1
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CWvrYbM9GicFeKyDpMksniQxn2q9svsIAp2yxOiIE2U=;
        b=lYp00s7/A7t8snXW5EjmPNzNKfO7UlFtIu6jIYKnx+DV7/dQNmsB6XFLXnCg4Zg297
         uhQ5LB7Qbyhik59GAKwLGL41B2RHGFUA6HYBvmgjRwBfEYuI2uz9ItItre1ZddUYrNmR
         00F76tSINJ+sN33sRcGtlW1iyA5OpH/xy2z3f7xQClLhrDAzxUHKbZWwto6PYZGGqccP
         rImnQ43l4TY/rjZZddOKbNF6FPWso8tiKvz4vUUravkibtkZUOdRY9Y+NxqjZ4Q1RZJk
         W3YxDMpHNhZeZ2+K/RfQDn5qIbi+xDmJq85pR46UNkdxienbIFJ9QeqwVF7JPqJeaWqi
         nH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CWvrYbM9GicFeKyDpMksniQxn2q9svsIAp2yxOiIE2U=;
        b=gDvsGewvO3A9tuBTo3QelULqbE7XF/KP+mNp8Ezm6PH4ibds5BXYkzXcbBySqiPlhn
         ZEy4QET6z5y/0geR3VygxgLTI0WHrijw/1Vsf96rtotsCdMuXPYko7lyGx/Wa1bSr1Qd
         S47aWtZie9Qsw6x2DMpDoTy+G3EMA/xj/Sju1WOnc8t/B/8H3gBFLy3c5Ix2yFPFd/JH
         Kv7UrLKFqVERhtgbM0hGu/W9i4TIcgwbrRAM+YnXJq72R4unz8gQGjLxHMqLJ1KK5BKM
         Moq9o+uAQ0olNovb5+IpcPRo457EHY//SAAXDlU9tKsUVaXZcjQq/9aA7mQVoVUbk8N+
         h03g==
X-Gm-Message-State: AOAM5308CXUeDixRDFTS9c32XV+hrz1OceZPFQVmDMr7OP/VLUKt+rtI
        5SvJie3kF2jvKpW2y5iK+2g=
X-Google-Smtp-Source: ABdhPJznSo1zjO/ygqopmotFeTJ4h0RkQSxd7IeE+pSoYC/sThmd89oe0MNeXQeRP0mu7ZReEsokog==
X-Received: by 2002:adf:d4c1:: with SMTP id w1mr8452136wrk.108.1601551966340;
        Thu, 01 Oct 2020 04:32:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id t124sm8270827wmg.31.2020.10.01.04.32.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:32:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 01/16] malloc_get_state.3: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8124330b-e2db-104e-e36b-8871fc4a2b53@gmail.com>
Date:   Thu, 1 Oct 2020 13:32:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001101559.77163-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Applied.

On 10/1/20 12:15 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/malloc_get_state.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/malloc_get_state.3 b/man3/malloc_get_state.3
> index f94efccf4..57781fd6b 100644
> --- a/man3/malloc_get_state.3
> +++ b/man3/malloc_get_state.3
> @@ -29,7 +29,7 @@ malloc_get_state, malloc_set_state \- record and restore state of malloc impleme
>  .nf
>  .B #include <malloc.h>
>  .PP
> -.BI "void* malloc_get_state(void);"
> +.BI "void *malloc_get_state(void);"
>  .PP
>  .BI "int malloc_set_state(void *" state );
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
