Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88E9925D27F
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 09:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726127AbgIDHf6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 03:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726089AbgIDHf5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 03:35:57 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05DC4C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 00:35:54 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id v4so5107701wmj.5
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 00:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lxUkS484CCJBLOWG7Y9OBZDqKVSYnq4+tFAj/9hBUNU=;
        b=lLcqhWI4Lnrl6FLYQTXSUquPyGSATyw3nBwg0R2Yq2Qw35n5mSHZy5vv/c5Z5dDWyu
         N3Sr/wrA7xJXjnvDxU9ogDRtzH9LkEn1TfY2eNncnBOMqLXCkAOaLB6brfMU83H8a/7L
         sUEMI/wmUdZdJr1bjB5VNGe2vDCfSlp/94YTZwbmvqi7fiCJuI/yW9Erp8awqQ1+AvV9
         l+wPfq2I9cHaFdxlP62iPoIaZfKV/SuQUiG2YwdL9WyHaumL2tV24snDFeD9xee8F9rY
         0JLw6/B6RD47xjSAlan60JMN8QucIPgvXiDpC0T37KxG/wKLZ5StfX0FNXu5ez17oPxG
         5YQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lxUkS484CCJBLOWG7Y9OBZDqKVSYnq4+tFAj/9hBUNU=;
        b=eRMXUWqko6lo3LRmz+zZ9n76klo8mLjfAaiuecUTCG7FKsJ+vDWF1SgZXfPwCSr/rq
         rbDwbve3zVCbyGS+v9u+fHwfjKX3+U6a17RyBB5dV4HF1knfRCfIjGpdtKda2Af+5VsG
         jK6DTGSi+cQ5SudmcvhWG+8ETysEgPz9el0K1HuZhoL86uQm0Nxhlg/+SdmHQTQa9iFa
         lMaV/UqMhRfbq7zmAenV4CZC/2bu4omECA2OVhONRIvjL0fU8MaqJSER283HdDO55N8N
         ve3nz2hQ8vVeuGlKYMgTMnFzOqRx7M000/tR0t9Tda+tm/Z3kbNZsO+MvS4C9YprlikZ
         HnAw==
X-Gm-Message-State: AOAM531CkdXcePsVwa65lYH+K/zLBO6TA9ZHKooF+aYhBk/AGPOKvuD6
        w/ahLZhCFEKLFQoW3yPXnplhmmazGFU=
X-Google-Smtp-Source: ABdhPJx8ixoz0SORmQj5JGSUBmuRxA91l9NoZZ3xlSiXjteF1826wrt7bGAx1GXcktLF+PPRk4RsZw==
X-Received: by 2002:a1c:6346:: with SMTP id x67mr6027277wmb.42.1599204952819;
        Fri, 04 Sep 2020 00:35:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id h76sm10119863wme.10.2020.09.04.00.35.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:35:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] mbsinit.3: wsfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200903110522.147678-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1e5489fe-8451-a2ba-0007-2e0be7c331a5@gmail.com>
Date:   Fri, 4 Sep 2020 09:35:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903110522.147678-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/3/20 1:05 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/mbsinit.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/mbsinit.3 b/man3/mbsinit.3
> index 663f9d9ed..aeaa6ce88 100644
> --- a/man3/mbsinit.3
> +++ b/man3/mbsinit.3
> @@ -59,7 +59,7 @@ in initial state is to set it to zero:
>  .in +4n
>  .EX
>  mbstate_t state;
> -memset(&state,0,sizeof(mbstate_t));
> +memset(&state, 0, sizeof(mbstate_t));
>  .EE
>  .in
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
