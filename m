Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EAAB7FA9E7
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2019 06:59:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725858AbfKMF7l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Nov 2019 00:59:41 -0500
Received: from mail-lj1-f195.google.com ([209.85.208.195]:41614 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725843AbfKMF7l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Nov 2019 00:59:41 -0500
Received: by mail-lj1-f195.google.com with SMTP id d22so1113510lji.8
        for <linux-man@vger.kernel.org>; Tue, 12 Nov 2019 21:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cJDptP5CmXhgD58mq68U6Ga3c132n8mlTsQqQHNq1sk=;
        b=KRiKbyPjSb1LAs4F7xgE1eDszu6s+SBb4NzBM/a30OoOoyN0DA2ulcZQCNWrZYsnHX
         +2NEmXJVysKHe9stvDQMN3R6nt16iPGYNaLRUaZb+pvWXA7DB+xrww53zljRIhU1SnwM
         6w5ET5ohZ/dSxVpF0V6atFGRSF7dQRHXyJp3hYl/rRWXop3ndvokYAyR9frLM6TLB7Sc
         pO2G19qJ3nclxQNontVHa7YeYyM7KiOLDpE0wqLbBd9cmqSzeqd8e2reDrUmZ10VNSY4
         vbFjrLjI0B4W0N+D1TLVYH/dMK0tgdgAuTjGcnGLhor+VUYo9nDSRdWcx11buFFHV1NS
         +YRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cJDptP5CmXhgD58mq68U6Ga3c132n8mlTsQqQHNq1sk=;
        b=tUp0fEy9WxtniSxEGr8E/jcHReERP3XahsIKgRWRMlxYT26I/fuBqA8vVVCgxHUl0u
         bkjlnLzG6jguFujdfsdYZegXRkHIfnbOv1yF7xCh1I/40qigGsoZimT9YXWQARGCUoe8
         yrrERwwmROKgWSUBFsjcSjpUTc4f7gOIVeaFmMh8g64h4Q/G//Sj1yzS3j1LVwzh9NmV
         gVtj18g7F9Vl7wfFwAOVHY/mDcPcJIedtlw6gt9lHGK22hVPKqd0VFq+s8ejhDeG1j1j
         ZQDcGExVjsRR0wpmiYRQ0lw2gHTYVEM5aoXsCTnJi+lERZ4QSeNLqkDTo2YzHw3TjsRa
         tBPQ==
X-Gm-Message-State: APjAAAVoAACAQ+xNCeSa/kEXqkydwysDnmrBotKPGxzu/CpxakifnH7K
        UN9UKbXZS8VMBxKCGjZ+TRkRB2bwziF3g5rXuPTz1g==
X-Google-Smtp-Source: APXvYqxboQakS+BzHfnMOm3SJCuL5yWZ5FoPeMOZUeEbj9Jl7phiM8NdRJu34r0yLp1BXYhCMIPl5YXC2zzmeCabezY=
X-Received: by 2002:a2e:b4e1:: with SMTP id s1mr1111367ljm.5.1573624778309;
 Tue, 12 Nov 2019 21:59:38 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
 <87imnodbct.fsf@mid.deneb.enyo.de> <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
 <877e44daom.fsf@mid.deneb.enyo.de> <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
 <87woc4bv9c.fsf@mid.deneb.enyo.de> <CAJgzZorosDN58Zp6TUDJbzY3fmR-rJeWbELtw_H3nzMyaWondg@mail.gmail.com>
 <87imnobufy.fsf@mid.deneb.enyo.de> <CAJgzZorB99W2PzjQ5ZU1nBiYb81Ubm=VvaF50BOm9sTFUHeE4A@mail.gmail.com>
 <87r22c9ve8.fsf@mid.deneb.enyo.de>
In-Reply-To: <87r22c9ve8.fsf@mid.deneb.enyo.de>
From:   enh <enh@google.com>
Date:   Tue, 12 Nov 2019 21:59:25 -0800
Message-ID: <CAJgzZopvMb8KGyA5b6afWG83hw-cZgOdvOdPYb28iS+f5wDkmw@mail.gmail.com>
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Nov 12, 2019 at 9:51 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>
> * enh:
>
> > no, because the C library has two choices when a thread exits:
> >
> > 1. unmap the thread.
> >
> > 2. keep the thread around for recycling.
> >
> > if you choose 1 (optimizing for space, like Android), your dereference
> > is illegal.
>
> This choice is only available for threads in a detached state.  For
> joinable threads, a conforming implementation cannot immediately
> deallocate all data structures on thread termination.  Among other
> things, it has to store the future return value of pthread_join
> somewhere.

ah, you're trying to say "signal 0 is potentially usable for a
joinable thread that's waiting to be joined"? that's true, but i'm not
sure how that's relevant to this patch. that wouldn't be an "invalid
thread ID" until it's joined.
