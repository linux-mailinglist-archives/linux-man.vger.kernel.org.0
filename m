Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8E2AFD49
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2019 15:00:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726781AbfIKNAy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Sep 2019 09:00:54 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:40920 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726198AbfIKNAy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Sep 2019 09:00:54 -0400
Received: by mail-wm1-f66.google.com with SMTP id t9so3439123wmi.5
        for <linux-man@vger.kernel.org>; Wed, 11 Sep 2019 06:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=F3KPp3ZYdCAK8mznuPJrub/Z/FFlCWFVbTx8KJuCK48=;
        b=N3XFWYlAdQgFTK6Weggmbjuka0l9KhbCimmBTO1Gt5ezcio/sm83qaxAGcBmCPegAA
         FWtZc2ZdD0QqRYUNz0dMW5HaOp1aqamuJdlCGvQ9G0LCjxUM1K5jVrM0GnM+z+w0gjKH
         wHj3tYwi3s5A46TcDByfhE/eTejqtwzXN5qRmM1Qeg0cYKGbgeU6B6TGCNdqbQFb2WqM
         uCwHguw2sMa9oD9A+8clBqR69X2tCo1xNSBcrbP7edxuQR+eNa4C76Z9p0PPIiZyU9oZ
         ub34ziER9IDjgn+tMBqCcPXNAZCBiLEsY5+AmQLFK2udmW4QFAbTKhSzoTS9tEM5IsT/
         xHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=F3KPp3ZYdCAK8mznuPJrub/Z/FFlCWFVbTx8KJuCK48=;
        b=m4qj2pfhXp9M0X8BDLx/1SzkIxS4zHeXK43ipoh4Qpde+okPYHNr2N6MHXCSeqw2sZ
         MYAEsn1kKbiAttNj3is6KJlpg7UAZCyfn3DfMCOcBsOqBj58ZjLmp6GDqa4ZnS/EX2jC
         yYx0fKeAukQspsCMMhmFd0f20FRui8HkJLA5530VGmcsRahUXrCVH4ZDwbE4ZVyVHCWr
         dF8gnRWByawKkrzBVW+iSNBQSQMb2/zNZWlrcWPaxD0Ui8m2NCgHZjsyTh/TmtplbxaT
         f5MitIXmtZxtRvdlKBaWnZzbveClo2T3AR9sj2VcZIFgY2xwTH5PoSsrlVaruMEmuPLa
         5L1g==
X-Gm-Message-State: APjAAAWkXo7irH78q2utrSI6HGWNZ+k0Webj4GtuHfvi/ZlPV30mcpXA
        YNn5VqK8GvFuv9ZQbYTJPSjcVP16
X-Google-Smtp-Source: APXvYqx7ilvh25sisQIkK8jTlKeet48rRO4rjAFAgotN1bZgSJ/R5fPY0R3N1JH43B1bumkDtvLkLw==
X-Received: by 2002:a05:600c:240a:: with SMTP id 10mr4205500wmp.113.1568206852758;
        Wed, 11 Sep 2019 06:00:52 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id v8sm32741783wra.79.2019.09.11.06.00.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 06:00:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] mprotect.2: wfix
To:     "Christopher M. Riedl" <cmr@informatik.wtf>
References: <20190911125639.2083-1-cmr@informatik.wtf>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <87894514-8cbe-4ff0-9e44-2caa375424a4@gmail.com>
Date:   Wed, 11 Sep 2019 15:00:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190911125639.2083-1-cmr@informatik.wtf>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Christopher,

On 9/11/19 2:56 PM, Christopher M. Riedl wrote:
> Signed-off-by: Christopher M. Riedl <cmr@informatik.wtf>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/mprotect.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/mprotect.2 b/man2/mprotect.2
> index a65d80f3e..f96b41560 100644
> --- a/man2/mprotect.2
> +++ b/man2/mprotect.2
> @@ -271,7 +271,7 @@ is used with
>  .IR prot
>  set to
>  .B PROT_EXEC
> -a pkey is may be allocated and set on the memory implicitly
> +a pkey may be allocated and set on the memory implicitly
>  by the kernel, but only when the pkey was 0 previously.
>  .PP
>  On systems that do not support protection keys in hardware,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
