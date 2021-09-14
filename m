Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E31D40A938
	for <lists+linux-man@lfdr.de>; Tue, 14 Sep 2021 10:30:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhINIcG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Sep 2021 04:32:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbhINIcF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Sep 2021 04:32:05 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5932C061574
        for <linux-man@vger.kernel.org>; Tue, 14 Sep 2021 01:30:48 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id i6so18610828edu.1
        for <linux-man@vger.kernel.org>; Tue, 14 Sep 2021 01:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Dsr53kvYY+6b6fDn7ACBBav51BMi3AzFwhmwcZIo0Rw=;
        b=S1XsRBhbX24sGZ4aij3tI1awhC5UWZfvmdsuoJ/qDP5AUieI8lDV4lfMisblbPMQ2K
         COu+nSlUpfMbWwfSWJXaR9BsAPGmKnrjvfHbAVH0iorPAS333m0WnzraCjbwmn0EPvGV
         e2sv9bmRYYCZn2mQeZaLy6BYF2fPmoVz9D4pvlntjy4CYhvrO6qXGFKoBcIAih3JLePv
         U7lEDwfto6j+ZdwK+JKGEZ1ic8oqcx1aOJCWgGj1M+W8BcoD37tqmFrxolon2D0y+taq
         uc2wIhe4S1LcHTDu18pl93nh6M8ngN23WXKXAdc1PjQcMQadjJl5mqahWLU3NTD9p3SN
         zIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Dsr53kvYY+6b6fDn7ACBBav51BMi3AzFwhmwcZIo0Rw=;
        b=1jNut1XZ8YRjl2TaCZbsSHtSJ5nW+eXVoRaI/A3pvpcNys66VcJ4pQmhG7rfbwUsVe
         yDMKLiyAHJHxCW+0GWv8fOEooOm4Scj6D/DXhaUFLYsyMkywCqnHRbjzz7jy866bDY4W
         1tJQLQYwnVivu7KMvq1uFaYKwJ8ScE3u1IWtqY0G4LazmZ1h5WBlbMlXhqTPlgseLUhE
         lSHU5evJGHP3ifEOBbiGqMpYosZstY/JwIyuimZmNSGQy1lZyBFqPnFpPftP0SyB4hKl
         +cd3EZUsereA4qeUQU95Sr5LPANVjFhcmkVjIcdk6nd5IDyH5h0didKQhbUOdfA5d8K8
         hVtA==
X-Gm-Message-State: AOAM5312/NVsKNrZvPTohLTVlXrJFuU5tAqcJZvgC1oJuaQgpoC/gwh+
        pwr9gcl+9PSfeNdlrAQldCszu+TN/zsntZzo2ZU=
X-Google-Smtp-Source: ABdhPJw8FQBPfe6tHnu3CIKD24Mu30YhPdpzpC0Q/e74aCafUE1wYi+4ASF9OCLRGtHJawBHM3IODAmYeewoz+SC4gs=
X-Received: by 2002:a50:9b06:: with SMTP id o6mr18080719edi.284.1631608247248;
 Tue, 14 Sep 2021 01:30:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210911160117.552617-1-alx.manpages@gmail.com> <CACKs7VA=y2t3iGjKyzp-p1tt1hW3YsD6LMCqn0rotttOvk4pfw@mail.gmail.com>
In-Reply-To: <CACKs7VA=y2t3iGjKyzp-p1tt1hW3YsD6LMCqn0rotttOvk4pfw@mail.gmail.com>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Tue, 14 Sep 2021 10:30:43 +0200
Message-ID: <CACGkJdt0Yg2i-R3dkuANSqKoDu0oCk7bz43tAP4dojTHeCL6Gg@mail.gmail.com>
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Sep 14, 2021 at 2:53 AM Stefan Puiu <stefan.puiu@gmail.com> wrote:
> Not sure what value "libc, -lc" to the man pages. I think having a
> standardized section for functions that require libraries other than
> libc is fine, so you remember when you need -lm or -lrt (although IIRC
> recently a few of these were folded in libc, at least for glibc). But
> -lc feels kind of redundant. Does that mean you need to add -lc in
> your Makefile? Some people might interpret it as such.

Isn't it covered by the

> I think no library section = no special library required might be clearer.
>
> Also, on FreeBSD it's quite obvious you're talking about THE library.
> But on Linux, you have glibc, musl libc, diet libc... Is the plan to
> document requirements for all of these? E.g link with -lm on musl
> libc, no special flags on glibc..?

I think, the split is codified in the standards[1][2][3][4][5] (so,
-lm/-lrt are expected to be supported by the compiler, per my
understanding, and providing the necessary -l* option will always
work, because it's codified in C standard, contrary to not providing
one) and the fact that glibc provides libm/librt symbols in -lc is
more akin to a bit of convenience (for application or glibc
developers, not sure which ones), and not something one should rely
upon.

[1] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libc.html
[2] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libm.html
[3] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libpthread.html
[4] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libdl.html
[5] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/librt.html

-- 
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
