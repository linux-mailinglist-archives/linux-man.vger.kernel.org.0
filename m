Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E6D5319BB4E
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 07:34:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726453AbgDBFei (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 01:34:38 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:42897 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725789AbgDBFeh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Apr 2020 01:34:37 -0400
Received: by mail-wr1-f68.google.com with SMTP id h15so2626943wrx.9;
        Wed, 01 Apr 2020 22:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WuhAaaws8KpzCDEuFiXmgMHdWSdeDew4B7D1DUiqies=;
        b=IWuw7r+9WLAQYNPH6vtCw0hGgdbmhueMDOaTwXDQJedCrRbxaDwBSQ9aGVP0xUC2F7
         uwrun0FjsoBrYAUEgW9J2vB0yaXTvFHjv7qiiP36KJ5AVvUDaCbzgI0uC9KXXmcI4mY/
         iI9Osl2B8VDIqtXIMfXtHSO356T2pkg/CbL5N6J6cBNrLTBk+jVTMbRfPvZcXhZ9VA2L
         DiUfVKqQbnDleF4FnA6uu7XFZG6nR8LrngXDiglqeFX/su2SapAh7iVMb8omarbBK9eQ
         +a0IrVN3mweTBZY1KsYvSeOhqsuNkBt4RdBb0vF0RyTl9wgg96Q+CiOL+Lxa6DqNN3HM
         7FAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WuhAaaws8KpzCDEuFiXmgMHdWSdeDew4B7D1DUiqies=;
        b=THVeUfPoyQVuH5ziFPM08YAzaGhGnUhHId+h81gRnhZTbOSdTGUppuIRRxEw+lMYlE
         jH2hHoMORLkLUChQNIqXgCbULnFbYu6X4tiSLF045lSliPU9Kz8r+LZaFtl1pR1MXGnE
         UGK/7BFWGhRxUDWI9nEncl17ZzVrZILrvZLMw8SpKqEmvPiSJX3sMpwGk6FWsdDwia5I
         UX6lCaVOFsAyKqVicyHqF/1z3K1JogoJbu3ehUTfCQ858pGsPE7s01zrT6aLTyxA3s/T
         vkVFhHc4YdUNVwLPG3LQA/INj3rVIbc5Z1hGAA57kmkK7K0mPghWo4Lik4dEmHi10bQQ
         3kbQ==
X-Gm-Message-State: AGi0PuZzG77umVvloE/yeAsb4aNe0EYqMy5uKUxABGsx4H7Chu+hATKB
        RamayvdRHt1zUHaDVDtEl44Qldt5
X-Google-Smtp-Source: APiQypLJ3//aNZzLwASU9G1b8eTs/5otCVL2d5BjckLi81QkwqztH+VXJCCHRN8Gbu9O0FO7xXRVFg==
X-Received: by 2002:a05:6000:108f:: with SMTP id y15mr1624814wrw.423.1585805676337;
        Wed, 01 Apr 2020 22:34:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id u16sm5915920wro.23.2020.04.01.22.34.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 22:34:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com,
        "devi R.K" <devi.feb27@gmail.com>,
        Marc Lehmann <debian-reportbug@plan9.de>,
        John Stultz <john.stultz@linaro.org>,
        Andrei Vagin <avagin@gmail.com>,
        Cyrill Gorcunov <gorcunov@gmail.com>
Subject: Re: timer_settime() and ECANCELED
To:     Thomas Gleixner <tglx@linutronix.de>
References: <87pncrf6gd.fsf@nanos.tec.linutronix.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4c557b44-4e4e-a689-a17b-f95e6c5ee4b0@gmail.com>
Date:   Thu, 2 Apr 2020 07:34:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87pncrf6gd.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Thomas,

On 4/1/20 7:42 PM, Thomas Gleixner wrote:
> Michael,
> 
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>> Following on from our discussion of read() on a timerfd [1], I
>> happened to remember a Debian bug report [2] that points out that
>> timer_settime() can fail with the error ECANCELED, which is both
>> surprising and odd (because despite the error, the timer does get
>> updated).
> ...
>> (1) If the wall-clock is changed before the first timerfd_settime()
>> call, the call succeeds. This is of course expected.
>> (2) If the wall-clock is changed after a timerfd_settime() call, then
>> the next timerfd_settime() call fails with ECANCELED.
>> (3) Even if the timerfd_settime() call fails, the timer is still updated(!).
>>
>> Some questions:
>> (a) What is the rationale for timerfd_settime() failing with ECANCELED
>> in this case? (Currently, the manual page says nothing about this.)
>> (b) It seems at the least surprising, but more likely a bug, that
>> timerfd_settime() fails with ECANCELED while at the same time
>> successfully updating the timer value.
> 
> Really good question and TBH I can't remember why this is implemented in
> the way it is, but I have a faint memory that at least (a) is
> intentional.
> 
> After staring at the code for a while I came up with the following
> answers:
> 
> (a): If the clock was set event ("date -s ...") which triggered the
>      cancel was not yet consumed by user space via read(), then that
>      information would get lost because arming the timer to the new
>      value has to reset the state.
> 
> (b): Arming the timer in that case is indeed very questionable, but it
>      could be argued that because the clock was set event happened with
>      the old expiry value that the new expiry value is not affected.
>      
>      I'd be happy to change that and not arm the timer in the case of a
>      pending cancel, but I fear that some user space already depends on
>      that behaviour.

Yes, that's the risk, of course. So, shall we just document all 
this in the manual page?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
