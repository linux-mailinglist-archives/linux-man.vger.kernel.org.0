Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA8F7225FF
	for <lists+linux-man@lfdr.de>; Mon,  5 Jun 2023 14:36:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233172AbjFEMga (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jun 2023 08:36:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232924AbjFEMg2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jun 2023 08:36:28 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04B9BC7
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 05:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1685968509;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=IDpcoiSj3/iYW13mPn5iIybYcFXhQeRG7qYTYRmAj3k=;
        b=gX3JrPibALZgULpdSI81vbKSbaZrl1kc7tQ1BATsd0Z0sObVW3AY3TtVTpuHpXlYU08equ
        fuu10+ZKv7UJh1Lg9I/CASBX6mSEfCpUBIxHrj1MAjyEGihzU3nv7DtHT+c72DO86OGMuo
        sjWDV0BMx9I8/sFbFyhdO65rdn7n/TE=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-459-7bA4XpkDN-eZqR27CyXrTQ-1; Mon, 05 Jun 2023 08:35:08 -0400
X-MC-Unique: 7bA4XpkDN-eZqR27CyXrTQ-1
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-568a85f180dso70907997b3.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jun 2023 05:35:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685968507; x=1688560507;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IDpcoiSj3/iYW13mPn5iIybYcFXhQeRG7qYTYRmAj3k=;
        b=Vsu8quqokA8nqokT2hiV8epV4JZgJKkGKsH8wnESu+qcYJ8WfDpl3W/a9ion6oTA23
         goIZ2YpgfdsriXoMHVnaULyfzn36duQusbQK1KYHWckW9pq/7YfCfdVwyZtwgMMbkB6p
         DWEkFm2x0wh9duNvpYxZ5Dmv3Tsvu7EXD5oumh7GQBwHbrBz8ELp3M2O59DHWB7anSEt
         mK5zwNG3qpi2YJSQRHBs2uIlNgsO78X/y8xLRQUNX48GffjplK6li8E98GRL1Ya/7iqN
         aKSlg45+vYAgswe0Xbx+4gnOBYr+f1HNTeRf3/f0xg4omj/p4uxrBfNyy4i52rLcuU7/
         nG7g==
X-Gm-Message-State: AC+VfDyiVRdGcfxfp8m9JkvklTWLKIcPGQtiPoDFMQkDorReqdNx9Gzt
        WyexUsN2/eLMLxVNS7VK5OQGaYbkU4RtHjAnoFxmDBbao1Ko6iPOwUy4S7cGejXl7/rv7Zm1AZu
        llL7r8kL7fbsGFDXLNysciwE75IyMwLIuUUYYKm4Mbvp+baE=
X-Received: by 2002:a0d:e610:0:b0:568:bc97:13cc with SMTP id p16-20020a0de610000000b00568bc9713ccmr9472535ywe.8.1685968507490;
        Mon, 05 Jun 2023 05:35:07 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4MjVKnnOfv+q6n/g8mYZFNYFdojjwd/3AOQt87frKmP+fY2mRwF4k+SQzd3MJ27hmbfcvqMhQQLPrQHCGp3Ts=
X-Received: by 2002:a0d:e610:0:b0:568:bc97:13cc with SMTP id
 p16-20020a0de610000000b00568bc9713ccmr9472519ywe.8.1685968507165; Mon, 05 Jun
 2023 05:35:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
 <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
In-Reply-To: <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
From:   Yedidyah Bar David <didi@redhat.com>
Date:   Mon, 5 Jun 2023 15:34:55 +0300
Message-ID: <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Mon, Jun 5, 2023 at 2:35=E2=80=AFPM Alejandro Colomar <alx.manpages@gmai=
l.com> wrote:
>
> Hi Yedidyah,
>
> On 6/5/23 13:17, Yedidyah Bar David wrote:
> > Clarify that the behavior of these functions is undefined if c is
> > neither in the unsigned char range nor EOF.
> >
> > I copied the added text from toupper.3.
> >
> > In practice, calling them on out-of-range values - tested with recent
> > glibc/gcc - is simply reading from random process memory - meaning, you
> > either get some garbage, if the memory was readable, or a segmentation
> > fault. See also:
> >
> > https://stackoverflow.com/questions/65514890/glibcs-isalpha-function-an=
d-the-en-us-utf-8-locale
> >
> > Signed-off-by: Yedidyah Bar David <didi@redhat.com>
>
> This is already covered by the NOTES section, isn't it?

It's _mentioned_ there, correct - but not sure it's covered.

It's also mentioned in toupper.3's NOTES.

I think it's helpful to explicitly say that behavior is undefined in this c=
ase.
If you feel like doing this inside NOTES, one way or another, ok for me.

Right now, NOTES says what you must do, but not what happens if you
don't do that.

It also says that for the common case of using them on signed char, you sho=
uld
explicitly cast to unsigned char, first. It also tries to explain why this =
is
necessary. The explanation explains why it's necessary for compliance with =
the
standard, but not why it's a good thing more generally - latter is not
explained,
and AFAICT from reading glibc sources, is not necessary - see e.g. this com=
ment
from ctype.h:

   These point into arrays of 384, so they can be indexed by any `unsigned
   char' value [0,255]; by EOF (-1); or by any `signed char' value
   [-128,-1).  ISO C requires that the ctype functions work for `unsigned
   char' values and for EOF; we also support negative `signed char' values
   for broken old programs.

The real reason why you should not call them on negative values other than
EOF - casted to unsigned char or not - is simply that most likely this isn'=
t
what you meant to do. But that's not about compliance with the standard...

In my patch, I felt like "something should be done", but when deciding what
actually should be done, I decided to simply go with what's in toupper.3,
which seems good enough for me.

So, what do you think?

>  BTW, I'll
> rename that section to CAVEATS.

Not sure all of its current content is a caveat.

Best regards,

>
> Thanks,
> Alex
>
> > ---
> >  man3/isalpha.3 | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/man3/isalpha.3 b/man3/isalpha.3
> > index 443c2aa09..8ad997c29 100644
> > --- a/man3/isalpha.3
> > +++ b/man3/isalpha.3
> > @@ -145,6 +145,15 @@ is the special locale object
> >  .BR duplocale (3))
> >  or is not a valid locale object handle.
> >  .PP
> > +If
> > +.I c
> > +is neither an
> > +.I "unsigned char"
> > +value nor
> > +.BR EOF ,
> > +the behavior of these functions
> > +is undefined.
> > +.PP
> >  The list below explains the operation of the functions without
> >  the "_l" suffix;
> >  the functions with the "_l" suffix differ only in using the locale obj=
ect
> > --
> > 2.31.1
> >
> > Best regards,
> > --
> > Didi
> >
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5



--=20
Didi

