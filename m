Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 59BC719C2C4
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 15:35:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388594AbgDBNfH convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Thu, 2 Apr 2020 09:35:07 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:37931 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387752AbgDBNfG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Apr 2020 09:35:06 -0400
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <tglx@linutronix.de>)
        id 1jJzzr-0004mg-Ab; Thu, 02 Apr 2020 15:35:03 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
        id B9B9D100D52; Thu,  2 Apr 2020 15:35:02 +0200 (CEST)
From:   Thomas Gleixner <tglx@linutronix.de>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com,
        "devi R.K" <devi.feb27@gmail.com>,
        Marc Lehmann <debian-reportbug@plan9.de>,
        John Stultz <john.stultz@linaro.org>,
        Andrei Vagin <avagin@gmail.com>,
        Cyrill Gorcunov <gorcunov@gmail.com>
Subject: Re: timer_settime() and ECANCELED
In-Reply-To: <8ae32d2f-e4a8-240f-c7bd-580c26bba2d0@gmail.com>
References: <87pncrf6gd.fsf@nanos.tec.linutronix.de> <4c557b44-4e4e-a689-a17b-f95e6c5ee4b0@gmail.com> <87mu7unugh.fsf@nanos.tec.linutronix.de> <8ae32d2f-e4a8-240f-c7bd-580c26bba2d0@gmail.com>
Date:   Thu, 02 Apr 2020 15:35:02 +0200
Message-ID: <87bloanh89.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> NOTES
>        Suppose  the  following scenario for CLOCK_REALTIME or CLOCK_REAL‐
>        TIME_ALARM timer that was created with timerfd_create():
>
>        (a) The  timer  has  been  started  (timerfd_settime())  with  the
>            TFD_TIMER_ABSTIME and TFD_TIMER_CANCEL_ON_SET flags;
>
>        (b) A discontinuous change (e.g.  settimeofday(2)) is subsequently
>            made to the CLOCK_REALTIME clock; and
>
>        (c) the caller once more  calls  timerfd_settime()  to  rearm  the
>            timer (without first doing a read(2) on the file descriptor).
>
>        In this case the following occurs:
>
>        · The  timerfd_settime()  returns  -1 with errno set to ECANCELED.
>          (This enables the caller to know that  the  previous  timer  was
>          affected by a discontinuous change to the clock.)
>
>        · The  timer is successfully rearmed with the settings provided in
>          the second timerfd_settime() call.  (This was probably an imple‐
>          mentation  accident,  but  won't be fixed now, in case there are
>          applications that depend on this behaviour.)

Clear enough.

Thanks Michael!
