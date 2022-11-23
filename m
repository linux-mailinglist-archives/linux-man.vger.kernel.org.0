Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FC90635F0A
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 14:12:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238716AbiKWNKu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 08:10:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237958AbiKWNKU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 08:10:20 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 603954509C
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 04:52:46 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id me22so25987456ejb.8
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 04:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=09o5m00smt5LKhS/bjCs2z3U5empIAA4jwgE6N2RksQ=;
        b=c6OrujWTP0V0KU1dWU1swsmyR4hO3aVGILX9x1HYzPnCedw7MFus9aeo4vvO9/p2eC
         YWl9ISdHlfwkl/7Rd+nmK2yoTxgFBYl3y2FBNPi/BGjZCag9E8ENWM3YZfgKCIHtVAmk
         m/9ACSsYj2NoMkgOXDxSWX40yKHYhs+b37SU+x6d1v8eMqJIkAqXfnO33kmUEjZf5liT
         LfkUTkSLHKU5WEYuRsAeymKmtyPqdBsrFpEFIzR7ilj8n3fJDBPmveTvGIjUlDsPDLJj
         bjBuov7cMqjrpbDsXY1YRlGbZEAxosCCWIbfrQBAe+3/H2PSGZ4+R8mJCXG8cZDDJeZ8
         1t9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=09o5m00smt5LKhS/bjCs2z3U5empIAA4jwgE6N2RksQ=;
        b=ZFJiE5scGW1pKNsn/uuCXyxfpVTVkQrI0DJ+zGCErTBha2N3jRSZlo2s0KEo8eMDYb
         z5Mbf6trnvgZeJPvwgNAnMg7cwWYSXOp9RMlrP0RIxo0v7Xj5PGLK/AH5hklu4nyB0rt
         LKuy707YIrjACwmZ7GUIURNAccYJnkuuKYCCdoSoKdvfbX7ziWATlpd1kAtgAYLHqIjR
         CzO8aPMJ7sjYbsUw07o3lG3H/a2ko8ZN/vUz4rPNsDevVu1DWkJ6zOfjKhOFpHinfAVu
         Fmgu5QWXJajtVdq4MuKx8jpUsTPTBpXOu/w+g4XAiKFJWxKOj45wG5el+7ayr6agGuqi
         n+AQ==
X-Gm-Message-State: ANoB5pkxqah2catbWQmbggXXAM5qVNwtFIvypCiGw3+XUfm5jxPYuZs+
        wSwPcpqxEeHkRjDgn4zShh9vrxMZAHSNQ0Mt8T0=
X-Google-Smtp-Source: AA0mqf58zB/LAZjc4WWzSLMCFSg4tjSquuCnMVRMViIm+yt7G/8OvNZpfnVUmVNXcna4Lf+dbf2a9yV2iz4d/JePns8=
X-Received: by 2002:a17:906:7215:b0:78d:a7f0:e232 with SMTP id
 m21-20020a170906721500b0078da7f0e232mr23554994ejk.9.1669207964739; Wed, 23
 Nov 2022 04:52:44 -0800 (PST)
MIME-Version: 1.0
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com> <Y31XOPOsB932l0cd@thunder.hadrons.org>
In-Reply-To: <Y31XOPOsB932l0cd@thunder.hadrons.org>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Wed, 23 Nov 2022 14:52:32 +0200
Message-ID: <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com>
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is available
To:     Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrew Clayton <andrew@digital-domain.net>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Wed, Nov 23, 2022 at 1:39 AM Guillem Jover <guillem@hadrons.org> wrote:
>
> Hi!
>
> On Thu, 2022-11-10 at 12:36:47 +0100, Alejandro Colomar wrote:
> > On 11/10/22 01:13, Andrew Clayton wrote:
> > > While looking at which systems provide memmem(3) I have been able to
> > > discern the following:
> > >
> > >    musl libc since v0.9.7
> > >    bionic since Android 9
> > >
> > >    FreeBSD since 6.0
> > >    OpenBSD since 5.4
> > >    NetBSD
> > >    macOS
> > >    Illumos
>
> > > For macOS and Illumos I checked the memmem(3) man page on those systems.
> > > For the rest there are links below to on-line man pages or commit logs.
>
> > > +FreeBSD 6.0, OpenBSD 5.4, NetBSD, macOS & Illumos.
>
> > For the commit message, it's interesting to note macOS and Bionic, for
> > speleology purposes.  However, I'm opposed to adding them to the page itself
> > because of the following:
> >
> > -  macOS is not free software.  I refuse to reference nonfree software on
> > this project.
>
> I understand where you are coming from, and from a full system PoV,
> it's very true that macOS is non-free. But the lower layers of its
> stack are free software (at least according to the FSF and OSI), such
> as its kernel (Darwin), or its libc (where memmem() is implemented):
>
>   https://opensource.apple.com/source/Libc/Libc-1439.40.11/
>
> among others.
>
> Similar with Solaris and Illumos (but with the CDDL, MIT, BSD), AFAIUI.
>
> > -  Android is not a real Unix system, in that you can't even program in C in
> > there, unless you're Google or have hacked your system.  It's not friendly
> > to us programmers, so we don't need to be friendly to it.  I don't want to
> > be cluttering the pages with information that is irrelevant to normal users.
>
> I'm assuming bionic is being used in some of the Android free
> alternatives too, but then I'm not sure how usable for programming those
> are either. And, well musl libc is not a real Unix system you can program
> against either. :)
>
> In any case I also find it useful to have this kind of portability
> information when deciding what to use in code. But can understand the
> reluctance to include such references, at least if thought out as the
> entire system. Perhaps thinking about these merely at their kernel or
> libc level would make including information about some of them more
> palatable, given that standalone they are free software? So perhaps
> an option is to instead refer to their specific components, say
> "bionic libc X.Y", "Apple Libc M.N.O" or similar.

Not sure if it's the job of Linux man-pages to document when other
OSes started supporting certain APIs. That info has to be maintained,
updated etc. People can always read the man pages of other systems,
right? Maybe it's worth only pointing out when an interface is
Linux-only, or the Linux implementation diverges significantly.

For musl and other libcs, I think the man pages already document some
instances where their behavior diverges from glibc.

Just my 2c,
Stefan.

>
> Thanks,
> Guillem
