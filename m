Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7480732C774
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:11:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355602AbhCDAcB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:32:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353275AbhCDAEB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 19:04:01 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A827CC0617AB
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 15:53:35 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id q203so5049113oih.5
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 15:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cilium-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=sJfUpwC5Q0AujFJkQ3bJRLWkfqFnVs4ZYKg21LJVuHE=;
        b=BFIWZ0u0+EF/YC1mA2Nchh2NeUUfh8mRSTWelXDcFLQm2vG0MPevPcPuTWmYwx4XeL
         1Xk+DQKrHnBz+sIjKI+ng4AK1/SgOuS6H+lXZPHBmnv0SNp8K6ZxJhG3ujg2ZeAJ2wwP
         d7F0hjQDdtCyevlcdjFr21rzFqYI/oWOvVzQ/mcUuAwV3ELOANllu1vNL2cwfRMCILdX
         1NKZHPNvRopqcWZD+RWrXQ9cw22ho6Mwsbg1ilG7UEz+4/MGONLMrpFxX+kz0LwJeJj2
         kZ7gUkarr8Usb0SLVN6UGeUgC2zXh+t4KgzmJD02xc4AwN5+e/9xJfZOFU7VpPwhA/Sk
         eJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=sJfUpwC5Q0AujFJkQ3bJRLWkfqFnVs4ZYKg21LJVuHE=;
        b=LNoFRvfRDKdx5cJBEwbQgNRQbVgT9qUNYx9Dr2KAqHxPkCYkSrYmFiLqqC+/jCKNgg
         JhsndUN7OmuKRwj9chIjCJGQPrUSJpJV7/VFh1sU/NMhakkWzfPL7CzFUMEkODaV8qsd
         8TLCujZBZy1dlNM/IKrRmr/vkw99af5nsLDx6SBtZGelWHb2ED/U4+0iDb1I/b5OQpdl
         IPZvuQqqZcPz7k9tVd+5t6ar7YlZE3RwGkGuZJ6XpTPP9n7ZaWleSHeIe6fQOkBgTSKC
         KWN7OqJberytDmyZ9VW/NdGEQPPsL5xteYor1wzhH8DYJgi4COWtrRFdPfzRD4d/F7V6
         8X/g==
X-Gm-Message-State: AOAM533NDp4UyaFdKxEkPb7Do4PovUnl/oH5ZJd06yHdESYl9t0D6Gtu
        IBw0l6HWGrRXzVqxgamejvlI6Jyd2umMtjF5dbfRnw==
X-Google-Smtp-Source: ABdhPJxVhvbmRStq/JhsuTAFe5elO14d19je73tPaRLSxCTShXmLatgreMOoyRO4L0xaC9DGZmlwi8aJuYsRDzPNKKo=
X-Received: by 2002:aca:f50d:: with SMTP id t13mr1041539oih.89.1614815615117;
 Wed, 03 Mar 2021 15:53:35 -0800 (PST)
MIME-Version: 1.0
References: <20210302171947.2268128-1-joe@cilium.io> <20210302171947.2268128-7-joe@cilium.io>
 <79954d84-ad75-8f91-118c-0ce2150a1c96@fb.com>
In-Reply-To: <79954d84-ad75-8f91-118c-0ce2150a1c96@fb.com>
From:   Joe Stringer <joe@cilium.io>
Date:   Wed, 3 Mar 2021 15:53:24 -0800
Message-ID: <CADa=RyzgsEsRpED34Bi141216de9ecbSUw7M+349wtDDKVy2dw@mail.gmail.com>
Subject: Re: [PATCHv2 bpf-next 06/15] bpf: Document BPF_PROG_TEST_RUN syscall command
To:     Yonghong Song <yhs@fb.com>
Cc:     Joe Stringer <joe@cilium.io>, bpf <bpf@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Alexei Starovoitov <ast@kernel.org>, linux-doc@vger.kernel.org,
        linux-man@vger.kernel.org,
        =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
        Quentin Monnet <quentin@isovalent.com>,
        Lorenz Bauer <lmb@cloudflare.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Mar 3, 2021 at 12:29 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 3/2/21 9:19 AM, Joe Stringer wrote:
> > Based on a brief read of the corresponding source code.
> >
> > Acked-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> > Reviewed-by: Quentin Monnet <quentin@isovalent.com>
> > Signed-off-by: Joe Stringer <joe@cilium.io>
>
> Acked-by: Yonghong Song <yhs@fb.com>
>
> > ---
> >   include/uapi/linux/bpf.h | 14 +++++++++++---
> >   1 file changed, 11 insertions(+), 3 deletions(-)
> >
> > diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
> > index a8f2964ec885..a6cd6650e23d 100644
> > --- a/include/uapi/linux/bpf.h
> > +++ b/include/uapi/linux/bpf.h
> > @@ -306,14 +306,22 @@ union bpf_iter_link_info {
> >    *
> >    * BPF_PROG_TEST_RUN
> >    *  Description
> > - *           Run an eBPF program a number of times against a provided
> > - *           program context and return the modified program context a=
nd
> > - *           duration of the test run.
> > + *           Run the eBPF program associated with the *prog_fd* a *rep=
eat*
> > + *           number of times against a provided program context *ctx_i=
n* and
> > + *           data *data_in*, and return the modified program context
> > + *           *ctx_out*, *data_out* (for example, packet data), result =
of the
> > + *           execution *retval*, and *duration* of the test run.
>
> FYI, Lorenz's BPF_PROG_TEST_RUN support for sk_lookup program
> requires data_in and data_out to be NULL. Not sure whether it is
> worthwhile to specially mention here or not. The patch has not
> been merged but close.
>
> https://lore.kernel.org/bpf/20210301101859.46045-1-lmb@cloudflare.com/

Not sure how close either series is but I'm sure between Lorenz & I we
can figure out how to fix this up. If I need to respin the series and
Lorenz's one is in by then, I'll fix it up but it's not the end of the
world to send an extra dedicated patch for this.
