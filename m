Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA6725E8BA
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:35:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726320AbgIEPfh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:35:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728253AbgIEPfd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:35:33 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41AC2C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:35:31 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id s13so9358361wmh.4
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IiKgekWrBZN+a2HSMA4OL5UMqKs9w97tpvPHdoeRMmQ=;
        b=eD9H+QgZv0zFl/yxRmvYHPL/CJeGYEnuJ4aiEZwHKyxQHEavgWAU4KQaVLGFr9mWfJ
         /Q00Bhx7BmrtTItdwE9D8rRoGC379Q0wKN1at1xePzyQJdZT6xyZLtg6VyEELEqA8/KV
         KKDVmNGsDMdh1qg/oqEMLWfobfMiOxJHmycG8tWpuvyzgdutbYo73sebCE9gng4omLSM
         506fDo2fASvKjYxB9AERLQsmd2xGEcSppEmonlmI7tpwkg7T5noVeRGOZfBgVBgeFtNW
         /42OobaWn510l66chiO67MeMhaddiEsJRkbbw3wdw9rmuf/1zi2LaGC3XFctvaO6FBeb
         at8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IiKgekWrBZN+a2HSMA4OL5UMqKs9w97tpvPHdoeRMmQ=;
        b=JcLokZrv2TW0z5pGdG32FpFCMM/N9654lEWBWeJwvnkxKnioIHys0i8ad+bwok1EWP
         0Nmni3w3lcsd0owxXy0cmVEUNLK9pPy68fdmU8ZvWR82yyM3H66gGYAieMFqYBDlSeG3
         7gAHzk8h/YayXf8oATz0f3LpuCBN1rz6GLZd3ropC4fRhol/HsjSdi97KCF/F/EAti0G
         /hFXD9qUqDt8wztKdZRqeSY7JUDRn1HGONRvvT6JB+aUmXNd1BOU/h1KvOKbQ3Xo1wvG
         FDzKMe2B/liUpLIEIA1HGmbuIo2PwVUSbOSqtMmG/axsKedrzUtPWA6xNJxMC4linL5k
         T3lQ==
X-Gm-Message-State: AOAM531NdZwFi/Ve4th9FVDV+J+i1n0abVQZAJLMrj9GRf7jVWgYnSqF
        EP9AJzFjsO2+H58rV5CHMFVeaVRNKY4=
X-Google-Smtp-Source: ABdhPJyDptVL7sR9pAeYKTBoZWSF2FOiVbxoMfSNjP1RPoJGCtt9ly2VpjyRIlMYNENsyKXL4aMUHA==
X-Received: by 2002:a1c:6145:: with SMTP id v66mr13227555wmb.171.1599320129731;
        Sat, 05 Sep 2020 08:35:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id b84sm21678339wmd.0.2020.09.05.08.35.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 08:35:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] tsearch.3: Simplify type usage and remove unneeded casts
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905105024.163147-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7f2cfb54-1994-5bc7-d885-0d60cd615c81@gmail.com>
Date:   Sat, 5 Sep 2020 17:35:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200905105024.163147-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/5/20 12:50 PM, Alejandro Colomar wrote:
> The type of `var` is `int **`, and it will work with tsearch()
> anyway because of implicit cast from `void *`, so declaring it as an
> `int **` simplifies the code.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/tsearch.3 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

By chance, I've just made a conflicting change, but also...

> diff --git a/man3/tsearch.3 b/man3/tsearch.3
> index 32ddb8127..65fcadc52 100644
> --- a/man3/tsearch.3
> +++ b/man3/tsearch.3
> @@ -323,8 +323,7 @@ action(const void *nodep, VISIT which, int depth)
>  int
>  main(void)
>  {
> -    int i, *ptr;
> -    void *val;
> +    int i, *ptr, **val;

Not quite your fault, since you followed an already poor example, 
but many people (and I am one of them) frown on declarations lines 
such as the above: 'int', 'int *' and 'int **' are three different
types, and it's considered bad form to declare variables with
different type in one source line. (It's very easy to overlook
an asterisk or two when scanning the source.) Better is:

int i
int *ptr;
int **val;

>  
>      srand(time(NULL));
>      for (i = 0; i < 12; i++) {
> @@ -333,7 +332,7 @@ main(void)
>          val = tsearch((void *) ptr, &root, compare);
>          if (val == NULL)
>              exit(EXIT_FAILURE);
> -        else if ((*(int **) val) != ptr)
> +        else if (*val != ptr)
>              free(ptr);
>      }
>      twalk(root, action);

Could you please recraft this patch against current Git, which 
changed in the last minutes...

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
