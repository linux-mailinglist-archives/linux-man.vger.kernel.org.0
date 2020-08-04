Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 782EA23BAC5
	for <lists+linux-man@lfdr.de>; Tue,  4 Aug 2020 14:55:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726090AbgHDMzf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Aug 2020 08:55:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726058AbgHDMze (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Aug 2020 08:55:34 -0400
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com [IPv6:2607:f8b0:4864:20::c44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76162C06174A
        for <linux-man@vger.kernel.org>; Tue,  4 Aug 2020 05:55:34 -0700 (PDT)
Received: by mail-oo1-xc44.google.com with SMTP id s190so7966399ooa.13
        for <linux-man@vger.kernel.org>; Tue, 04 Aug 2020 05:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=/6KvGnn6snhyvKKPmDIdSw/7/7L/ZaYWcuUoLobinu4=;
        b=TWLrudB8Pvp6Q8I6FCV0qLhHu0KvRV6GBjbyqE7OHe3SCKfo8bfdsNZP6k+JEqMh6n
         wnq1qfTxRKslX7vt3E8cH/aTv2rtq56/QXFS+lxrvxqCIO+hGKZWv4cR+75gCBzAVyb2
         YUbRlbcEG9ya5X0Khg15Y1pQfms3f7xI7WHZO9L9WVx8vUmvsdDi1HQ2MFz2p7bjMfKF
         IYC8aGXHYp58YZlvqFrNeZOkx05pfHwU8fdmUvkzcNoogUI+vImdGUZXgapidF1EpsdX
         gvXlA1FNYgM7Q0EJabFqly42Agmt/mt+sg6wLNj/CQvxyEZ0/hv3mjNs1bZNP9Tw3yBM
         zKYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=/6KvGnn6snhyvKKPmDIdSw/7/7L/ZaYWcuUoLobinu4=;
        b=ZfsB7BgFZ+ysAjiiHcT4xwigJj3niVLnvvBhDgSM+J+g+Ty00PDNVbbLl6Ni7eOstr
         Fn2KJP6B4qoKmZ/goNYce/v8qYNFUzAuSvGhoqqntvx2L0lENCyRAk0hHvwgLsANFgvq
         3hkVP0QGLQXoK4LxXzLUuXZIKl9yUDRgq6l94w3nTbnWtQ9AabxM4pmm7jenLpAgFdTX
         n2HFmBimdbthO3SaaXvDGO7VyR1NkfLi05a307DXJ5sLG6jTOdvnc3MmjJa12gE7DqVS
         JGhc/JWqs6fxj5Zse1Q48rxp1ir1+cfwhhdGcqFeU0xn3Z44EOooZ9XWE0a4OR+mX4cQ
         TTlA==
X-Gm-Message-State: AOAM532S4Rzob8OgMKifcXYy7GnOJ0Lr8d5t3pvhzpwjy3WGAzOu5nGQ
        frXvuCtE66AXXVcg8c/v4AKGHxByeAA+m13A8PM=
X-Google-Smtp-Source: ABdhPJw0TXrZ5oV54QhVW4qZsO+ffYC1s3n5/cni7444Bg00ysp6k+Rw8+83RIUWYcoiJIxsvwlKMXafBKZk1L6bKsk=
X-Received: by 2002:a4a:a21d:: with SMTP id m29mr18395321ool.17.1596545733737;
 Tue, 04 Aug 2020 05:55:33 -0700 (PDT)
MIME-Version: 1.0
References: <1596422293-3122-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
In-Reply-To: <1596422293-3122-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 4 Aug 2020 14:55:22 +0200
Message-ID: <CAKgNAkh=6rB653=auHyMRL=Xfo5+aDM7upbzaXDC9mofPO+hvg@mail.gmail.com>
Subject: Re: [PATCH] loop.4: Document loop_configure ioctl
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

Thank you for your patch. Please see my comments below.

On Mon, 3 Aug 2020 at 04:38, Yang Xu <xuyang2018.jy@cn.fujitsu.com> wrote:
>
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man4/loop.4 | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>
> diff --git a/man4/loop.4 b/man4/loop.4
> index 2dcbac807..abf722a25 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -177,6 +177,41 @@ This value must be a power of two in the range
>  otherwise, an
>  .B EINVAL
>  error results.
> +.TP
> +.BR LOOP_CONFIGURE " (since Linux 5.8)"
> +.\" commit 3448914e8cc550ba792d4ccc74471d1ca4293aae
> +Setup and configure all loop device parameters using the (third)
> +.BR ioctl (2)
> +argument at once.
> +This argument is a pointer to
> +.I loop_config
> +structure, defined in
> +.I <linux/loop.h>
> +as:
> +.IP
> +.in +4n
> +.EX
> +struct loop_config {
> +    __u32               fd;
> +    __u32               block_size;
> +    struct loop_info64  info;
> +    __u64               __reserved[8];
> +};
> +.EE
> +.in
> +.IP
> +In addition to doing what
> +.BR LOOP_SET_STATUS
> +can do,
> +.BR LOOP_CONFIGURE
> +can also be used to set the correct block size immediately
> +by setting loop_config.block_size. Explicitly request
> +direct I/O mode by setting
> +.BR LO_FLAGS_DIRECT_IO
> +in loop_config.info.lo_flags. Explicitly request read-only
> +mode by setting
> +.BR LO_FLAGS_READ_ONLY
> +in loop_config.info.lo_flags.

The last two sentences (starting "Explicitly request") are hard for me
to understand. Could you expand the wording here a little please to
clarify?

Thanks,

Michael

>  .PP
>  Since Linux 2.6, there are two new
>  .BR ioctl (2)
> --
> 2.23.0
>
>
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
