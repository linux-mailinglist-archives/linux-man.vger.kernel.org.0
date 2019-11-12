Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 68923F9D00
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2019 23:28:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726923AbfKLW2w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Nov 2019 17:28:52 -0500
Received: from albireo.enyo.de ([37.24.231.21]:38498 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726906AbfKLW2v (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 12 Nov 2019 17:28:51 -0500
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1iUeeX-0003p6-9b; Tue, 12 Nov 2019 22:28:49 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1iUeeX-0007Tc-6x; Tue, 12 Nov 2019 23:28:49 +0100
From:   Florian Weimer <fw@deneb.enyo.de>
To:     enh <enh@google.com>
Cc:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
        <87imnodbct.fsf@mid.deneb.enyo.de>
        <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
        <877e44daom.fsf@mid.deneb.enyo.de>
        <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
        <87woc4bv9c.fsf@mid.deneb.enyo.de>
        <CAJgzZorosDN58Zp6TUDJbzY3fmR-rJeWbELtw_H3nzMyaWondg@mail.gmail.com>
Date:   Tue, 12 Nov 2019 23:28:49 +0100
In-Reply-To: <CAJgzZorosDN58Zp6TUDJbzY3fmR-rJeWbELtw_H3nzMyaWondg@mail.gmail.com>
        (enh's message of "Tue, 12 Nov 2019 14:22:44 -0800")
Message-ID: <87imnobufy.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* enh:

> but this is all about *invalid* threads, which obviously can't be
> joinable. i'm really not sure what you're trying to say.

Uhm, people try use pthread_kill to probe for thread termination.
Termintation of a non-detached thread doesn't make a thread
non-joinable, so from a temporal memory safety perspective, that's
totally fine.  Except that POSIX requires implementations to hide this
information from callers.

Maybe we are talking past each other, though.

Let's look at what musl does:

int pthread_kill(pthread_t t, int sig)
{
        int r;
        LOCK(t->killlock);
        r = t->tid ? -__syscall(SYS_tkill, t->tid, sig)
                : (sig+0U >= _NSIG ? EINVAL : 0);
        UNLOCK(t->killlock);
        return r;
}

The 0 could be ESRCH to support probing for termination.
