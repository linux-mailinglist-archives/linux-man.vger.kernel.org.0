Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5C912813FF
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 15:27:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726176AbgJBN1W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 09:27:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726090AbgJBN1W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 09:27:22 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CE9AC0613D0;
        Fri,  2 Oct 2020 06:27:22 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id y74so1488272iof.12;
        Fri, 02 Oct 2020 06:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gYNWbIX3wHxMLwSyqPl4DtbX/WZajm6O/P0Who7xZ1Q=;
        b=QYCNwPCFm+MvnGav5d4ylmFNAA2oR2PsDXSLtak41cNErruhP88a6wAUom6fzh4hJw
         clp/Xa7qoHT0wrbzXgT/k/7mO48W/qZ4Ai8ASllM0cQJ5Rhu0Usue/uIc4tF+c9GHPwY
         xb5ePicL7qixZOAvD9q5okpr0KUYIDaREkdWxbwQV+XOMUl9Zh8NP5tE0iqb+ypunYDb
         CX4R8Nf6BT5Y7BzuCCxCaUIo2y2aMf1FBv76QQ3bwD30uGBTG2egXtvNpZ5itxUtZe17
         /vrZGuO0e4ebVLQx1Fe1qDc4HTeQsxqtOOGDYGziQixMLRMskwMmsmB1vnJeNn2r8l4D
         0Usg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gYNWbIX3wHxMLwSyqPl4DtbX/WZajm6O/P0Who7xZ1Q=;
        b=tNQ1OZczpZOS2WomtVNPCOsEw+6cndQdWmfmZQcTX5CEhx1CMlo5/9HPxqltZoReI6
         c6ZMkgKvH86wjunCmcIYFExAvORbjQDabTTjN/f4inwGdmi8yflRc2d5X4KEYIs1YHa1
         cgHEzhxkEO6GtDYqeCe/BbblE9ptDDRc3p6/MlgW1cIAqB0opjB3wlaAtgPzjjt42wA+
         UiIH/yyazteU6ljrwpfqKjkuAHY46icQzGXZjX2mDNZiFxJr1zAdnav8nMO17syzgr3Q
         5QqMLvIyWnP8R/bAtfpqt4ZYk4h/d+aTWiKt+ZydINcc/sQR6BTSNOMJtKzQRDJLhQ0j
         kWug==
X-Gm-Message-State: AOAM531zY20bFMoNBAH/s1vuHbfep6f0NNE7OFVlUOxVXa3YERd1ogVx
        W8EfXuUceW8Rm+0s3HnCm0CbgSxrRBeyfWzxyfc=
X-Google-Smtp-Source: ABdhPJzmfjjOakmEA1Ir2GNxnKLbaQLxjeEDnBtdvP/iDkIltITKYbFY5ZSsvvp9V5rMgB8Ff3CpqWc1kVneHQQPWys=
X-Received: by 2002:a5d:8b88:: with SMTP id p8mr1991911iol.172.1601645241799;
 Fri, 02 Oct 2020 06:27:21 -0700 (PDT)
MIME-Version: 1.0
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com> <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com> <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
 <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
 <CAH6eHdQrmsHxZbk3+JxRVZ5qH1fhFzLxyigs+DtEzSg2cet+kw@mail.gmail.com> <63826e82-7a19-0ecc-f73c-56aa560a842f@gmail.com>
In-Reply-To: <63826e82-7a19-0ecc-f73c-56aa560a842f@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Fri, 2 Oct 2020 14:27:10 +0100
Message-ID: <CAH6eHdTpzNk4+Rg-+kUCRDZPLHe7MBBf2PK5i1WqD4VeEs60oQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 2 Oct 2020 at 14:20, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
>
>
> On 2020-10-02 15:06, Jonathan Wakely wrote:
>  > On Fri, 2 Oct 2020 at 12:31, Michael Kerrisk (man-pages)
>  > <mtk.manpages@gmail.com> wrote:
>  >>
>  >> On Fri, 2 Oct 2020 at 12:49, Jonathan Wakely <jwakely.gcc@gmail.com>
> wrote:
>  >>>
>  >>> On Fri, 2 Oct 2020 at 09:28, Alejandro Colomar via Gcc
> <gcc@gcc.gnu.org> wrote:
>  >>>> However, it might be good that someone starts a page called
>  >>>> 'type_qualifiers(7)' or something like that.
>  >>>
>  >>> Who is this for? Who is trying to learn C from man pages? Should
>  >>> somebody stop them?
>  >>
>  >> Yes, I think so. To add context, Alex has been doing a lot of work to
>  >> build up the new system_data_types(7) page [1], which I think is
>  >> especially useful for the POSIX system data types that are used with
>  >> various APIs.
>  >
>  > It's definitely useful for types like struct siginfo_t and struct
>  > timeval, which aren't in C.
>
> Hi Jonathan,
>
> But then the line is a bit diffuse.
> Would you document 'ssize_t' and not 'size_t'?

Yes. My documentation for ssize_t would mention size_t, refer to the C
standard, and not define it.

> Would you not document intN_t types?
> Would you document stdint types, including 'intptr_t', and not 'void *'?

I would document neither.

I can see some small value in documenting size_t and the stdint types,
as they are technically defined by the libc headers. But documenting
void* seems very silly. It's one of the most fundamental built-in
parts of the C language, not an interface provided by the system.

> I guess the basic types (int, long, ...) can be left out for now,

I should hope so!

> and apart from 'int' those rarely are the most appropriate types
> for most uses.
> But other than that, I would document all of the types.
> And even... when all of the other types are documented,
> it will be only a little extra effort to document those,
> so in the future I might consider that.

[insert Jurassic Park meme "Your scientists were so preoccupied with
whether or not they could, they didn't stop to think if they should."
]

I don't see value in bloating the man-pages with information nobody
will ever use, and which doesn't (IMHO) belong there anyway. We seem
to fundamentally disagree about what the man pages are for. I don't
think they are supposed to teach C programming from scratch.


> But yes, priority should probably go to Linux/POSIX-only types.
