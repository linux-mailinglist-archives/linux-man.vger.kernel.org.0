Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5218335FB21
	for <lists+linux-man@lfdr.de>; Wed, 14 Apr 2021 20:59:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346882AbhDNSxO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Apr 2021 14:53:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346834AbhDNSxN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Apr 2021 14:53:13 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE7C3C061574
        for <linux-man@vger.kernel.org>; Wed, 14 Apr 2021 11:52:51 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id z24-20020a1cf4180000b029012463a9027fso11061438wma.5
        for <linux-man@vger.kernel.org>; Wed, 14 Apr 2021 11:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flodin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n/H+/7try0aKVZk43SO2tGw5voDARm0xCmWbU8F/KtQ=;
        b=lvrFso1t5urBFTfRX7kPcgZD6hoinTxkUS+OmVBJX+tB1MByiok/5ENILAnsUAbaHe
         QWq/n0Vq4mntMHxY4RDTDSIGA+u1cZFUa4KTR5yV29UJGLKXW5CgX5hHsb6aluPFMkL6
         CzGWvfVjr4jUvmMCoyTnM25RUEouSlahZWyyc76JtJM2VxqzVYifV6uj/6QfXXTduKtV
         9OTtA4BPHLsaFRxpB4xnrzcxPgLh8NgCzde+0w/utPE9LALBLMNoAsDEK25/ysoq2dJu
         D2Dz9i8aVmYbzjVpK6V22RP8ih08+7ijiO4SHGQ+HBKeQFWzC4lwZvS5XAohpMiGzYri
         MlxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n/H+/7try0aKVZk43SO2tGw5voDARm0xCmWbU8F/KtQ=;
        b=W5j+15YU4fwPtG4ajlhblev+HTP8OrZWxg6ChtmWIjnr9i9ldxGKkCEPnoU2qPIPTm
         2YugpxYbb4zZNYEEe5bOnqO867OzTWGBUva8xz6G1OKu5hVgV69gVkbPMc2AduKD29Yv
         GaJgArhAw3jQpXs591okYbn1SRzt+QF4OzCD2yHsTUk7yI8nEF/lkMI8H7jFMITusVtg
         7gju93zID1eURnmE+GvQfRo5lio79uFGpftUZFP+qdA+6sDqLdrUmNjX02B7kDHW5f2x
         QamRVEgWLKW18nCeJDAe8H0ZrhwHZyoU0jzqBUxVN3QsrolhsynvQQIcYW46AkkL8y1q
         VBKg==
X-Gm-Message-State: AOAM533cTJd47KBSuM+2xw0uA0vvQ1K3X0Jnv666LkTAj0omFtY+1pOZ
        inlSph/d0EJM1jCnt5xjr/FyPS/0D4dvnUgq12nYfw==
X-Google-Smtp-Source: ABdhPJxzIWCi5AgAXwSPTC+4GLC68C8Wl3ZEPDU3e27jexmfFIkUgwi7ySQiDB2dJCfdC4ZMIHZuQtjRD8vBEq+uXy4=
X-Received: by 2002:a1c:750d:: with SMTP id o13mr4317669wmc.76.1618426370773;
 Wed, 14 Apr 2021 11:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMKmof+Y+qrro7Ohd9FSw1bf+-tLMPzaTba-tVniAMY0zwTOQ@mail.gmail.com>
 <b0a534b3-9bdf-868e-1f28-8e32d31013a2@gmail.com>
In-Reply-To: <b0a534b3-9bdf-868e-1f28-8e32d31013a2@gmail.com>
From:   Erik Flodin <erik@flodin.me>
Date:   Wed, 14 Apr 2021 20:52:39 +0200
Message-ID: <CAAMKmodhSsckMxH9jLKKwXN_B76RoLmDttbq5X9apE-eCo0hag@mail.gmail.com>
Subject: Re: netdevice.7 SIOCGIFFLAGS/SIOCSIFFLAGS
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Stefan Rompf <stefan@loplof.de>,
        "David S. Miller" <davem@davemloft.net>,
        Fredrik Arnerup <fredrik.arnerup@edgeware.tv>,
        John Dykstra <john.dykstra1@gmail.com>,
        Oliver Hartkopp <oliver.hartkopp@volkswagen.de>,
        Urs Thuermann <urs.thuermann@volkswagen.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Fri, 19 Mar 2021 at 20:53, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
> On 3/17/21 3:12 PM, Erik Flodin wrote:
> > The documentation for SIOCGIFFLAGS/SIOCSIFFLAGS in netdevice.7 lists
> > IFF_LOWER_UP, IFF_DORMANT and IFF_ECHO, but those can't be set in
> > ifr_flags as it is only a short and the flags start at 1<<16.
> >
> > See also https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=746e6ad23cd6fec2edce056e014a0eabeffa838c
> >
>
> I don't know what's the history of that.

Judging from commit message in the commit linked above it was added by
mistake. As noted the flags are accessible via netlink, just not via
SIOCGIFFLAGS.

// Erik
