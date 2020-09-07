Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B533725F3AA
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 09:13:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726800AbgIGHNX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 03:13:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726443AbgIGHNV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 03:13:21 -0400
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F394BC061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 00:13:19 -0700 (PDT)
Received: by mail-oi1-x241.google.com with SMTP id x19so12785079oix.3
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 00:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=eETryqJbTXIE1kE95W5i2N5z8rjrqGcOKwWemh+qoho=;
        b=h+WNtiXz4cpKH3g9vjCKvq2igSNBgN1qEJQ8wRNYb3FMAfWm0GdWene6+tOTT4orG4
         W09zFqUy0/WJvfQkJEzf2BRZEzwSrXN4h7bm/mjWLWEBVMBKjBoR17qiZUOdskQVKrFz
         sHiylz8/hOW9iN9z/V9xMBHghIRW+KRkhKzQFBv+0ubs5UXa8rjpCgOLvo8Kp4FPr6RP
         VYvPPTVoscHD+/Uia2z4YWUnxwQTRrz/I4W1DbO5Jk9GzbahpsT9Y8gImHWHE6+T+21K
         /a0nFoik/lZeBMVmqPmc9RcKkVHInW/TCegXriUSg774dvBXGfD7nfoZWWHPJNFAYZjb
         TjAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=eETryqJbTXIE1kE95W5i2N5z8rjrqGcOKwWemh+qoho=;
        b=dm87s20U7WO7uBSMKjqKu9EGRfvrr98l3lEZ3Ms9NY0ldig5Tu8UUTQbSvzjQ14/8e
         LpoRPAINS0XYMoo8/XOCTWPxMZQkRnWpZF8dqUn/i0djPK8Dy82XmaW8l09/MY7ERZDy
         DcL3i+flkX3VWf5R/g70H82w6XWDggszLYHPiaj7pr45jFJ/jp6Scm761A94m1k58Mhg
         AQrr3GSI4GhNXjJTI81z3TqfKLKSqGPm3AbQF5LY7R5nQ1p0120bmuqjg8+x9wMQbfRu
         3IFsgZCYV4DiIyOdOT1tlWYRFKa46i11wksi1EVsMiMYnIyeCpqAwtfeY0YAWFhWvWhS
         /UHw==
X-Gm-Message-State: AOAM530lnBtuSorwtxGScUk6vYkvOUoF1jtOPF7MWvTugpVbkvKNkdDH
        w0OCpgxqG2wv3UvRRnxV9oP1f860qyKBRplP2O8=
X-Google-Smtp-Source: ABdhPJzFU3bsp7WCDk5FIz/PIbrCEf3717HPr7PeNTvr+cDu3QIG3zTienb5F+MwHIP1w/VuhKMMW7gsGGE91afzCmU=
X-Received: by 2002:aca:fc85:: with SMTP id a127mr11528007oii.148.1599462799329;
 Mon, 07 Sep 2020 00:13:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200904161203.598281-1-zwisler@google.com>
In-Reply-To: <20200904161203.598281-1-zwisler@google.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 7 Sep 2020 09:13:08 +0200
Message-ID: <CAKgNAkiAkyUjd=cUvASaT2tyhaCdiMF48KA3Ov_1mQf0=J2PXw@mail.gmail.com>
Subject: Re: [PATCH] Add NOSYMFOLLOW flags to mount(2) and statfs(2)
To:     Ross Zwisler <zwisler@chromium.org>
Cc:     Ross Zwisler <zwisler@google.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Ross,

On Fri, 4 Sep 2020 at 18:12, Ross Zwisler <zwisler@chromium.org> wrote:
>
> These flags should first appear in Linux kernel version v5.10.
>
> Signed-off-by: Ross Zwisler <zwisler@google.com>

Thanks for the patch. I will try to keep track of this, but if you
happened to notice whether this goes in in 5.10, and pinged this mail
thread, that would be great.

Cheers,

Michael

> ---
> The nosymfollow kernel code has been merged into Al Viro's tree and
> should be part of the v5.10 merge window.
> https://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git/commit/?h=work.misc&id=dab741e0e02bd3c4f5e2e97be74b39df2523fc6e
> ---
>  man2/mount.2  | 10 ++++++++++
>  man2/statfs.2 |  4 ++++
>  2 files changed, 14 insertions(+)
>
> diff --git a/man2/mount.2 b/man2/mount.2
> index f565ee578..039e4b83b 100644
> --- a/man2/mount.2
> +++ b/man2/mount.2
> @@ -280,6 +280,16 @@ the
>  flag to
>  .BR open (2)
>  was specified for all file opens to this filesystem).
> +.TP
> +.B MS_NOSYMFOLLOW
> +Do not follow symlinks when resolving paths.  Symlinks can still be created,
> +and
> +.BR readlink (1),
> +.BR readlink (2),
> +.BR realpath (1)
> +and
> +.BR realpath (3)
> +all still work properly.
>  .PP
>  From Linux 2.4 onward, some of the above flags are
>  settable on a per-mount basis,
> diff --git a/man2/statfs.2 b/man2/statfs.2
> index 0fc537c14..d5edf2a50 100644
> --- a/man2/statfs.2
> +++ b/man2/statfs.2
> @@ -206,6 +206,10 @@ Writes are synched to the filesystem immediately (see the description of
>  .B O_SYNC
>  in
>  .BR open (2)).
> +.TP
> +.B ST_NOSYMFOLLOW
> +Symlinks are not followed when resolving paths; see
> +.BR mount (2).
>  .PP
>  Nobody knows what
>  .I f_fsid
> --
> 2.28.0.526.ge36021eeef-goog
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
