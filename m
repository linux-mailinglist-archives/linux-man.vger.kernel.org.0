Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 999D637795C
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:51:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbhEIXwW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:52:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhEIXwW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:52:22 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AF83C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:51:18 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id h11so12587112pfn.0
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KlPtL8Xk2VEJVqCuIq3Q23PpmtPyBFz4ppwPU5Jjgxg=;
        b=NS1D9jDs+yocpsLy//Vn/6rr6BM6FtNH5JeQ8OtsPqmt9hwy1FYIZSLYbR4f90EbSU
         K2prZe2V1/Yj72erXd5vsYq12t9IKeBCrLbt0Rx+pabMBxxeiAiDarNkFNdG41yzqqLo
         yFK6azD9MoGx/sGK9z3TqE1Bfockt9uPntuvQB+/rmS+AzcOXrTYzDKbvgYUprwsoht4
         a+JYtpD22QrQ2pcAwRnWdzgt1waYE4ek0cfldBrjpPvMPjd2d/OROFUNi/U/ymULY6ga
         bSA0nIcpZdNq0d4uTKvMwfv64JHgveXvAtw7CO56RXFo63UBvJK9aDPSp4dBGeyobKYL
         SAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KlPtL8Xk2VEJVqCuIq3Q23PpmtPyBFz4ppwPU5Jjgxg=;
        b=pAyokk7QZUPXvNGpVeQ3gAPei9NatA4wt2VBzQIRmH+JTEKPWym0GwB09KVcVxNdAe
         qXo2Mreve1+3Bwy7YMGbkaQFMuRPF1e+XmFGh/vXmF51FhckfodNxtFCEG9eTtBUjIct
         0pWI5sP/X62w0FhleD6JL5gWodxdriptrprvjvOLVZvZLVh0L8S0iDxh/1T7BML6iQ7s
         XewQN4KNGQGqTsAbvwh46fFIpyRcrFdjoOxWPkPfE7Ojj4RddpB7bibP0+2vxvobeSlt
         po5XA5ZPMY2Ca9e1ZHwn8wZUcFJG67bpqh+YhpXquuCCnbOpuzeExQfyfUDC6dMC7hLQ
         e6gg==
X-Gm-Message-State: AOAM533qA4yRjjlc0S1vGnTPX3Ypx4KvR37WruM8ta/Gv0G7cImFRGvP
        jX7bu1RBUe6S/CR4x5xoSnAC5VfFR04=
X-Google-Smtp-Source: ABdhPJyMy4BPuavAgnlvjDpVD/imtRQUjvc4vn70uaAnb8dTbNnt+cJP15UI6zexAW45+fOR7sUB2g==
X-Received: by 2002:a62:5cc3:0:b029:203:54be:e4c9 with SMTP id q186-20020a625cc30000b029020354bee4c9mr22284354pfb.80.1620604277622;
        Sun, 09 May 2021 16:51:17 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id t192sm9685151pfc.56.2021.05.09.16.51.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:51:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] xdr.3: SYNOPSIS: Fix prototype types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-25-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0ca3fb45-cdbc-48b5-0315-3771eca9ecc6@gmail.com>
Date:   Mon, 10 May 2021 11:51:14 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-25-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Use the same types glibc uses, and add a missing 'const'.
> 
> .../glibc$ grep_glibc_prototype xdr_union
> sunrpc/rpc/xdr.h:315:
> extern bool_t xdr_union (XDR *__xdrs, enum_t *__dscmp, char *__unp,
> 			 const struct xdr_discrim *__choices,
> 			 xdrproc_t __dfault) __THROW;
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied. Thanks!

Cheers,

Michael

> ---
>  man3/xdr.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/xdr.3 b/man3/xdr.3
> index ea6359787..83f668dc9 100644
> --- a/man3/xdr.3
> +++ b/man3/xdr.3
> @@ -460,8 +460,8 @@ integers and their external representations.
>  This routine returns one if it succeeds, zero otherwise.
>  .PP
>  .nf
> -.BI "bool_t xdr_union(XDR *" xdrs ", int *" dscmp ", char *" unp ,
> -.BI "                 struct xdr_discrim *" choices ,
> +.BI "bool_t xdr_union(XDR *" xdrs ", enum_t *" dscmp ", char *" unp ,
> +.BI "                 const struct xdr_discrim *" choices ,
>  .BI "                 xdrproc_t " defaultarm ");     /* may equal NULL */"
>  .fi
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
