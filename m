Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0513F34804D
	for <lists+linux-man@lfdr.de>; Wed, 24 Mar 2021 19:20:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237514AbhCXST4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Mar 2021 14:19:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237443AbhCXSTr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Mar 2021 14:19:47 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9CD6C061763
        for <linux-man@vger.kernel.org>; Wed, 24 Mar 2021 11:19:47 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id l123so17939424pfl.8
        for <linux-man@vger.kernel.org>; Wed, 24 Mar 2021 11:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=h6/N9RKyPBRNOVZ37cEWW9zTuEIoX2xnbZOjaOF1618=;
        b=N+EKaAQEXXgiUxNvRAiol+RrgqrODC9uXsgU+i8Bi/rCr+JlD8myl0AWgArOqRRD3M
         H8AAgZ58mzh7menY/d3rwcd15WDtX1wBAhjko52EJYmGRvQM9eD7XDqsyPcyQhykoRPS
         YEdJgt6avflkEqL6Kx48atGuPQsXr7U03nhl0OtzTUHUPvoRf7WLJCMqPiyONU0KMU84
         kY7OvO28pfla5qY2TeRlFXx7A0M7i/srxrodAtLzdRu/gXlZX76U75IZr5k9Vd7FGnkt
         Yh3vahmmVb3n7KLm+hikrYxdSjpi6PlGCa/JwSnoyRx7BJt5JfzumvDRFWyIwTY9gWw5
         VGhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=h6/N9RKyPBRNOVZ37cEWW9zTuEIoX2xnbZOjaOF1618=;
        b=VHrQVOzfWNj6RpgvsVqgLtdIGJl1QYDDnZ+KP0R3D9SVdX3TULq8TmaJRWw/dFZvoC
         0LnjaGw4ctmHG3V4dgZcaDRI1Bf8mdDFvtzlmX0CP2KEx4hvReWuhzfgUZYYVX+p9KnQ
         1/6UjkCIoyXIuDX0yz2Y1MM5woIHVLzI2xBDaeNIbuCYqXxnortu1D/LS4z/TFZvfkko
         2kjqexZ2tNM0U8GctJBsmDZWXy/Z4erINQrE92+f1z0HD+ZOxdckxDoGa1aV+yDocwbi
         RzBQey0UDWnxN9rBoKGyl+HGRyrb+kBShHkezrTJZNCJJp0j+Ve+5SpabX09GPFdzotg
         PnpA==
X-Gm-Message-State: AOAM531UpSEHlgMzchvWmb1FcdPL+LDnlW9djisdKWcV9vKs1PNBy9cH
        lqQiI0OY085ml+1CXOz2D6dTYF4HzG0Kri0BqJ8=
X-Google-Smtp-Source: ABdhPJy04AAMY8GEkEfprYA+oAEEC9A4SosVI+ulXOLqFMYy80EbAUM/cdZ9S2+jXbVuH5mV45u/S9LmA0bIB6GCZLE=
X-Received: by 2002:a62:e404:0:b029:1f1:5cea:afbd with SMTP id
 r4-20020a62e4040000b02901f15ceaafbdmr4390885pfh.5.1616609987184; Wed, 24 Mar
 2021 11:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <2836850.zfUPAMbaDK@opensuse>
In-Reply-To: <2836850.zfUPAMbaDK@opensuse>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Wed, 24 Mar 2021 20:19:35 +0200
Message-ID: <CACKs7VBDD1DNdapvJSXBgVc3vP7Yi9Et9BeEwcBB6s1Ao=4spA@mail.gmail.com>
Subject: Re: /proc/<pid>/stat file documentation
To:     =?UTF-8?B?U3rFkXRzIMOBa29z?= <szotsaki@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi =C3=81kos,

On Mon, Mar 22, 2021 at 10:50 AM Sz=C5=91ts =C3=81kos <szotsaki@gmail.com> =
wrote:
>
> Dear Michael,
>
> I found a documentation deficiency on [1] in /proc/<pid>/stat file (Table
> 1-4). May I ask you to indicate in this table that ESP and EIP have non-z=
ero
> values only when the process is exiting or dumping core and the calling
> process has the permission for PTRACE_MODE_READ_FSCREDS | PTRACE_MODE_NOA=
UDIT.
> For implementation reference see [2].

You're pointing to the in-kernel documentation (link [1]). As far as I
know, that's not maintained by the man-pages project, so they might
not be able to help with changing that.

The man page for proc is here though:
https://man7.org/linux/man-pages/man5/procfs.5.html, maybe the info
can be added there?

>
> Please, also note that for many of the reported numbers in this table the
> aforementioned permissions are needed to be displayed correctly (as non-
> zeroes). They are start_code, end_code, start_stack, esp, eip, wchan,
> start_data, end_data, start_brk, arg_start, arg_end, env_start, env_end, =
and
> exit_code.
>
> A small addition: I also observed that on [3] the "blog" points to 404.

I get an SSL error in Firefox ("Secure Connection Failed" and
"PR_END_OF_FILE_ERROR") when trying to click the blog link
(https://blog.man7.org/).

Stefan.

>
> Thank you and all the best,
>
> =C3=81kos
>
> [1]: https://www.kernel.org/doc/html/latest/filesystems/proc.html
> [2]: https://github.com/torvalds/linux/blob/master/fs/proc/array.c#L481-L=
502
> [3]: https://www.kernel.org/doc/man-pages/maintaining.html
