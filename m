Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3439B320704
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 21:08:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbhBTUIc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 15:08:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbhBTUIb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 15:08:31 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60B8AC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 12:07:50 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id l23so8412277otn.10
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 12:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=HybTeXQb7op7+U9gJUOB/JVz2Lgv0mX3WEpdxXbwsOw=;
        b=SL3I4pK6xr6v1twrxDzOi9a5IMveLfzOHPHO+h/6/08+xZOroc9MAXo36L1K9AII0N
         bbBBhFkI/lDS09F1UQhrLIe9LaWaFa3uFcPA23sI7BOBgStaIpWMwvYcYX/Q1KH7GxEG
         rauaONP6vhH0yTdUvqGhSRQeb5/0dvzJe2PTXUe92PHrf+vritBoVkhC7ChhEmsJqSSZ
         l6YnR2EjJLi9cJ5ZQItKSRx3rquIx7cypB+xtuCugEUKZ4yBWOsoEIDZFaZ3yDX/ACMy
         0w03/J1Y0ZXtHAYouZK76glPp8+hxVLhO+K9/GollmqA2gAqRPW5PCWIIrfiPT27xoEL
         R6JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=HybTeXQb7op7+U9gJUOB/JVz2Lgv0mX3WEpdxXbwsOw=;
        b=ojIRZEVagouLDGuvwiUhL3e08Y4vCDUjJfHdQ9xiwoNxPLOeoPEIufExpArDxV5cV/
         1s4VsLOjftASm2Tg9ZdU+e59z5r4vCvE2J2baTklJ04SHTlhSHsogvyMI6/VCxjzPQrt
         AiFRO3AdkPHX6w4wLXOCEdrk6GpVff8w8b+ZKFhaQp6JnF3nnmknhnpq4GQRRWuniDd/
         GIjsiAez1IbMRQCB3f6UOyfC3AvX11B95jEtTfYWH/lH0NdyODvlXpVdI3VKnsTPTFyL
         UcMJdq83LyMzatEoCGBlyMG1RfYwKZAVOEZsZeOBrv4RXeAyEWl37RK4USe+6u9L+9lo
         vxhQ==
X-Gm-Message-State: AOAM530S3HtLHRBuHSM7REUC6+dSYVO1/WnHtRhqMaidNIQs4MftNS24
        NnU2Hd2b0xw7uXSAKimyY/BCSDoNVIIxCBeuzvc=
X-Google-Smtp-Source: ABdhPJw7c71cflCH9Aap90yxWbEyhnz2VqJU2AYEimEbdH/XFr6W4CeuYONmBtSyIiqDbRQMw4gtAGpyMHvGdAtM3QM=
X-Received: by 2002:a9d:dc6:: with SMTP id 64mr12292909ots.114.1613851668705;
 Sat, 20 Feb 2021 12:07:48 -0800 (PST)
MIME-Version: 1.0
References: <CAKmF0pOMR9OMd4=ikHu31QGCVOWu10vvH4OzzgbUtPGGdbW05Q@mail.gmail.com>
In-Reply-To: <CAKmF0pOMR9OMd4=ikHu31QGCVOWu10vvH4OzzgbUtPGGdbW05Q@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 20 Feb 2021 21:07:37 +0100
Message-ID: <CAKgNAkgHu8jMNfqcXjxvwSDP73fzA_2iYTRgucRn=UA1t=QHrg@mail.gmail.com>
Subject: Re: Misleading documentation in Netlink(7) man page / doesn't match
 with Kernel
To:     Philipp Schuster <phip1611@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Philipp,

On Sat, 20 Feb 2021 at 16:25, Philipp Schuster <phip1611@gmail.com> wrote:
>
> To whom it may concern,
> I'd like to inform you about a bug in the Netlink(7) man page [0].
>
> It describes struct nlmsgerr the following way:
>
> struct nlmsgerr {
>        int error;        /* Negative errno or 0 for acknowledgements */
>        struct nlmsghdr msg;  /* Message header that caused the error */
> };
>
> but according to Kernel code [1] [2] [3] it actually should be:
>
> struct nlmsgerr {
>        int error;        /* Negative errno or 0 for acknowledgements */
>        struct nlmsghdr msg;  /* Message header that caused the error */
>        /*
>         * followed by the message contents unless NETLINK_CAP_ACK was set
>         * or the ACK indicates success (error == 0)
>         * message length is aligned with NLMSG_ALIGN()
>         */
>        /*
>         * followed by TLVs defined in enum nlmsgerr_attrs
>         * if NETLINK_EXT_ACK was set
>         */
> };
>
> This discrepancy led to errors implementing at least a Rust library which
> made wrong assumptions about the returned value.

I'm a little unclear. Do you mean that the manual page should include
the additional comments?

Thanks,

Michael

> [0] https://man7.org/linux/man-pages/man7/netlink.7.html
> [1] https://elixir.bootlin.com/linux/v5.11/source/include/uapi/linux/netlink.h#L112
> [2] https://elixir.bootlin.com/linux/v5.11/source/net/netlink/af_netlink.c#L2416
> [3] https://elixir.bootlin.com/linux/v5.11/source/net/netlink/af_netlink.c#L2440
>
>
> Kind regards
> --
> Philipp Schuster



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
