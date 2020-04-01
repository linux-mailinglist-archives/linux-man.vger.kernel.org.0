Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2233D19AA9B
	for <lists+linux-man@lfdr.de>; Wed,  1 Apr 2020 13:16:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732315AbgDALQ1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Apr 2020 07:16:27 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:34361 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732258AbgDALQ1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Apr 2020 07:16:27 -0400
Received: by mail-lf1-f65.google.com with SMTP id e7so20131412lfq.1;
        Wed, 01 Apr 2020 04:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=c2W2ZCFW75Hzmvi2Z1dJsLhmnnF1F/Vk/OMpx9dRAIs=;
        b=XUI7+JbE+o6HCbh48Ajper+T9aduNVwgn25i5zLtWNFdwmmUv7rwocoqrBzVOX7aYa
         bBnZ2Iug7N46NS8+5H8HqK0ZQasjJ7Rb7LQkyFzTcNUpQPZVCphn0HsowdOFduqukIBn
         Jmu7oygcvyVAu903qPvzJoN4nUXJUY+cuRGWrIzoWIKPwHqslX6sDJIFKC63tAmVdC9s
         rof7ApkRn1hX/TtzYFhq9Gi6hkmXW/P7kOSGZQHcfxp2PAcTHZ9hMSQomfzV44+IkBdW
         n0PJQAqIcONDp8dct4Sxa99cu1CaVw8lQXE7FkmL6rcVpHcL9KrHwPAAdnb2ey/rZNOM
         UrJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=c2W2ZCFW75Hzmvi2Z1dJsLhmnnF1F/Vk/OMpx9dRAIs=;
        b=FfeWjXd1sl5L0FoM0j43sEvaH3msG1hC0AZAMhiKubr25UofP3feec/3HmNzpy9bQz
         KVhtszJ0/xa3GZ3y5v05sJpmsPmj5zjoqwNNZb44djkDSAA2T7c4ClhwDleBBVhEvRKO
         kPeAiwgAUHb7DD8qk09ZRlAyGXUdIp4Z/31H8QRtm1KQiComovrH8E3ZpBJ50jHwCjip
         cLWuLHf5ISAserwg51HkmStluWg/RXp5ecOwnBorVDFrp26naLkr/2qTVS3VbzLliFPv
         eGXwLGxeXoLC1gAjiSSHeXkXuBUoTv0tWcuhohsecTbVOq75jA5pvgqGH8qcG0jxV2cL
         MPSA==
X-Gm-Message-State: AGi0PubfiwvIy7cJ6X7uxnXAUYt7lW4eYnhG2rDB6EczkxGIS+ycy8ev
        087KCsCx7JwdkbxMinF/MGM=
X-Google-Smtp-Source: APiQypIcnkCb/DlDilD9iXAqcdBzVfyD1VeNAdgN2eI+5gP75WI1nFFQaeH22bZ3Y5FynCt5ivP/BQ==
X-Received: by 2002:ac2:4113:: with SMTP id b19mr4809568lfi.70.1585739784413;
        Wed, 01 Apr 2020 04:16:24 -0700 (PDT)
Received: from uranus.localdomain ([5.18.103.226])
        by smtp.gmail.com with ESMTPSA id w24sm1002776ljh.57.2020.04.01.04.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 04:16:23 -0700 (PDT)
Received: by uranus.localdomain (Postfix, from userid 1000)
        id B6BE74617E0; Wed,  1 Apr 2020 14:16:22 +0300 (MSK)
Date:   Wed, 1 Apr 2020 14:16:22 +0300
From:   Cyrill Gorcunov <gorcunov@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com,
        "devi R.K" <devi.feb27@gmail.com>,
        Marc Lehmann <debian-reportbug@plan9.de>,
        John Stultz <john.stultz@linaro.org>,
        Andrei Vagin <avagin@gmail.com>
Subject: Re: timer_settime() and ECANCELED
Message-ID: <20200401111622.GQ3197@uranus>
References: <CAKgNAkgiZna0yQzkdZQ92CJzjBcxX6eEu1cg24Oeu2pXRcSv8A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkgiZna0yQzkdZQ92CJzjBcxX6eEu1cg24Oeu2pXRcSv8A@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Apr 01, 2020 at 11:01:18AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Thomas, et al,
> 
> Following on from our discussion of read() on a timerfd [1], I
> happened to remember a Debian bug report [2] that points out that
> timer_settime() can fail with the error ECANCELED, which is both
> surprising and odd (because despite the error, the timer does get
> updated).
> 
> The relevant kernel code (I think, from your commit [3]) seems to be
> the following in timerfd_setup():
> 
>         if (texp != 0) {
>                 if (flags & TFD_TIMER_ABSTIME)
>                         texp = timens_ktime_to_host(clockid, texp);
>                 if (isalarm(ctx)) {
>                         if (flags & TFD_TIMER_ABSTIME)
>                                 alarm_start(&ctx->t.alarm, texp);
>                         else
>                                 alarm_start_relative(&ctx->t.alarm, texp);
>                 } else {
>                         hrtimer_start(&ctx->t.tmr, texp, htmode);
>                 }
> 
>                 if (timerfd_canceled(ctx))
>                         return -ECANCELED;
>         }
> 
> Using a small test program [4] shows the behavior. The program loops,
> repeatedly calling timerfd_settime() (with a delay of a few seconds
> before each call). In another terminal window, enter the following
> command a few times:
> 
>     $ sudo date -s "5 seconds"       # Add 5 secs to wall-clock time
> 
> I see behavior as follows (the /sudo date -s "5 seconds"/ command was
> executed before loop iterations 0, 2, and 4):

Hi Michael, I can be wrong (since I didn't look into timerfd code
for long time) but I guess if we wanna preserve the timer value
we will have to lock timekeeper which is inacceptable. Thus looks
like this is a tradeoff in a sake of speed (not sure though, better
wait for Thomas reply)
