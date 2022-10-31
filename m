Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A052613FDD
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 22:23:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229757AbiJaVXT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 17:23:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbiJaVXS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 17:23:18 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFFB41163
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 14:23:16 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id f37so21162055lfv.8
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 14:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sYEqeB/uY7A8gNH4KhP9dzNBAtSeFQ87Nl3awq+vpDk=;
        b=Zu6MHDjTCFpRpcb5BBNLicW5XhM6F48HH4A9WgEYnZTMMRHQjiWRZpM8j5HecqYPs5
         qYZ43i6oBM3s8sdlPyD3/oFp1WhmoqTHlyv5OqUR5WdJXOJ01UoWzUqxd2lnTxREiFeu
         f3R/fNEjFd3bmn933EEThKD9iFN6Po0Bpn8zccQkoOQ3FxfsBMJ3VgmbNdhtTiRa1LBg
         OqkvcEAjDc69aWsFXMWrw6B/Kg0JqCAr1dWGY2aDQ2CwQPhsHmuVZy1431MTXOBFuBwp
         lk3kfI1Ao7Aw51p6eCeRBNsEjY7e1x6ww+bHXHmwI7bKvaV1MUoh3KXfGAZle1mgSMri
         WJ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sYEqeB/uY7A8gNH4KhP9dzNBAtSeFQ87Nl3awq+vpDk=;
        b=v0DXnFYQGilbYrnL6zoL9SsgwdDaFJddskND5exxrz2IFpUUdk3Rx5arffg83BsoeZ
         jU1LrLrKxx9GIiBoYa1yYP6Pw8QHfou65SekFFv9uDB4sZRYgx6JJCnI5Q3dvpQUk4u4
         Pe5GeeOsD1CcrxbQSVEGpks3UiNUfRj8RlwXd8/lXtD5uMRduKPsZsltiWS7gxTTMPA5
         LJSAGwR4IIYte2xrz2KnVFFrr46E2+pWkAMU7/azs89CwzdN9Y728AwZOszMcfUQjamC
         WuVE4EMBdfDCVVsjDKmC4JSB+TieAvMtTRw97RK83t2lGgV2kKn8T3B2rx2K0Wvn1mX7
         4Cxw==
X-Gm-Message-State: ACrzQf1Ec51pzFEPDaEBHtiwt8+YP3Ak7jpzACrSYeuABvCqiRX5VK/6
        yC20Xg+kpR6ukVW9ynpiLxHLtKVR8JTIt9yP8EIoUYK6AdtkWw==
X-Google-Smtp-Source: AMsMyM5pSUSCBw8/5G8SreSlhYT/lCAGu6YsqUieRW8MAYJqFvlAsV9kD01zOtCuvrKyoReJXMuXwI7urlSNQ8JKtNM=
X-Received: by 2002:a05:6512:2282:b0:4a2:7dc5:6630 with SMTP id
 f2-20020a056512228200b004a27dc56630mr6169271lfu.645.1667251395168; Mon, 31
 Oct 2022 14:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <20221031202311.83357-1-alx@kernel.org>
In-Reply-To: <20221031202311.83357-1-alx@kernel.org>
From:   "Zach O'Keefe" <zokeefe@google.com>
Date:   Mon, 31 Oct 2022 14:22:38 -0700
Message-ID: <CAAa6QmTXH5+iuwxrcadKh1ciUTnHxr9Y4vLeSUXtuU__-F3suA@mail.gmail.com>
Subject: Re: [PATCH] madvise.2: srcfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Oct 31, 2022 at 1:23 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Reported-by: 'make lint-man-groff'
> Cc: Zach O'Keefe <zokeefe@google.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>

Reviewed-by: Zach O'Keefe <zokeefe@google.com>

> Hi Zach,
>
> Just sending the fix to you so you can see it.
>
> Cheers,
> Alex
>

Thanks, Alex!

Again, appreciate all your help here -- hopefully it will play
dividends so don't repeat the same mistakes in the future!

Best,
Zach

>  man2/madvise.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man2/madvise.2 b/man2/madvise.2
> index 001cb96df..edf805740 100644
> --- a/man2/madvise.2
> +++ b/man2/madvise.2
> @@ -792,7 +792,7 @@ .SS Linux notes
>  .B ENOMEM
>  from the system call, as it should).
>  .PP
> -.IR madvise(0,\ 0,\ advice)
> +.I madvise(0,\ 0,\ advice)
>  will return zero iff
>  .I advice
>  is supported by the kernel and can be relied on to probe for support.
> --
> 2.37.2
>
