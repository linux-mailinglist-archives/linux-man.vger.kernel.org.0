Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 997517DEAC3
	for <lists+linux-man@lfdr.de>; Thu,  2 Nov 2023 03:38:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348267AbjKBCia (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 22:38:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348035AbjKBCia (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 22:38:30 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56B1C83
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 19:38:24 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-d9beb863816so472630276.1
        for <linux-man@vger.kernel.org>; Wed, 01 Nov 2023 19:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698892703; x=1699497503; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NZONCNEMya1tL4bW8iwpaW5nwgkmBxwfcJA5oxjwEo=;
        b=YQgGyRGfweGQuaSQvDN2w8w04ZcwBoVtGTZ7sd8rCBYysZDWdpVIT6N6BiuChZKf3v
         KxPM+3RQIfs/xGSJJk5TnBLQnFcgJeSEeQjIkK1ChDXYe7fmg29Gf/fcRAw/C7XuedzV
         4XECYSOEARxWPVPFSdVKcggeYpCpoKpsyKy9MNA1swVQaE4lv+MlBXqXhBdvUj0ttV1L
         /oaJRDGdH0+B3Y/UjlcAKFv9NRlD3rVQ5P4DIYIqTjZp0u+US+2Y65h4Tf1rylTuCCWj
         M6NfARUZgnDWdxUu/iOwU569wXdaLo/pby637g3HBQCTC1pjX+u12YBAsABNRysumkZX
         zN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698892703; x=1699497503;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9NZONCNEMya1tL4bW8iwpaW5nwgkmBxwfcJA5oxjwEo=;
        b=KJvskHGAQ5V7dJGU7gTT3EAA3WBPzlBRZI5ZoEFTbauK4E0wFa8ot2prASDnYMWZLR
         ouDvj0vFCV7bDmDJyk2LRr2ByWf/WP6fEDPhSqZ0HZM+z/1creqtxv7KEdFtZFOhjf+i
         0E+ZqGU9A/lqkVI+BeGwv1N1CV7D9MGOrCZxQhMaS2aHdMswcfxk72RPMtk1pbmF861t
         wJ+vksGAC64IejhCGCJrfcCOCaOYxJ1xZK7lIJt2tvoD5SKhmkEfl2g4ZtZHvzrXH3oX
         d+rlecjZfajT769/qoTBBzPwjwPUDa6G8Rs2mvgemwPLDNQmgkt5VbXtqlKNhGRJHYCh
         lagA==
X-Gm-Message-State: AOJu0Yw45fi9y9e8X7HEI8+aUeaAwxlHOn4B0q/loODSgMAHLkSpmemU
        i8LD+VHFtQsRA/dJQC30xrtbB3hacyBEXgzSdYo=
X-Google-Smtp-Source: AGHT+IFUibfJ4pzA3bGAh0BVKgcoFToNwot/0F662IRnZD7MTEj0IgJl6cCuo75KzRKfh0xEYHmPwunOg6Cw/Opb3/U=
X-Received: by 2002:a5b:9d2:0:b0:d81:5d20:97b9 with SMTP id
 y18-20020a5b09d2000000b00d815d2097b9mr15877320ybq.31.1698892703417; Wed, 01
 Nov 2023 19:38:23 -0700 (PDT)
MIME-Version: 1.0
References: <ZUJaYtPeCL1kXYwl@meinfjell.helgefjelltest.de> <ZUJoBtadvsPTwFXh@debian>
 <ZUJt-iwf-d9cLBGd@meinfjell.helgefjelltest.de> <ZUKF8Krrlf4a0sKp@debian>
In-Reply-To: <ZUKF8Krrlf4a0sKp@debian>
From:   Nikolaos Chatzikonstantinou <nchatz314@gmail.com>
Date:   Wed, 1 Nov 2023 22:38:12 -0400
Message-ID: <CAAQmekfm2aSDdBTADUmFYXFMgHQqpC0iLx4ngViS9C__XQed4g@mail.gmail.com>
Subject: Re: Issue in man page clog.3
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        GNU C Library <libc-help@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It just says that the value is in that interval, so it is not wrong.
There is no canonical way to cut the plane into strips, either the top
is half-open or the bottom.

On Wed, Nov 1, 2023 at 1:08=E2=80=AFPM Alejandro Colomar via Libc-help
<libc-help@sourceware.org> wrote:
>
> On Wed, Nov 01, 2023 at 03:25:46PM +0000, Helge Kreutzmann wrote:
> > Hello Alejandro,
> > Am Wed, Nov 01, 2023 at 04:00:16PM +0100 schrieb Alejandro Colomar:
> > > On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >
> > > > Issue:    [-pi,pi] means both -pi and pi are included, this does no=
t make sense, either one must be out of the interval?
> > > >
> > > > "The logarithm B<clog>()  is the inverse function of the exponentia=
l "
> > > > "B<cexp>(3).  Thus, if I<y\\ =3D\\ clog(z)>, then I<z\\ =3D\\ cexp(=
y)>.  The "
> > > > "imaginary part of I<y> is chosen in the interval [-pi,pi]."
> > >
> > > I don't know this function.  Please suggest a fix, and CC glibc so th=
at
> > > they can review the change.
> >
> > From a mathematical point of view either -pi or pi needs to be
> > excluded. I'm not a programmer, so the I cannot tell which is the case
> > here.
> >
> > So you need to contact the person who wrote or who maintains this
> > function / man page.
>
> Hi,
>
> I'm CCing glibc, in case they want to say something.
>
> Cheers,
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
