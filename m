Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFD613D50A2
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:28:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbhGYWsB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:48:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbhGYWsA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:48:00 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3BE1C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:28:29 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 68-20020a9d0f4a0000b02904b1f1d7c5f4so7330744ott.9
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=Ku25Ml1HIJAcmnjpzBoK0XvyU+QSIaH4JUf7ZBhVXiE=;
        b=ifo/XybS0UglQ5PC49ZdsfW7AA48qO6gKQ9Q7LY7K4WFMoSLRmSCu0Csf1qSAAJLLp
         XUGnq5a5v4XGRHrsYcnW3rrnJsTaMpTUAcbQjtsetGZ/Sz37BN80UF0Mvjo+TRbxt3VP
         v2mpT4XTs6o2SmBaKqD1DTrq+6n4HRH9FatI9BmCFMOologcZOwHjHsL60LQmkouWeH3
         SABlb7HuT/EUVIoYLzgecf3qKA4JJhoJim5JgV81piY/P3HryNiOKAV2FZ9UBfYXUZML
         WdCBpTwCNEm5hfB7obcCrZIqljHHdpqW+XQsnFh2ZRuGDP4d8ZsEtY0XfTshFWR4mvL0
         jUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=Ku25Ml1HIJAcmnjpzBoK0XvyU+QSIaH4JUf7ZBhVXiE=;
        b=PWutz2FUjpyOzA1OPthRooX5PkclEtW6+lHTBamWF7j/EHrVz3mIVc94uiOS6jqtui
         U1h9+Vhqm/iKKU59xKwlSkPMX3gZh9ag+SFlthPxCq9gscgL/8v0BQ+NIIE8PxnDL2kZ
         w+HFEbYQa/nvkP3+ix5Ab5ASxWiWC+Zb+uxklaur3gia2suq71SUJgh8gRP76tOhYGuo
         mWCWE7Jbs9ocgXXJirtrc/gmRd2s98HIUgruH7CW5j/n2XcV/XeHJDyeYa4wYW7ZNDEm
         8SfWCB0aQ+c1ZgiTp5GYt5hxuZdc/1VDRJG0hi8/jcbPLPl6ZI3xY4gjiG9THldHWAiE
         c6Ww==
X-Gm-Message-State: AOAM5334J7fVG3oW93fkyHPONGl6i+OSH7C6VNp0CDks15S5WBbN7eAo
        aw2qbVNYQWTOKwwxUHLR0NzsZCzhpSB/0+YEOD4=
X-Google-Smtp-Source: ABdhPJw1TQ0wM8HNjjb3fxxzKg/PMuKWHnxkWn0e/WqzBfEROI23vSI60QLd1f1l2w4U6eSOauIJJ4kEgozq7MXp1tE=
X-Received: by 2002:a9d:2782:: with SMTP id c2mr9989483otb.323.1627255709103;
 Sun, 25 Jul 2021 16:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170812.GA16615@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170812.GA16615@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:28:17 +0200
Message-ID: <CAKgNAkj-23fM1UkZc=2vRn8q0OdX0k=d5x_eDux6hfYMfG6ZNQ@mail.gmail.com>
Subject: Re: Errors in man pages, here: mremap.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Helge.

you reported this bug in July 2020, and i fixed it already then.

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
> Man page: mremap.2
> Issue: Randolf =E2=86=92 Randolph
>
> "Your favorite text book on operating systems for more information on pag=
ed "
> "memory (e.g., I<Modern Operating Systems> by Andrew S.\\& Tanenbaum, "
> "I<Inside Linux> by Randolph Bentson, I<The Design of the UNIX Operating =
"
> "System> by Maurice J.\\& Bach)"
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
