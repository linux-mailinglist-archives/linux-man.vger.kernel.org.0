Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C0192D63AC
	for <lists+linux-man@lfdr.de>; Thu, 10 Dec 2020 18:36:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392503AbgLJRfS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Dec 2020 12:35:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388107AbgLJRfL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Dec 2020 12:35:11 -0500
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com [IPv6:2607:f8b0:4864:20::a41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B7CEC0613D6
        for <linux-man@vger.kernel.org>; Thu, 10 Dec 2020 09:34:31 -0800 (PST)
Received: by mail-vk1-xa41.google.com with SMTP id k9so1408601vke.4
        for <linux-man@vger.kernel.org>; Thu, 10 Dec 2020 09:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UifUfr6kOgQo5Y5wCm4Em1W6gC2qoZMoZCVdpaPXzpE=;
        b=mgMRY1IWntzpjrscduH7rnK98ND3B3dTbU5uQrvKokxXRN/B6Bt5vGaqSZ1KWpImnq
         5Wc6OL8aefytvU1FGnN6aUiSpRW+Jqhx3nbsEOsj3DYQ2IZu4c/xm/3Qlh6RuQv2CDso
         Qu6wy2L8Rgeaiq0G9AQzX2uEo1t8ojrWKWbY7X6lconxM7qy/tX3w4EjYI2cfZvO4PuS
         95WdjpMmst+djcbUV4VQ/rNiPSD0vfkU1yI7Dz2veBowggDSpojMnSqpo1RpshMx6cOi
         3MzTGuG8n2UvMVgmrUYqbdnEjehYXIkB1UCRiIknLX60cjORkzA3EQEYMz9XdzORfxQw
         WjVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UifUfr6kOgQo5Y5wCm4Em1W6gC2qoZMoZCVdpaPXzpE=;
        b=grBC9TZcBcYhsvodJNj3LTwF/NU0cvfMz4+Sxi4QKqHeRRXt06m5u1XYt1gMcFPeZ+
         xeU8D/w5pc7zSIPAOjKF6QdKfYLA/M1697IWTYrp7wz8m+CCSVLTYrevkaB4uOHXJEPZ
         pu9ALwEKO5Znbn3Ag09fLcwdY4AzUj5I4uo6A9lEy7QfZUMJTe2W7JqlSJSkEqJRyx2G
         UG1TaopUVjsRnW2KhLNRKEH2M6OAICwobg06Covwk+VV9KoHEd0aZ2wSTEkUJWKmbnks
         UhPyYpqeQEv7xfZPSBOvJHR/M40xzvTMYXDPHCFXR/GxyTmusGHHr/YExFAR5lCPQ/Va
         +81w==
X-Gm-Message-State: AOAM5323lHk1fsfRGsewDUVjAMf3503aYkASmE7WmsjwWUA0R2jUsaAN
        Ql0DrP4FbzzKJ1SWukF184fynQkZumXqmg==
X-Google-Smtp-Source: ABdhPJxmtvkfZZMdZM9agdPqL518EEtV1Pq788YkPZzXZ9bSbUV2vUS3RzSc7w32aVKgryRU5YriWw==
X-Received: by 2002:a1f:2d90:: with SMTP id t138mr10033816vkt.23.1607621669957;
        Thu, 10 Dec 2020 09:34:29 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id d134sm601435vke.1.2020.12.10.09.34.27
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 09:34:28 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id s23so1947945uaq.10
        for <linux-man@vger.kernel.org>; Thu, 10 Dec 2020 09:34:27 -0800 (PST)
X-Received: by 2002:ab0:5e98:: with SMTP id y24mr9282081uag.108.1607621666644;
 Thu, 10 Dec 2020 09:34:26 -0800 (PST)
MIME-Version: 1.0
References: <20201118144617.986860-1-willemdebruijn.kernel@gmail.com>
 <20201118144617.986860-2-willemdebruijn.kernel@gmail.com> <20201118150041.GF29991@casper.infradead.org>
 <CA+FuTSdxNBvNMy341EHeiKOWZ19H++aw-tfr6Fx1mFmbg-z4zQ@mail.gmail.com>
 <CAK8P3a0t02o77+8QNZwXF2k1pY3Xrm5bydv8Vx1TW060P7BKqA@mail.gmail.com>
 <893e8ed21e544d048bff7933013332a0@AcuMS.aculab.com> <CAF=yD-+arBFuZCU3UDx0XKmUGaEz8P1EaDLPK0YFCz82MdwBcg@mail.gmail.com>
 <20201119143131.GG29991@casper.infradead.org> <CAK8P3a1SwQ=L_qA1BmeAt=Xc-Q9Mv4V+J5LFLB5R6rMDST8UiA@mail.gmail.com>
 <CAF=yD-Kd-6f9wAYLD=dP1pk4qncWim424Fu6Hgj=ZrnUtEPORA@mail.gmail.com>
 <CAK8P3a21JRFUJrz1+TYWcVL8s4uSfeSFyoMkGsqUPbV+F=r_yw@mail.gmail.com>
 <CAF=yD-Lzu9j6T4ubRjawF-EKOC3pkQTkpigg=PugWwybY-1ZyQ@mail.gmail.com>
 <CAK8P3a1cJf7+b5HCmFiLq+FdM+D+37rHYaftRgRYbhTyjwR6wg@mail.gmail.com>
 <CAF=yD-LdtCCY=Mg9CruZHdjBXV6VmEPydzwfcE2BHUC8z7Xgng@mail.gmail.com> <CAK8P3a2WifcGmmFzSLC4-0SKsv0RT231P6TVKpWm=j927ykmQg@mail.gmail.com>
In-Reply-To: <CAK8P3a2WifcGmmFzSLC4-0SKsv0RT231P6TVKpWm=j927ykmQg@mail.gmail.com>
From:   Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date:   Thu, 10 Dec 2020 12:33:51 -0500
X-Gmail-Original-Message-ID: <CA+FuTSdPir68M9PwhuCkd_Saz-Wi3xa_rNuwvbNmpAkMjOqhuA@mail.gmail.com>
Message-ID: <CA+FuTSdPir68M9PwhuCkd_Saz-Wi3xa_rNuwvbNmpAkMjOqhuA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] epoll: add nsec timeout support with epoll_pwait2
To:     Arnd Bergmann <arnd@kernel.org>
Cc:     Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        David Laight <David.Laight@aculab.com>,
        Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Andrew Morton <akpm@linux-foundation.org>,
        Soheil Hassas Yeganeh <soheil.kdev@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, Shuo Chen <shuochen@google.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Nov 21, 2020 at 4:27 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Fri, Nov 20, 2020 at 11:28 PM Willem de Bruijn
