Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA112553DD9
	for <lists+linux-man@lfdr.de>; Tue, 21 Jun 2022 23:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353956AbiFUVfd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jun 2022 17:35:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351773AbiFUVfb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jun 2022 17:35:31 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 922C7CE12
        for <linux-man@vger.kernel.org>; Tue, 21 Jun 2022 14:35:29 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id n15so5381636ljg.8
        for <linux-man@vger.kernel.org>; Tue, 21 Jun 2022 14:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OGGsyXCH+lEZMNT1SRc5zeo/8QhtY/4UC9DOaHl1vQg=;
        b=mKNzPE61eCuw8V1076gADOvwrGoZY+dNhEHPDQmry/FZXtprok1wtBhek7oXnUDxAf
         8Q0TE3c7nBJ/z0ZJiFKCxuJusIY6C8zhViUaJ7jvstR1hQCMVNR+uNNKREqSS/jEFFpH
         ApbfypnsqLrSGq1Ibj80W+ZYiEGBWt09DgUqjMgi0JTozmBZw/PzbcCpXSvLHe+LE+hp
         tclFNuH9oFM3CYqAMVwdZn+2brUHhDyOeTZ10BTY0+dDYoDYM4OPfiOyTej9LRVgVJpI
         /IEax2xVYFOKUD8+zmlz7KdygMknq6AlUHGBebnSw51HTV1eSb85biwzkf4gQqjp5uXo
         B4nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OGGsyXCH+lEZMNT1SRc5zeo/8QhtY/4UC9DOaHl1vQg=;
        b=fJYM2NlKtbIB+/236e0p15UEOPNixXx+ZK5eJrL3hgMJdqTbfgdcmuKtnju+j+0Sp9
         sniC2c9UmVVlu7DyvtDRUZv4rAbWGCRC1KkfMVZ123O/E4lTuuriNMsXK+adLzHhKJp6
         q0lTjoAvwykeh/Mnw/x3wNTjavxYv/BTVwvcE4Ql66aVQDelOZ3EYF0/O1TN/NQjTPXj
         IW1Wdmqbx2vVpamDxRkB3t/1m3jpjLuLy3dilcihnt8L3xudGqyNEsmeMnXeOav3FKD/
         WqRpuCHB1zdUlQke0gdziQ9RGepVI1CjWKnjS3P0kyroog1amy6DkmETbHQ4q5w/k/z5
         yQbA==
X-Gm-Message-State: AJIora/16tW6m54KnMPJLvsTRhnEa5KiTIsxKhufC7H0eF8z/Vl9ovXA
        5L/g2dtbk2yp//zfsrJtIjLXNjhAzver6gIPjfQ=
X-Google-Smtp-Source: AGRyM1sh83lnXNya0YYRX5qmZWOpf0tgYA/rL0XbOtlH8lJyzxCp07Mq909IL+gCmleM0aWi3pPt98EPnf3RSPTKg00=
X-Received: by 2002:a05:651c:160f:b0:25a:756c:707f with SMTP id
 f15-20020a05651c160f00b0025a756c707fmr83699ljq.228.1655847327654; Tue, 21 Jun
 2022 14:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com>
 <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
 <CACKs7VDJx1QEkgmb2vJzhAbNwbH9xjd_-rhD+eBSbtBk9-PzAA@mail.gmail.com> <20220620152317.nq4ehd5gtjmjxx2m@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220620152317.nq4ehd5gtjmjxx2m@tarta.nabijaczleweli.xyz>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Wed, 22 Jun 2022 00:35:15 +0300
Message-ID: <CACKs7VBN8N4mUUFFxkL9jj1C+Uc1qvmwTp5xR+--OFb4LXo21w@mail.gmail.com>
Subject: Re: [PATCH v2] environ.7: align PWD with the standard
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
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

On Mon, Jun 20, 2022 at 6:23 PM =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijacz=
leweli.xyz> wrote:
>
> Hi!
>
> On Mon, Jun 20, 2022 at 11:55:18AM +0300, Stefan Puiu wrote:
> > On Mon, Jun 20, 2022 at 2:40 AM =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabi=
jaczleweli.xyz> wrote:
> > >
> > > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczlewel=
i.xyz>
> > > ---
> > >  man7/environ.7 | 8 ++++++--
> > >  1 file changed, 6 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/man7/environ.7 b/man7/environ.7
> > > index 019c5a25a..24446c709 100644
> > > --- a/man7/environ.7
> > > +++ b/man7/environ.7
> > > @@ -158,8 +158,12 @@ used by
> > >  to find manual pages, and so on.
> > >  .TP
> > >  .B PWD
> > > -The current working directory.
> > > -Set by some shells.
> > > +Absolute path to the current working directory;
> > > +required to be partially canonical (no
> > > +.I .\&
> > > +or
> > > +.I ..\&
> > > +components).
> >
> > If any shell decides to ignore that part of the spec, is there
> > anything preventing them?
> It no longer being a valid shell (if on startup) or providing an invalid
> cd built-in (when cding), from the stand-point of conformance to both
> the standard and historical shells.

My expectation from the Linux manual pages is that they document
behavior I'm likely to encounter in the real world on Linux, with
various libcs etc. Specs can be misread, misunderstood, ignored, or
can be wrong sometimes (see the discussion about fork being required
to be async signal safe, for example, the RH page here:
https://access.redhat.com/articles/2921161). So if I write software
that, say, does getent("PWD"), it's useful to know if there are cases
where that might not work. Even if POSIX requires PWD to be set,
that's not reassuring when my program crashes. That's why I asked if
you checked some shells to see what they do.

Also, I see there's already environ.3p for the POSIX version.

>
> > I would make it clear in the text that this
> > is a spec requirement, not a practical guarantee (e.g. "required by
> > <spec> to be ...").
> Those are one and the same, that's the point of SUS/POSIX
> (and conformance to historical implementations).
> Are you aware of one or are you just concern-trolling?

I don't know of a shell that doesn't set PWD, but since you said the
previous comment ("Some shells set it") was wrong, I assumed you had
checked that. I did try bash and busybox sh and they seem to set it,
but there are (quite) a few other shells out there.

I don't know why you think that my question is some kind of trolling.
You can look up my contributions in the mailing list archive. It's
been a while since my last patch to the project; nowadays I follow
some of the mailing list discussions in my spare time and occasionally
chime in on people's patches. I get things wrong sometimes, of course,
but your reply is the first one that is defensive (and somewhat rude,
I would say). Probably a good indication that I need to find other
uses of my (spare) time.

> Obviously, pretty much no part of this manual applies to csh
> because csh is its own 2BSD brand of insanity (in this case
> largely because it predates V7 (3BSD), and, hence, the environment).
> csh users understand they use a non-shell,

Well, this is the environ.7 man page, mostly useful to programmers
AFAICT, who don't have much control over what people use as their
shell. If they can set csh as their login shell, why should I assume
they won't? People have many reasons to choose the shell they run -
distro default, they like some features, speed, company policy, legacy
systems... Not sure POSIX compliance is high on that list.

Heck, Linux is not fully POSIX-compliant (see
https://linuxhint.com/is_linux_posix_compliant/), does that make it a
non-OS?

Regards,
Stefan.


> it's not mentioned here because why would it be?
> It's not mentioned anywhere else.
>
> Best,
> =D0=BD=D0=B0=D0=B1
