Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E88D3D5097
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:11:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbhGYWa5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:30:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbhGYWa4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:30:56 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD392C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:11:25 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id c2-20020a0568303482b029048bcf4c6bd9so6920522otu.8
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=IwhFelYqOwGDPI3Qgl46nFY767l0f1S/CkHFd3aq6Jw=;
        b=vJATGAdk0Q7Xwd+j1VnXCN68UmMCbIFnyBwwI5Ow8jH1nbhwt97pIJrP7bwfNnF/Gm
         CS2JGSzD4CYDB42nI0J1omXJCGTG/l26yNMggjK8BL6e5HjxPdErUmqnUOlfVDDO/odT
         fFvRnss8prD00YaJAV0Qs49KopzXBN5D/JV2U5ybXNfJsVwaTAa0omJFElQrWjjcV0eO
         1vMecaA2b56aojYlYb8FU1ulsER6PsdJFcwYqpdWQDUZG13/wuF1LykAPqfxEXLdpQa7
         2uFoh6d43FZB/qzSM2KCbjGSv/oF/NpoOU2x+hJ4rGu0l4rNo4lLy3HvhPLcVt+bPDus
         5C6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=IwhFelYqOwGDPI3Qgl46nFY767l0f1S/CkHFd3aq6Jw=;
        b=q1TAf2qvkY2lr1AlOOFXHJ3ZcmyaHvqT+8ZLJh+Cp8vdW50vIN9VNZhlGZ0ndQ4uQx
         3fzqAOXj/pDWFXZjd+IUhiCva5XxDBzgsPdkQ/09zWkJ2dAXCKhi4Qw9yxGtVKlVWnwX
         LLnes2bvbzt0cHKBh+JNWUnYpFDgbAPCTiXryRM6KrY0O7QUlFc88ZslCZuZPJiFDulh
         8RxS9qFvED5y3g+98pKgPaVhrmUegZ/l2tDx6NeMBtfxZJ8f17+sYaPhbWPQXGLiikNa
         DQvVNk2vGg0uwcc8Wwz/EeSWXBH8lm1GYoiNbPsSznl7an7rLmmGpOXsNDRT5JR8y4Fw
         xTdg==
X-Gm-Message-State: AOAM530AyNhQJ69RjLb+ShAx96l+tCqxF42C8I8o7v6yNEaWoc+GIaXP
        UZhl2jA6Y18z3pYdmCAqq5GgrR87/WLPmrAzfVU=
X-Google-Smtp-Source: ABdhPJyCmELd4Epmb/m1C/iOPxyPfBO7EEkTlfUifYYi0KkAF8nf+6r2QMkpuyPP+4dAnNzSUWu49lOrb9W8J1cV0Pg=
X-Received: by 2002:a9d:2782:: with SMTP id c2mr9958792otb.323.1627254685110;
 Sun, 25 Jul 2021 16:11:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170822.GA16643@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170822.GA16643@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:11:13 +0200
Message-ID: <CAKgNAkgCSD_pwAf0-A2ywdZ1n0zCVc2DWLxegsE7_xCobXA06g@mail.gmail.com>
Subject: Re: Errors in man pages, here: open.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

This bug report appears to be obsolete. I can't find this error in the page=
.

Thanks,

Michael

On Sun, 25 Jul 2021 at 19:08, Helge Kreutzmann <debian@helgefjell.de> wrote=
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
> Man page: open.2
> Issue: same was =E2=86=92 same ways
>
> "When these APIs are given a I<dirfd> argument of B<AT_FDCWD> or the "
> "specified pathname is absolute, then they handle their pathname argument=
 in "
> "the same way as the corresponding conventional APIs.  However, in this c=
ase, "
> "several of the APIs have a I<flags> argument that provides access to "
> "functionality that is not available with the corresponding conventional =
APIs."
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
