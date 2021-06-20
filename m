Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC633ADC77
	for <lists+linux-man@lfdr.de>; Sun, 20 Jun 2021 05:50:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbhFTDw7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Jun 2021 23:52:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbhFTDw7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Jun 2021 23:52:59 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2B15C061574
        for <linux-man@vger.kernel.org>; Sat, 19 Jun 2021 20:50:46 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id k22-20020a17090aef16b0290163512accedso8774563pjz.0
        for <linux-man@vger.kernel.org>; Sat, 19 Jun 2021 20:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=B5VmEHjyHe1Bf+mvmccIpjnwJ+ELre88MJXWpsphle4=;
        b=Vd0hOn70kqYsrg1/RDDcK38uUkzLtYQnDvnrfNhdxXXW/MEFD7/Ier9pCWbqUCR2Fv
         AKYjJUOPhkJ/0tDc2pth+jpPI8CIxFv/7JvvlZQFUd0dDxUQ9RzgWSh1/ozsaXQ28ipY
         3SKN/gnEB+kDATV8GpCyQyQNlMDXCE3RtUuotfL9sNnxDVp+VtAvyTYfqw0CMSSW7QZf
         vuJGU/jNYp0T9xUkQzMWvERnJizDCOX1PYA2EUUYlIV46s9dMaKkBnL7RMnWn6pEtSa4
         njKGDtCJtg3FoaTcX0vD++NGsRnz6NdhYl339M2a+daw51eVC9H04JtXjiSQPKxZh/ju
         BOkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B5VmEHjyHe1Bf+mvmccIpjnwJ+ELre88MJXWpsphle4=;
        b=rSio9JzjUb/I2H/CkjpbZVMClBPCbba1Xf3+9ZW3xZKBIiRaNh73UM8mhWXoevprEL
         W7qxebm7+R8RiaJ2hjxxyCvbZP9S/PLGkNqG3Q2GGay734TPZkortQw7DP1pUgY8bpoP
         c+3g64BwozAVUFNXmwzxcTGaTVFpw8L5gty/ctj50Mo8bd1vLXXL48iqcmVQ7pU42p1f
         SKRWED/9RWEzoIUgY/f8f84rF+HJCfAdyQU6WmBsQRtxYLNkmpAkL9cOdbWZU3dXTY3O
         2P/219hU9Qw06ofMPl7KQJIA6RwniMKJbqZ7uCKBxqzAY7XuCkBZg93UswROiQ8Tauut
         cWjQ==
X-Gm-Message-State: AOAM533xpQs6UcAP2+Fre/ZM2QvVeoO8g/xhyNcAdrmGieuODNMJHF8y
        s/4xAKwDtLB9ZbJkLV4uSqihWdX67R8=
X-Google-Smtp-Source: ABdhPJy623Q81FczQ833sr/XBBgCxNDRCU/CdpeUTWwqhCRMQL4JT9UbQp9djaPEG3grgIvpWH2fvw==
X-Received: by 2002:a17:90a:1d0a:: with SMTP id c10mr18853242pjd.39.1624161046097;
        Sat, 19 Jun 2021 20:50:46 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id j10sm11509729pjb.36.2021.06.19.20.50.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Jun 2021 20:50:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, thomasavoss <thomasavoss@protonmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] ferror.3: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210612082741.12211-1-alx.manpages@gmail.com>
 <20210612082741.12211-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7b49d842-33ed-29df-14e2-f5e58d73521c@gmail.com>
Date:   Sun, 20 Jun 2021 15:50:42 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210612082741.12211-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex and Thomas,

On 6/12/21 8:27 PM, Alejandro Colomar wrote:
> From: thomasavoss <thomasavoss@protonmail.com>
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/ferror.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/ferror.3 b/man3/ferror.3
> index 41fd9a3b0..cb63e24fc 100644
> --- a/man3/ferror.3
> +++ b/man3/ferror.3
> @@ -85,7 +85,7 @@ function returns nonzero if the end-of-file indicator is set for
>  otherwise, it returns zero.
>  .PP
>  The
> -.BR feof ()
> +.BR ferror ()
>  function returns nonzero if the error indicator is set for
>  .IR stream ;
>  otherwise, it returns zero.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
