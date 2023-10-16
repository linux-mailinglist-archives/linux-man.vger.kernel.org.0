Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B02A77C9CBD
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 02:53:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbjJPAx4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Oct 2023 20:53:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjJPAxy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Oct 2023 20:53:54 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 194D7A9;
        Sun, 15 Oct 2023 17:53:50 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 915ADC433CB;
        Mon, 16 Oct 2023 00:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697417629;
        bh=VeTuSjzLgu1D/2GmXzVUVNzj42rRGbeX4TpeoeB9DWc=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=JYIEdhEVxnPJ9Hs3FXb8Bd15jmHhV+5IDNYVU8UpFvA2wEj/Vaf9dqo5ufXovFWTY
         etl7jEOLcvegWqeDGy3hLaEaXurQRs4q4qIj8AmL5F1SNHEXGQjcdKRvtzLVARrq0N
         P0BdI35fi10XMh3Df81uSsnyoHz7ibFgEi5iYyScyD3Zr6f2vkxHseIAbKkx84x2dw
         H2JpZTrx+LCjlgnKRTKfEKZzG/0RlLgyu07wpdwgiDitshs1GtVS+zU/tzp3TbY1ON
         uUvn4t3n/p5sJ+MbkT/pKVSJlM23Q4imCIunkgH6LEPnyoxXTo5injoNeb6ZkmHWKY
         wpqnjocnXTQhQ==
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-53d82bea507so6836308a12.2;
        Sun, 15 Oct 2023 17:53:49 -0700 (PDT)
X-Gm-Message-State: AOJu0YxYYcRz+OxukAjlgVU8Pr/jslFA+DMlbHdWwal97g4ybuUTKzp9
        5QPVD7QoMWaPNfGLGduh+/5ywSgPGrzhKHuJ8VQ=
X-Google-Smtp-Source: AGHT+IFn1YmwevuDuFKbSltoS+RGS0zOlvKYNUs1cnS8sAP2f0LdCyyXYf5ncq4p6Suv65kjc2Nd9LRseNSmUTjaPjg=
X-Received: by 2002:a05:6402:40d0:b0:53e:2af1:e966 with SMTP id
 z16-20020a05640240d000b0053e2af1e966mr9698411edb.1.1697417627935; Sun, 15 Oct
 2023 17:53:47 -0700 (PDT)
MIME-Version: 1.0
References: <20231015150732.1991997-1-guoren@kernel.org> <ZSwovaEr5JLrZA6z@debian>
In-Reply-To: <ZSwovaEr5JLrZA6z@debian>
From:   Guo Ren <guoren@kernel.org>
Date:   Mon, 16 Oct 2023 08:53:36 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRhJj7cTuoeQsb0WA6itR0eFLRoStLXQVCY-HQpu-2qFg@mail.gmail.com>
Message-ID: <CAJF2gTRhJj7cTuoeQsb0WA6itR0eFLRoStLXQVCY-HQpu-2qFg@mail.gmail.com>
Subject: Re: [PATCH] set_thread_area.2: Add C-SKY document
To:     Alejandro Colomar <alx@kernel.org>
Cc:     arnd@arndb.de, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
        Guo Ren <guoren@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Oct 16, 2023 at 2:00=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Guo,
>
> On Sun, Oct 15, 2023 at 11:07:32AM -0400, guoren@kernel.org wrote:
> > From: Guo Ren <guoren@linux.alibaba.com>
> >
> > C-SKY only needs set_thread_area, no need for get_thread_area, the
> > same as MIPS.
> >
> > Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> > Signed-off-by: Guo Ren <guoren@kernel.org>
> > ---
>
> Patch applied.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D1c4464ae2c40318b77e125961e24710d1784df5d>
>
> Thanks!
> Alex
>
> >  man2/set_thread_area.2 | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/man2/set_thread_area.2 b/man2/set_thread_area.2
> > index 02f65e0418f2..c43a92eb447a 100644
> > --- a/man2/set_thread_area.2
> > +++ b/man2/set_thread_area.2
> > @@ -26,7 +26,7 @@ Standard C library
> >  .B "int syscall(SYS_get_thread_area);"
> >  .BI "int syscall(SYS_set_thread_area, unsigned long " tp );
> >  .PP
> > -.B #elif defined __mips__
> > +.B #elif defined(__mips__ || defined __csky__)
>
> I removed the parentheses here.
Oops, thanks.

>
> >  .PP
> >  .BI "int syscall(SYS_set_thread_area, unsigned long " addr );
> >  .PP
> > @@ -42,17 +42,17 @@ These calls provide architecture-specific support f=
or a thread-local storage
> >  implementation.
> >  At the moment,
> >  .BR set_thread_area ()
> > -is available on m68k, MIPS, and x86 (both 32-bit and 64-bit variants);
> > +is available on m68k, MIPS, C-SKY, and x86 (both 32-bit and 64-bit var=
iants);
> >  .BR get_thread_area ()
> >  is available on m68k and x86.
> >  .PP
> > -On m68k and MIPS,
> > +On m68k, MIPS and C-SKY,
> >  .BR set_thread_area ()
> >  allows storing an arbitrary pointer (provided in the
> >  .B tp
> >  argument on m68k and in the
> >  .B addr
> > -argument on MIPS)
> > +argument on MIPS and C-SKY)
> >  in the kernel data structure associated with the calling thread;
> >  this pointer can later be retrieved using
> >  .BR get_thread_area ()
> > @@ -139,7 +139,7 @@ return 0 on success, and \-1 on failure, with
> >  .I errno
> >  set to indicate the error.
> >  .PP
> > -On MIPS and m68k,
> > +On C-SKY, MIPS and m68k,
> >  .BR set_thread_area ()
> >  always returns 0.
> >  On m68k,
> > --
> > 2.36.1
> >
>
> --
> <https://www.alejandro-colomar.es/>



--=20
Best Regards
 Guo Ren