> <willemdebruijn.kernel@gmail.com> wrote:
> > On Fri, Nov 20, 2020 at 2:23 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > > On Fri, Nov 20, 2020 at 5:01 PM Willem de Bruijn <willemdebruijn.kernel@gmail.com> wrote:
> >
> > I think it'll be better to split the patchsets:
> >
> > epoll: convert internal api to timespec64
> > epoll: add syscall epoll_pwait2
> > epoll: wire up syscall epoll_pwait2
> > selftests/filesystems: expand epoll with epoll_pwait2
> >
> > and
> >
> > select: compute slack based on relative time
> > epoll: compute slack based on relative time
> >
> > and judge the slack conversion on its own merit.
>
> Yes, makes sense.
>
> > I also would rather not tie this up with the compat deduplication.
> > Happy to take a stab at that though. On that note, when combining
> > functions like
> >
> >   int core_sys_select(int n, fd_set __user *inp, fd_set __user *outp,
> >                            fd_set __user *exp, struct timespec64 *end_time,
> >                            u64 slack)
> >
> > and
> >
> >   static int compat_core_sys_select(int n, compat_ulong_t __user *inp,
> >         compat_ulong_t __user *outp, compat_ulong_t __user *exp,
> >         struct timespec64 *end_time, u64 slack)
> >
> > by branching on in_compat_syscall() inside get_fd_set/set_fd_set and
> > deprecating their compat_.. counterparts, what would the argument
> > pointers look like? Or is that not the approach you have in mind?
>
> In this case, the top-level entry points becomes unified, and you get
> the prototype from core_sys_select() with the native arguments.
>
> I would imagine this can be done like the way I proposed
> for get_bitmap() in sys_migrate_pages:
>
> https://lore.kernel.org/lkml/20201102123151.2860165-4-arnd@kernel.org/

Coming back to this. Current patchset includes new select and poll
selftests to verify the changes. I need to send a small kselftest
patch for that first.

Assuming there's no time pressure, I will finish up and send the main
changes after the merge window, for the next release then.

Current state against linux-next at
https://github.com/wdebruij/linux-next-mirror/tree/select-compat-1
