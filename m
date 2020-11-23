Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A5512C006A
	for <lists+linux-man@lfdr.de>; Mon, 23 Nov 2020 08:03:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728034AbgKWHB5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Nov 2020 02:01:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727983AbgKWHB4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Nov 2020 02:01:56 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B1B6C0613CF
        for <linux-man@vger.kernel.org>; Sun, 22 Nov 2020 23:01:55 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id y24so9441184otk.3
        for <linux-man@vger.kernel.org>; Sun, 22 Nov 2020 23:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=w6OgW3/1O0vnQN8GFbEyfyINNCH32yuxiP4m9tGGt0g=;
        b=Dd2/jctv0k+NTrXQvwpMnfv0pXqsBR/f/YQamAFteuuPJorTwAN0rZymSX/dZ8PJtl
         T9UE8mXlX3A34QZnlOa8Kb7XOy24bIz3zBXi6QTO2HWHjC/raMK5gNVvCxAHIKwPrNnO
         xkEFbM/5S8bVcphBvN6y2eevUHvp3pAJh07L7LRd6hc4kIJkbHbE/Sz75Ln5W2T88/vx
         gxkkAu96cXKDIxA3XugpXctFeTmRmw4GZrv8nNA2Dp/IvHriQPHo/r9TLvyMM2K8PwUx
         Ox6GNRZhzFJLjB6jYwLFhhktpNdguM9oAZSY6ENW++6alOyiUb4ETMoOtyJgqwQ7fs1d
         fBxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=w6OgW3/1O0vnQN8GFbEyfyINNCH32yuxiP4m9tGGt0g=;
        b=mWy5w67Crh6sbkefrddY+jpjYSaZ2dWXuRM48xFQse6da7LaXN+iuNqMb7/tCpdNaz
         SQh07wcvfyWAVhqTJcPKeveBp7OSwwCJLs/QURIuZIyOhyJo0fuzsWP5iZ1qvwnn5KdJ
         U0XN4tPOMWktGyR/KSzUn6ZPaX/y+R9aczStyDgZXo9XXOUwmimlG1pl6TI1vWyVgHeY
         01q5CqzIAYAmD0IJirA2fp5+9z+tsln9o2V9NXP0M1ciJtbSAtZ0ZFpWi/DVfHitaoqx
         aoSP5XO202eN6PfwQ41Iri8QnoBOf7YA5/9kdlqEQs/nPPfsbbJhyEzcfVUtFhzOcxO3
         sz7g==
X-Gm-Message-State: AOAM533Tt1TcN8lAhoTMFV8OBcr3UAQOg9ntb9vHTszFEHuANOOD+SaO
        cz7+d0CfLcj9LyGQ9kdZjBHC53un+WrOrbDpxgICPoNOcc4=
X-Google-Smtp-Source: ABdhPJxtf03CcNalGeAuZbjgkeC2NQPA8Oh9pZTuYZBe+1P2a8Zem1SdTHB5CgyleT7r1r0UvB5VsP00D1QZFlgAEmk=
X-Received: by 2002:a05:6830:1199:: with SMTP id u25mr3485923otq.323.1606114914391;
 Sun, 22 Nov 2020 23:01:54 -0800 (PST)
MIME-Version: 1.0
References: <20201122223707.GA7261@kirmayer.de> <921887e2-61ad-6212-c91b-beab3e4a7ab8@gmail.com>
 <20201122225339.GA8330@kirmayer.de> <CAKgNAkj9p-KkKa7OX_A-e=h9PhauXuAon6FAW1kr_D5=_Zs1pA@mail.gmail.com>
 <20201122230550.GA8553@kirmayer.de>
In-Reply-To: <20201122230550.GA8553@kirmayer.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 23 Nov 2020 08:00:00 +0100
Message-ID: <CAKgNAkgTCrTTKSUO00iuJOR59BBv4EhS-Sg66m=fxKN8e+gkfA@mail.gmail.com>
Subject: Re: [patch] getnameinfo.3: Fix _POSIX_C_SOURCE value for getaddrinfo()
To:     Sebastian Kirmayer <man-pages@kirmayer.eu>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Sebastian

> I just saw your commit, and it seems that you made another typo while fixing
> the previous typo: It should be 200112L, not 20112L.

D'oh! Thanks. FIxed.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
