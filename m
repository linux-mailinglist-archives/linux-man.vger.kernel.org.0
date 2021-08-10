Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D6CA3E53AE
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 08:40:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236694AbhHJGkx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 02:40:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236737AbhHJGkx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Aug 2021 02:40:53 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2417BC0613D3
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 23:40:32 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id h63-20020a9d14450000b02904ce97efee36so20931616oth.7
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 23:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ir782Ge/A/lcNAyuDmw0f/wcpTpPgJa4BIfvTD5obkI=;
        b=InP/+rDahvZc9Vgz58dyeYrMMG1z5TV42I/ZjYh5MJV8U1b8n7puF3dZx0DquV/UnM
         29D3/QxMwAIOs+xoABY6r/bhRThj2vXMCOxad/NvHy5nUi3jHRf66OAVb0wOr60bIBkG
         B8vUxRGsXSgZPyOO07lb2moDrp/UrN8OVqlSfJYRlaL420pRAXua2T8Ko+vO78N2h28P
         rcIwmtIBshoZ4HyEMtuEoaeOIrUm3rLvzIMgIK2qkTW4GTczhYDAiFQSCtF4KuVub25s
         WQO9t6NoTmJNv6TaDLF7QE+ni/+UEU41wreBp+HZ+my0KrUqoKKGr+dQqhQKwyR7jPAW
         mNVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ir782Ge/A/lcNAyuDmw0f/wcpTpPgJa4BIfvTD5obkI=;
        b=Uc7e6TMy7GGCkulaMCGyFaI+CK5eczY7lLHjE61QUS/Gl6TKb6wQgEAq3xKVHCLNbr
         GZI+ePXOfKuWTTx/MQaNbnqOE3VCTmbm7DE+dkvEfbcUFgwmHZkjiez+Ly4EEyqBZbcr
         a/njxybwKwCMRrbbYwQD/Dq9WAM56tgymCdUWILxZC9Ap2PZMaq1qGlIUGGSu5eZQoCt
         5J0IgVOq725Ywzmc9DiD+YT1PB2OljG+OkWhGURzylghYY1ZgIR3yJkbTCKhYx5Qgg63
         TaEvf5lvzgZAPuq8Leod/mzmVFHNwCblXsIJoTcCDjaVilAmTbpkTtw9esbFs92f1Kc0
         g9zA==
X-Gm-Message-State: AOAM531Xc2X28pMmPKay4UN1c88ocJYHGcBDPuurwbvYzlX+dO+ACga5
        3mAdjWtzQ4zRLd22rNZIzYg65AGVp0zrzMRUwAE=
X-Google-Smtp-Source: ABdhPJx1KxXs7dR02Uq1jcVVp5AW0svKrSZyJ8dBbesPEVtJh49rae/b4XFjtRKzVJ4qiHWdoe0J9slKRtwpw18zTUM=
X-Received: by 2002:a9d:3a49:: with SMTP id j67mr21078790otc.114.1628577631447;
 Mon, 09 Aug 2021 23:40:31 -0700 (PDT)
MIME-Version: 1.0
References: <64D55817DE2A4D0E99757425D9883066@H270> <20210712160906.yfb4etzsylmzulox@jwilk.net>
 <F7B7DAEFD32949CD810BFC567ACA7B70@H270>
In-Reply-To: <F7B7DAEFD32949CD810BFC567ACA7B70@H270>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 10 Aug 2021 08:40:20 +0200
Message-ID: <CAKgNAkgW_uS1cw++aMQhQGgWjUpxzAgoBxjQ8p-2zxP3Gy2AkQ@mail.gmail.com>
Subject: Re: wcschr(3): add special case for NUL, as in strchr(3)
To:     Stefan Kanthak <stefan.kanthak@nexgo.de>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 12 Jul 2021 at 20:44, Stefan Kanthak <stefan.kanthak@nexgo.de> wrote:
>
> "Jakub Wilk" wrote:
>
> >* Stefan Kanthak <stefan.kanthak@nexgo.de>, 2021-07-12, 11:37:
> >>JFTR: to avoid any possible confusion of "null byte" alias NUL with the
> >>"null pointer" alias NULL (C macro) or nullptr (C++), "null byte"
> >>should be replaced with "NUL byte"!
> >
> > "NUL byte" looks like a typo for "NULL byte", so if anything, it makes
> > the potential for confusion greater.

Exactly my concern.

> > Anyway, "null byte" is the preferred term in the man-pages style guide;
> > see the "NULL, NUL, null pointer, and null character" subsection in
> > man-pages(7).

Also, "null byte" is the term used in the C standard.

> Despite the statement
>
> | Avoid also the terms "zero byte" and "null character".
>
> the heading of said subsection itself but says "null character" instead
> of the preferred "null byte"!

That's fixed now.

> JFTR: the search function on <https://man7.org/linux/man-pages/index.html>
>       gives 21 matches for "zero byte", 46 matches for "null character",

Sure, but that presumably is because of pages in other projects.
(man7.org renders pages from 100+ projects.)

>       and 146 matches for "null byte", i.e. the preferred term is not used
>       in 1 of 3 cases.
>
> And despite the statement
>
> | The preferred term for the pointer is "null pointer" or simply
> | "NULL"; avoid writing "NULL pointer".
>
> plus a changelog entry (for version 3.56)
>
> | Various pages
> |    Michael Kerrisk
> |        Global fix of "NULL pointer"
> |            Change "NULL pointer" to "NULL" or null pointer".
> |            POSIX uses the term "null pointer", not "NULL pointer".
>
> 43 pages still contain "NULL pointer", while 197 pages say "null pointer".
>
> There's plenty room for improvement!

I agree, but I think the issue is mostly fixed in man-pages.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
