Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09A7927CD33
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 14:42:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729483AbgI2Mmh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 08:42:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729232AbgI2LLP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 07:11:15 -0400
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00DB6C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 04:11:13 -0700 (PDT)
Received: by mail-oi1-x242.google.com with SMTP id v20so5013228oiv.3
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 04:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=4HAF9KGbJX6nRzcGN5qWIXTIqwUv1IubXu3Rf2Sv4TQ=;
        b=ReQR3RZyx2+pzlDUdkDU0w7ZT/2r0Os81g7Kw23vvWz9S0gaPFaukyq0Ay09kSioio
         tOEbFf9B0ivSaDbLvZGdX6LdtwRXTHLvxd88qDAleSmK2SVtO18ekbbQlbhF7DhxR5gG
         vWY5lmhaL2Tc+vzRc+XTvjvB6JZWqnNblG4+cDDymUV2Q5YTib8KkVAJ7in8FKp2yBIg
         IHe1uGX6FXe5tf7HWto0/s6RcQ9wQoGGk19Q8L7QsuT9yxdEnvF+SeRYbGQaUk9B4YGZ
         34Qb0HjgD2rpFFNQDVR0mRLQkO0zyPuieUYCbgFWCqtr18yTxOOePFOsTWrh4tz9WUXA
         Uf7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=4HAF9KGbJX6nRzcGN5qWIXTIqwUv1IubXu3Rf2Sv4TQ=;
        b=URGNiKXL0nF3kWKtszsJW9CZnON/3C3v/Eet5dsTZ1p8L6jjnrC/jZKEE9Ff4i7bkY
         +sbmW984eCPd5NfuqCVt7iURuXHs0uRgRf5cmNH7NlAW8Ym6h3sBqHucO/13xhmY9gjb
         6Nf4f5yfQZA+T2vX4GCZ3WdW+jqytSWmHUhUpBQd1gAYJxU0AeS1fdxmkEVULRvEM1ts
         b1oK/8zIpUD2DHBjoav7xhgrJpjuoVIFibPkJnu7cBTXurEyFg0jpWyE1qtZj380/UEn
         OjByJUcyfms4hsXvz6lBXCoAZPCxC96yQmyUxlXSHLBxW7yocCax0XJPG0aAwgo128dm
         GeAQ==
X-Gm-Message-State: AOAM532FWG+8OL7+xrGcU9g9nsSDKicPTSqHlkUKC0c2EVDwnqqjHTg7
        DxI/nHyCWg+yzICLkWAe0bPJRhA2la69aWjcmcwyxJXk
X-Google-Smtp-Source: ABdhPJxedypNNFz+sNIvXTA3uN6igRpkfbYz7FkQFYmGvlKeBnprJDV4R231QRR3py7JMDmSoH+2G3xsS63fgynwBpg=
X-Received: by 2002:aca:2301:: with SMTP id e1mr2283144oie.177.1601377873350;
 Tue, 29 Sep 2020 04:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-2-colomar.6.4.3@gmail.com> <20200928134122.GG6642@arm.com>
 <8ce3d63c-445f-827b-a49a-914e8dd622d4@gmail.com> <20200928135506.2wsf3cwvkkbreqa3@localhost.localdomain>
 <20200928141524.GH6642@arm.com>
In-Reply-To: <20200928141524.GH6642@arm.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 29 Sep 2020 13:11:02 +0200
Message-ID: <CAKgNAkhuD-UDxmxQ_rb3p2aKBKRtnELzvCsFkEwhp=YJCuATkw@mail.gmail.com>
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
To:     Dave Martin <Dave.Martin@arm.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dave,

On Mon, 28 Sep 2020 at 16:15, Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Mon, Sep 28, 2020 at 11:55:08PM +1000, G. Branden Robinson wrote:
> > Hi, Alex!
> >
> > At 2020-09-28T15:48:14+0200, Alejandro Colomar wrote:
> > > > Where does this arbitrary-looking list of headers come from?
> > >
> > > There are two parts:  left to the ';', and right to the ';'.
> > >
> > > Left: The canonical C standard header, and the canonical POSIX header,
> > > in alphabetical order.
> > >
> > > Right: All other headers that shall define the header, according to
> > > either the C or the POSIX standards, in alphabetical order.
>
> To clarify, does POSIX _guarantee_ that all of those headers define this
> type?  (I admit I'm too lazy to search through the POSIX standard for an
> answer to this).
>
> If not, this list would serve only to legitimise bad habits and it may
> be better to leave it out.

As I think Alex has clarified, the info about headers is being taken from POSIX.

> > That's not a bad scheme but it is not inferable from the current man
> > page text; I almost commented on the inconsistency in one of my earlier
> > messages but deemed it out of scope.  Please document it, perhaps in an
> > introductory paragraph at the top of the Description section.
>
> Ack, I think it would be better to state this explicity rather than
> having some terse syntax that people need to understand.

Yes, I think some more explanatory text is probably needed. This page
is still very much a work in progress.

> IIUC, a program intended to be fully portable between C implementations
> must include <stddef.h>, not rely on one of the others.

Just to note a point here: my main concern is portability across POSIX systems.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
