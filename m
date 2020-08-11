Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 933C3241F3B
	for <lists+linux-man@lfdr.de>; Tue, 11 Aug 2020 19:29:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729325AbgHKR3n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Aug 2020 13:29:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729218AbgHKR3l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Aug 2020 13:29:41 -0400
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B07FBC06174A
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 10:29:40 -0700 (PDT)
Received: by mail-il1-x142.google.com with SMTP id c6so11379888ilo.13
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 10:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sysmgr.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/s61rSkiOseXW43LDVy/P9Oy+oq8rWhujfDX8qCU1h4=;
        b=UDlGHm2pjRvylzP/6YeuLoNZoSiQfXFLwmZ0EZ7kpkde7RlkcW7BvcgUD+/kLLpcCp
         KtEHDyRkOEavyEYFj7pGDdN0nqGSq+ita81SPL0x6vy3tsd8kuARpO8maCsGKaXVnXzF
         I81bQrCSHe4MEs+9IfmyY/EGR/9AJmP7lRh2n4r50CiB8e4TxzeNyp3MErdgxhdc88i+
         RJ1pHtb6xjLpMXuw7FYqr1kJKckh7AijJ7WFMzfNHo5rpOrxkDSEGMY3uiBsQ4VMysB6
         EhgebXDsuLZuMCQwvWMU7saaMzk9ZDewrakYH8Tzwo79IzIknT5E6iF/UDYddoUzRWlJ
         748w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/s61rSkiOseXW43LDVy/P9Oy+oq8rWhujfDX8qCU1h4=;
        b=kQNE4gehg22NIXaaf39pS+zW9DZh9IrBhgB9+PAIvh5KjMabAvDFhIjoRlCLJuIv81
         o6+rALRl27iKC0FvbnAJS2s0KTvk27S56cZL/OqRdnEOnBsRl/rxsqp7fysq9WzmguKd
         zJpa11ZriMG9NW8FJ+sQmvurJhJVPebdBy+OQY26Knyw1wuMitCGBhUtF/z/l1tS3D4t
         9VB9DZgcrSRvk9mk5nuKy+0hJD/shT6rharApdRTwVYEbgv7b0PxgGu5oXatK+AoTncP
         g+h+Z+ep5KcZUpTROwkOz711vXzI3cf/+bLnvMg+CQFHByQDPOCNK7OnWdhxf9KB0rLN
         wwMg==
X-Gm-Message-State: AOAM5332vrrT+QZFa9S1B1FB3MiG0OG7yz4eFqbGkXxaT7Qmiv3TMYML
        FaH2qwImmag0MtfgcbOdpF0MDuWr2WozWzU41QloOw==
X-Google-Smtp-Source: ABdhPJyWhh/e2gkCYOwRBEa4F54GILxf967/r99zhgu+YxuneQzyf4c75YqS4LbXeIp4JrnhT98aal7WuwA9y9caKlk=
X-Received: by 2002:a92:4a02:: with SMTP id m2mr8730961ilf.258.1597166980101;
 Tue, 11 Aug 2020 10:29:40 -0700 (PDT)
MIME-Version: 1.0
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com> <722119e5-9047-7c47-0d1c-2afeb946d5ca@gmail.com>
In-Reply-To: <722119e5-9047-7c47-0d1c-2afeb946d5ca@gmail.com>
From:   "Joshua M. Clulow" <josh@sysmgr.org>
Date:   Tue, 11 Aug 2020 10:29:28 -0700
Message-ID: <CAEwA5nKtyJTnQEXZZaiHywTpfDCprmupnCiq9kf5oupV7iG8RA@mail.gmail.com>
Subject: Re: Pseudoterminal terminology in POSIX
To:     mtk.manpages@gmail.com
Cc:     Larry Dwyer <larryd.kbd@gmail.com>, austin-group-l@opengroup.org,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Andrew Josey <ajosey@opengroup.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Elliot Hughes <enh@google.com>,
        Joseph Myers <joseph@codesourcery.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 11 Aug 2020 at 01:33, Michael Kerrisk man-pages via
austin-group-l at The Open Group <austin-group-l@opengroup.org> wrote:
> On 8/9/20 1:18 AM, Larry Dwyer via Libc-alpha wrote:
> > How about the "control" side and the "terminal" side (of the paired
> > device files)?
>
> Thanks for the suggestion. As far as I'm concerned, that would
> also be an option worth considering.

I work on the illumos project and a few of us have been having a
(not yet public) discussion about this lately as well.  I think the
best one we could think of was:

    the "control" side for the result of posix_openpt()

    the "subordinate" side for the result of ptsname() and open(),
    "/dev/pts" still makes sense, etc

    we would rename our "/dev/ptmx" device file the "manager
    driver" rather than the "master"

We would strongly consider using the same shift as other projects,
but I think only if they actually make sense; e.g., the "terminal"
and "pseudoterminal" end doesn't really stand out as completely
clear.


Cheers.

-- 
Joshua M. Clulow
http://blog.sysmgr.org
