Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1847D1BE7C0
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2020 21:51:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726554AbgD2TvS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 Apr 2020 15:51:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726456AbgD2TvS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 Apr 2020 15:51:18 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 767A9C03C1AE
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2020 12:51:16 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so4021497wrs.9
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2020 12:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ObpSAhGq/CFepJGYn7cYTaiCGDsjtsZXWlMg8QDLc14=;
        b=JJbiPQiqo56O9VK0Ns4AqogmSBg2NVYIfi06v96dJM5OTyVGPxG6gO5Qpy2SAIQSn4
         1BhZS0z5YpEJtTwGdtdJijUhG+BhZ3ke4jC+LLeLkIqN5ERq2WuZrTd6/3uLZ3LBh5sf
         K3lV/SdV0OpWdmISG4+3L1esPBEfwQ6U8XO6BXNdUbtm/wU9MFOuPKoWMzOWuP2KEkDR
         rZrxpBAMPlRLLseYzBhI+GpspWikmJyz5oV2/JM+7RSHNkoesTE77TArh3l+7kBUtU2c
         d2wwl074eOJJRfnsmYX+oZ0RlQo89qlegRjBEIlySkEAVPwZRQq3nxSduUKigFUuitZd
         P/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ObpSAhGq/CFepJGYn7cYTaiCGDsjtsZXWlMg8QDLc14=;
        b=A6Ab+M9p5YfD21IRbwM4HSlHIwG1LI6Jy+LIJZLOdfcnICDVxnh5ZoPdkFLQIdwe8B
         49GHqWLeAvWHXsM092nLsGXPPaoBEm9CN99Wgvs1DKofkZTo+59r+7T9x/9VFigIkEHG
         NV5RMABFsWHZ6vEYF13Bv58zSA2002VMLT+7ljgmtZfoF5/hBR4zlca8WkFWyUmufJsp
         VbwG7Q9TKoiEg56b0qizbJhgzZ0/8rNsltZk1WTvGqsLZIxyGn4orsk2eJbO9j53b5Yc
         0euQOLmiMn/oKyMVhQntynwwmjPUmV814ehLocRKbdlTSPf4gCV0q24eeTCfeYJUTyTp
         JJrQ==
X-Gm-Message-State: AGi0PubUfr9YoKdIvK39Ehtw7+/b/gVCIvqBV74SNsbXJx12BgRsii3V
        JwuZYpOSRu+wfF92wvsBxvi20ONx
X-Google-Smtp-Source: APiQypIfnmVH0a+P6Z27XZTEyte7Kuv60sFHochw/0+JdHdUYmfY9qrnnUaRPZrFWNq/kA2H3ZH7SA==
X-Received: by 2002:a5d:4252:: with SMTP id s18mr40187320wrr.367.1588189875118;
        Wed, 29 Apr 2020 12:51:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id s12sm8804683wmc.7.2020.04.29.12.51.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 12:51:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] execve.2: clarify signal sent to the process on late
 failure
To:     nforro@redhat.com
References: <c3c73e5e62c5981f3e21de0febe3d651bc95a6d8.camel@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <64d7c699-1940-bd17-99fa-24d4d7aa18b2@gmail.com>
Date:   Wed, 29 Apr 2020 21:51:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c3c73e5e62c5981f3e21de0febe3d651bc95a6d8.camel@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Nikola,

On 4/29/20 5:30 PM, Nikola Forró wrote:
> Signed-off-by: Nikola Forró <nforro@redhat.com>

Thanks. patch applied.

Cheers,

Michael

> ---
>  man2/execve.2 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/execve.2 b/man2/execve.2
> index ab5843840..109c0d57d 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -640,7 +640,10 @@ failure may occur past the point of no return:
>  the original executable image has been torn down,
>  but the new image could not be completely built.
>  In such cases, the kernel kills the process with a
> -.BR SIGKILL
> +.\" commit 19d860a140beac48a1377f179e693abe86a9dac9
> +.BR SIGSEGV
> +.RB ( SIGKILL
> +until Linux 3.17)
>  signal.
>  .\"
>  .SS Interpreter scripts
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
