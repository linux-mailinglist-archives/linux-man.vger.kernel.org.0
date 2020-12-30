Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD9342E7770
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 10:31:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726185AbgL3Jb1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 04:31:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725814AbgL3Jb1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 04:31:27 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFA7CC061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 01:30:46 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id 9so18170216oiq.3
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 01:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=FuzHnfytE/+b/Jo77JlYj4YW1diYI7ZMcLhEbk7Ji80=;
        b=YIuJGecjTCa4JE6KZWicGK7P5liNl7JwtVIL/0a+EsC+Z3vdjQ/KqfSuS+Fj4e4w3k
         zX6UBXl6bgfegR05PhvjFe3X3rPJe1wY/LdB79aIHENIYrEo82PnT1Vzg72n/35h4OlF
         OuWYBbkASmrDSmqsoSjNU1tLkyvInu5ht1d/ShJJ4BMa/7Vk29pcItzCYp3SrjlFokyN
         Z8ivS5YjWv5VGnGhaUkhSFE889OsLWHv+S8HMwIXm7GHIz0rM+1lNUq3FHlSmVIgICge
         BXyX8W5KTLIeKF+O00UHwHAe6a+XLc7aEoH9lK3rp4vNJazlIXYV6EFnZwxbmfNUdwVp
         7DEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=FuzHnfytE/+b/Jo77JlYj4YW1diYI7ZMcLhEbk7Ji80=;
        b=JqGAEVb/R/Cb5ZZhqPoGIQV9uaM4hfHR+NAXi86mUe7LmQ4Q3Y2AmOoV+kWXcsL3w4
         jeikkHaY2itdxtaO1iU0lAu+VIp7dfHe0OZZ1MgjiPEG+Lv3UpiAl6c5v53Hl5XWHZvW
         HQTgPqBpL1+WCpOtH1K5vVHvPfxzQJ1oFjtJqCVgZGBXzoBxxgtjA3qs/7ABBoardKe7
         B9sfyR9p2Ghx51QtlxJH6qyndacZEBp2UO0xGoqHZRIgVs8AJzCFy1BXb9SrYt6DPrKj
         lDTic5zhuGylP2mGTnHgVWB9gdcuI9qAf9NwL/SXxoBLBtPAyCROYJybgXT5v1AV9fCW
         deUA==
X-Gm-Message-State: AOAM531DVOB+7y5dah3NTlfC37oUGPhGqRJy0jXCMFHzDSKcs0VC66cS
        ljMPdeoJsh/Jg4Sk00GFEE19pMehugUWFOzgzWk=
X-Google-Smtp-Source: ABdhPJwbpz4V0wgKT0t7TGuezr878fnZi6l7U6rpBllOxPTlExnEpu3PlDQ34v3dvcpv3U7hfPmTAMk7UeDJlYOOI/A=
X-Received: by 2002:a05:6808:91a:: with SMTP id w26mr4729875oih.159.1609320646329;
 Wed, 30 Dec 2020 01:30:46 -0800 (PST)
MIME-Version: 1.0
References: <20201229143859.17473-1-alx.manpages@gmail.com>
 <CAKgNAkiFtdOjvXEXUTO-XiTACd1xmfMfyWzW=QJHpzgTOdE4aQ@mail.gmail.com> <28019b16-51f3-7b48-b4f9-27f469d04fd1@gmail.com>
In-Reply-To: <28019b16-51f3-7b48-b4f9-27f469d04fd1@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 30 Dec 2020 10:30:35 +0100
Message-ID: <CAKgNAkiiwSFMfhyi3a9389zAsS1uiEZnoZe4MGXKwFTpi--o3w@mail.gmail.com>
Subject: Re: [PATCH 0/2] Normalize notes about missing glibc wrappers
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Ganimedes Colomar <gacoan.linux@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Tue, 29 Dec 2020 at 21:45, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
>
>
> On 12/29/20 9:19 PM, Michael Kerrisk (man-pages) wrote:
> > Hi Alex, hi Ganimedes!
> >
> > On Tue, 29 Dec 2020 at 15:39, Alejandro Colomar <alx.manpages@gmail.com> wrote:
> >>
> >> Hi Michael,
> >>
> >> Here are 2 patches my brother and I prepared together.
> >
> > Thanks. I'm really happy to have patches like this that bring
> > consistent language where exactly the same thing is being talked
> > about. I will send one or two comments on the patches.
> >
> >> There are still some pages that we couldn't find with grep,
> >
> > Does something like this help find others:
> >
> > $ cd man2
> > $ grep -l syscall $(git grep -l wrapper)
>
> Hey M,
>
> It may still not find everything, and I'll probably have to read through
> a lot of text, so what I was doing is I'm comparing all the prototypes
> against the glibc sources to fix them (I have a few of those patches
> that I'm about to send (including the off64_t one).), and that way I'll
> also find quickly which ones are missing in glibc.

Okay. From an off-list mail I recently received, I note also that
seccomp(2) is missing a statement that the use of syscall() is
required.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
