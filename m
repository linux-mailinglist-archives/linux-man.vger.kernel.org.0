Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D08763EF634
	for <lists+linux-man@lfdr.de>; Wed, 18 Aug 2021 01:41:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234261AbhHQXlj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Aug 2021 19:41:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233024AbhHQXlj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Aug 2021 19:41:39 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE9F1C061764
        for <linux-man@vger.kernel.org>; Tue, 17 Aug 2021 16:41:05 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id l36-20020a0568302b24b0290517526ce5e3so514395otv.11
        for <linux-man@vger.kernel.org>; Tue, 17 Aug 2021 16:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=CdchSka9+R2v4DH6Dd5OE0kBMRVmOBHz6D/jSDzqL88=;
        b=Sy8ufsfhl5j803R+Ple40Qe6s3VmDf0e58cmGh5CbO9UIIdNLx960UAeMAmwkYsrkU
         0WIutJ1RC1d5hi/IYOCVcl87Kpdwo4hGcrPcwvY7i82CCkxbcRsonMCDJ7e7NRE2R1dS
         KcVyGP0jMeeo1pSupX/JUTnT27ucKwwvKgqKMvpUVc0j8deMP1yugbi+KNhJBeP4xzJM
         VK0p+UqmbmW1vu/wynrni17gRgf0ktu03FUOy1egFyNJx+kXjosmVfJLtVHLpnbT8Vgu
         zsuXR2dBJtoWtN0cPMCRVXF3QRElmeVPckrZbvh5VCRD2CWoxIUpi7sdFWl689t/kynS
         Y5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=CdchSka9+R2v4DH6Dd5OE0kBMRVmOBHz6D/jSDzqL88=;
        b=SIiaD43ZrwXhNND3mxg+T6rWn4z8r906k2IIYipgPc/+/JBwD/MtiULJhSvpBcE7J4
         jKUvnztZ/mF0DWN2DQYU5vsZwmLsDJnDuAeMeC/5z5cKipZ4RymhaYoxGX3IQpk0rtfu
         2fsV7nsto45hZF45tPIwX+weoisEi2jL5SzJc6jAqMONyM+wJGgjZIZn4gRVyT4piC16
         r367QN1RObTdVFZhCcUuiXifaAOtMzUKxMZKoutAVP24dLb56jNcpW3RDGe068dyUV80
         n3CPGbAI9Ou7Coo1CJ2o5+B8zveFRBUG5xVt1UMrJYlhEENMg16kIPOa67HNUb5HInTu
         rXfg==
X-Gm-Message-State: AOAM533Bw5zJC1UgdvdySn48DY7kzZcfyjVhCMyKBjtfkQ0kzuMeXcLg
        lv09sg85AwUX2PW6o9jSvOmB+Kvcj3OYPh2SIaWKoEgDBrA=
X-Google-Smtp-Source: ABdhPJxRiKe6+kdGmBaLcF8W9VmGOMIT6WJn3mI6MTgPL3U6dWNHbYnq9B5Y7BViVwPNgdIO+d7Oqd//P3gpJbxgpkI=
X-Received: by 2002:a9d:6a09:: with SMTP id g9mr4560028otn.308.1629243664070;
 Tue, 17 Aug 2021 16:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170511.GA16224@Debian-50-lenny-64-minimal>
 <CAKgNAkhsN2-FfpRiyK++jGc2hpy2YCsNPjVhWHDdkG6t2tBcjA@mail.gmail.com> <20210817133849.GB12220@Debian-50-lenny-64-minimal>
In-Reply-To: <20210817133849.GB12220@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 18 Aug 2021 01:40:52 +0200
Message-ID: <CAKgNAkg4HYkHJk8TcLhz_8NFv+DToaw2K6V7HiuGNE++9i=YCw@mail.gmail.com>
Subject: Re: Errors in man pages, here: access.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On Tue, 17 Aug 2021 at 15:38, Helge Kreutzmann <debian@helgefjell.de> wrote=
:
>
> Hello Michael,
> On Sun, Jul 25, 2021 at 10:45:45PM +0200, Michael Kerrisk (man-pages) wro=
te:
> > On Sun, 25 Jul 2021 at 19:05, Helge Kreutzmann <debian@helgefjell.de> w=
rote:
> > >
> > > I'm now reporting the errors for your project. If future reports
> > > should use another channel, please let me know.
> > >
> > > Man page: access.2
> > > Issue: FIXME: The if construct does not reeally work well, better: B<=
access>() and B<faccessat>() return the following exit codes:
> > >
> > > "B<access>()  and B<faccessat>()  shall fail if:"
> >
> > I think the wording is okay. It appears in a number of pages.
>
> I'm giving you a longer rationale for our report:
>
> Currently the man page reads:
>        access() and faccessat() may fail if:
>
>        EFAULT pathname points outside your accessible address space.
>
>        EINVAL mode was incorrectly specified.
>
> This looks like a sentence on the one hand and like a table on the
> other.
>
> If it was a sentence, it could not be read, take the first case as an
> example:
> =E2=80=A6 may fail if EFAULT pathname points =E2=80=A6
>
> So we thought it might be better like a table:
>
>        EXIT CODE     DESCRIPTION
>        EFAULT        pathname points outside your accessible address spac=
e.
>
>        EINVAL        mode was incorrectly specified.
>
>
> To avoid the actual table formatting and keep it more sentence like we
> proposed the above suggestion.
>
> Another fix could be to move the "if" downwards and reword slightly:
>        access() and faccessat() may fail with
>
>        EFAULT if pathname points outside your accessible address space.
>
>        EINVAL if mode was incorrectly specified.
>
> And no, we did not check for other occurences.
>
> If you state the current wording is fine ("sloppy sentence") then I
> wont argue further of course, I'm not a native speaker, but we might
> translate it more freely.

Thanks for the clarification. I said that the wording appears in a
number of other pages, but upon investigation, it's only a few other
pages, and there's no consistency. I decided to remove these sorts of
wordings, in some cases combining the errors into a single list. See
this commit:

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D18=
ce9c4a1b81dcfc1a8d2fb12ae1bf65413adcf3

Thanks,

Michael
