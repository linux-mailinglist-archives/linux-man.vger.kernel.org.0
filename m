Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68AC11A791E
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2020 13:08:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438955AbgDNLIt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Apr 2020 07:08:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2438931AbgDNLIN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Apr 2020 07:08:13 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 986A7C061A0C
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 04:08:12 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id s29so11018692edc.1
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 04:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=cIusKy0r/0WwrSG98slxIg4eAVaoZWHHNBgm5QP3oj4=;
        b=WNigRdXVxEaQBDTDlywZw41aNjS1g0Tvufju6LwODOwioh5GYek8QJ17fy8FRtVtku
         UJQa6oYZOF9zZb+0q0xP4IYSoxE2l9+Lc5PbQDBqkjXxY5SWkeVSqu/SnZfB+/EiVBrh
         qPXrz0/WpJ3xMgkjO5nmIozPzPq6cIMYGvTxxCBxQtcPaP1ewYVcb+thwXvkHoLfs9Oq
         gj5SXygTZ75A54ZS7Vewi53S9PBiVj4wGGsJiYsWdNu39Qby5DdAP6P3OZl6t6JZ4FL5
         8vT2YPnyNdDfy5TKErn5X4ijFT1ggp9qXOIgWeHGzOwycVZ8iPXtuiIh1K0YFGT8xs/i
         l7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=cIusKy0r/0WwrSG98slxIg4eAVaoZWHHNBgm5QP3oj4=;
        b=DL9rcZDtFJatbBbaJlj0IbSRkjNdb14/xtCtx9QdYJdS3FxPW67FY2cOltgaEAgYOc
         Na4D05co/c7O3PzP+7nOi82u8/pAspeDecXRUSkEa3QgQeIGT1ZX2AUROFodD7sbTBau
         ficxS9Z9yz+GxhyB7BY3o0aqi+PnLIQ0BQL/DWLGmAWC0OzI+mYyjjpwq5FIf7uTtmKR
         C8pRxYQVRmhf3GRBC2+t0Tt+WBAesIStgmaBuPMnISHSTCiXRUEC3Xvkhb7dRJIpAu3i
         +rFOYpqcHoHQQXIyaNhaOVuMP5NA4jYRwYr79uoAMf/p6vsZ9kiCnWu6yqGFBP535+6I
         askw==
X-Gm-Message-State: AGi0PuZNuM4QwWQqJGP3uvYf0hVvG34wMjyVL8fufR0h31WTYAVmfdFG
        jeUXaNh+FNYx3ttvM777wSJuTOrdAzZDyQI/HAE=
X-Google-Smtp-Source: APiQypKzJ/TCdbHxSW40KrdCjgahw0TzGuzDr/TR3c9FqZPSF9Fto9ru6aUcnoyVhLp6O0PPUslPiIxQLbygnkMlXkw=
X-Received: by 2002:a05:6402:16da:: with SMTP id r26mr5706703edx.375.1586862491155;
 Tue, 14 Apr 2020 04:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <545F8D2E.5030308@gmx.de>
In-Reply-To: <545F8D2E.5030308@gmx.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 14 Apr 2020 13:07:59 +0200
Message-ID: <CAKgNAkh-HBjh5AqNpTTfQjgeJVYx9LGpGDzO87zMWEmgMOd0bA@mail.gmail.com>
Subject: Re: ioctl_list.2: complete overhaul needed
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Mike Christie <mchristi@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Heinrich,

On Sun, 9 Nov 2014 at 16:52, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>
>
> Hello Michael,
>
> the current ioctl_list.2 man-page descripton starts
> "This  is  Ioctl List 1.3.27, a list of ioctl calls in Linux/i386 kernel
> 1.3.27."
> So the man-page represents the state of Sep 14th, 1995.
> It enumerates only 421 out of over 1200 calls.
>
> The list contains hex values of different constants. I just wonder for
> which architecture (alpha, i386, mips, or sparc at that time). No
> information is supplied.
>
> Current values depend on the architecture, e.g.
>
> On amd64
> 0x82307201      VFAT_IOCTL_READDIR_BOTH
> 0x82307202      VFAT_IOCTL_READDIR_SHORT
> 0x80047210      FAT_IOCTL_GET_ATTRIBUTES
> 0x40047211      FAT_IOCTL_SET_ATTRIBUTES
> 0x80047213      FAT_IOCTL_GET_VOLUME_ID
>
> On mips
> 0x42187201      VFAT_IOCTL_READDIR_BOTH
> 0x42187202      VFAT_IOCTL_READDIR_SHORT
> 0x40047210      FAT_IOCTL_GET_ATTRIBUTES
> 0x80047211      FAT_IOCTL_SET_ATTRIBUTES
> 0x40047213      FAT_IOCTL_GET_VOLUME_ID
>
> Hence hex values should be removed.


As you suggest, I've removed the hex values from the lists.

Thanks,

Michael


> I further suggest to remove all documentation of structure details.
>
> The following command can be used to create the raw data for a new list
>
> grep -GHrn -B3 -A3 --regexp="\s_IO[R|W|RW]\?[_BAD]\?\s*(" \
> include/uapi | \
> sed ':a;N;$!ba;s/\\\s*\n[^-]*-[^-]*-/ /g' | \
> sort | \
> grep --regexp="\s_IO[R|W|RW]\?[BAD]\?\s*(" | grep -n ''
>
> Best regards
>
> Heinrich Schuchardt



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
