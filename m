Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B31A8333193
	for <lists+linux-man@lfdr.de>; Tue,  9 Mar 2021 23:37:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231216AbhCIWgy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Mar 2021 17:36:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbhCIWgc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Mar 2021 17:36:32 -0500
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F8F5C06174A
        for <linux-man@vger.kernel.org>; Tue,  9 Mar 2021 14:36:32 -0800 (PST)
Received: by mail-io1-xd32.google.com with SMTP id u20so15745621iot.9
        for <linux-man@vger.kernel.org>; Tue, 09 Mar 2021 14:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=sPte7TzFVbVNUXUToE41eHOjw9Cn8UEjPnwOvGvjc7g=;
        b=GPhqhV1exiw1EhdMmKdLCExmWBwUoR2n3J5PSNwuomrftonlKFn2sngGeqfSCSBRtf
         AsEAcVAAPe9UD3YN+Pqd9+MX/NUde18cYODWZ+mcK6SvA+bnhlBrXfkVHbBJnFFB+X4o
         vgiG0pNLRWN0aZnwEFP1OJ//XIKegaHjWL+O9Gdi6jK48PZ7NNa7K31J/blL6xKDUPFH
         o+ofSLSZsK4JCMbrED7rip5QUMpXCUVYdFWFuLSUN27kG5qpFJ93Qjo/epCzcWG1InOs
         YQvkj3euTqMj0s7WDaIK4niTN/zX25YI5orDTjfiy1gPmlJ60+Qyd9oMpi4EgcFWcc12
         6LJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=sPte7TzFVbVNUXUToE41eHOjw9Cn8UEjPnwOvGvjc7g=;
        b=erPU3RK0otyqyhzo7pvW30k0IxKAgo7aZC58Ac8cRQQ/TEpjNmjuBF32b5LlVuty7i
         wg8uTGafgE9lQEM03aBx2SXUI94rx+r5vmoLDVL1RddRVVBNl0MajYgJMgTwuU7r7RB4
         hgwmH51O9oyUGVugfxLkzNW50/cVL7rIJaxJAU/rAPNBRvPuZ4L/MPaVuDC9C4y8+/bZ
         FXN8feKrv9RAmGhxfheB1KGv75WRR2wUOZy97IB6547uj7WnRpCw0kLykLL/UNqx3lxZ
         G1BeUqKZY6YIcbmKSMPT6g6YpMmQIUoIibxiJw0DfOpHMmADwQLNFRqoeZI0m2I1mjtD
         biyw==
X-Gm-Message-State: AOAM530mIviBnwWc2tQBUEyp+JsenAvogpeuu7Gp+06X9p05YozscPpv
        abYDBEhzs7eI19EONdIcFz4BQysojm6Acb2+Npj5V/jXtuo=
X-Google-Smtp-Source: ABdhPJx3pKG3nSDTMbrfw96f8Lfj9tkPG8C46332Ba9d5O7Mr6JwJOBzCtjiAieRalWeVLI+a6ZgY/4LBCl5uYO0/bo=
X-Received: by 2002:a05:6602:2287:: with SMTP id d7mr306673iod.42.1615329391382;
 Tue, 09 Mar 2021 14:36:31 -0800 (PST)
MIME-Version: 1.0
References: <CAKmF0pOMR9OMd4=ikHu31QGCVOWu10vvH4OzzgbUtPGGdbW05Q@mail.gmail.com>
 <CAKgNAkgHu8jMNfqcXjxvwSDP73fzA_2iYTRgucRn=UA1t=QHrg@mail.gmail.com>
 <CAKmF0pMWfH1RzEtQCh6yjDVqhtw8QxwPardoGt9ouheUVm0fkQ@mail.gmail.com> <20210306154253.qedy3ly2uqoouniw@jwilk.net>
In-Reply-To: <20210306154253.qedy3ly2uqoouniw@jwilk.net>
From:   Philipp Schuster <phip1611@gmail.com>
Date:   Tue, 9 Mar 2021 23:36:17 +0100
Message-ID: <CAKmF0pP7PYwHEwi=7rA6qHZgUUyJ2XEz2ZpC0S4EY97fFsHvDQ@mail.gmail.com>
Subject: Re: Misleading documentation in Netlink(7) man page / doesn't match
 with Kernel
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> s/appened/appended/ ?

I copy&pasted this from the original Linux comment which can be found here =
[0]
I was curious too and I looked it up. Because Google doesn't
autocorrect it and this site [1]
also references the word, I thought it might be uncommon but correct.
I'm not sure.

[0] https://elixir.bootlin.com/linux/v5.11/source/net/netlink/af_netlink.c#=
L2408
[1] https://www.definitions.net/definition/appened



Am Sa., 6. M=C3=A4rz 2021 um 16:42 Uhr schrieb Jakub Wilk <jwilk@jwilk.net>=
:
>
> * Philipp Schuster <phip1611@gmail.com>, 2021-02-20, 23:48:
> >+message terminates a multipart message. Error messages get the
> >+original request appened, unless the user requests to cap the
>
> s/appened/appended/ ?
>
> --
> Jakub Wilk



--
Philipp Schuster
