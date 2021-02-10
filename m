Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B418316A98
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 17:00:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231642AbhBJP7t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 10:59:49 -0500
Received: from l2mail1.panix.com ([166.84.1.75]:61965 "EHLO l2mail1.panix.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232022AbhBJP7o (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 10 Feb 2021 10:59:44 -0500
X-Greylist: delayed 1224 seconds by postgrey-1.27 at vger.kernel.org; Wed, 10 Feb 2021 10:59:44 EST
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
        by l2mail1.panix.com (Postfix) with ESMTPS id 4DbP7m6qt9zDQh
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 10:39:16 -0500 (EST)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
        by mailbackend.panix.com (Postfix) with ESMTPSA id 4DbP6t3vhHzTTr
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 10:38:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
        t=1612971510; bh=o2NawRGBfoj6aoiey4oHJJ1A+31DMUf++7qelwbCrts=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc;
        b=I8wFSFj2tWRkiamZVpozUtRCre75iSnrE2WRRCj9juhOwP5tfKBLLrGLU4VlVLvpz
         2+JnWl7bRwHwkXiKk+TSNulDzKmH88eS2bXcouWipu0K+6nB7rqEQupLVJ37sVkKCF
         sIWE8LAH9PrTbxqxUGoJ/T8nQQhenDWspGhsns1Q=
Received: by mail-ej1-f53.google.com with SMTP id lg21so5013243ejb.3
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 07:38:30 -0800 (PST)
X-Gm-Message-State: AOAM531TkOnw6sQ7zixAZ13rtUXJt5erjdxBHNOR9KMZl06cLFFc7sin
        vxZEU9NJL8zsgiYxeVQKUVT4qDD4PQj3FVJ7frA=
X-Google-Smtp-Source: ABdhPJwpYadNiW5NkTd4OQd1ehI3JL5N43XyC8bUmaxuxsMl8QbfrjSZ/Lmfef9ozXgDkkfJTnVdSqE8vkgBZI1AIRA=
X-Received: by 2002:a17:906:7cb:: with SMTP id m11mr3616947ejc.332.1612971509578;
 Wed, 10 Feb 2021 07:38:29 -0800 (PST)
MIME-Version: 1.0
References: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
 <17824adc-1b73-cae4-781a-6ad8893c3c66@gmail.com> <864a2689-0c9a-40c9-3732-d99bc44fed4d@gmail.com>
In-Reply-To: <864a2689-0c9a-40c9-3732-d99bc44fed4d@gmail.com>
From:   Zack Weinberg <zackw@panix.com>
Date:   Wed, 10 Feb 2021 10:38:18 -0500
X-Gmail-Original-Message-ID: <CAKCAbMgpXzH3nFyyn3fO3rjwNsG1ZBEkK89ce6r1JLPQL9oKZA@mail.gmail.com>
Message-ID: <CAKCAbMgpXzH3nFyyn3fO3rjwNsG1ZBEkK89ce6r1JLPQL9oKZA@mail.gmail.com>
Subject: Re: queue.7, stailq.3, (simpleq.3): Document SIMPLEQ as an alias of STAILQ
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Feb 10, 2021 at 10:13 AM Alejandro Colomar (man-pages) via
Libc-alpha <libc-alpha@sourceware.org> wrote:
> > BTW, a suggestion for glibc:  glibc could simplify the code with things like
> >
> > #define SIMPLEQ_ENTRY(type) STAILQ(type)
> s/STAILQ/&_ENTRY/
> >
> > It would make it more obvious that they're the same thing.

I don't know about anyone else on the glibc team, but I personally
consider the entirety of <sys/queue.h> to be provided only for some
degree of backward compatibility with old applications that were
ported from BSD; new code should not use it.  I'd *like* to formally
deprecate it, but I expect that would cause too much breakage to be
viable.  Anyway, I hope you can understand why I'm not interested in
messing with its contents at all.

(Can we add a statement to the effect that new code should not use
<sys/queue.h> to all of the related manpages, please?)

zw
