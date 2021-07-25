Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A60C33D509D
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:19:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbhGYWjM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:39:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbhGYWjL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:39:11 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B9EEC061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:19:40 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id v8-20020a0568301bc8b02904d5b4e5ca3aso7459072ota.13
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=eRw4DPz01cQSym2hsb81N800VlxQjvlCYUUgBoJlxyE=;
        b=O+BB+LcSF3HFLid6TzzEf6z3zCCdVsJ+xTNxAuQqaa0/l/NM/UBBWtcL+aJ5gspsyj
         ArmKuWwmorEAwVJqJ7twE0/bfRpO2MNL3tzABkCx6wxNPxrBwAg3GeIbLd4qKLk1TNRC
         e41TFQTEqhBywxnajZIcCQ7S6diAXaRupKqDnJamWYoi/6MLHel33NiTIcdNUKps86w7
         l3/MpdS5SmsIusHYiOUE7ZF2wxuaVtHtudS9elzd3GI3zFOa6UMFpAvThBnybwGLccZ4
         khjWUPdLC66+ByCFFj9eELYdrOk7yp412/59hs8gPoEP2TI1XME5gfG2PbzhqSqj7KM5
         BtDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=eRw4DPz01cQSym2hsb81N800VlxQjvlCYUUgBoJlxyE=;
        b=h0CQIkpM/y1yPk4agZfAllffI6IwMs2Q8cJu3DWceOsG5qlFUKSXJN6YNL8krv3Y9W
         d+UYSW+np52Onb2XLFUAoHsB/P2OzCJPGAB2nfUBTejz5Wx2WaTbJ6qsol9hi1uuwRXu
         wUGN2Kg3yqxFOLmkh6+U1aSvKIjP1pVHZL77AQ5JxKJYqjVGQG6K9bxQ8SoQ3rTfMun3
         ACjCDg8iyrwHVomX2FMpEWZWXVfoGm1EgAidTIxpJL+3us1PwbHKBG3qHux0Dwjhvz8S
         TelJiunGSXed4BZERuEq6oSSKASc5Aux3RVK3mloNFGTbatPv0Mf5BbXI5xwr3Ly4nnI
         Wv9Q==
X-Gm-Message-State: AOAM530FikQZYh6NQl1XUiCxUaU/Tmm8OL+3R9zyFWHJUAFdRNZ4qQMw
        ShSfbPVkPfreTznOaU141XwlNkR5+CuhY6g9u9U=
X-Google-Smtp-Source: ABdhPJykFwLz/ok5FGvaIcpC8FZNx5KCCwm8m46i5BTtXlFVVzH6y1iEjnHc/0DjAXens6GnupWK8PaMP6W66xNPPZQ=
X-Received: by 2002:a9d:2782:: with SMTP id c2mr9974664otb.323.1627255179951;
 Sun, 25 Jul 2021 16:19:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170726.GA16503@Debian-50-lenny-64-minimal> <CAKgNAki_BpL-qGX=mfYJiWLz-AoDTy2VK9uvFGjQSnYi31b_eA@mail.gmail.com>
In-Reply-To: <CAKgNAki_BpL-qGX=mfYJiWLz-AoDTy2VK9uvFGjQSnYi31b_eA@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:19:28 +0200
Message-ID: <CAKgNAkgYOk2GQTHh+z2A08bO_W-icg8V4qyhQr9TytMD=7nA6Q@mail.gmail.com>
Subject: Re: Errors in man pages, here: ioctl_tty.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Helge. Fixed.

Cheers,

Michael

On Mon, 26 Jul 2021 at 01:18, Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Fixed as suggested. Thanks,Helge.
>
> Cheers,
>
> Michael
>
> On Sun, 25 Jul 2021 at 19:07, Helge Kreutzmann <debian@helgefjell.de> wro=
te:
> >
> > Dear Linux manpages maintainer,
> > the manpage-l10n project maintains a large number of translations of
> > man pages both from a large variety of sources (including Linux
> > Manpages) as well for a large variety of target languages.
> >
> > During their work translators notice different possible issues in the
> > original (english) man pages. Sometimes this is a straightforward
> > typo, sometimes a hard to read sentence, sometimes this is a
> > convention not held up and sometimes we simply do not understand the
> > original.
> >
> > We use several distributions as sources and update regularly (at
> > least every 2 month). This means we are fairly recent (some
> > distributions like archlinux also update frequently) but might miss
> > the latest upstream version once in a while, so the error might be
> > already fixed. We apologize and ask you to close the issue immediately
> > if this should be the case, but given the huge volume of projects and
> > the very limited number of volunteers we are not able to double check
> > each and every issue.
> >
> > Secondly we translators see the manpages in the neutral po format,
> > i.e. converted and harmonized, but not the original source (be it man,
> > groff, xml or other). So we cannot provide a true patch (where
> > possible), but only an approximation which you need to convert into
> > your source format.
> >
> > Finally the issues I'm reporting have accumulated over time and are
> > not always discovered by me, so sometimes my description of the
> > problem my be a bit limited - do not hesitate to ask so we can clarify
> > them.
> >
> > I'm now reporting the errors for your project. If future reports
> > should use another channel, please let me know.
> >
> > Man page: ioctl_tty.2
> > Issue: Solaris, Linux =E2=86=92 Solaris and Linux
> >
> > "(SVr4, UnixWare, Solaris, Linux treat I<tcsendbreak(fd,arg)> with nonz=
ero "
> > "I<arg> like I<tcdrain(fd)>.  SunOS treats I<arg> as a multiplier, and =
sends "
> > "a stream of bits I<arg> times as long as done for zero I<arg>.  DG/UX =
and "
> > "AIX treat I<arg> (when nonzero) as a time interval measured in "
> > "milliseconds.  HP-UX ignores I<arg>.)"
> >
> > --
> >       Dr. Helge Kreutzmann                     debian@helgefjell.de
> >            Dipl.-Phys.                   http://www.helgefjell.de/debia=
n.php
> >         64bit GNU powered                     gpg signed mail preferred
> >            Help keep free software "libre": http://www.ffii.de/
>
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/



--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
