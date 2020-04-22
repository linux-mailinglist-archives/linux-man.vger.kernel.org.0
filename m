Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A61C1B4D9A
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 21:47:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726224AbgDVTrh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 15:47:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725779AbgDVTrg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 15:47:36 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ABDCC03C1A9
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 12:47:36 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id a8so2492777edv.2
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 12:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=MqvnKtM9KOxt2VWojwJFJlh9j/oNc2iLFyfzHtaxQPE=;
        b=AcrYxil6HGoXcsaFejTPGF8TB+u0hlNtFjLkrEHc9P3o2SBSyq6SZJFX0A1BS5XXwN
         u5vxibdEruFoGz4YAGF+sTKAMWRixKF+djeJKsX2/EUJJiA7uYy20YCUhaiShAC/+alF
         DAReAtSJ+QMSt/4XWJzozw4VjpKvBmRdXMy04uGFtimL7JSs3ye53rTvazHeE8F77+8h
         ywfgqnwdMGOMo2k0p0qE9kijDoIe+JkaITLJU7hY56RSIDJ2QWfeLT6E9DsAMKt+S8Ks
         i6i3PNwoPqZD0/L57Z3uxBdVqZ0LI76ar5MABBglyy02/+j5LunOBqFxeViEUJX2fSnt
         pVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=MqvnKtM9KOxt2VWojwJFJlh9j/oNc2iLFyfzHtaxQPE=;
        b=ENilvjkmmDqPoAni0qZWtk4e7X3B9/UFeZGsrJ+pFnu9zCdAo+XG1W57Z0Emd8vUXB
         A9cP+IiiyrQYpmnIeL22kLcBjJ1jYSUriZdvYq6tQakHSOTrkPB9EsOYI8MlCrK3ON4V
         m0ZKfecB5pZsD4oH1pO8yZTyaHDurbET+zzmF7Wf3nZgiMNr/+P11lxJ99S0l1pgcS6Z
         FJGwBYVZk704FpJv+TiPFKNZbSAfurxDe2RvVBoe3mmlZfe8ONbbDjg37Y7FxVpqer+H
         TZ0JqiHwOuyawa5VckWIgCoXPINUJpU/3t4zAIzw0WPqbIsrWa4KMXa2xrSHCHiio1W9
         1KFQ==
X-Gm-Message-State: AGi0Puapezpj/vSsy5ENC1M4DeQyeVU3pjvpfM+Hlzx9POBQxUcK42tw
        bP2sxrAu5cVXT3Qy5m7RoKMjSOQMvCnSGJ16fmq9mg==
X-Google-Smtp-Source: APiQypKbnCiKRxi/DhwTfHUVp/7pQRynFiGAexqHUQm5qv/XJ6UnDGngALXVEt0wMIEbQw52JCcP+1x6FKwORZlhWZU=
X-Received: by 2002:aa7:cd6a:: with SMTP id ca10mr206584edb.332.1587584855300;
 Wed, 22 Apr 2020 12:47:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064801.GA30654@Debian-50-lenny-64-minimal>
 <81dfe813-2ce0-60ee-1afc-da68e114d9b7@gmail.com> <20200422192924.GD26557@Debian-50-lenny-64-minimal>
In-Reply-To: <20200422192924.GD26557@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 22 Apr 2020 21:47:24 +0200
Message-ID: <CAKgNAkiPfc1DsN77WDKmgmB4av_p+vvebT8az4WcKzk4Uq+6ew@mail.gmail.com>
Subject: Re: Errors in man pages, here: getdtablesize(3): Formatting
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 22 Apr 2020 at 21:29, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hello Michael,
> On Mon, Apr 20, 2020 at 08:52:35AM +0200, Michael Kerrisk (man-pages) wrote:
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > > **
> > >
> > > Formatting of B<getrlimit>(2) ??
> > > Is it s/getrlimit/getdtablesize/
> > >
> > > "SVr4, 4.4BSD (the B<getdtablesize>()  function first appeared in 4.2BSD).  "
> > > "It is not specified in POSIX.1; portable applications should employ "
> > > "I<sysconf(_SC_OPEN_MAX)> instead of this call."
> >
> > Either I don't understand the report, or it is incorrect. More details please.
>
> This is of the proposed changes I was unsure about myself. I had hoped
> that the translator spotted something correct and thus reported it. If
> the statement is correct (and correctly) formatted, please close this
> issue.
>
> Unfortunately the translator who marked this is no longer active.
>
> Sorry for the noise.

Closing.

Thanks,

Michael
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
