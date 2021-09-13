Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08624409C70
	for <lists+linux-man@lfdr.de>; Mon, 13 Sep 2021 20:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236221AbhIMSnx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Sep 2021 14:43:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237369AbhIMSnw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Sep 2021 14:43:52 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 685BBC061574
        for <linux-man@vger.kernel.org>; Mon, 13 Sep 2021 11:42:36 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d17so6431962plr.12
        for <linux-man@vger.kernel.org>; Mon, 13 Sep 2021 11:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TzNXTgsniLsYSky7X7b1PpT+ud7YQ3uFdBRn37rPD+E=;
        b=IkTu8Mo9u2y+UunBkzJzWVErGZWq3aFgj060WUCvLe6tGWkteHRhf6t/cnudvmC0Vu
         tcTD3SPiu5pbG2Z2DaBak+W7wxcXQWo59/JVna2abXYt0jeliqL5VTJR0s3f+ElaF4WP
         vTyhIVHudlatQWSz+ZV1rtuaWN7wd2tQcPxq8vxDjPVHR1IPDoTPwHUOOuSfgpuExxy9
         roS7YgA4Awv/ijOOSNPnDPBXfurwSLvnm3Qyw7Nt+ehOUV/KGItGo4+FlEF5wFaoHLYL
         kGfqj0MNsGv0WrEBQPEn3/DM95UeX1/9npkehe87Bh9Cn7+YNgXgZRGiE5jjAVNQGxG/
         WVwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TzNXTgsniLsYSky7X7b1PpT+ud7YQ3uFdBRn37rPD+E=;
        b=WnPZQM+MrWiB0ST69hs1e9nXhNzTVKS7xuHdMAyUDuMdX+kqyHK5l5IkUgdT9LQNJh
         NlMhlTR7f28QphkW6mqNM7yMlSjPZiT/dzM1nC/I//3/crYmLCsjMqR2YE7c7zmW0SeF
         /QHn30UXpwRuiaZC0aBgkvd6TJrmf+kSzVxYHDcUIhaHLpkZ0sPQKGELAlx6UsF+TWmP
         K55VAANM42N1iQAWwX5BkDpagiIv3mngHxdBT5EZxsRW9bT/v3NGWTUQTCtGwNmkHS/3
         H0hb80aGE1o3vUAmyPbbO0oAeE/BtotKwZjGO6z1nKSZYzFworvvlqFf1KGEGWtmNseP
         h1pw==
X-Gm-Message-State: AOAM531NhxomPKxcLErKTemlOGJWXLCCOKbBuHGTDBONcV9I9jAUdRGM
        kOv8gfJn7zOehTmOxyypBq1DjO1YreJRc7WwDbmNgMWArFs=
X-Google-Smtp-Source: ABdhPJykCknExCDZPMvrCdawjxY1TKQLuJP8OS/4pwwkXBRrRHGHA51dySW2exaic3LdKsNzTYE5nBbkXNcF9tbrQC4=
X-Received: by 2002:a17:90b:f13:: with SMTP id br19mr923588pjb.149.1631558555822;
 Mon, 13 Sep 2021 11:42:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210911160117.552617-1-alx.manpages@gmail.com>
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Mon, 13 Sep 2021 21:42:24 +0300
Message-ID: <CACKs7VA=y2t3iGjKyzp-p1tt1hW3YsD6LMCqn0rotttOvk4pfw@mail.gmail.com>
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

More 2 cents from me :).

