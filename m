Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8592243953
	for <lists+linux-man@lfdr.de>; Thu, 13 Aug 2020 13:27:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726467AbgHML1Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Aug 2020 07:27:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726100AbgHML1Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Aug 2020 07:27:24 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AC72C061757
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 04:27:24 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id h16so4480464oti.7
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 04:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=b2wPNcQ+2QCxZmAeX5UjKSXSEcWTnJ4XF65zdz6xXzs=;
        b=P5CKSowQesdE/0occaYzPBE/SzBhHdFyMoccn0NV6f3uEe+Yx4f0IQUHqo4NBaQBBy
         u/bB0h7sodDtk5wSBK9k43Rjir97Vx6Mg3ukBosBJuCB8JZxR+kSc4WMLLZ4B+kFY7gS
         3eCjxol1OBVVZOegDcnhNjE3gS96QPjf9lbKBR9zhrNaAw52Fu5ykJwtA/p0yNLhOlY4
         OT5IX0Y48oBFGqIRPH0JLADgqC58/NlPvlw5ITGR2hbfobbQqvHIThGtL6aSx4xGMFHC
         BFdbdBknqJ7YEs3sgp2HkfpormwmGRbyMMSCzDThRU/sTr9FA/nlPQkH7yShL5vf4KwH
         Pi1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=b2wPNcQ+2QCxZmAeX5UjKSXSEcWTnJ4XF65zdz6xXzs=;
        b=QD1N9b5ElaZaC+PMWh/9GlBeKceci0/ZLz3suHbJskVA3JrNPeLfptyCEgbMoXMQ+4
         rC3DkcGYg8Hq5r9yC3QMP8pLDQpWzA1Nasg+4/jLyqgTQi7lCtgsXbQgAV8Clt8GMPx7
         yb3ISjCtMQ6i4XCzoPvofAnkFlHNhf3nr2RufvAxCwzMiyHwL83f+Si8y7jlWZ1S4rR1
         3S9Ksd8CxM5fdzZ6LsHTLtff7f/5UQyl9t2BwO9UKIrGaDCGbt77rdZXIRGwiYj+EHDT
         gPAAvhH16ceEdMW1/UotR1tlIPWhDJY0zUNtw3uXEhv5wvG2XLzGqfHotYumBkfWoFoX
         tp2Q==
X-Gm-Message-State: AOAM531GBIAcaoQU/BOCFyewBw9Lzv7tkXYyhDqqWpgq6/iKqZ78+W+w
        vfkeXJyrAoDD7xM7K/AxKFWJ2A2BiJUhQrcf0og=
X-Google-Smtp-Source: ABdhPJy3yvv9K3IiPDWU4NsNE4txVyTf55CuFyXXFz1M9PQWbOaeBGse8rZRUwi9KYgSORvulfbSJsuh/Ng6DzWYl+I=
X-Received: by 2002:a05:6830:148f:: with SMTP id s15mr3914463otq.323.1597318041513;
 Thu, 13 Aug 2020 04:27:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200726062340.28800-1-vapier@gentoo.org> <c2d1c695-d6fe-465c-5c4f-a76df9754feb@gmail.com>
 <20200813110726.thqinrnat2zy3dik@localhost.localdomain>
In-Reply-To: <20200813110726.thqinrnat2zy3dik@localhost.localdomain>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 13 Aug 2020 13:27:09 +0200
Message-ID: <CAKgNAkhXLQW5oLJ-gzQX=ZXFmGS6EabH5LBiKPOTDY3cbDxYVg@mail.gmail.com>
Subject: Re: [PATCH] [rfc] drop "coding: UTF-8" header
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Mike Frysinger <vapier@gentoo.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On Thu, 13 Aug 2020 at 13:07, G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:

> > On 7/26/20 8:23 AM, Mike Frysinger wrote:
> > > From: Mike Frysinger <vapier@chromium.org>
> > >
> > > This header is used inconsistently -- man pages are UTF-8 encoded
> > > but not setting this marker.  It's only respected by the man-db
> > > package, and seems a bit anachronistic at this point when UTF-8
> > > is the standard default nowadays.
> >
> > Thanks. Patch applied.
>
> Sorry I missed Mike's original mail, but there is _something_ else
> besides man-db that respects this "coding: utf-8" thing.
>
> It's the editor that some people might use to maintain the man pages:
> GNU Emacs[1].
>
> That said, UTF-8 is an easy encoding to detect, the Unix standard of
> many years now as you note, and for about that long Emacs has also
> scanned the ends of files for file variables as well (in a more
> expressive and powerful format), so they don't need to be packed in at
> the beginning.
>
> Also, it's no skin off me personally because I use Vim.  :P

Thanks for (once again) dropping in with some helpful information.
Still, I think it's right to apply the patch (and I don't think you
object), since, as Mike notes, the tag is used quite inconsistently,
and so it seems like no software really cares about this. And ever
since the day I accidentally opened a PDF with emacs, and found that
it actually worked, I've decided there's nothing emacs can't do :-).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
