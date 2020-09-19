Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA736270BBD
	for <lists+linux-man@lfdr.de>; Sat, 19 Sep 2020 10:12:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726054AbgISIMG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Sep 2020 04:12:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726041AbgISIMG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Sep 2020 04:12:06 -0400
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76BADC0613CE
        for <linux-man@vger.kernel.org>; Sat, 19 Sep 2020 01:12:06 -0700 (PDT)
Received: by mail-oi1-x242.google.com with SMTP id z26so10120695oih.12
        for <linux-man@vger.kernel.org>; Sat, 19 Sep 2020 01:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=2+wTqc/ldkW74GsZjwkdbRzVPZrhS0dwKNLqoG6Jg6Q=;
        b=DIDkundhKkrUI+3/0frUZ7g1AVmJailS3onYCPnXMOBO4UUEdgkoTmV06r3zdjpoFE
         8q4B99tB5cvsrMQdjvfc4g66+qjQZXCJfJmXph/HJBxbd2J+rH6Jvbs3Mcgf5RDypEZ8
         o7fG/G32bPiNAaVvrERecCbcvp4ZP3H6xamecDgodL+WrBeqD75s4vl4RHt2H3Spo0Wt
         dhuC4eGRZQRasWiUoSIxhs3dxY5CLC6rCJoUOSBHw7btQJvqTCqFREzwUVsmEwrfFW60
         8cUXdj6C/vCnHE2TNR/+E5jAwEx3eJrCV0rEiIwg6CZkHqEySwhMG3BYmJSKpRJ95pR4
         RVQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=2+wTqc/ldkW74GsZjwkdbRzVPZrhS0dwKNLqoG6Jg6Q=;
        b=Ko19bsS+YSMvp+CVaQpqYxWf1hBHNa9nuP2SvFr0oH23Fz/J2bgtK8UlwkOwVMgG64
         9vG+5h/W17QkSAv+hXw+hHuChCZyIok6k/KXrue+BMiaXFNvfjmfymj7gACrVl7LShZb
         u2yraMurvBKCpCsqnuSjLXoRZkgWKYAstvVW3g+3qN1m6wcK1xCg5WEk09zawXr+4tDT
         6WTopsKjtENjFuYKYvhgFDA3nSxOR6U/0UzrzmRfRFKl2dYa6OHbWsA0PWjYy/TLbTFO
         u/AnHJMyyLQF6CB8XgUra2eKJ9VilxStsmTodnB8mZNlytw+u9CnzuUfcN9GorbdtIrB
         czMg==
X-Gm-Message-State: AOAM532yZZ58BPtfp8nULCgiZV6BdsPxnhvZkWwr68PPHPOcbNee5b4t
        MmcUdwS2+GB3EKKgZC4MJ+wVTRbzqph7IVpldIixsjv4
X-Google-Smtp-Source: ABdhPJxfA8zvJjSkhOyVq+32qBfP1hj5rFZsOOhFWBtOBKNRHfGp3cKPRqQD7j+7jW1DwABtpIcIrfgF8O6EA9LS4JM=
X-Received: by 2002:aca:2301:: with SMTP id e1mr12331067oie.177.1600503125726;
 Sat, 19 Sep 2020 01:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-5-colomar.6.4.3@gmail.com> <8cea2a6b-bbe1-3289-a0c2-3baa75ec757a@gmail.com>
 <3f33a784-6771-d91f-ae15-2ba599c108ea@gmail.com> <de6a7e53-cd66-b58b-058a-f7eefb8d5984@gmail.com>
 <5a87f422-cb26-76d3-d89b-2287c731093f@gmail.com>
In-Reply-To: <5a87f422-cb26-76d3-d89b-2287c731093f@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 19 Sep 2020 10:11:54 +0200
Message-ID: <CAKgNAkjp0spwJ0zR2-pT-As8EhwRA8z1xDEg5_s-mxni14WWQQ@mail.gmail.com>
Subject: Re: [PATCH 4/9] sigevent.3: New link to new documented type in system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 18 Sep 2020 at 23:57, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
>
>
> On 2020-09-18 23:43, Michael Kerrisk (man-pages) wrote:
> >> Fine,  sigevent(7) already documents the type, so it's perfect.  The
> >> type will be documented in system_data_types.7 anyway, so no problem.
> >>
> >> I guess you'll add a reference to system_data_types(7) in sigevent(7),
> >> right?
> >
> > Do you think it's needed? I"m not so sure...
>
> Not sure.
>
> There are a few things that are documented in system_data_types but not
> in sigevent(7), but not too many.

For the moment, I think the reference probably isn't needed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
