Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8ECEB3D4FDE
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230393AbhGYTsk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 15:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230364AbhGYTsk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 15:48:40 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A36C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:29:09 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id o2-20020a9d22020000b0290462f0ab0800so3262309ota.11
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=Gh/Cu51xmt2ohPZMAT0fEFVgVpRKXzc9WGxKHOdaLIM=;
        b=dLUt0UiYLt4tHu7IIPfPMvwL4wcBA9DTEO24gC/3JXixhlatCK8UPUPWTrykflYYxH
         /cK3VDODqWgPakALwm6+EaB2S1mh3r2hTtl4gyn9KpgStWPTQalUVqByRxPRHPRtHnO9
         2rYlg9NSs6UEI/aTfQDpjEAyFCMeO/E5/4RDSzUaObbUlfkpHyq+uyKnyOfxOoFNbjhB
         CBKEqx26kL9/lEnj/BLnZZVO+BgCd/fvt4jeiq3LziAskT3P39/j7CIr0oukhJhgf3LH
         j1HsaC5O5ss0nzowSGiO+UneyGyRwdCcysIicCZkrNhQq+k/Y6ZeDl5X99wHW+dnba4T
         Uv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=Gh/Cu51xmt2ohPZMAT0fEFVgVpRKXzc9WGxKHOdaLIM=;
        b=oGbyvvfMTA+ca5B2sUMvS4CSfr8Ar5LQIvTf52xzhtMFyllWRJRrjXpFup/FsWE+F6
         io5VYkdnHnm/qI9Lx22bZJ1NsCkiKaNg9u99iCWKQhJ1o6tUG4BcmDF8vTQEWOgno3YY
         92XATcVtyATL/tb6OtS8Q1UdvfHIAP+3ynMzRCW1S8PsnDHKtAYPV/vm7e99phLjKLIk
         rABQ7hkPm1TpaisaEKBnyqLqAtYlR5pcix5sbsC0vztras/L5s0lTtwxX1IS0gP2aCFj
         gvMq4RDQ8sFKzjqHA1TGy+qznY7YdDQkedW2NKUM7SEA2F2XAY9SypZwVq3HadyzSoM3
         K9hA==
X-Gm-Message-State: AOAM530+QU5WIl3OELZkdfbtBr4i7LJmeo3PpE9Vizm2xxwrOSMAeB8x
        ZSk2vA1mSoukEgbM9Enx/I96EFU47yY+nBqIS8WHs6vOPqU=
X-Google-Smtp-Source: ABdhPJyf7p+9mNqiaSgx7df1lt5KYfXND+HkiW3TeQOor/8a3nC+/gGOfItaggHu0mOorXT1tZMLY53QR2pPEodsYzQ=
X-Received: by 2002:a9d:172e:: with SMTP id i46mr9594058ota.308.1627244948639;
 Sun, 25 Jul 2021 13:29:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170532.GA16265@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170532.GA16265@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:28:57 +0200
Message-ID: <CAKgNAkiHW4fNROsYdCgqyBkTrjHb=wud86++a1HCVimxj4y12Q@mail.gmail.com>
Subject: Re: Errors in man pages, here: atanh.3
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

Fixed as 'is set'. Thanks for the report.

Cheers,

Michael

On Sun, 25 Jul 2021 at 19:05, Helge Kreutzmann <debian@helgefjell.de> wrote=
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
> Man page: atanh.3
> Issue: as set =E2=86=92 was set
>
> "In glibc 2.9 and earlier, when a pole error occurs, I<errno> as set to "
> "B<EDOM> instead of the POSIX-mandated B<ERANGE>.  Since version 2.10, gl=
ibc "
> "does the right thing."
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
