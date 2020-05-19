Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7915A1D9676
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2020 14:40:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728757AbgESMkj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 08:40:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726471AbgESMkj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 08:40:39 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15FF7C08C5C0
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 05:40:39 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id x20so11650539ejb.11
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 05:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=xxxOsjVfQ2ZvDCEvY9q8N558sLX//NUzi/IpACjj1dU=;
        b=mpuv/lCp2yI+N2bTPrfJu9dIMB8t8DbVurELxhjAUlGNU9Gbt8UG+4Bqrd6yP0Rvjt
         1fMslCRrL/jge62imRbMBLgI5BN+aJ9cqxHz7EKVA6S33uH2thPUtJ18e5aI4mNfNXZm
         XUbU0sR3Vbbio4K5zx6G9jf0ikNkl3V8LeWLZp089GmOCAm74mxG6GZcX1dRD4N360EE
         nTAp9TR+aVk4d/5n0OhjLyGv9Xqs+EAVCQX2QNP24kNy/zTNHpFjX2qcdL/mlVN++ruW
         hO1P6/Xo0wtDxLiRZD9RNb97Yl0oskVPpAMvEzl8A5idoWrqnJPzopRDLqjp/wODHuoh
         mlXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=xxxOsjVfQ2ZvDCEvY9q8N558sLX//NUzi/IpACjj1dU=;
        b=UDJdkcx1877a9ZFgTwsNpmLYpWvktXNtAfCyVswR+aShNTNlcVgzRFWjDnM4PC6csT
         TASmtlBFnNqpcXIxP3S05USDF2ARHG3936SyNIhyhnxzHwbd4tgdwUgMIAA4LGjnLs8E
         dI06SHfStaYs6wU1slwr2Rewm0w1KQGJU8VnEHUkK/PWQkKSHqc/ZJvxs0JschdA3+FZ
         uhtmhLbEq3Ya1RxeKMyzA2rrHM4MRB/H1fK5WVwP/vlfRHvfA3tl9dSVGiJAvP8JrPos
         5PHHptwrt8/k9AxnU9BSSOkGvSlqqviaGBc6o+RF+rxC8hyTIjrgugOjIPmTnyn3srDL
         nNzQ==
X-Gm-Message-State: AOAM530E5dKWo0Sko9pby2PcMngmTOC3F2HE1xfFT7jRcSDffZeQBCOi
        04riGgQoyEKkPxV0Bqf1CvCFis38dRXpX9evquDmZCaG
X-Google-Smtp-Source: ABdhPJwG90qjCDNUaCFqEcoLHLSQIx4Vu/W6jnKwugiZvuVmW3mtXXJA7CWkQ42J3f62ybojvnkMlOiOA5YixjJNMIQ=
X-Received: by 2002:a17:906:2dc8:: with SMTP id h8mr19235214eji.108.1589892037658;
 Tue, 19 May 2020 05:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <33544f6a-5983-ed08-b2f1-a7a348c411f6@deloquencia.de>
 <8bbe0eae-b4a0-3b49-84a7-245b46eb9eff@gmail.com> <69e7cf2a-e0d3-bc1d-0bc7-81111cf80bbc@deloquencia.de>
In-Reply-To: <69e7cf2a-e0d3-bc1d-0bc7-81111cf80bbc@deloquencia.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 19 May 2020 14:40:26 +0200
Message-ID: <CAKgNAkhnRiowDQmjuqLrgHbgTbR-EkjokZLJPP-+7PrHtTDirA@mail.gmail.com>
Subject: Re: [PATCH] hier.7: Updating from FHS 2.3 to 3.0
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
Cc:     linux-man <linux-man@vger.kernel.org>, glperkins@lit.edu
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,

On Tue, 19 May 2020 at 14:24, Thomas Piekarski
<t.piekarski@deloquencia.de> wrote:
>
> Hello Michael,
>
>
> On 19.05.20 11:50 AM, Michael Kerrisk (man-pages) wrote:
> > On 5/18/20 8:07 PM, Thomas Piekarski wrote:
> >> Adding description of new directories (/run, /usr/libexec,
> >> /usr/share/color,/usr/share/ppd, /var/lib/color), stating
> >> /usr/X11R6 as obsolete and updating URL to and version of
> >> FHS.
> >>
> >> See https://bugzilla.kernel.org/show_bug.cgi?id=206693
> >>
> >> Reported-by: Gary Perkins <glperkins@lit.edu>
> >> Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>
> >
> > The patch looks good overall, though I have not checked the details
> > in FHS 3.0. Are the changes in the patch the sum total of the
> > differences between FHS 2.3 and 3.0?
>
> Yes, the patch contains the differences between FHS 2.3 and 3.0.
> A few directories have been added and the directory /usr/X11R6 is not
> listed anymore.

