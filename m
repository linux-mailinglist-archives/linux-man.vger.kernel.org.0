Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFD86265AF2
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:58:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725786AbgIKH6U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725791AbgIKH6R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:58:17 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B71B2C061573;
        Fri, 11 Sep 2020 00:58:15 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id w2so3537865wmi.1;
        Fri, 11 Sep 2020 00:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wPrp6Ti0ynzZCU3Qw7GsA/P3Fv40bNUu1F1smB+3SN4=;
        b=aSEm8d0GSUqMCStcGe5xoiE8YEOde+nDJta/Iz1PQPdWu2jIpq1nxoEO7WtvQwme+I
         I0mBdSGdk9GbZLLMsGNemb3+bBUsgPGqm06kOWTZdUrV7zFmUYx/ktvDErH2e68quzCA
         blLYFvIXgrhSxnYqzKu0h02ZyuIPoXQRG3yTD1ithGrRyqq42snQzzmaKNJ8yGkcp6Zq
         X3sbVh1TNHylGt8XnZSLeBrdQaGhIorZ4G+94L4E06BJ04ayTQv2xdrvUkiGGsLgFZ8V
         qu8M+6q9aReCVUQxcL3F7wJc0e3KWnERkmrpFgeDSxkM3YDWuEHDbaShH/0M/gmqzp4z
         dp3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wPrp6Ti0ynzZCU3Qw7GsA/P3Fv40bNUu1F1smB+3SN4=;
        b=hKaz5p9hnxB0kRxYu6hkTx4LVQiHhdO31lOm2ewRxrVJriZa4McFLtD/cPbmOpKD3C
         bmjLXXDnjVN90y/Y8uI+biD/0CzVpZEfE21KOczlkVvqt5DBYtGaO4EeDYTrX2hFIQ4t
         F8oAVNynch95F8TeVTW11HmqcFmMFR5D99igFC3n6N0yOM4bceZs/6Ouh1yiNTKTCUE/
         qE15dKGlNhZmpBVkM7w82hclleE7TxD7JF/orfrlQXOEAeF3JntRnEuuqjY9E577Ca+Y
         pG1UdvYQdu3sWJF7CjQmv+fn3mXPITbicUx4CgP7H+UI5hhx1+XWK9bIhD8Ysr4gUnr/
         XEiw==
X-Gm-Message-State: AOAM533xkPmfVYpeUchUzBYq7WrPQkMfPwRzQuV/JH1tOETrF6m2Gwqi
        OkbfqPpQQhfZhlEGDKeFj2xy+bYQgxA=
X-Google-Smtp-Source: ABdhPJxJM01gaghlzcoL1cFn68wA8mgNvrhx1PDzCaRp8t7+JehwtorstXOothmUUL+2PSJCkRjYog==
X-Received: by 2002:a05:600c:258:: with SMTP id 24mr962568wmj.66.1599811094126;
        Fri, 11 Sep 2020 00:58:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id k8sm2817133wrl.42.2020.09.11.00.58.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:58:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 19/24] pthread_setname_np.3: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-20-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e651f418-ada8-19e1-359e-9906994108eb@gmail.com>
Date:   Fri, 11 Sep 2020 09:58:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-20-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/pthread_setname_np.3 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

What's the rationale for this patch?

Thanks,

Michael
> 
> diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
> index b206f66c0..4dc4960cd 100644
> --- a/man3/pthread_setname_np.3
> +++ b/man3/pthread_setname_np.3
> @@ -164,8 +164,9 @@ THREADFOO
>  
>  #define NAMELEN 16
>  
> -#define errExitEN(en, msg) \e
> -            do { errno = en; perror(msg); exit(EXIT_FAILURE); \e
> +#define errExitEN(en, msg) do \e
> +        { \
> +            errno = en; perror(msg); exit(EXIT_FAILURE); \e
>          } while (0)
>  
>  static void *
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
