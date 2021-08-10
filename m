Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDD383E8478
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 22:40:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230366AbhHJUk7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 16:40:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230181AbhHJUk6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Aug 2021 16:40:58 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB92DC0613C1
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 13:40:34 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id c23-20020a0568301af7b029050cd611fb72so647924otd.3
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 13:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=+v++PC0dLw2ZUkEbhpbpHYciJmte9+t9odWzokM0LWI=;
        b=Utu0vL8q3FUt6OrVHbE288t9ykPUILrlUilS4ggZjZhE2NK6AKw3FMVdGfcJlfODfB
         HbhFGZii55mY10twn0mdYkjD0FmS2D5Fr5DaCkNxgzeljeVsSKqkE2T4fKLmbJQxlHEd
         yiFHbzAqlr/cHQN9n0zOeVIPSVGB4bWAmkdNU7LB8i4k9zqMf2vUwn+PT9ahHEu1DLc5
         9H0vszG5hHjT64rQI8Y8OpRnGY7Iuep6n8UMQy07CNvMgpg8QrPrP5YI3TD5gj3slnnz
         /m4UDODfi2Dqn8s+bcxh6BtFSJ2Uzdmv0Np8xPRGxwg+VMTVWIyPVvZ5fBrlUcLnR+FN
         UF3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=+v++PC0dLw2ZUkEbhpbpHYciJmte9+t9odWzokM0LWI=;
        b=pXEmjVXVY/ymh5SLDqDs2dH4LdT+cLjQgtkWNZjzTQNYUWVletR9gILChuuY18Ndr3
         1JpKKnHT/d5bqpFrdxA/AKpO+l0BQuwZUIBKBn6R33myWzO13T/t2wE4Je1UfWnvA6Vy
         zzyakMj0zEkveoQTWP/bnJx7RM08h36PxCYtHI1RB0oTG/FPNhBBRrsLj4utVtT5sxvb
         9gtF/Yjl3H+60fHYu//RbZ8J92lwxAS6Sb397KLbdsqR2SfKg1cwzVRa6KoYO6LfFNzl
         7N8yV5DTauFc+O955DN2+ZmVqKi7KsaAQE2GngBQ5WSR+zcRSJRe8G08sqlSm8Tk0nhs
         7fNA==
X-Gm-Message-State: AOAM5300uorae7ZlCPj+lDDBsTbG/BM8jvgzQ9YYynbIL+yVEgQ+BTdl
        tL2JiivUqcN5ZonPMWYAvx8XkO6i/NLyaq9aPVc=
X-Google-Smtp-Source: ABdhPJzsi/XZkPWezsxeqh4/ztscjbOnLdXpVhidLAgsF7DB8T2q59U2TScGiDzh9/p8n+Tkmab0IAhGGYv8o5Otf8o=
X-Received: by 2002:a9d:2782:: with SMTP id c2mr22328987otb.323.1628628034177;
 Tue, 10 Aug 2021 13:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-14-alx.manpages@gmail.com> <7a378d4c-36a5-be42-79fb-aeb1c160984c@gmail.com>
 <20210810191128.qcn552brlrjdrqus@pali>
In-Reply-To: <20210810191128.qcn552brlrjdrqus@pali>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 10 Aug 2021 22:40:22 +0200
Message-ID: <CAKgNAkis8kxkObv3=vTefLzfK-S4he-7M9wec10-1L0a7K3B1w@mail.gmail.com>
Subject: Re: [PATCH 13/23] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
To:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

hello Pali,

On Tue, 10 Aug 2021 at 21:11, Pali Roh=C3=A1r <pali@kernel.org> wrote:
>
> Hello Michael! Seems that you applied patches to your tree incorrectly.
> Now ioctl TCGETS2 is documented two times, looks like you have applied
> my commit two times.
>
> Open 'man ./man2/ioctl_tty.2' and search for TCGETS2.

Thanks. I'm not sure how I did that, but it's fixed now.

Cheers,

Michael


--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
