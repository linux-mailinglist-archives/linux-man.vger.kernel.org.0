Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26F34F9C65
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2019 22:38:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726923AbfKLViN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Nov 2019 16:38:13 -0500
Received: from albireo.enyo.de ([37.24.231.21]:37334 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726912AbfKLViN (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 12 Nov 2019 16:38:13 -0500
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1iUdrW-00057f-7s; Tue, 12 Nov 2019 21:38:10 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1iUdrW-0006Bu-4l; Tue, 12 Nov 2019 22:38:10 +0100
From:   Florian Weimer <fw@deneb.enyo.de>
To:     enh <enh@google.com>
Cc:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
Date:   Tue, 12 Nov 2019 22:38:10 +0100
In-Reply-To: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
        (enh's message of "Tue, 12 Nov 2019 12:36:28 -0800")
Message-ID: <87imnodbct.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* enh:

> POSIX removed ESRCH years ago.
>
> In resolving http://austingroupbugs.net/view.php?id=1214 it was made
> clear that callers can't rely on using signal 0 to test for the
> continued existence of a thread. Update the man page to make it clearer
> that this doesn't generally work (even if it sometimes seems to).
>
> See also the long explanation of why this is the case (and how to fix
> your code) here:
>
> https://android.googlesource.com/platform/bionic/+/master/docs/status.md#invalid-handling-targetsdkversion-o

Well, if you fix the thread exit race (like musl did, and glibc should
as well, see bug 12889), you could get a reliable ESRCH as a side
effect.  Pity that POSIX doesn't allow that.

I think this might be a case where common (but not unavoidable)
implementation problems get in the way of a better standard.  Usually,
it's the other way round.
