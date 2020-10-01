Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D67F27FE9E
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:46:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731987AbgJALqm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:46:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731243AbgJALqm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:46:42 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B093C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:46:42 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id o9so5753156ils.9
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EhIvWiWK9G7Bgnc63UV/wiJe1+crRSoA6CIx85uxYLw=;
        b=seseeesBxEB9K+Qm6rMjWz+8xD/McqRV7uTFQCuSs0mV3+PXbzIlDPT7vS41eWgREv
         WhG12UjFzPRgHXF1ZH+nDbMf9wHnMhHGZn5NEXq7Gon6GdkqjyBQA2ylQ27MlE0BALy1
         1Q7/Ar2vjihb3ROerFIHN0wvAw149x7x8pFRey/fRGeiL1vidhn0kGoG4yatjB1ps8vV
         5gM2hBzwX54nvGhMfWmzIQKSlmn/XMVAP55+XdX8icQDuCdPZ7y57s8ieLFEg3KLRtjl
         4lI+GlhEZVPZB7P4/nVD0tZXjF/HiPX2Ezte4k2uPqtyXiY63qkrwsUNB6HBwzkKZaUM
         10Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EhIvWiWK9G7Bgnc63UV/wiJe1+crRSoA6CIx85uxYLw=;
        b=aKAXVT9ctcLgP9ibYihYD9Yxae6D1IDz+0djFvu0EnXSeQ0CxzUz88lstcclrZcUgN
         17kRQKiByZWpnaOXgN9RDGb5scinzeqUSZlnMyYyKB/BEcRF5I9Ou/c/Mr43mfqfIdR+
         SEqCXL6V+JusjGZ9khrbwiTQBak5UXmIgi8MLx8lNor2AohQjL9vtvd8y6KeDe3pwThV
         GDpJnmZuVHhOuxRdTzoXUH0JiQn3tm0dFGZlzAtNAULyuYWVX5jM9O4PsJhTDdi5ukHU
         M6J9sMEDaknd3xsxYtCtLFgpSUXxKNvxmja6IaYSQcy9zvGBvVgimE5s1c6Anckuuv51
         spfg==
X-Gm-Message-State: AOAM530tj6fjxPaqiQofzPEwldmxjz4oNflSiFniZk8aCapelYKNMWGQ
        jVCSjABLMArUQquzU9jco01wqZge4mjARx2/VrQ=
X-Google-Smtp-Source: ABdhPJwbllIxqYMdmv6RtuKSVWA+XVyLVzz21faGwyVs0Q3DJbHeXlWQjj8ngWuLdJ0B9+SwWi2RGAVYKGs1QBewjUk=
X-Received: by 2002:a92:8912:: with SMTP id n18mr2130102ild.134.1601552801334;
 Thu, 01 Oct 2020 04:46:41 -0700 (PDT)
MIME-Version: 1.0
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
 <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com>
 <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com> <CAH6eHdS6PQfQN1ZLgNOyco3DyEA9xaHGqsFZmRySMFFA5B2rJA@mail.gmail.com>
 <193018da-3926-5cd5-c60d-78dadd08b4e0@gmail.com>
In-Reply-To: <193018da-3926-5cd5-c60d-78dadd08b4e0@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Thu, 1 Oct 2020 12:46:30 +0100
Message-ID: <CAH6eHdS0wJ9=Wx1Q7xS7AktZ_xKkAtdia7CjSQUmzabNRLwMDA@mail.gmail.com>
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 1 Oct 2020 at 12:24, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Jonathan,
>
> On 2020-10-01 12:50, Jonathan Wakely wrote:
> >> Ok,  I thought that GCC is part of the GNU project, but I don't know how
> >> much...
> >> I'll use "When using GCC," :)
> >
> > It is, but the GNU project is a large organisation, and has nothing to
> > say about non-standard types defined by GCC. Just because GCC is part
> > of a larger proejct, doesn't mean the entire project defines
> > something.
>
>
> Ok.
> >>   >>         Conforming to: GCC 4.6.0 and later.
> >>   >
> >>   > It doesn't conform to anything, shouldn't this say "This type is a GNU
> >>   > extension." or just "This type is an extension." ?
> >>
> >> That's what I had first: "Conforming to: GCC extension"
> >> Then I thought that I could include the version information,
> >> so I changed it to that.
> >>
> >> Maybe "GCC extension (since GCC 4.6.0)" would be better?
> >
> > I don't think that information belongs in the Conforming To section at
> > all. The version that added the type is nothing to do with
> > conformance, because it's an extension and there is nothing to conform
> > to.
> >
> > Look at 'man clock_gettime' for comparison. It has a VERSIONS section
> > and some individual constants are annotated with "(since Linux
> > 2.6.12)". That seems more appropriate for annotating individual types
> > within this man page which are not universally available.
> >
>
>
> Thank you!
>
> Updated:
>
> [[
> __int128
>        A signed integer type of a fixed width of exactly 128 bits.
>
>        When  using  GCC, it is supported only for targets which have an
>        integer mode wide enough to hold 128 bits.

I'm not sure "integer mode" is useful here. It's barely useful in the
GCC docs (it's an internal implementation detail of GCC, so not very
useful for end users). Outside the context of the GCC manual it's even
less likely to mean anything to users of this documentation.

Maybe just "supported only for targets where the compiler is able to
generate efficient code for 128-bit arithmetic" or something like
that. Maybe somebody else can suggest something better.


>
>        Versions: GCC 4.6.0 and later.
>
>        Conforming to: GCC extension.
>
>        Notes: This type is available without including any header.
>
>        Bugs: It is not possible to express an integer constant of  type
>        __int128  in  implementations  where  long long is less than 128
>        bits wide.
>
>        See also the intmax_t, intN_t and  unsigned  __int128  types  in
>        this page.
> ]]
>
> Just one more thing:
> Would you say "GCC extension" or "GNU extension"?

Good question. It's not specific to GCC, because other compilers also
define it, so maybe neither is appropriate.

Maybe openpty(3) is a suitable example to use, it says "CONFORMING TO
These are BSD functions, present in glibc. They are not standardized
in POSIX."

So maybe something like "This is a non-standard extension, present in
GCC. It is not standardized in C or POSIX." Again, maybe somebody else
has a better suggestion.
