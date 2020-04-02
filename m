Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B038C19BDF0
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 10:49:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387783AbgDBItW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 04:49:22 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:36465 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728612AbgDBItW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Apr 2020 04:49:22 -0400
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <tglx@linutronix.de>)
        id 1jJvXL-00082I-AT; Thu, 02 Apr 2020 10:49:19 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
        id B68F9100D52; Thu,  2 Apr 2020 10:49:18 +0200 (CEST)
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
In-Reply-To: <4c557b44-4e4e-a689-a17b-f95e6c5ee4b0@gmail.com>
References: <87pncrf6gd.fsf@nanos.tec.linutronix.de> <4c557b44-4e4e-a689-a17b-f95e6c5ee4b0@gmail.com>
Date:   Thu, 02 Apr 2020 10:49:18 +0200
Message-ID: <87mu7unugh.fsf@nanos.tec.linutronix.de>
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
> On 4/1/20 7:42 PM, Thomas Gleixner wrote:
>> (b): Arming the timer in that case is indeed very questionable, but it
>>      could be argued that because the clock was set event happened with
>>      the old expiry value that the new expiry value is not affected.
>>      
>>      I'd be happy to change that and not arm the timer in the case of a
>>      pending cancel, but I fear that some user space already depends on
>>      that behaviour.
>
> Yes, that's the risk, of course. So, shall we just document all 
> this in the manual page?

I think so.

Thanks,

        tglx
