Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7D43532A4F
	for <lists+linux-man@lfdr.de>; Tue, 24 May 2022 14:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236456AbiEXMXs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 08:23:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233958AbiEXMXr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 08:23:47 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A3D0939DA
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 05:23:46 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id u7so19971002ljd.11
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 05:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=E5uoNdG9KSj3atQXBKfPVQWQptSU+xkIaY3sZiEsuMQ=;
        b=lvHvebnjCyxv3AIGn8Wu3UQCOetMSejyKUxwlkd/djleXwelKt7RNv+gNEkQlkA+0X
         9hNG77IKcFp4uZ9/bztJeVO4LB1/z8e001doaI0wWAgwMDsaXN4IK1ejYgxra1R3BzHd
         ljFknqAo5bLFhjE97lVSsTpgqUlTguPzdFJt8i+h982vnf3br/KvHvy/pDAzErXTnAtX
         jtlS69NwssbeGqzsqL5qpLsrAu84Evo8a8tbOc4MzXiw8o7UaEEk8oiYwzVq7IUByKS8
         rVBsMi/WsiYCRvo6e4s1PxCrr5wzgQ2oGeC0UbhV51WhQRYEDywHyVgAYQx8yZX8kaRj
         fiLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=E5uoNdG9KSj3atQXBKfPVQWQptSU+xkIaY3sZiEsuMQ=;
        b=Yvd6ecd5aXa0Yk1CfO220Bf726vd4z7pk8HFI0h9D9FO3JjsdohiPKhTmM8ch4onYG
         xmIzuzhLYEr+BS9OUwEBEFll8b3pDopFmO1C3+1AVFmySGyLMutBWWFlwDoFnV9kgf1T
         zoCn7Fm7mR3GO4nhf1c/u3dHN3TFPA8gMBlnnPfla94CGDAmTzEggQa5Q1tK0NOU2zYq
         jHKXe8azqOaCjqTwJhSsHsIMLZMsHz3X+TVOQGzdqdzLxpoH1OY/f1AefbxMLkaosB3w
         ghXGRxXliFUIlCLOIT+q6wS8SGqd04ON1Nnlnv8pIuXiWjvCdM1ouolo1nhSh4l3ZtKa
         5V6w==
X-Gm-Message-State: AOAM5303LPXUX79r2zuRaXVKAfwUabtpHLaQ8V35lwEuNMlTb6jrC1Kb
        icXy5wN1pFvDyrXZo6tPblHUMx0CiYuyL903umM=
X-Google-Smtp-Source: ABdhPJz9UeA9C6LDl6sa77o8G/SKx1CpYKruGogCE8oqTjCeTyrJhrwHRoxJrtaj4YdaPdb4Ff4DrGHZLH2eQqLPV9g=
X-Received: by 2002:a2e:9345:0:b0:24b:451:7ce1 with SMTP id
 m5-20020a2e9345000000b0024b04517ce1mr15912148ljh.258.1653395024801; Tue, 24
 May 2022 05:23:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220520141040.1136383-1-vincent@vinc17.net> <ca8d1d17-4bde-6728-fa15-8655f3e14c3c@gmail.com>
 <20220520161121.GA1112518@zira.vinc17.org> <f5fef324-4883-197e-1e3d-e3b5b36ceaf9@gmail.com>
 <20220520173043.GC1112518@zira.vinc17.org> <CACKs7VAsrEzneeu84quRvw5cRcio-j2rAWyHvQTNZf6_5CqWtg@mail.gmail.com>
 <20220524073937.GO1112518@zira.vinc17.org>
In-Reply-To: <20220524073937.GO1112518@zira.vinc17.org>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 24 May 2022 15:23:33 +0300
Message-ID: <CACKs7VDgwmDhiUkx5MXD8KQW5KGHiDqyrL9rHo_+_AMzRQSOvg@mail.gmail.com>
Subject: Re: [PATCH] printf.3: Document 'l' length modifier for a, A, e, E, f,
 F, g, and G
To:     Vincent Lefevre <vincent@vinc17.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, May 24, 2022 at 10:39 AM Vincent Lefevre <vincent@vinc17.net> wrote=
:
>
> Hi Stefan,
>
> On 2022-05-24 10:07:43 +0300, Stefan Puiu wrote:
> > On Sat, May 21, 2022 at 8:33 AM Vincent Lefevre <vincent@vinc17.net> wr=
ote:
> > > diff --git a/man3/printf.3 b/man3/printf.3
> > > index 4fa1f11f3..a231d626c 100644
> > > --- a/man3/printf.3
> > > +++ b/man3/printf.3
> > > @@ -503,6 +503,17 @@ argument, or a following
> > >  conversion corresponds to a pointer to
> > >  .I wchar_t
> > >  argument.
> > > +On a following
> > > +.BR a ,
> > > +.BR A ,
> > > +.BR e ,
> > > +.BR E ,
> > > +.BR f ,
> > > +.BR F ,
> > > +.BR g ,
> > > +or
> > > +.B G
> > > +conversion, this length modifier is ignored (C99; not in SUSv2).
> >
> > I'm not a native English speaker, but I think "Following a ...
> > conversion" sounds better, unless I misunderstand the phrase.
>
> "Following a ... conversion" would mean the opposite, while it is
> the conversion that follows the length modifier. Moreover, I wrote
> "a following ... conversion" because this is what is always written
> in this section on the length modifier, under the form "A following
> ... conversion corresponds to ...".

OK, now I think I understand what you mean. I guess "a following ...
conversion" (used all over that man page, as you said) sounds a bit
weird to me, though it might be proper English, I don't know.

Sorry for the noise.
Stefan.

>
> --
> Vincent Lef=C3=A8vre <vincent@vinc17.net> - Web: <https://www.vinc17.net/=
>
> 100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
> Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)
