Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E14153D509B
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:17:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbhGYWhE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:37:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbhGYWhD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:37:03 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC53AC061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:17:32 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so8384725oti.0
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=r3DBvl+0qPvC19z6W/W1Xjqe+jZ3CZl6LG0PyGiGaz8=;
        b=nOdtx9rdeBxurw1Y0fD5QnUZ7iyCdnFJKOT4vGFldO4R/kpDdRPTRoRd7gwoDmOIeC
         57BTNK61uuU1TchpkSHh6ARdu7ab0+0SObaVcmYI/Xc5HReoZvE3p8CuxvsFPimXIXIy
         CsDTOaF81c88TEn7mV9dINnNeiMGE0ef7lqzPUn4bzVN5y47Aw+Y9arH2bgPXRPkepdd
         k1k1XcJ5RsNPo+rMVAqCe9+czdmar/7HaP9/hKTOBEtAjirXizM569ICTrSoNuOlnW1H
         mmGtLRpBemYkQGEoDoNqEqWdBS8wJMcdZ+0l0wa15AlEfEbHJkCP6tpht4Sa2XncZrG8
         ufvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=r3DBvl+0qPvC19z6W/W1Xjqe+jZ3CZl6LG0PyGiGaz8=;
        b=ecWNddpHp4juTnhb2kWK4ozYf2cHaHPsb8UzgTOF3XPr+05taJK5UhH3VeWi1CVoq7
         qlrK4xpT4mJ/3V2Wrri9PD69rnW/rEPkyKEMqe4r3w65KaDt1/Tfg3VGrTb5/nnQM7Rz
         G2dcBDIiTgDAJi/bjL/yDdTQPAy4R2NG2ruJ/Wj/rKPzACbjEXJEvvRqt0jK7WZCWMCa
         BANfn7kPj6eKudQCoNaShJZYyJJ6QxdkoTHa1nlgwddtYbzNPuFBR/KMQ+DSEg1VAHh0
         Xgsct0jfkFsxrsJv001tpWr+MgNVxiGjXDaGaqHT73tulC2rjS44uLGl/Vl9x4Tipa2t
         3qaQ==
X-Gm-Message-State: AOAM532mu+QeNcCnutTEw9JmuKhc2GYbUinu1kI/q/fxdI3urZJy1ZXd
        +mLnmk10TTf1n8tI0s4l+IaPcMiCcHMTQtvRWaE=
X-Google-Smtp-Source: ABdhPJzJ6h3qLEp/jTSZbvf7wHfwflZjYG+k8/2Z57zjh9H60Yy0ql2EeF4jfJ/pWeDCjqfbGgsLlqfVcb8jzaE2ci4=
X-Received: by 2002:a9d:3a49:: with SMTP id j67mr10684581otc.114.1627255052067;
 Sun, 25 Jul 2021 16:17:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170713.GA16469@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170713.GA16469@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:17:20 +0200
Message-ID: <CAKgNAkhVdV_Sj+gErk-NS0mOPCfvgJsUhXLp+0tgKcF3HsS2ug@mail.gmail.com>
Subject: Re: Errors in man pages, here: ioctl_tty.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

> Man page: ioctl_tty.2
> Issue: I<ioctl> =E2=86=92 B<ioctl>?
>
> "Use of I<ioctl> makes for nonportable programs.  Use the POSIX interface=
 "
> "described in B<termios>(3)  whenever possible."

Fixed. --> B<ioctl>()

Cheers,

Michael