Thanks for the clarification.

> On second thought now I am not so sure about the way how this un-listing
> of /usr/X11R6 is mentioned in the patch.
>
> At the moment it is 'obsolete since FHS 3.0', we could write 'dropped
> since FHS 3.0' or 'not mentioned in FHS 3.0 anymore' instead.
>
> What do you think about such rephrasing? Or should it be just deleted
> from the manual page? How have been such updates (where something in
> documentation is silently not mentioned anymore) handled in the past?

I think it would be sufficient to say something like "present in FHS
2.3, removed
in FHS 3.0". Shall I make that change, or do you want to revise youe patch?

Thanks,

Michael


> >> ---
> >>
> >> man7/hier.7 | 28 ++++++++++++++++++++++++----
> >>    1 file changed, 24 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/man7/hier.7 b/man7/hier.7
> >> index dab9483d7..03fe61c71 100644
> >> --- a/man7/hier.7
> >> +++ b/man7/hier.7
> >> @@ -161,6 +161,12 @@ This pseudo-filesystem is described in more detail in
> >>    .I /root
> >>    This directory is usually the home directory for the root user (optional).
> >>    .TP
> >> +.I /run
> >> +This directory contains information which describes the system since it
> >> was booted.
> >> +Once this purpose was served by
> >> +.IR /var/run
> >> +and programs may continue to use it.
> >> +.TP
> >>    .I /sbin
> >>    Like
> >>    .IR /bin ,
> >> @@ -186,7 +192,7 @@ It should hold only shareable, read-only data, so
> >> that it can be mounted
> >>    by various machines running Linux.
> >>    .TP
> >>    .I /usr/X11R6
> >> -The X\-Window system, version 11 release 6 (optional).
> >> +The X\-Window system, version 11 release 6 (obsolete since FHS 3.0).
> >>    .TP
> >>    .I /usr/X11R6/bin
> >>    Binaries which belong to the X\-Window system; often, there is a
> >> @@ -296,6 +302,10 @@ which usually are not invoked directly.
> >>    More complicated programs may
> >>    have whole subdirectories there.
> >>    .TP
> >> +.I /usr/libexec
> >> +Directory contains binaries for internal use only and they are not meant
> >> +to be executed directly by users shell or scripts.
> >> +.TP
> >>    .I /usr/lib<qual>
> >>    These directories are variants of
> >>    .I /usr/lib
> >> @@ -385,6 +395,10 @@ or
> >>    or
> >>    .IR /usr/man .
> >>    .TP
> >> +.I /usr/share/color
> >> +Contains color management information, like International Color
> >> Consortium (ICC)
> >> +Color profiles (optional).
> >> +.TP
> >>    .I /usr/share/dict
> >>    Contains the word lists used by spell checkers (optional).
> >>    .TP
> >> @@ -421,6 +435,9 @@ same OS.
> >>    .I /usr/share/nls
> >>    The message catalogs for native language support go here (optional).
> >>    .TP
> >> +.I /usr/share/ppd
> >> +Postscript Printer Definition (PPD) files (optional).
> >> +.TP
> >>    .I /usr/share/sgml
> >>    Files for SGML (optional).
> >>    .TP
> >> @@ -523,6 +540,9 @@ Variable game data (optional).
> >>    .I /var/lib
> >>    Variable state information for programs.
> >>    .TP
> >> +.I /var/lib/color
> >> +Variable files containing color management information (optional).
> >> +.TP
> >>    .I /var/lib/hwclock
> >>    State directory for hwclock (optional).
> >>    .TP
> >> @@ -635,11 +655,11 @@ this directory holds temporary files stored for an
> >> unspecified duration.
> >>    Database files for NIS,
> >>    formerly known as the Sun Yellow Pages (YP).
> >>    .SH CONFORMING TO
> >> -The Filesystem Hierarchy Standard, Version 2.3
> >> -.UR http://www.pathname.com\:/fhs/
> >> +The Filesystem Hierarchy Standard (FHS), Version 3.0, published March
> >> 19, 2015
> >> +.UR https://refspecs.linuxfoundation.org/fhs.shtml
> >>    .UE .
> >>    .SH BUGS
> >> -This list is not exhaustive; different systems may be configured
> >> +This list is not exhaustive; different distributions and systems may be
> >> configured
> >>    differently.
> >>    .SH SEE ALSO
> >>    .BR find (1),
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
