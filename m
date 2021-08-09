Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35E733E430A
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 11:43:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234642AbhHIJnr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 05:43:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234365AbhHIJnq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 05:43:46 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3C86C0613CF
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 02:43:25 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id w13-20020a17090aea0db029017897a5f7bcso5605638pjy.5
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 02:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=l3gEIMHDS03nD+5+a61I02eUTgK5jP2vXRs4Q1n96bM=;
        b=UeqJD+V8SGbAqRo84eOa1987E8tFx/GlEGMWw+UobpTk0qV/jJMDxTNrnNaAoNerw1
         TjbvaSb3VyJD1Woho173TIDFKUQAZmdUzI2m3UZInyikVqrIrYCbal38mEwqPxghpOEc
         EQbzCozBev6gGzym+mYnUUfoT28xGYfPBSm4IlaaLX7kTftsC4Klm2AgRxrcCT2IDBYq
         20DtXU92c81b/iMfXTFDn4+JIz0aFaXlvbQou5d2+ZeEdbUDOSAevBVb3v6Y97mSzgII
         8R0AxAnKXmnzXBS+yvyUUdBrQ0lu0oI/f6lReDCIlrNISSCfmtKxQ7+hhdNH7wEXSmJC
         mbNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=l3gEIMHDS03nD+5+a61I02eUTgK5jP2vXRs4Q1n96bM=;
        b=NkmhHY7sBA+ggHCuunUcytvWeniikoAnqfpAd5fcJVFn0EOJogYkBpRhb6fm2o07Ph
         P+TaWn/HokGl/g3UJ14r8lQsypCA94HH8xxYMT+g9qJ49xsUP+aElegLDiw1m9LeXWmZ
         CGZDP1qpj2cVhrcCMZtmALdhJ+WxPnCNDJbe0aIBQtCbLUBORRxmJBYJnnUui7kKvJnt
         OCbD12t98Z1dr8c0HDe0SNZ2IfH+T4s3WIwtWuh0Iq9M0e2ltDilcoXq9PL6010vLcaU
         Mk6khkpByM+Snpv4rdAVjfmMU5aFEv/UD9TjTnrY9K3YKiAmQ90luaBDte0fkRR58UyN
         Gp6A==
X-Gm-Message-State: AOAM532970+hk4VWWSjQb1FZBMtE0ddmyC+IhBqSI9C33FQO0lTb9ZMC
        gpfYQSEcbvh7pXUtSdUlEAq8LIRT6ak=
X-Google-Smtp-Source: ABdhPJwQ16q59EUYBEISn2ppMRAaVLqdG025EeRMo04MIuVPL2VaY63HtM0oBNVGyNqhoGtzmOGVPw==
X-Received: by 2002:a17:90a:d910:: with SMTP id c16mr15840928pjv.154.1628502205036;
        Mon, 09 Aug 2021 02:43:25 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id j16sm20669299pfi.165.2021.08.09.02.43.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 02:43:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] path_resolution.7: tfix + srcfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210809091051.787551-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4dddf599-b7ab-3b8d-f5ef-5699736f86c1@gmail.com>
Date:   Mon, 9 Aug 2021 11:43:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210809091051.787551-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 8/9/21 11:10 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> Here are some minor tweaks to a recent patch of yours.
> There was a typo, and I think the line breaks better at that point.
> But you can omit the second change and just fix the typo if you prefer.
> 
> Cheers,
> 
> Alex

Thanks. Patch applied.

Cheers,

Michael

>  man7/path_resolution.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/path_resolution.7 b/man7/path_resolution.7
> index 749f6900b..143f22826 100644
> --- a/man7/path_resolution.7
> +++ b/man7/path_resolution.7
> @@ -179,8 +179,8 @@ flag set (though note that this also restricts bind mount traversal).
>  If a pathname ends in a \(aq/\(aq, that forces resolution of the preceding
>  component as in Step 2:
>  the component preceding the slash either exists and resolves to a directory
> -of it names a directory that is to be created immediately after the
> -pathname is resolved.
> +or it names a directory that is to be created
> +immediately after the pathname is resolved.
>  Otherwise, a trailing \(aq/\(aq is ignored.
>  .SS Final symlink
>  If the last component of a pathname is a symbolic link, then it
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
