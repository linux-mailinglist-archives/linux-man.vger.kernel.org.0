Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14C253E3801
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 04:54:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhHHCyi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 22:54:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHCyi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 22:54:38 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68390C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 19:54:20 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso1052355pjb.1
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 19:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Nk6yJzJWZvB/fUBnMt+SAN4Z7WM05UuBkIrj/QlG2fI=;
        b=Aih2YZBCNoELIZXYQG5b4eukyfkHf3MlqgckCY7/Ng3cwXLm3is2rRep/xiQmvgr6Q
         FyQMSUq3gPbzI55x+jEc7RiEn5bnghOzipjzbHcDTHL6BqStjZngecxCS3PdhxVtNHUT
         oW08jH1js8/Zx48jZgXU3pacd3VsSfw/AlwO1N8lmkrCqh09b1qX1O4rVktWu+Nq+oeS
         i0LUxuAkJvFTj40uXwBj1Sm7suwWeX2HYx6RcAiFAymr4NHuyEJYR0612DUsoFLfRElt
         ZjVsclPW5lJ3CCr3MfjAa9olgs9MJzuPJ52hdrF7AGLe6Fg90vG6/eaEPw05avwz7M7O
         qcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Nk6yJzJWZvB/fUBnMt+SAN4Z7WM05UuBkIrj/QlG2fI=;
        b=bQvU4ohP2zlNCyPsBWr5IOGg1IDmluPesgzEcObzAPKlQevPKMq34io3xMZH+CArT7
         u8ckDDR9Tpa/2TaAfcHJpXiUmX++Ssd6mdG61Ev5VVIgv3S6As7tDMXiE+raIM+qx/eC
         clKHOi8nket4K+lWnniFJ8e9NyilIX7Xc58gamZqglb5ccWzdqb34p3PJnTBq/d2ju2n
         oicB1+U4NOX7r4zsM8xgfQS1oT4YUqF18iXvR0uDnx2tqo/kz0DlPP3gyee4MUx+8wOw
         IobjKC7UbOu+JqRa4wrCjgXxLCxYikl3uGNwG5ggVryovKAQo4FCjQvFFwJLPE5uH1DP
         jSSw==
X-Gm-Message-State: AOAM530Ld5PJ70LwrTz+kPrTP47RkMKTxZVVSlDszkNrOGJcDUXI6C3k
        YIfJBjnoDNLFkbUwlMgh3KaGrnNrG9A=
X-Google-Smtp-Source: ABdhPJz2fI6cncqgr8wFNoeYqLIHsROUm8lp1TGMhNJfPvgmUONOmOFLArkTvS61TnPVJT2UNLb7Eg==
X-Received: by 2002:a63:f749:: with SMTP id f9mr121780pgk.77.1628391259511;
        Sat, 07 Aug 2021 19:54:19 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id v7sm15026156pfu.39.2021.08.07.19.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 19:54:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Kir Kolyshkin <kolyshkin@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 14/32] capabilities.7, user_namespaces.7: describe
 CAP_SETFCAP
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-15-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c44ab66d-e6bf-dc12-be4a-c56eabec9030@gmail.com>
Date:   Sun, 8 Aug 2021 04:54:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-15-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kir, Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Kir Kolyshkin <kolyshkin@gmail.com>
> 
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man7/capabilities.7    | 6 ++++++
>  man7/user_namespaces.7 | 6 ++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 9f8f0087f..2f9c9a61e 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -349,6 +349,12 @@ write a group ID mapping in a user namespace (see
>  .TP
>  .BR CAP_SETFCAP " (since Linux 2.6.24)"
>  Set arbitrary capabilities on a file.
> +.IP
> +.\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18

Thank you for including the commit; that's always really helpful!

> +Since Linux 5.12, this capability is
> +also needed to map uid 0 (as in
> +.BR unshare\ -Ur ,
> +.RB see unshare (1).
>  .TP
>  .B CAP_SETPCAP
>  If file capabilities are supported (i.e., since Linux 2.6.24):
> diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
> index 518e7a3bb..3378b6057 100644
> --- a/man7/user_namespaces.7
> +++ b/man7/user_namespaces.7
> @@ -577,6 +577,12 @@ or be in the parent user namespace of the process
>  The mapped user IDs (group IDs) must in turn have a mapping
>  in the parent user namespace.
>  .IP 4.
> +.\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
> +If a writing process is root (i.e. UID 0) trying to map host user ID 0,
> +it must have
> +.B CAP_SETFCAP
> +capability (since Linux 5.12).
> +.IP 5.
>  One of the following two cases applies:
>  .RS
>  .IP * 3

Thanks for the patch. I've applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
