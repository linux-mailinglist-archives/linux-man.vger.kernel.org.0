Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C345382633
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 10:05:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232195AbhEQIG7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 May 2021 04:06:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235060AbhEQIG6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 May 2021 04:06:58 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48367C061573
        for <linux-man@vger.kernel.org>; Mon, 17 May 2021 01:05:42 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 36-20020a9d0ba70000b02902e0a0a8fe36so4822965oth.8
        for <linux-man@vger.kernel.org>; Mon, 17 May 2021 01:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ZswFV9piL/J/bXK/M7yVbTKPHyeyvtNFO97CbAu2/kc=;
        b=faKBSXPvEd2GOV/cVBazSfvWQw855Esll+8oIkIZVf+i5K5vaeqi5HD8OYd9KhlNjB
         B4usdQww7wmnkIxWGuIXQMWPkgZag5JZISKzd9N+M3o0qb49TpWExi6rh/ZyDOfn89Ro
         Y5PFvjNRYesXu1oHszRlChYHdC5ViX52uGhctmCAle1tje8FQVPz0KqWidWBCYGp/IkK
         JyZo2pCsV1TPqOQDvHoJYO9A1gzRhN40hfZIfrJUM7ssi7iph8eSZAhAiurkoO9VwJ2k
         fiJwTsP6pscWUn8sVIjFKlMPVIANcKc+jHOXqcRgWMs5xcdxoZSCQNwC6ISn4oIZyTDR
         eWoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ZswFV9piL/J/bXK/M7yVbTKPHyeyvtNFO97CbAu2/kc=;
        b=Fnt6uZSpEtaRnbW8AY9O2fEM78xLm8mHGp1+wF7rr/7DL+THyklF10z9zgaEXlLSos
         9EIoA/iddeQ3toQjnM+By7hzi4dsbSIJhMMRcmHMsTHAqA10xa9N+Q9qRPfGW7EwMGlk
         2R0qlFTtXAkaqS+73f946F72qt+aIl7EHGfmObCtXnh02fSpJmxvfrMJ+K1Tuiecbv8r
         ZgXcONxbmIHcHuu9IYYCxFIv8YstEcesKCPR8jpO7Arxvy0Vw7psA20ALiJJz0rUhMdJ
         BUF7cpQkkVNBHHn8VEhvJFeVXxPTtG/PKcID0a1hgMpPgOrFNYBIcFcxgyGNWTq9lPYR
         MIKw==
X-Gm-Message-State: AOAM530MFerf/c3nRwIVoseXj61rVp1SBnh0F9IlFqDnnvxInMVLf02H
        wbP7UQ/FVnAnc1H3QnFwLBHpsdKGZ+FdDf1IcEXe1nYQ
X-Google-Smtp-Source: ABdhPJxO8tK603tWDBMZjbb0qMteqcIhDVDjOYrNvVVkBLNury2R0k/2wbjyK/o8ymrzSu1f62eA54E7SZhH1unirBo=
X-Received: by 2002:a05:6830:a:: with SMTP id c10mr41228231otp.114.1621238741750;
 Mon, 17 May 2021 01:05:41 -0700 (PDT)
MIME-Version: 1.0
References: <cb816b17-df1e-8cb9-5847-1626571f7929@gmail.com>
 <CAKgNAki3XKdOdNrs9cG6P0A=ggSATeAGfXob1Ct1dy83SuLjeQ@mail.gmail.com>
 <c7dcc24d-3c7a-39cf-48a9-2357299e8b93@gmail.com> <5cbacfde-8f54-1fef-77cc-6f45d4ae2bd3@gmail.com>
In-Reply-To: <5cbacfde-8f54-1fef-77cc-6f45d4ae2bd3@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 17 May 2021 20:05:30 +1200
Message-ID: <CAKgNAkj6DnzzO_+8A-pMu5yHJ5C5TYpYQ9We9c-4SVARMZT-KA@mail.gmail.com>
Subject: Re: system calls not intended for user space
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, 17 May 2021 at 19:51, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> On 5/17/21 9:47 AM, Alejandro Colomar (man-pages) wrote:
> > Hi Michael,
> >
> > On 5/17/21 3:04 AM, Michael Kerrisk (man-pages) wrote:
> >> Hi Alex,
> >>
> >> On Fri, 14 May 2021 at 07:25, Alejandro Colomar (man-pages)
> >> <alx.manpages@gmail.com> wrote:
> >>>
> >>> Hello Michael,
> >>>
> >>> There are some syscalls that are not intended to be used from user
> >>> space.  See restart_syscall(2).  Should I document those as
> >>> syscall(SYS_...) or not?
> >>
> >> Yes, this function is an odd case. (Are there others? Perhaps
> >> sigreturn(2) also.)
> >
> > rt_sigqueueinfo.2 maybe, for which, by the way, I sent a patch recently,
> > so you may prefer to ingore it.
> >
> >>
> >> I think I would just ignore these two. (That is, no changes.)
> >
> > Agree.  I sent the patch for rt_sigqueueinfo.2 because in NOTES it
> > already talked about syscall(2), and by the DESCRIPTION it looks like
> > it's used by library writers (that's user space).
>
>
> I see you've applied the patch (it was 2/8 that you applied today
> (<https://lore.kernel.org/linux-man/20210515182027.186403-2-alx.manpages@gmail.com/T/#u>)).
>   Check this before pushing and decide :)

D'oh! Thanks for catching that. In the meantime, I will drop that patch.

Cheers,

Michael
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
