Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCF0D3D5096
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:09:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbhGYW2t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:28:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbhGYW2t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:28:49 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF814C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:09:18 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id i39-20020a9d17270000b02904cf73f54f4bso6433175ota.2
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=55T5SPX8sO8bQ7hfM6c+eUrYXeAKqY1CbdxD2vEG0jU=;
        b=m4tNwckd0RQ8cAZ8TuTo9h1IsavH9q+ruESGRmcsjHvbL8dvofMXgRZD5EV+Hyg1Vv
         T87Vvdhp5wQMbyyXR+gpFcH7hDQbURzRq59UBKFeycuu29qrfkglvPUNKZSCd/+YsOb0
         0Cyk6NybiuMPyRcTZzp0qdpUtmZdXvb7nqL+xZE6fcWJrPNxJud0/GPaLAumlAxdlWpY
         /53MU0SdO5FsdJcK7xG2lucn2wQEMb/RPE7xfRDttVug+EMV4bMYsKHWbKaidnlRfr91
         CyTOlHfTw6e2ga/RiTyV6ExPRQfwzLTgNUS+TBTvPN4CbiOmK3nxW1NEsVdEygCJBM7n
         MCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=55T5SPX8sO8bQ7hfM6c+eUrYXeAKqY1CbdxD2vEG0jU=;
        b=idglcifKgGvylV8TNEZNKOYzaMcF0OspNfOBaSvgIxKR0hlcFj4FiT8fRcLbBggyi5
         joJ2+VIM5ho8qPs1pMwF16W+8bGe7iwhdjmmjN/5c47Zu50MFEH9QYVFXBa6W2iXGK7o
         B+rephaGrh+NjotM90oQPdefcbZRNsFyqHRBnB8dJ4dBwKdRekPz6WDx++spnkZelJou
         FqN5BvUnvNHeAKsPx0zeUq23JJwuM1emhjFL8snKsjEFwpqPs0Mb+AuU4WHLa2K7gffB
         CRoSodr5pz3pHEQsV//sFfEsUlqh3RhO72N/a0gDH7tJVZLicZ3B7Hbn6kFvPHL189JT
         dvtg==
X-Gm-Message-State: AOAM530n5xafOCAm/w2f46V4qXqTU2iHTVMI4opa33pP64cN81Een0yn
        ppsk7Z9bBkjqk9eXHpF3NWN9E598elXOKu3SIG4=
X-Google-Smtp-Source: ABdhPJzyuu1Xczn47jPck2qAWGTcYlRKu/W1K3kXUxs7H7EgwHqGNAUsg/ztGRYFqWqD4vUOdhK0ugSqKPb87Uzkoek=
X-Received: by 2002:a9d:172e:: with SMTP id i46mr9864171ota.308.1627254558282;
 Sun, 25 Jul 2021 16:09:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170802.GA16588@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170802.GA16588@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:09:06 +0200
Message-ID: <CAKgNAkg5iC_KU3f8njpLn0Jm4M0Gt283i9T-tsWRii__vss8Zw@mail.gmail.com>
Subject: Re: Errors in man pages, here: mmap.2
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
> Man page: mmap.2
> Issue: I<len> =E2=86=92 I<length>
>
> "Don't interpret I<addr> as a hint: place the mapping at exactly that "
> "address.  I<addr> must be suitably aligned: for most architectures a "
> "multiple of the page size is sufficient; however, some architectures may=
 "
> "impose additional restrictions.  If the memory region specified by I<add=
r> "
> "and I<len> overlaps pages of any existing mapping(s), then the overlappe=
d "
> "part of the existing mapping(s) will be discarded.  If the specified add=
ress "
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
