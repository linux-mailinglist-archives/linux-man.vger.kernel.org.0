Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5A2D27FE53
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731839AbgJAL15 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731819AbgJAL15 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:27:57 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 528E2C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:27:57 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id z25so6170429iol.10
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CrEDQQm/x9Vgdpk82a1ymug92oKtBW0/ts4fw2xU1fI=;
        b=KkAhe5cIWihmKrPu6ynTKehgyjLzMId0fo6HJwQyy/tBhEe/e9ghuRDspDMKnot5gg
         kRhQG8SsEY/pDe02PwYpFTk8I+Vk1E2pHCbDtk7xdg0hz2FOKXy0A6Erh+F2LXqJb7+O
         mVkwKagNP8BPKF4h4LgDPzPwi2FQD6RGT/VnqjtbLyxqWZQKb/jWILjuwPw11S3Ps3dC
         quPRpx1sahqFXBagmQU7BPqeOADy0+489dbEoqoKooa1A7woImvUanLlpWm1VzoFXnc/
         q48I43HA1GY29lkbl2u6RikgeIXDd8d4ir/FMU6AbbKSi23hCEGRVO8ny6yjUSzBQdfo
         Pgaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CrEDQQm/x9Vgdpk82a1ymug92oKtBW0/ts4fw2xU1fI=;
        b=VbnPCVATZYiqZUNc5duMnGAUZPFROy4pGM6WnJ1ithyj9NN+e/VAoSrwFnY0xJPOTb
         qitz/jqupR55h1IeSqhO4bzqrown+OgiL+y+lvV8rbDPZ3wlOFcl+3dQqlaXtlTGVSqH
         VN831l/bL/LSeiefiwxQOIRo38nxvoIH3sN43e/Rzs89DKCgsa0XTbKrBiX+Z6pq0Ym+
         7kARQcvd233vaPEwXbYtbZPH1VvA/Gq9CWchCTWZ7anlKLlmi6+sWzAubI+IzOheb9MH
         7AVvqdwo1U90oFvUoVs3Jbn3wVJxGirhZuDr6BJsFl2imC0SnR4EqG1Sw0g+3a4w8EOX
         mO6g==
X-Gm-Message-State: AOAM533KfG3d7xiBDR+f8QZkALVKI2a/id8CFnygBpzN/03VnzwpvsFf
        q+EpD/QmSH1/rQL/IsCfG16oW0dmjKwP1P2lArjjao12a5I=
X-Google-Smtp-Source: ABdhPJyKRNyzPuCyW1c+OXlotwr8Jl2ocfi/fDrZ4Ims8PYPnN/rtlc7XDmapooIyDGdqesNcjEulorVTAVLX4mUSng=
X-Received: by 2002:a02:e47:: with SMTP id 68mr5502918jae.78.1601551676687;
 Thu, 01 Oct 2020 04:27:56 -0700 (PDT)
MIME-Version: 1.0
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-6-colomar.6.4.3@gmail.com> <CAH6eHdQPvsfHcsWXNKXZsZcvWkmH6JOvcAivVFjq+HJEctG62w@mail.gmail.com>
 <8dc9e60d-f838-87d5-2fc6-c34a84118916@gmail.com>
In-Reply-To: <8dc9e60d-f838-87d5-2fc6-c34a84118916@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Thu, 1 Oct 2020 12:27:45 +0100
Message-ID: <CAH6eHdSBwvoXyT9ToYV=Su+vqyBwqnbbWjWsNVb14URdueG-JA@mail.gmail.com>
Subject: Re: [PATCH 05/16] system_data_types.7: Add int_fastN_t family of types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 1 Oct 2020 at 12:15, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
>
>
> On 2020-10-01 13:07, Jonathan Wakely wrote:
> [...]
> >> +Notes:
> >> +Some of these types may be optimized for size
> >> +instead of raw performance.
> >
> > I'm not sure what this tells me as a programmer. What does "raw
> > performance" means exactly? The text above says it's "the fastest",
> > but then it says "may be optimized for size". I don't know how to
> > interpret this. Is it fast or is it small, or something else? Is it
> > optimized for small size? Natural word size? Cacheline size?
> >
> > I prefer the phrasing of the caveats in the C and POSIX standards
> > which just say it might not be fastest for all purposes.
> >
> > How about "Where there is no single type that is fastest for all
> > purposes, the implementation may choose any type with the required
> > signedness and at least the minimum width."
> >
> > I don't see anything in this man page saying that the <stdint.h> types
> > are all typedefs, rather than new types that are distinct from the
> > standard integer types. That seems like useful information.
> >
>
> Hi Jonathan,
>
> I wasn't sure about how to word it.
>
> In theory, they should be the fastest types; just that.
> But then, for some reason, GCC decided that
> int_fast8_t should be int8_t instead of int64_t,
> because when using arrays of int_fast8_t,
> it will create smaller arrays, which will be faster (less cache, etc.).
>
> (I remember having read that a long time ago, but I don't remember the
> source, or if it's the actual reason).

So then that's still optimized for "raw performance", isn't it? The
"raw performance" of copying an array of bytes is better than the "raw
performance" of copying an array of 64-bit types. The meaning of "raw
performance" depends on what you're doing, so I don't think it's a
useful term without context.

> How would you word that?

I gave a suggestion above.

Don't use terms like "raw performance" that are meaningless without
context. Using "no single type that is fastest for all purposes" makes
it clearer that "fastest" isn't something universally true, it might
be fastest for some purposes and not others.
