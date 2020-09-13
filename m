Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61A1D267E11
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 07:58:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725925AbgIMF6P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 01:58:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725924AbgIMF6N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 01:58:13 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED29FC061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:58:12 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id z4so15252570wrr.4
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cDQENPp5l8FXqX42xDYyDkj7D2GDDyqCBiVb8MJn1o4=;
        b=T2k56V3pLBGLCdKtLlPkutqPPR4pLn0+HQ8jkDGfvNEfGjXuprNZfmEVMHToRy/kpW
         gEY51X7SVsXYq4I7TPhwPsqWHKVMViLl4cTUHN1sEsJ5H6cFpnO/Wo6+2y8tTadP16k6
         F2YuVGonSeeDO9hjqncapG++Q71UpNNziMF66qTTGKMfmqJ4XA3dxukx1TEPKIlHmy06
         5v4lHQDIIVGoUifzt3Q/2cjdYs0ziU8daDa9CTEesHmxg7LMHXuSZeTy8NsA2Zs3TgQu
         htclvD9xvLajBMlCCl8efC7Bj+8mPB5SRduvlabyvh/aAExoWvQpRng47n8zRqDIuvFu
         //Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cDQENPp5l8FXqX42xDYyDkj7D2GDDyqCBiVb8MJn1o4=;
        b=R0koZ6e+8QNaK6+oWVa411493jFHxkF040KNYMlso2Y3vDtCZSkbxPbuvl+d8WDxdk
         mw4r98aBe1La5I3XOUOpLvOKDy6cXZQrJihGz1PfIWf9KkowN3/b6dtkHgmHtZryRG35
         r3aNADEHJNn6AGtvvOx1BsiwDO7uTr8dxpe4wFfEcwEzjbDMQDq54QndSbOH94q42OOK
         H9w45CHGFhfQ7ckUtG1T+czXG0mIqTYLKCzq9koiCSjoZi0auxo9Y3BPYtpeNvWbxP0B
         fWYiM4PKUmPmHbPXJGa5rvkFdh8nA8EKaSOinhJe+k0QyPrMkySgbxrnjOsHV2B+xx07
         j3gw==
X-Gm-Message-State: AOAM530dytJ3KVz0WXfvfRQA4okdQxF5EaspP4K2u9XBy6EAGEAY7hQn
        FMJhrckcEaFYTDtDiseMfQJr59s7tGI=
X-Google-Smtp-Source: ABdhPJy8JplyjsAj/6ADPawac1IUEmn6K/BJPiRH4kK64gN2z2ZdhW2nC6L6l9B5l7kPC3AMdPs8mw==
X-Received: by 2002:a5d:4591:: with SMTP id p17mr9510487wrq.408.1599976691441;
        Sat, 12 Sep 2020 22:58:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id m4sm14420241wro.18.2020.09.12.22.58.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 22:58:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 03/12] pthread_getcpuclockid.3: Cast 'time_t' to
 'intmax_t' for printf()
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <af4a408c-7e6e-4074-2c61-461e7f167a55@gmail.com>
Date:   Sun, 13 Sep 2020 07:58:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/pthread_getcpuclockid.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Casting to long is the historical practive here, and should be sufficient,
don't you think?

Thanks,

Michael


> diff --git a/man3/pthread_getcpuclockid.3 b/man3/pthread_getcpuclockid.3
> index 703735b91..a457a4cee 100644
> --- a/man3/pthread_getcpuclockid.3
> +++ b/man3/pthread_getcpuclockid.3
> @@ -115,6 +115,7 @@ Subthread CPU time:        0.992
>  
>  #include <time.h>
>  #include <stdio.h>
> +#include <stdint.h>
>  #include <stdlib.h>
>  #include <unistd.h>
>  #include <pthread.h>
> @@ -143,7 +144,7 @@ pclock(char *msg, clockid_t cid)
>      printf("%s", msg);
>      if (clock_gettime(cid, &ts) == \-1)
>          handle_error("clock_gettime");
> -    printf("%4ld.%03ld\en", ts.tv_sec, ts.tv_nsec / 1000000);
> +    printf("%4jd.%03ld\en", (intmax_t) ts.tv_sec, ts.tv_nsec / 1000000);
>  }
>  
>  int
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
