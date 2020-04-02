Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4B7D919CACA
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 22:12:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726963AbgDBUMM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 16:12:12 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:38955 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726617AbgDBUMM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Apr 2020 16:12:12 -0400
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <tglx@linutronix.de>)
        id 1jK6C9-0002P6-5u; Thu, 02 Apr 2020 22:12:09 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
        id 91F1E100D52; Thu,  2 Apr 2020 22:12:08 +0200 (CEST)
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
In-Reply-To: <5052f8a7-c6b9-be30-878e-053a3d035f7a@gmail.com>
References: <87pncrf6gd.fsf@nanos.tec.linutronix.de> <4c557b44-4e4e-a689-a17b-f95e6c5ee4b0@gmail.com> <87mu7unugh.fsf@nanos.tec.linutronix.de> <8ae32d2f-e4a8-240f-c7bd-580c26bba2d0@gmail.com> <87bloanh89.fsf@nanos.tec.linutronix.de> <5052f8a7-c6b9-be30-878e-053a3d035f7a@gmail.com>
Date:   Thu, 02 Apr 2020 22:12:08 +0200
Message-ID: <87eet5myuf.fsf@nanos.tec.linutronix.de>
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
> Thanks. Committed. (But, next time you change the API. maybe a 
> man-pages patch to go with that? :-).)

I try to remember.
