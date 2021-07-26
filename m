Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04CCA3D630E
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 18:28:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238586AbhGZPny (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Jul 2021 11:43:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234377AbhGZPnw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Jul 2021 11:43:52 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25F5FC061757
        for <linux-man@vger.kernel.org>; Mon, 26 Jul 2021 09:24:21 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id r18so12611528iot.4
        for <linux-man@vger.kernel.org>; Mon, 26 Jul 2021 09:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OOrkqQz22FtFlSMOLU3/+eHEU35vdJjnGuv1MXeYFoI=;
        b=QPl32JJBuqjE+TgwlRo1sppDWnb34ztn6qQzM23xA3hWmmD+jWgZsUhanASfwlRuE+
         YJnploXmYBynl6gudWUfDGnVE8EmHMUhCgD14yOUic1bWr22HXgxlD65obhHelsrpJki
         64muJ5i1zjETVENPys/HbpqfQorAgMlzsQmZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OOrkqQz22FtFlSMOLU3/+eHEU35vdJjnGuv1MXeYFoI=;
        b=pB+j2Mv7tp+JjtM3YU14TgT21EoaqlIK57hD553IgIOmzov9XAFFyA2JSlonC/9iPJ
         5vWVcABlB84vd06AsGPxJF3Pr5WYorHTZBt09UhKBrsd3G0LrCCsz/fi2myze9gFvcBC
         mqwWoDaZq4HnA+3jGQPIdJXGzLxJoklLFH8utOxjyM/ClBBZaPVY8C+joa3H29r4ea/k
         2sA72ujwXSPAB8Vgkenm1RlT34XYuZe4NilBA+NwWbcbQywYi+ck620EDF7rHcS7x4KU
         xkwc3bCSmsqiYsSbe8e1tEoKbYNlPplzQ6PenaVDU2l/AWYAYSj8jQO8k1o906QVDYw5
         EuUQ==
X-Gm-Message-State: AOAM532akYEg+pws1v952t1pokY7ALWWiwYZQc6Y2KZ/sLH34NGiNyOH
        vmd23HIqqF9xghmEwW4XGRSHWCPC+SuqUg==
X-Google-Smtp-Source: ABdhPJywC6behCRFVniwGdgsefGsXdWiznkjhsmnO+9RVnvCgXaNgii+5ciHi+xvAAM8LAjoKdFDLA==
X-Received: by 2002:a6b:ba02:: with SMTP id k2mr15585064iof.164.1627316660360;
        Mon, 26 Jul 2021 09:24:20 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com. [209.85.166.48])
        by smtp.gmail.com with ESMTPSA id n18sm211299ioz.5.2021.07.26.09.24.19
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 09:24:19 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id j21so12580251ioo.6
        for <linux-man@vger.kernel.org>; Mon, 26 Jul 2021 09:24:19 -0700 (PDT)
X-Received: by 2002:a05:6602:3155:: with SMTP id m21mr15438284ioy.145.1627316659588;
 Mon, 26 Jul 2021 09:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210722212120.3060163-1-evgreen@chromium.org> <29fd5622-1b2b-4aef-217d-e49b487a53bb@gmail.com>
In-Reply-To: <29fd5622-1b2b-4aef-217d-e49b487a53bb@gmail.com>
From:   Evan Green <evgreen@chromium.org>
Date:   Mon, 26 Jul 2021 09:23:43 -0700
X-Gmail-Original-Message-ID: <CAE=gft7xeQZQU1_2yi+G_6gzLaPo3vncp=46yoRLSxC2u1GbUQ@mail.gmail.com>
Message-ID: <CAE=gft7xeQZQU1_2yi+G_6gzLaPo3vncp=46yoRLSxC2u1GbUQ@mail.gmail.com>
Subject: Re: [PATCH] swapon.2: Document NOSWAP and additional DISCARD flags
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Jul 25, 2021 at 1:50 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Evan,
>
> On 7/22/21 11:21 PM, Evan Green wrote:
> > Fix the FIXME and finally document SWAP_FLAG_DISCARD_ONCE and
> > SWAP_FLAG_DISCARD_PAGES from Linux 3.11. Additionally, document
> > SWAP_FLAG_NOSWAP, a shiny new flag being introduced in Linux 5.14. See
> > the following link:
> >
> > https://lore.kernel.org/lkml/20210721143946.v3.1.I09866d90c6de14f21223a=
03e9e6a31f8a02ecbaf@changeid/
> >
> > Signed-off-by: Evan Green <evgreen@chromium.org>
>
> Discarded as requested :)
>
> However, please see a few comments below.
>
> Thanks,
>
> Alex
>
> > ---
> >   man2/swapon.2 | 33 ++++++++++++++++++++++++++-------
> >   1 file changed, 26 insertions(+), 7 deletions(-)
> >
> > diff --git a/man2/swapon.2 b/man2/swapon.2
> > index 07d5fe86c..d568da993 100644
> > --- a/man2/swapon.2
> > +++ b/man2/swapon.2
> > @@ -33,13 +33,10 @@
> >   .\" 2004-12-14 mtk, Anand Kumria: added new errors
> >   .\" 2007-06-22 Ivana Varekova <varekova@redhat.com>, mtk
> >   .\"     Update text describing limit on number of swap files.
> > +.\" 2021-07-22 Evan Green <evgreen@chromium.org>
> > +.\"     Document _DISCARD_ONCE, _DISCARD_PAGES, and _NOSWAP flags.
> >   .\"
> > -.\" FIXME Linux 3.11 added SWAP_FLAG_DISCARD_ONCE and SWAP_FLAG_DISCAR=
D_PAGES
> > -.\"  commit dcf6b7ddd7df8965727746f89c59229b23180e5a
> > -.\"  Author: Rafael Aquini <aquini@redhat.com>
> > -.\"  Date:   Wed Jul 3 15:02:46 2013 -0700
> > -.\"
> > -.TH SWAPON 2 2021-03-22 "Linux" "Linux Programmer's Manual"
> > +.TH SWAPON 2 2021-07-22 "Linux" "Linux Programmer's Manual"
>
> The .TH line is updated with a script, so we don't touch it manually.

Ack.

>
> >   .SH NAME
> >   swapon, swapoff \- start/stop swapping to file/device
> >   .SH SYNOPSIS
> > @@ -81,9 +78,23 @@ flag is specified in the
> >   argument, freed swap pages will be discarded before they are reused,
> >   if the swap device supports the discard or trim operation.
> >   (This may improve performance on some Solid State Devices,
> > -but often it does not.)
> > +but often it does not.) In conjunction with this flag, callers may add
>
>
> See the following extract from man-pages(7):
>
> $ man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p';
>     Use semantic newlines
>         In the source of a manual page,  new  sentences  should  be
>         started  on new lines, and long sentences should split into
>         lines at clause breaks (commas, semicolons, colons, and  so
>         on).   This  convention,  sometimes known as "semantic new=E2=80=
=90
>         lines", makes it easier to see the effect of patches, which
>         often  operate at the level of individual sentences or sen=E2=80=
=90
>         tence clauses.
>

Gotcha, thanks for the gentle education. I'll hopefully have a revised
version of this patch out at some point once the main change is
stabilized. I'll be sure to fix these issues, if you notice anything
else in this patch that would need to be corrected I can include that
in the next spin too.
-Evan
