Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E52513D4FE2
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:30:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhGYTtx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 15:49:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230439AbhGYTtv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 15:49:51 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2DE9C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:30:21 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id q6so8565697oiw.7
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=Q2Pe7xb1yNJJSg7WWpwFujeJiETPHSbRLq+1obojYfs=;
        b=Y4IltEHy5LsGY3JbqHgnrBaDG+cktbXy/43tsgeA9zH5dnF3BNK3m2frKphAJfIqk8
         5ZRgIUUY2YXgRQ2zYnuaFR8OMm9iS6MJbOryohW6WkOil/GoznjGDH1oTmoWIPIs5lcR
         ENqOpodr+o6I1cOf/Tn31vT6q23re5RPiceyRdV9f0gX1vaz8yuX9rh7Be8ktt2a4zr1
         DFYOiX2ATsFt2k4ANsUFi6shbbDnMcPsXXuiSxW5MxocCPYWjMC/C0knc9ndg/OAJQPz
         v2fiEeycAJpzF0ef96UlsG6Oebdf11utHtvtSarWXAKKkNYttJG0V5ro6DJtoJdjHxRr
         4mYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=Q2Pe7xb1yNJJSg7WWpwFujeJiETPHSbRLq+1obojYfs=;
        b=TrxG1MgcHx4V2ydxeMhEL8eHviwstLs7li5HxuVBGP5G+WOWtCiEM33DrfayurFYeL
         JVacdLxBtgQ5TR5wvLDs8wYieR8JESLXBxztU51XqPg5eVsbET3ysdE2nGxGA6PeSLjD
         iE/vB5HNKz1KR1jEzZ4b1k7dw+GOmmcbVRUEoCQEEosESXEZIz3lRRjvE6ywYjrP6nX4
         K7blD1dMXqjq3vBC/yjlwT3PHswRC5RV3tLxxroYtsT9cCQTml9ami3RajRzlWqR2QJm
         Fza2K5fHTfl/hemmClir43RHsa8H+ryJPLnvbJqVAM28dSluJlLDl+qd1uqGxdcEm/ST
         IQtg==
X-Gm-Message-State: AOAM530dU/IeyKbp/Er5gGQePYo6DeBKX8Vk7Lgt5qogPg2rv9bls3+G
        wr3EpIMNw77KpkWAiLPzUZwTXquGPQ1mUypw5gM=
X-Google-Smtp-Source: ABdhPJyTkWvO6yIPTt+lQEKs01OID0hYpfRGpxIrpgDxr/X+x+BmHAT+dCBuLoeYd2g27q0cnjl9AJ9GLgrHitYpNKs=
X-Received: by 2002:aca:1206:: with SMTP id 6mr9005939ois.148.1627245021118;
 Sun, 25 Jul 2021 13:30:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170552.GA16301@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170552.GA16301@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:30:09 +0200
Message-ID: <CAKgNAkhgXHXpwpe8J18_-3OjXD4iONSB3Q90igtdjrfPTotFuA@mail.gmail.com>
Subject: Re: Errors in man pages, here: bzero.3
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Helge.

Fixed as you suggest.

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
> Man page: bzero.3
> Issue: to zeroed =E2=86=92 to be zeroed
>
> "The B<explicit_bzero>()  function addresses a problem that security-"
> "conscious applications may run into when using B<bzero>(): if the compil=
er "
> "can deduce that the location to zeroed will never again be touched by a =
"
> "I<correct> program, then it may remove the B<bzero>()  call altogether. =
 "
> "This is a problem if the intent of the B<bzero>()  call was to erase "
> "sensitive data (e.g., passwords)  to prevent the possibility that the da=
ta "
> "was leaked by an incorrect or compromised program.  Calls to "
> "B<explicit_bzero>()  are never optimized away by the compiler."
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
