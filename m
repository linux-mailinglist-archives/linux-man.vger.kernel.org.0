Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6006F27C715
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 13:51:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729997AbgI2LvR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 07:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731195AbgI2LvD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 07:51:03 -0400
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98FCFC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 04:51:03 -0700 (PDT)
Received: by mail-oi1-x241.google.com with SMTP id a3so5108669oib.4
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 04:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Mqnd/0mw2tAfsgI4uj2TPz64+eANcSVja290jYUgb6o=;
        b=lgGcuNU0vcJqHcBvF5fgTNRbM60+NTyRIWqU63yn4T1cVGKiNmGi9VoSITBJ8nlRBv
         LKKOqguoT64DatRWI5s+yL5UhdvBEYA8hPK5TPkis1oQHiTqxqIpvhAIyQEgPCFTnkXZ
         ftZA6tZBrNDE14r5Y/ihED81KzaM7Tl5Yj9mufKQzIPsItIBTJ00fJ9rv1nL0Q/hcE3b
         9+Hwf+2BehexOj0wayzZBdnEYwvUnAImkChA9j7HWgK2TwAyQ7QTDw0cXZUQETEJMU0a
         bfoTOP5XNzs81GmbJEegz169eeBNrGgqBLt+bBgj1BopZcRxARWLhOM1/oD0Vl9Yyy4Q
         YU/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Mqnd/0mw2tAfsgI4uj2TPz64+eANcSVja290jYUgb6o=;
        b=G1FuL9HZ7h49MIGMj1Xll3TwCnPH91dwMv0qMDAhXr1f2mXP3iWWD6PYtRnwKXk0Ff
         wwsXjTD3VuqwBBiywapAz2a4JtF/TcXCMMjsbae2v5w5vVe7u+gqcPa7Tg1MELy4TiGJ
         QLN3AgWwacKR/Bn1JZ9HR+k2rmJjZKdICx4hEDXYJ4nEE55Eb5H7ywla3qBfZdf7ZXbk
         3JTxi+CgVpLFPb4yJpu3EbYNy29XlYC3GGCFhXeXCUuKzTEiZCNciJtQk577jYkp5LVe
         6/r5dY1bVlbm3Pl+FvORts6Am8DcEzXGM7jaASrkxhIURsi9H5gs+dVVHG3bciwSTCOK
         5OMQ==
X-Gm-Message-State: AOAM533SNHkGd1Cirto2jKHohiylt66du/jHdroXrazTmabF3OqYFtAm
        LIPY1kd7CougKmxPcEd5QZ+zCdgeyVWyxEfqYBI=
X-Google-Smtp-Source: ABdhPJyce2c4blq0XGDYGDl6ynsnstpzzwBvmeOIDrQO4ldH46QdkN0No8JRQ38xgp9b0Er7OIxeDBzLgoA0NLPlr+c=
X-Received: by 2002:aca:5903:: with SMTP id n3mr2326823oib.159.1601380262991;
 Tue, 29 Sep 2020 04:51:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
In-Reply-To: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 29 Sep 2020 13:50:51 +0200
Message-ID: <CAKgNAkiicqXrCMnr=DbLdFO27yg307wdrMh=QmQu2r2TPZfkuA@mail.gmail.com>
Subject: Re: [PATCH 0/8] Add some <stdint.h> types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        gcc@gcc.gnu.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex

On Tue, 29 Sep 2020 at 10:26, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Michael,
>
> I started with <stdint.h> types.

Good. I wanted those the other day :-), but then I saw they weren't in
the page yet!

> I joined them by groups:
> intN_t instead of having an entry for each int8_t, int16_t, ...
> I think that way I could better explain the types, common things,
> differences, and exceptions.

Yes, I think that's a good approach.

> I'll wait until you review them to write about the remaining <stdint.h>
> types: [u]int_leastN_t, [u]int_fastN_t, and [u]intptr_t.

Although the patch at
https://lore.kernel.org/linux-man/20200928151646.20271-1-colomar.6.4.3@gmail.com/
doesn't apply (can you send me a revision please), and even though
these patches employ the "Include/Alternatively" form, I've applied
them. (Everything is now pushed.)

Thanks,

Michael
