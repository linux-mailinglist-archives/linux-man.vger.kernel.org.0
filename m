Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36BB32813B3
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 15:06:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726569AbgJBNGd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 09:06:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726282AbgJBNGd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 09:06:33 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9739BC0613D0;
        Fri,  2 Oct 2020 06:06:33 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id u6so1428227iow.9;
        Fri, 02 Oct 2020 06:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LtOofo94PCMfjpw9R/jhuE3xavKmxW8EYRlrREI1JLE=;
        b=rIHSuR5nnY6yp+wlhLgEPMEKa81IbrqQJrRbqFCovSqjQFL5doKGXzIflxbU3d3/df
         ZL9lJKSHXaGyzMBRm9iBXw8f+vgzsudAfamQPVHJvMxZY6mTOmgyYee7IiV7H9XUca5i
         lInPsBro8sF8i80lNI64gfkYy9XXq91NurnrOndpRBgvaGgRpNxE+MzgW5ugaXHWQBJ0
         9dUT8NfkNq1M3K4ABSEdeFsRfDRrh3HOko+LmJZahuZ2ilrz0gSmzHqha3DhkyzZnAtz
         DG4jbWP9YH/d2WZpgNPY0F13KcHDhah97wIjhvN6NvMdCT9Ngx6u6WaoldldbZgVu4fV
         9x7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LtOofo94PCMfjpw9R/jhuE3xavKmxW8EYRlrREI1JLE=;
        b=uFG/cTnWnwA15s0wxUm8fmaQwwii/hjVTXCg4K0aEG4kttzftN/oD9Nd7U8gkmOD69
         9aRpEwoiT+1caVjQB84bDTV8p0IF428LlhaTnwq82+PzDMiPt6jf8DLKPCIKH5DLNSjL
         0KQXgUpsgnbdFNGWll1qAU9cUAELi9wBFMCBZVoPjrqxJAZ6olQm6HIA+FZ5LcyzO4YJ
         uXoCUzCQkph38lHas1IJ081O+uwNIxJqXtU+KoiSXntwotRGMTw1atzO9oTFSjBdPHJj
         AV3AwtsTvSjNip+4k5anp+wXXGeHkc73BiD1nfNmkGlmB7HQdR5Uv4O8BXC6r8SNVm6J
         nwLA==
X-Gm-Message-State: AOAM530S/MpL1BEpjYV4j2b0Fxac1XdRvvvD05w80bCxF2e2KsC1bwBB
        XGKABuU4VYlGYssCTTJo89JY03nbx3V8/FBbMXQ=
X-Google-Smtp-Source: ABdhPJw5L9jHE6rrtKMYan3FuRwtSrzDv3Snjif+ZR+ivIIsYcRSdFnZVMtwsWEro2HbimAei/kCumA2xQuMd7ig6pw=
X-Received: by 2002:a02:ccdb:: with SMTP id k27mr2093934jaq.103.1601643992923;
 Fri, 02 Oct 2020 06:06:32 -0700 (PDT)
MIME-Version: 1.0
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com> <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com> <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
 <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
In-Reply-To: <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Fri, 2 Oct 2020 14:06:20 +0100
Message-ID: <CAH6eHdQrmsHxZbk3+JxRVZ5qH1fhFzLxyigs+DtEzSg2cet+kw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 2 Oct 2020 at 12:31, Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> On Fri, 2 Oct 2020 at 12:49, Jonathan Wakely <jwakely.gcc@gmail.com> wrote:
> >
> > On Fri, 2 Oct 2020 at 09:28, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
> > > However, it might be good that someone starts a page called
> > > 'type_qualifiers(7)' or something like that.
> >
> > Who is this for? Who is trying to learn C from man pages? Should
> > somebody stop them?
>
> Yes, I think so. To add context, Alex has been doing a lot of work to
> build up the new system_data_types(7) page [1], which I think is
> especially useful for the POSIX system data types that are used with
> various APIs.

It's definitely useful for types like struct siginfo_t and struct
timeval, which aren't in C.

Trying to document C seems like a huge task, ill-suited for man-pages,
and not worth the effort.

Maybe some people prefer man pages, but for everybody else
https://en.cppreference.com/w/c already exists and seems like a better
use of time.
