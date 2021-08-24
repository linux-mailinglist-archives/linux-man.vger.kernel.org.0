Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8F13F5AED
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 11:21:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235583AbhHXJWM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 05:22:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233910AbhHXJWM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Aug 2021 05:22:12 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D29DC061757
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 02:21:28 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id v33-20020a0568300921b0290517cd06302dso44137335ott.13
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 02:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=uGxqrnP7V5ihWIChUiy7H4M0kiFi1i2WtXK/p9qoZr4=;
        b=P027yLxRh80SDcHPdcbnRntM2l6ZRnlNnf/nfAxog3eP7/YbNUBh71FEzrvB5qfRp+
         5lVcnsEFVnQTiQ0fANZ1PA46oZ0cx/K36iqAj+iD1yrmU08u9A1cWZxhx9u+8wa088vC
         tKpKuXEQJXamahO2MsVa73ZnHLe8JQfsuVuXeLikDtyzh1OhWyWoNqdFlB8WgE0gHFNH
         FJXUcLkX2pnnxDnra6xXZPgXSgX/61sn0jkI+Etrv23Sx9SyoUo7C+4U1EkLKNM+SvTp
         T0wyehgxVCLI0SoBwQdOH0AOHnuJOU9PdhjZRv1ybYH/7DiuW5cva8AbCQwSzORh8CdJ
         pC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=uGxqrnP7V5ihWIChUiy7H4M0kiFi1i2WtXK/p9qoZr4=;
        b=OkVsZ0YALvw8uevrEZW950er6K8O7XM56CYG9qylkbQ3pbgJbSTTYUn82c6aGJUNu4
         nwwZGhOUyEFhkZIunxDPKVrbvjLO/2zDPbqOxQ34pa67uVAwARMdypEJc58f6r7YDafx
         Rt1TiCcRO8mVc4JwO33O8MGdbnHnJ2mkp1jdNYFCefc2LwDRMMqeSAZm7RI69TsPH1WJ
         pnF4bx7xOxiNeJVxewr0U4t4GGzOST8ZPbj8CDV8RcE/l4wr/iDe7c8uQnxHBr0pndgm
         LzZ72yx7H4+NKgtWglFYEF4SL2SaoIMDBWyeucFnxoT+6v1/sGtZAgFsrMovdM4cEsrn
         X+sA==
X-Gm-Message-State: AOAM5324J9mjYCqoQkPbH7ZH0n6S3POsEeOt4vigAj+USZR9S6z6sNxi
        rEkGraKQsKFqiHPjzruPGD2XseAFhn8eLxOlVKH7PcbG
X-Google-Smtp-Source: ABdhPJxgpwrBs7u4rpeZ8pv3fpK3nzlrE5lojkkReEZTohsRgeVaZij/YhJKeK/KrbcSaqZIb4Z34QhpI9RR443wraU=
X-Received: by 2002:a05:6808:21a0:: with SMTP id be32mr2104288oib.148.1629796886998;
 Tue, 24 Aug 2021 02:21:26 -0700 (PDT)
MIME-Version: 1.0
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 24 Aug 2021 11:21:15 +0200
Message-ID: <CAKgNAkgAO8_37aoQPPY1=jprfnzM6_vtpFMZodDBFwb_9YJhYA@mail.gmail.com>
Subject: Re: [PATCH 1/2] strdup.3: drop mention of "the GNU GCC suite"
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Ahelenia,

On Mon, 23 Aug 2021 at 23:01, =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczle=
weli.xyz> wrote:
>
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

This patch could do with a short commit message I think. See below.

> ---
>  man3/strdup.3 | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/man3/strdup.3 b/man3/strdup.3
> index 1e1ac34de..963de7d48 100644
> --- a/man3/strdup.3
> +++ b/man3/strdup.3
> @@ -99,9 +99,6 @@ and
>  are similar, but use
>  .BR alloca (3)
>  to allocate the buffer.
> -They are available only when using the GNU
> -GCC suite, and suffer from the same limitations described in
> -.BR alloca (3).

Dropping mention of GCC seems reasonable, but why drop the piece about
"same limitations..."?

Thanks,

Michael

>  .SH RETURN VALUE
>  On success, the
>  .BR strdup ()
> --
> 2.20.1
>


--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