On Sat, Sep 11, 2021 at 7:01 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> Here's a first patch set adding a new LIBRARY section
> to man2 and man3 pages (I started with man2).
>
> It is based on (mostly cloned from) FreeBSD's man pages,
> as I liked that section from them.
>
> It normalizes the information we had in comments in
> NOTES or SYNOPSIS or DESCRIPTION.
> Or in most pages we didn't even have it, as we assume that 'cc' already
> handles '-lc' by deafult.
>
> Patch 20/45 was removed on purpose due to a mistake.
>
> Cheers,
>
> Alex
>
>
>
>
>
> Alejandro Colomar (45):
>   _exit.2: Add LIBRARY section
>   keyctl.2: Add LIBRARY section
>   gamma.3: Add LIBRARY section
>   request_key.2: Add LIBRARY section
>   write.2: Add LIBRARY section
>   wait4.2: Add LIBRARY section
>   wait.2: Add LIBRARY section
>   vmsplice.2: Add LIBRARY section
>   vm86.2: Add LIBRARY section
>   vhangup.2: Add LIBRARY section
>   vfork.2: Add LIBRARY section
>   utimensat.2: Add LIBRARY section
>   utime.2: Add LIBRARY section
>   ustat.2: Add LIBRARY section
>   userfaultfd.2: Add LIBRARY section
>   unshare.2: Add LIBRARY section
>   uname.2: Add LIBRARY section
>   umount.2: Add LIBRARY section
>   tkill.2: Add LIBRARY section
>   unlink.2: Add LIBRARY section
>   umask.2: Add LIBRARY section
>   truncate.2: Add LIBRARY section
>   timer_getoverrun.2: Add LIBRARY section
>   timerfd_create.2: Add LIBRARY section
>   timer_delete.2: Add LIBRARY section
>   timer_create.2: Add LIBRARY section
>   time.2: Add LIBRARY section
>   tee.2: Add LIBRARY section
>   syslog.2: Add LIBRARY section
>   sysinfo.2: Add LIBRARY section
>   syscall.2: Add LIBRARY section
>   sync_file_range.2: Add LIBRARY section
>   sync.2: Add LIBRARY section
>   symlink.2: Add LIBRARY section
>   swapon.2: Add LIBRARY section
>   subpage_prot.2: Add LIBRARY section
>   statx.2: Add LIBRARY section
>   stat.2: Add LIBRARY section
>   spu_run.2: Add LIBRARY section
>   spu_create.2: Add LIBRARY section
>   splice.2: Add LIBRARY section
>   socketpair.2: Add LIBRARY section
>   socketcall.2: Add LIBRARY section
>   sigwaitinfo.2: Add LIBRARY section

Not sure what value "libc, -lc" to the man pages. I think having a
standardized section for functions that require libraries other than
libc is fine, so you remember when you need -lm or -lrt (although IIRC
recently a few of these were folded in libc, at least for glibc). But
-lc feels kind of redundant. Does that mean you need to add -lc in
your Makefile? Some people might interpret it as such.

I think no library section = no special library required might be clearer.

Also, on FreeBSD it's quite obvious you're talking about THE library.
But on Linux, you have glibc, musl libc, diet libc... Is the plan to
document requirements for all of these? E.g link with -lm on musl
libc, no special flags on glibc..?

Thanks,
Stefan.

>
>  man2/_exit.2            |  3 +++
>  man2/keyctl.2           |  9 +++++++--
>  man2/request_key.2      | 18 ++++--------------
>  man2/sigwaitinfo.2      |  3 +++
>  man2/socketcall.2       |  3 +++
>  man2/socketpair.2       |  3 +++
>  man2/splice.2           |  3 +++
>  man2/spu_create.2       |  3 +++
>  man2/spu_run.2          |  3 +++
>  man2/stat.2             |  3 +++
>  man2/statx.2            |  3 +++
>  man2/subpage_prot.2     |  3 +++
>  man2/swapon.2           |  3 +++
>  man2/symlink.2          |  3 +++
>  man2/sync.2             |  3 +++
>  man2/sync_file_range.2  |  3 +++
>  man2/syscall.2          |  3 +++
>  man2/sysinfo.2          |  3 +++
>  man2/syslog.2           |  3 +++
>  man2/tee.2              |  3 +++
>  man2/time.2             |  3 +++
>  man2/timer_create.2     |  5 +++--
>  man2/timer_delete.2     |  5 +++--
>  man2/timer_getoverrun.2 |  5 +++--
>  man2/timer_settime.2    |  5 +++--
>  man2/timerfd_create.2   |  3 +++
>  man2/times.2            |  3 +++
>  man2/tkill.2            |  3 +++
>  man2/truncate.2         |  3 +++
>  man2/umask.2            |  3 +++
>  man2/umount.2           |  3 +++
>  man2/uname.2            |  3 +++
>  man2/unlink.2           |  3 +++
>  man2/unshare.2          |  3 +++
>  man2/userfaultfd.2      |  3 +++
>  man2/ustat.2            |  3 +++
>  man2/utime.2            |  3 +++
>  man2/utimensat.2        |  3 +++
>  man2/vfork.2            |  3 +++
>  man2/vhangup.2          |  3 +++
>  man2/vm86.2             |  3 +++
>  man2/vmsplice.2         |  3 +++
>  man2/wait.2             |  3 +++
>  man2/wait4.2            |  3 +++
>  man2/write.2            |  3 +++
>  man3/gamma.3            |  5 +++--
>  46 files changed, 143 insertions(+), 26 deletions(-)
>
> --
> 2.33.0
>
