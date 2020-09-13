Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B924267F6C
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 14:04:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725927AbgIMME4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 08:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725919AbgIMMEv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 08:04:51 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DB4CC061573
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 05:04:51 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id o6so12407124ota.2
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 05:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=as2v6l3IRPSgYbmyNRHeZMX96+lYcdyeWhNfoMidr9Y=;
        b=QjHGoM85m/XzLTCrxWI7yW7p1SgahYowG2D3A5MhENTRAAwYfDKwKvnEaUkb6CghF2
         YJT976CDXdGIeLo+tormrn4Th3cBjMBddcHghFNila3FlxBjKQdXkHypZS+V4owSx5fN
         jiqduBPpsCv9vrzemdGXrheUf2Mc0zxCwGtLBXFl0+hYabLLT17QyPkIfIcHtcZv0YGa
         8UNi2mg2xi7h8eZoFObm/LW6ww57Ym9EggkSg42RB7B4QA9l9Tm9piK9cpXpyJcoBXTA
         gSrcnKdIaKzeDO5u1ThrtAW/W55dhFQw6PyOAgpMyVQ3H7IWVmI64Goo/Ag2evgBUT5x
         ytgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=as2v6l3IRPSgYbmyNRHeZMX96+lYcdyeWhNfoMidr9Y=;
        b=QC+D9VijDgJ1O0zriGZsWG/onoIR/yafyuvrbH7Q0GsAARTHQdCsZSn1Bsys8u55MK
         8hqBCctDyVltVy4eEwfhZecCFyLlQhpHlAqjzv6nT8wtfFex0jXiGHH/ydD+zlPUgh9b
         kmuuQA3fvrmWKA+4UbTr2IwFTIoCeRS4+D68rkqCCol0f8bwdxQ6L9lxbNd9rS6vCg4g
         gPEd6ISs2DZbWyOHAmAwVhSIgXaXB8jm2QRrK/37qSaip7/Wq90vwJ8NToqeNl8G7f+N
         yQ12tG5ojMOSIEEbcnKoEfOdnYa4rufPTb6E7oNpJC3npq1q15cok0Le5Vt4yLTMBPRQ
         OMqg==
X-Gm-Message-State: AOAM532idVbWDQIQ7FnKBhmyDOQPzZ0BEN+wW3RLzEX+RJ6e0wNMadRZ
        X8/9/v3m+jZ/RNm73VXlE8BPVZcALN9zdO4nTfM=
X-Google-Smtp-Source: ABdhPJxm8alyJyGKu9ekKM3WXVFbBY5d0C+HsbU90llfL1veuVKFeGNA3LTpjwQOuGcvmAWbBPbJeTgqgG62zw2ZG+g=
X-Received: by 2002:a9d:d08:: with SMTP id 8mr6761664oti.323.1599998691028;
 Sun, 13 Sep 2020 05:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-6-colomar.6.4.3@gmail.com> <867a2a99-5d14-6c01-62fc-f4daef538289@gmail.com>
 <b686b723-1daf-54ac-db56-2b45021b40e2@gmail.com>
In-Reply-To: <b686b723-1daf-54ac-db56-2b45021b40e2@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 13 Sep 2020 14:04:39 +0200
Message-ID: <CAKgNAkigmNbw5uq47dgwCs3jGgHOu_Ce-A9mehGdvpFhMn9_1A@mail.gmail.com>
Subject: Re: [PATCH 05/12] getpwent_r.3: Cast 'uid_t' to 'intmax_t' for printf()
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On Sun, 13 Sep 2020 at 10:29, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Michael,
>
> On 9/13/20 8:01 AM, Michael Kerrisk (man-pages) wrote:
> > Casting to long is the historical practice here, and should be sufficient,
> > don't you think? I realize there's an argument for making all of these
> > system data type casts intmax_t / uintmax_t. But the counterarguments
> > (admittedly not compelling), are:
>
> I was casting to (long) until I accidentally met with a cast to
> (intmax_t) in ftw.3 (now I realize it was the only one in all of the
> pages; lucke me).

Yep, that was a bit of a coincidence!

> I saw there a good point in using those types and tried it to see what
> you think about them.  I still haven't sent you a big patchset with
> s/(long)/(intmax_t)/ because I was waiting for this discussion :)

:-).

> > * Some people might still be confined to a pre C-99 world
>
> I guess that people are dealing with very special hardware/software
> and can be trusted to understand what the C99 types are and which
> pre-C99 do the job for them; intmax_t.3 might also help ;).
>
> If someone doesn't live in such a special world and just doesn't
> know the types, it's a good moment to learn them.
>
> > * Churn (lots of changes)
>
> True ...  But if changes are trivial enough, maybe a single big patch
> can do it.

Yes.

> > * (long) is a sufficient cast for all of these types
> >   (except off_t).
>
> I don't like exceptions very much.  Maybe someone sees (long) all over
> the place and thinks 'long' is enough everywhere and misuses it.
>
> > Your thoughts?
>
> Your thoughts?

Well, I said none of my arguments was too compelling... I think that
I'd take one big patch. Perhaps first, could you send me an estimate
of how many pages you think might be changed in the patch.


Thanks,

Michael

--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
