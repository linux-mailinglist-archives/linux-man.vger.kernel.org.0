Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C1A21B90D6
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2020 16:24:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726189AbgDZOY3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Apr 2020 10:24:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbgDZOY3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Apr 2020 10:24:29 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98B00C061A0F
        for <linux-man@vger.kernel.org>; Sun, 26 Apr 2020 07:24:27 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id j20so11441827edj.0
        for <linux-man@vger.kernel.org>; Sun, 26 Apr 2020 07:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=WPlAYJayklU9r2wPJuEyGHwvT6+8vfKo/omqGwLT3fo=;
        b=C72qEWoUwkKcnLnNxsdlYzhQX5f4swnTASvgbjYpEe1Amj5WiZNV55C59Jj3cpD4C+
         HICBu8DqplGwq10eHo0RCbdQWCkWryHGa3qQEbHAb57w5Up3KXRQ0anoHkKyJVeKXuY8
         8OWDN7pd01juhZ6M+T4pvNu4LhtiL6ct821VVMIRLgWdyUKUrXiTyAsedqdpUTBH+WfU
         ozP7LGSuSMaDGTjViKNIiiE8FUBaMfTIJYHzPBZD2+Wz4nCo5o1jik9BlXDPERYrdnPt
         CtJ2YRg1dG0hWt8Z+agniXvQNQwBbNWQ6wIkduYI5SeKmEV+HEajhLB0F603L8M7DAKy
         YsJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=WPlAYJayklU9r2wPJuEyGHwvT6+8vfKo/omqGwLT3fo=;
        b=p0JN8isOa3Zpxz+/IyBMzAscg1XVaXY0Q4Cn5ubGopB/9FFD2QnHTrtrk4GuLwkBPc
         kYZCV5h/6CjDXOnVap48q5cR0nwvR89wEEIdH+rMhGQO2CFe92L+XeI6ePWMYjahxQ7F
         SEHKIqJpKLl9z22gg0c/BCuqVj7fdZzws3tCw9f7YXqjqWi7B6lZ5bVmteBP2j6g6LWq
         bO7ie6hFfkWMTkplzWdxvHIg+GMPSdgSfBkVtKm2/I8eQ+H16SS2pW0J3NGE1Nj/gik2
         EM7mM0Sa9HSCDonGbGK++lCmpDgq0TtKMFQvrf/+z6SPhEJuNwE+P/sgO6K/wPcTX8n8
         Ykpg==
X-Gm-Message-State: AGi0PubdMiiJ8O9LYmGztPFOK2fV9lFF40pIngZ4EEfhT74geyKvopgH
        8lhMH4r+VAohNcxUXrBxvRBO2OQtwiNjGYcW2HGFgfCn
X-Google-Smtp-Source: APiQypI+yuVEiHiDQHIT10+7rmpwoePlDeyJFu1nBu5Ls3CFuJ6vfebMl9QCAjeQTSMcPM8jf7H72Pp4ygAL2UKW+JU=
X-Received: by 2002:aa7:cd6a:: with SMTP id ca10mr14964204edb.332.1587911066033;
 Sun, 26 Apr 2020 07:24:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064820.GA31701@Debian-50-lenny-64-minimal>
 <4a026c82-7dc1-164b-186d-b4dceb3ebea9@gmail.com> <20200426111252.GE2031@Debian-50-lenny-64-minimal>
In-Reply-To: <20200426111252.GE2031@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 26 Apr 2020 16:24:14 +0200
Message-ID: <CAKgNAkiRBUkOgu47JqEML=hhV=Ra4zh9WRJjWxWVG+LHZGgC4A@mail.gmail.com>
Subject: Re: Errors in man pages, here: rename(2): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On Sun, 26 Apr 2020 at 13:12, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hallo Michael,
> On Mon, Apr 20, 2020 at 11:40:26AM +0200, Michael Kerrisk (man-pages) wrote:
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > > **
> > >
> > > If newpath exists, this is already the reason for the failure?
> > >
> > > "If I<newpath> exists but the operation fails for some reason, B<rename>()  "
> > > "guarantees to leave an instance of I<newpath> in place."
> >
> > I do not understand this report. Please elaborate.
>
> Trying to 2nd guess what the original translator, who unfortunately is
> no longer active, might have thought:
>
> If you want to rename but the new path already exists, how can there
> be other reasons for failure at all?

Because renaming onto an existing 'newpath' is permitted! Earlier, the
man page says:

       If newpath already exists, it will be atomically replaced, so that
       there is no point at which another process  attempting  to  access
       newpath  will  find it missing.

I think the translator must not have understood this.

> If this still does not make sense, please close this report without
> changes, of course.

Please close.

Thanks,

Michael
