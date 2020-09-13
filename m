Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5DFF267E0B
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 07:47:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725918AbgIMFrJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 01:47:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725910AbgIMFqv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 01:46:51 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAB60C061574
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:46:50 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x23so7738430wmi.3
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Zb8w4Wyp+0x1j4SEJ9osSt+PKrtQvw8nzCWOU0kiwnY=;
        b=J5kmz81rP3InIgsC/lhwkPuCGePPgBJ8S2HAcQQ1AnyMQzbUmxumIH7oMcguFsUi+D
         /3Ko+r6sRmGEWHcMTDY0Cbc5grNenUajonpVhLeL/1N/i+SFFGC6nmum9OUlglZ0O+iA
         wQ3eMptv/5sO86GZPWUig3MY/Ieozs0LAVkGC5JDzARheK+4dxoDvWuCiBLAVxBqQ24r
         bZPohRXit4riaQ+ODs8ris9T2SgVp+QtKeUnxn6PDul40zhr2TxLoUx/2z3PI+F0xw8l
         0doth591IwS8zAXbB2gfBwgtLr2ndzBTdpYSAPBN6vRq5jIIfhh5t14BbCS4W3vU/XlN
         d3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Zb8w4Wyp+0x1j4SEJ9osSt+PKrtQvw8nzCWOU0kiwnY=;
        b=Jos53Locyn6EWlqFaeN4fHeRGZ/BV3JK5SPhAwvs81yajQjsVCTHQXVWbiMc7acLFZ
         UqpQnivA0SiCrc/zu0IuI4U90jvLOOtwoig++tZrgrvvZcRWZiSozhLuj0pOWHM7MLzn
         S+62ZSewdMOQ122elUUiU1y8SYce441Zsx8wochWfoSYGZVtGlkQp3N6tE5oat9TK4oz
         qVhFHZ9c28AMPwETkEVmcnfiK6dWWDmeprULsbVJ54s2TjQpXC0AYkyQs8rqpRHJtK5F
         9CLZb7fOdgNhN4rRBrnwBNGMf8NKx2NhUaWWoqxe6Acow81BqVap8OC45gWhhnRFyqYY
         TZJQ==
X-Gm-Message-State: AOAM530QNIkBwoR7z8vnwL9izaNhEe3YnscB0fcEn+qf28nIJPHLBh8l
        1V+Pnz8e5l0TpGD76yHIWXIR+GGBFHQ=
X-Google-Smtp-Source: ABdhPJyVQR5YMV6o4SDj/uUtWm958nXRYA7eqrAmw6EYB5sJ4iMRkLyY8Y3ErFUsvuLBztsGFf9Opw==
X-Received: by 2002:a1c:5641:: with SMTP id k62mr10010064wmb.13.1599976006640;
        Sat, 12 Sep 2020 22:46:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id d5sm14228437wrb.28.2020.09.12.22.46.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 22:46:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 11/12] mprotect.2: Use "%p" rather than casting to 'long'
 when printing adresses (pointer values)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-12-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2843c1aa-f078-c49b-25e4-852cdea6f4d1@gmail.com>
Date:   Sun, 13 Sep 2020 07:46:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-12-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man2/mprotect.2 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/mprotect.2 b/man2/mprotect.2
> index 47d250303..885238a8d 100644
> --- a/man2/mprotect.2
> +++ b/man2/mprotect.2
> @@ -326,8 +326,7 @@ handler(int sig, siginfo_t *si, void *unused)
>         Nevertheless, we use printf() here as a simple way of
>         showing that the handler was called. */
>  
> -    printf("Got SIGSEGV at address: %#lx\en",
> -            (long) si\->si_addr);
> +    printf("Got SIGSEGV at address: %p\en", si\->si_addr);
>      exit(EXIT_FAILURE);
>  }
>  
> @@ -354,7 +353,7 @@ main(int argc, char *argv[])
>      if (buffer == NULL)
>          handle_error("memalign");
>  
> -    printf("Start of region:        %#lx\en", (long) buffer);
> +    printf("Start of region:        %p\en", buffer);
>  
>      if (mprotect(buffer + pagesize * 2, pagesize,
>                  PROT_READ) == \-1)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
