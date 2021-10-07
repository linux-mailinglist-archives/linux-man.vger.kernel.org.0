Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B123425C8F
	for <lists+linux-man@lfdr.de>; Thu,  7 Oct 2021 21:46:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233750AbhJGTs2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Oct 2021 15:48:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242128AbhJGTsU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Oct 2021 15:48:20 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96EA2C061570
        for <linux-man@vger.kernel.org>; Thu,  7 Oct 2021 12:46:26 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id c4so4623365pls.6
        for <linux-man@vger.kernel.org>; Thu, 07 Oct 2021 12:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VfamF8Xw8zJXncTJSr8bwdKzt7MI7Wj8KizhjbmlHfo=;
        b=dfDpSQX2HgsdCAfLaye4ILCnZ/m5afYMhGVwoEIurn4Ep1NIixABRGuqmRtIOTawoi
         YE0n7+gZE6hFE8qtv3wcFzBdWXaHPfBncNEeuByV4Szp1cGad2oLENUn9vKomdlJmHMz
         fbdwQXH/3AvsNzI+m+Ioyuj5VN5DmyzkwEuXMhQA4MFQw3ChyY5Z/rYpeOuIk2kPE2v7
         O5IF6vqKMXe2jdFh2dSSTL/SuOPg8LTg8cXhCPTe2Vbq0RBz4HvX46WRxisDVC0XymVy
         nOyDV53lJxHcCd8WJVhaxO+1xxyOlG8svq1Yt1h9Mjqb+X581Bch96JgcGOuuz3atLGk
         qv2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VfamF8Xw8zJXncTJSr8bwdKzt7MI7Wj8KizhjbmlHfo=;
        b=4jR6TLC7smAD4WFjtaloyS2O3dBI5Ut3i4/sEFU57RHnUsxUPtJ1IifaxcztyZre9i
         Lb5zTbDiE3aBN/rshqfweiCtkanblDu2K0tpjoxV+O7JibiZ8651ggsGNsFevmmv6t9M
         8ypcb+JqMtw/2yhQOESYKK6bNfyuSZcWQevDoQsbRhsLreWEwGvTOSeCwtGQEq23xQK/
         V1NQRcUkPZ+CJecOITsxF+AOen6DvD1GPVL2n4iAakXM64RVQkHTQOGTmGoX1ZSqmbZ0
         fgFRoPM7pfyHQMf1wYe+ow5AsGkGm6u2PZ85upP5l3GWXMK8cQnH8q41Kcf1ScnTSmfR
         yeyg==
X-Gm-Message-State: AOAM531K4k/Prmpg44Abu7qg8qHsYE5cwiV4gVV44UtO1GK3ICm79M1p
        Gc76t8sQGvGZxwA3FEUSX3sYGg7JINi6U/RFtHY=
X-Google-Smtp-Source: ABdhPJyfuBLDj7OuFf1cm22bkZZFoz7hPBmDVM3GfMJ2oreL0MBR7QpSCdTTtAqHhufrIiMtBaVidnLtsEvKKzM/zSY=
X-Received: by 2002:a17:902:d707:b0:13d:bbe8:bcff with SMTP id
 w7-20020a170902d70700b0013dbbe8bcffmr5450605ply.75.1633635986099; Thu, 07 Oct
 2021 12:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <20211007090914.8318-1-jwilk@jwilk.net>
In-Reply-To: <20211007090914.8318-1-jwilk@jwilk.net>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 7 Oct 2021 22:46:14 +0300
Message-ID: <CACKs7VDW_yqqfk2rqqi1-up2gysAFCUcXRz2WmApp2kLpXjiTg@mail.gmail.com>
Subject: Re: [PATCH] tzset.3: ffix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub and Alex,

One quick question:

On Thu, Oct 7, 2021 at 12:16 PM Jakub Wilk <jwilk@jwilk.net> wrote:
>
> Use \- for minus sign
>
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man3/tzset.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man3/tzset.3 b/man3/tzset.3
> index c80da53f8..694cd0ea9 100644
> --- a/man3/tzset.3
> +++ b/man3/tzset.3
> @@ -111,7 +111,7 @@ There are no spaces in the specification.
>  The \fIstd\fP string specifies an abbreviation for the timezone and must be
>  three or more alphabetic characters.
>  When enclosed between the less-than (<) and greater-than (>) signs, the
> -characters set is expanded to include the plus (+) sign, the minus (-)
> +characters set is expanded to include the plus (+) sign, the minus (\-)

Shouldn't this be 'character set'?

Thanks,
Stefan.

>  sign, and digits.
>  The \fIoffset\fP string immediately
>  follows \fIstd\fP and specifies the time value to be added to the local
> --
> 2.33.0
>
