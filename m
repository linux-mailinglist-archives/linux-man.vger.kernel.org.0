Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B83423D509C
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:18:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbhGYWiN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:38:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbhGYWiM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:38:12 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DB2AC061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:18:42 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id o2-20020a9d22020000b0290462f0ab0800so3615919ota.11
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=ToNI0kwPHrRoRVwgxPsZVs5xFSaAvA1jVpouEas9ir8=;
        b=qEMr3YqHmXygvE1B5FdR+10fJBCkwGCVqEtGQIuwykccGsOD5uNJLqOyGvRK6ocDlB
         os2O7WLsGiX64bIbkrIiaVbDrP00c7JoiLpPCLr1INQ/CciLRYnT388LeJbbQD5av/re
         R0/rdRQufg93pg7m6RPgn2oTv0veWWeSFueg/k7vvz7uv0rLz8Z2dztXDXn4BRF4/xpy
         3mFMfT+TY6xW8Y+8CeTmI4qUQ4i5YCRpTGxqloIPl0orKujyR9NVDClRe7clImtfNwS+
         ObK+UJ+9QeFTlTeao8i6VdVarS5ZcxczPeCAM/CCKu4ID/6oDF7pQ7c7uGNBFTvfDWnW
         SaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=ToNI0kwPHrRoRVwgxPsZVs5xFSaAvA1jVpouEas9ir8=;
        b=DWAE3uqiAltXM0E+wHLQDyb+Ka1fZhzxTqTzPUkyl0m3ckpHA4Kx0hVBjSyw6yoqTC
         27/+6ERp07UXheLd8fcVYVOn/ueyYGBFsrVVqmmFdyGn6eIcuH+865Wf6OW8Ylx+l1Dp
         wgN9uLP6AzA00DYpmqM06VfGOuqrNFImThJxKIfxPLRDFXHh4w8TO0Ra0nRPYcDIlvKm
         jIjaNX7I7iQ6Rsljd5n1wmVC2/B9BrONQxImPnyCNjdYgE4ZlrSpK14crPvGFkEqp5Zn
         QVNcq2mezTBAEFH95VgyEXzC1z22Tc9o/AEtu1qtFAckhkO+DfegPT/Vh74rwve9xnlL
         0r9g==
X-Gm-Message-State: AOAM533CwJGu99dnhFjLhGYnF9uL2/5E1CELvaA9cEoRy550+VjHiIR+
        VeAJxjaVHuaMhrWqwTke53ABFSB0tOER88NzhDI=
X-Google-Smtp-Source: ABdhPJyc9PPSeirz3wIX4fB50X4YZhK96rYmtSQWhhUMBh2xBrNYcVqUpIQWSuRBCsnv0uvm7MFmaDsZXLutx2kOo3I=
X-Received: by 2002:a9d:172e:: with SMTP id i46mr9881234ota.308.1627255122076;
 Sun, 25 Jul 2021 16:18:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170726.GA16503@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170726.GA16503@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:18:30 +0200
Message-ID: <CAKgNAki_BpL-qGX=mfYJiWLz-AoDTy2VK9uvFGjQSnYi31b_eA@mail.gmail.com>
Subject: Re: Errors in man pages, here: ioctl_tty.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fixed as suggested. Thanks,Helge.

Cheers,

Michael

On Sun, 25 Jul 2021 at 19:07, Helge Kreutzmann <debian@helgefjell.de> wrote=
:
>
> Dear Linux manpages maintainer,
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including Linux
> Manpages) as well for a large variety of target languages.
>
> During their work translators notice different possible issues in the
> original (english) man pages. Sometimes this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a
> convention not held up and sometimes we simply do not understand the
> original.
>
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once in a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
>
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to convert into
> your source format.
>
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
>
> I'm now reporting the errors for your project. If future reports
> should use another channel, please let me know.
>
> Man page: ioctl_tty.2
> Issue: Solaris, Linux =E2=86=92 Solaris and Linux
>
> "(SVr4, UnixWare, Solaris, Linux treat I<tcsendbreak(fd,arg)> with nonzer=
o "
> "I<arg> like I<tcdrain(fd)>.  SunOS treats I<arg> as a multiplier, and se=
nds "
> "a stream of bits I<arg> times as long as done for zero I<arg>.  DG/UX an=
d "
> "AIX treat I<arg> (when nonzero) as a time interval measured in "
> "milliseconds.  HP-UX ignores I<arg>.)"
>
> --
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
