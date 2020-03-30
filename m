Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8F318198680
	for <lists+linux-man@lfdr.de>; Mon, 30 Mar 2020 23:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728754AbgC3V3F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Mar 2020 17:29:05 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:59801 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728715AbgC3V3F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Mar 2020 17:29:05 -0400
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <tglx@linutronix.de>)
        id 1jJ1xv-0006Am-UG; Mon, 30 Mar 2020 23:29:04 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
        id 56365101175; Mon, 30 Mar 2020 23:29:02 +0200 (CEST)
From:   Thomas Gleixner <tglx@linutronix.de>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
        "devi R.K" <devi.feb27@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com
Subject: Re: [PATCH] timerfd_create.2: Included return value 0
In-Reply-To: <d79b3520-77ac-199e-6576-ab9f235ac297@gmail.com>
References: <CAJymdbxJNag1W0vR9Ysm7_y91HwLAu4QaSMKZbed4emT1DYvww@mail.gmail.com> <55aa30be-5894-ae52-ffd4-5f2a82aa5ad5@gmail.com> <CAJymdbwfm7EypQfXRqWZHbfj2SKk7PCP7SMccz6bmJWSauDqPQ@mail.gmail.com> <CAJymdby8pDASq5Xv7DeTJ5cq1NXPe1jUWwApxZ5o-huaEXUrjw@mail.gmail.com> <3cbd0919-c82a-cb21-c10f-0498433ba5d1@gmail.com> <87a73ywzbv.fsf@nanos.tec.linutronix.de> <d79b3520-77ac-199e-6576-ab9f235ac297@gmail.com>
Date:   Mon, 30 Mar 2020 23:29:02 +0200
Message-ID: <87wo71v8f5.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Micheal,

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> On 3/30/20 12:50 AM, Thomas Gleixner wrote:
>> That's the reason why I rejected the attempt to mitigate that particular
>> 0 tick issue in timerfd as it would just scratch a particular itch but
>> still not provide any guarantee. So having the '0' return documented is
>> the right way to go.
>
> Thanks for the incredibly detailed follow-up Thomas (which all 
> landed in my commit message). I've applied a patch almost exactly
> the same as the text I showed above (and it's pushed to Git).

  "timerfd_create.2: Negetive..."

That first word after the colon looks weird :)

>> All of 2020 is a bust, I expect. Perhaps we see us at a conference
> in 2021 ;-).

Let's see how that evolves and in the worst case we can meet for a beer
once we gained antibodies one way or the other. For now let's stay safe
and all I can offer is a virtual 'Prosit' :)

Thanks,

        tglx
