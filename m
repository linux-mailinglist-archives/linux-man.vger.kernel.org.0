Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 069C3223A40
	for <lists+linux-man@lfdr.de>; Fri, 17 Jul 2020 13:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726040AbgGQLVC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jul 2020 07:21:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725950AbgGQLVC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jul 2020 07:21:02 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE847C061755
        for <linux-man@vger.kernel.org>; Fri, 17 Jul 2020 04:21:01 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id a21so6587533otq.8
        for <linux-man@vger.kernel.org>; Fri, 17 Jul 2020 04:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=xIBL4k6EVa/Lv20bDcP7H0HlIAg+qKhmOTx48jMU1jc=;
        b=HIEg+NpAyyHooiVYYyAUm+oNFO3gBoTkjP5Eq3BHIYL9a3dyWe7Zzdwl1pswC/yaIZ
         DVR6VA0iHrkTE2uDU5pI032jhXcuMofEFNYuEwZs601cirS6ET6iWQNaObP4OPBP80ce
         Q+oWQcXoV4frHzXYzGvF3cDdLkPC5h4Hxyw+/7UPFDhpS/EtfuTqmryJx2EI+FpSKzcg
         r9GUOPTzDbdcIJ1B+4uFkexHYzUb6LOaJ7T6/LKD/5iEruanIyeCM97IFeSZgq8KXQga
         OtMVRs0tqxf5H4bqzRx5SbjMtYSptnuVDW/Jdv5bLh2CXqskOBKQlvoLwf95OShFJckA
         ly7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=xIBL4k6EVa/Lv20bDcP7H0HlIAg+qKhmOTx48jMU1jc=;
        b=ZUGB4saC/ZR10/JlHR9nTSEDr1xOpSQv4jARMZ7Cdrzw+lpBhpM4t4OHRgEavXREm4
         I5QJ1BtpMJo2NpmGCGtKWS9BQ15FQxrCRY23PbjgZVYxyYGI0HlyeyFOfk/+cA9vXaJo
         Oe+M1uOWwght6c/RaCli+er/MSTWH+OkJlzj02f34Eanozdf45QrBpVeGLBLyu5XNRgM
         WH85bmPtXjncYHZIvw2Z9wN1EP7rHlkQdGhsMVKluKt+cVCMwms2qFzN4FLAQ+7czJzj
         rcpvZG+MPG6U0FXjfZKi7PB9yGv9XXBODtsR07cBO+Z38VaFR5tJj8ys2D8npGjdlNmp
         nOhg==
X-Gm-Message-State: AOAM5310w1Bem/pnUwDK7ObVyLR0/CZgf2dVxsGpIj7bWnxAlhhMUxUE
        rw+Nlr3HQTisRXs0hj9qaL/jmRMVg+H2hrbmdv2gqQ==
X-Google-Smtp-Source: ABdhPJw/RyajmMY5h9382e5Vd8SdDu2YYH/HQ3fCl2kMo7bOR2f6ZB54wtRkHUTtuhqqDyK9+wd5A9Us4qd9v+fWNQI=
X-Received: by 2002:a9d:4c0e:: with SMTP id l14mr8723399otf.308.1594984861068;
 Fri, 17 Jul 2020 04:21:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200701225059.GA26940@rhi.hi.is> <47d84128-6235-c1c0-b54e-cf1e87836297@gmail.com>
 <20200704000211.GA1330@rhi.hi.is> <3defbf91-5022-b042-ee2b-779fa5931343@gmail.com>
 <20200713185843.GA31638@rhi.hi.is>
In-Reply-To: <20200713185843.GA31638@rhi.hi.is>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 17 Jul 2020 13:20:49 +0200
Message-ID: <CAKgNAkgFJC3fFby+yLKTFOuLSHWLFh2K6-gX_F2tGc-vzqXtTw@mail.gmail.com>
Subject: Re: [PATCH] man3/*: ffix, change '-' to '\-' for options
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> > >   I always use my own copy of the repository where I apply my new
> > > patches to.
> >
> > Please don't. When I've rejected particular changes (as below),
> > for reasons that I already explained (several times), then basing
> > your patches on private repo that still has those changes will
> > just cause breakage and wasted time for me. Please base patches
> > off a pristine master.
> >
>   I do not support bad, wrong decisions.
>
>   I do not support misuse.
>
>   Your "trouble" is a direct consequence of your decisions.
>
>   I have already answered your "explanations".

So, at first I was giving you the benefit of the doubt, presuming that
you were not deliberately sending me patches that might break because
they included dependencies on changes that I had explicitly rejected
(several times) in the past. You've now made it clear that it was
deliberate.

A few of your patches have helpful clean-ups, but the bother of
dealing with such nonsense[1] just isn't worth it. Please don't waste
time by sending me any further patches; they will be ignored.

Thanks,

Michael

[1] https://marc.info/?l=linux-man&m=154743115806201&w=2
