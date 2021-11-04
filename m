Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 542754451A8
	for <lists+linux-man@lfdr.de>; Thu,  4 Nov 2021 11:43:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230148AbhKDKq2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Nov 2021 06:46:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229809AbhKDKq1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Nov 2021 06:46:27 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A3D4C061714
        for <linux-man@vger.kernel.org>; Thu,  4 Nov 2021 03:43:49 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id o8so19672906edc.3
        for <linux-man@vger.kernel.org>; Thu, 04 Nov 2021 03:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+FDir0cfSmutPfxEcCpdueVytGT0A/UMRAqf6+GT70c=;
        b=q41bkt5V86B3kJmwEd+/Rj3vP/lfxS31w17RqKy45F0rEsUvYJ0mekDz4sq2dov01W
         8IdEXiPuj88Zj/D/lKTh9q05HWY+SPCzfSLcZttHHkE1QZjX441Er4jrbssh0qdLBXYI
         LfvMJPO06a7A9VB4pSN7epAlJM2P+oRdz/C1ERx3S5Ley8wk+4lBTRpXeTF2sj2WW0eo
         SbBgawTNNQp5s+R7BfyOjbY0Ll4ndZ02D8zTfoR/oPTFJYub5S03+WsLz6oKz7O4/AOX
         GcpKfEGcvel28+vIZ/jmt9r3PT2jsWr9gEOIA0y413Jfx/YogsRc0ilXum1PyILHhmDu
         s/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+FDir0cfSmutPfxEcCpdueVytGT0A/UMRAqf6+GT70c=;
        b=KlqMPBXEPpaUz4UA/WUofuisqjH0v93wWO4W8d5gEAynEASjuuHKVQ6eL4KB8j6eZ8
         2u/efAhQ39sHHwd1L/XfLr6bAi/pEmnEKGM86ADp+cGPo6qwpwHxHBYxMs4TEkJ3Q8/c
         xvS0SncfhROovorcZ3/0bGH4X1HBBZEBt0RfQ7/oF7NRnwcazMkYiLfbyXl0p1EfFlqV
         XaqA1ZWZ6GqzyxYWRcIRNh8h1AeDnxwC3OvbHNxVGW1EabHp99sxIxa2NHW1BbEEPry8
         gjMGU+nKhB1mtKTMS2xLBNIfC7glSzW7ULcrzzsSbzfmKVIvGVx8ocq6XrMzdzBadPNp
         ksBw==
X-Gm-Message-State: AOAM533xibGDc+GltTF6dimznqPwaFgOIZWMTOQXvFTE/DYTawJCLQOE
        fZi/IiUcN4G9xY1tAMFWqbwug8LxHQBcBZviAHA=
X-Google-Smtp-Source: ABdhPJw1toLHJdjGm0YpTVYAVN760LOdhQpMJPrn4BdbDju4VkEpCMVXPTvVbvboAme0euOcDWaTp9U27TAMgCM2kgQ=
X-Received: by 2002:a17:907:6d28:: with SMTP id sa40mr35527597ejc.201.1636022628216;
 Thu, 04 Nov 2021 03:43:48 -0700 (PDT)
MIME-Version: 1.0
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com> <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com> <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com> <6183302D.8080102@fujitsu.com>
In-Reply-To: <6183302D.8080102@fujitsu.com>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Thu, 4 Nov 2021 11:43:32 +0100
Message-ID: <CACGkJdvcBPZK2eOMaSuKnE3KEYFEv4aUGznweDD8T5fqPxJBew@mail.gmail.com>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
To:     "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Nov 4, 2021 at 2:05 AM xuyang2018.jy@fujitsu.com
<xuyang2018.jy@fujitsu.com> wrote:
> > Maybe a better fix would be to replace the kernel version and the commit
> > hash when it was really added?
> Yes, but I can't find this commit hash and it seems been supported since
> long time ago.

Q_XQUOTARM was added as part of the initial quotactl(2) implementation
in commit v2.5.17~10^2~6[1].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=b5abbc1f844d101615d6d2c5abac8a692f028d01

-- 
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
