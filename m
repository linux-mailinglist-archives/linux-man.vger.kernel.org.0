Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 409FB3D50A7
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:29:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230272AbhGYWtK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:49:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230116AbhGYWtK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:49:10 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B821EC061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:29:39 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id z6-20020a9d24860000b02904d14e47202cso8330945ota.4
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Up6AbfziyMJolxTcfEjDDiJWtT0S95SJ3/MnMoxgyPo=;
        b=lQwjewD5aBZ7FGBTtBndSBvtC3qGxWATXCqCStH6asXkmamyafGS6G8gUgUsaseA+T
         16tdZgIZQSrF9S1fvMZtjuMBK16k0pDII0HdW+R3JMxUQL+LN6dB83T+HdnYVDDrA+7q
         Mdv1F0blDvJd+z6cefev4gYqWdusGDf6sl5VS/LGn47UJRtzUOkMyX4Z4ahAM5PwPDLt
         8PJfbzUTIuWvodXVlbZMZcliq9YwbdKZHUV4octGOaTV0fr5/QLz1edsVeuq3+MtDSg7
         WmqguOHgAncczTmXzm0L+GCsoGxG/OalygzQlx8uVVQx/6ltuwTJnooulzUutJC6H5n+
         fqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Up6AbfziyMJolxTcfEjDDiJWtT0S95SJ3/MnMoxgyPo=;
        b=GrFES1jb+DI/y/q+PwvNIpwOPVbfaBgDOl8uqDa33zONw/MBkko4JvPb7o1zglylES
         rOQR+lJ3nHw10KVG9Bdafz7rzWMVWqSd+3dbkLwVqktUAUxx9cwYQSOYyGJYFLD78vrE
         q4+q65iqoaiFcmjPkKN/8MQzwqcKDIi6OM9fyNC6dLUHwa0VqXil2pnVlS4yQ9ChDPxX
         CYsnEevheF9l34lC6i3uW7rrEbawFIk2dry18T5Rut8R5l5vg4fae5NB+r4FGT4h/Ti+
         mNWYr2rEvHCSfSmRKGVAIUUpRw7FYbMYcrTlnBRbHgCVCLkQBhzhqnssboRho55u9EBM
         A33w==
X-Gm-Message-State: AOAM532jnDeMO/ADZMUJjgGq68fGTesi2WBUbZx97b5vSenu1MC0gEcL
        epDwHLgIG2pbfhruJWjY4XvB/yTzzrNqnaBV+uc=
X-Google-Smtp-Source: ABdhPJxbsATye539jX1CWigdXxjXwFh2yVM3hEuJAATul/mzxs1RZ0+ezeLOC6rVD/4wVv96tKJNfqKQVnundmE897E=
X-Received: by 2002:a9d:3a49:: with SMTP id j67mr10706685otc.114.1627255779131;
 Sun, 25 Jul 2021 16:29:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170409.GA16163@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170409.GA16163@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:29:27 +0200
Message-ID: <CAKgNAkgM-EiO_E0wcPF9p9+adVRvPmdkGHpRY2Pg8E9brXbnTw@mail.gmail.com>
Subject: Re: Errors in man pages
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

Thanks for all of the reports! I responded to them all now, I think,
and most of the reports indeed were valid. Thanks for your efforts!

Cheers,

Michael

On Sun, 25 Jul 2021 at 19:04, Helge Kreutzmann <debian@helgefjell.de> wrote:
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
> As requested, the individual reports come in single mails. This is
> only the announcement for those 27 future mails.
>
> Thanks for taking care!
>
> Greetings
>
>          Helge
> --
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
