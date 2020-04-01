Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9857019B4CE
	for <lists+linux-man@lfdr.de>; Wed,  1 Apr 2020 19:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732262AbgDARmq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Apr 2020 13:42:46 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:35565 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732196AbgDARmq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Apr 2020 13:42:46 -0400
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <tglx@linutronix.de>)
        id 1jJhNy-0007ix-O2; Wed, 01 Apr 2020 19:42:42 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
        id 19A9A103A01; Wed,  1 Apr 2020 19:42:42 +0200 (CEST)
From:   Thomas Gleixner <tglx@linutronix.de>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com,
        "devi R.K" <devi.feb27@gmail.com>,
        Marc Lehmann <debian-reportbug@plan9.de>,
        John Stultz <john.stultz@linaro.org>,
        Andrei Vagin <avagin@gmail.com>,
        Cyrill Gorcunov <gorcunov@gmail.com>
Subject: Re: timer_settime() and ECANCELED
In-Reply-To: <CAKgNAkgiZna0yQzkdZQ92CJzjBcxX6eEu1cg24Oeu2pXRcSv8A@mail.gmail.com>
Date:   Wed, 01 Apr 2020 19:42:42 +0200
Message-ID: <87pncrf6gd.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael,

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> Following on from our discussion of read() on a timerfd [1], I
> happened to remember a Debian bug report [2] that points out that
> timer_settime() can fail with the error ECANCELED, which is both
> surprising and odd (because despite the error, the timer does get
> updated).
...
> (1) If the wall-clock is changed before the first timerfd_settime()
> call, the call succeeds. This is of course expected.
> (2) If the wall-clock is changed after a timerfd_settime() call, then
> the next timerfd_settime() call fails with ECANCELED.
> (3) Even if the timerfd_settime() call fails, the timer is still updated(!).
>
> Some questions:
> (a) What is the rationale for timerfd_settime() failing with ECANCELED
> in this case? (Currently, the manual page says nothing about this.)
> (b) It seems at the least surprising, but more likely a bug, that
> timerfd_settime() fails with ECANCELED while at the same time
> successfully updating the timer value.

Really good question and TBH I can't remember why this is implemented in
the way it is, but I have a faint memory that at least (a) is
intentional.

After staring at the code for a while I came up with the following
answers:

(a): If the clock was set event ("date -s ...") which triggered the
     cancel was not yet consumed by user space via read(), then that
     information would get lost because arming the timer to the new
     value has to reset the state.

(b): Arming the timer in that case is indeed very questionable, but it
     could be argued that because the clock was set event happened with
     the old expiry value that the new expiry value is not affected.
     
     I'd be happy to change that and not arm the timer in the case of a
     pending cancel, but I fear that some user space already depends on
     that behaviour.

Thanks,

        tglx




