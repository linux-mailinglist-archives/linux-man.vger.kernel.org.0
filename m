Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E7651B9837
	for <lists+linux-man@lfdr.de>; Fri, 20 Sep 2019 22:03:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728115AbfITUDM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Sep 2019 16:03:12 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:36006 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728030AbfITUDM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Sep 2019 16:03:12 -0400
Received: by mail-lf1-f65.google.com with SMTP id x80so5885494lff.3
        for <linux-man@vger.kernel.org>; Fri, 20 Sep 2019 13:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xvN2KQ56pBfopzR5NTpYWY+sY/vGc2/ameqmoybjDrQ=;
        b=dbuf/UXMHUar0osYBkFIQLOqXGRKAzunASOSjlxczJdJuAuv4EIQO4TdZW9FHxFdWP
         zRF0YsUx7Sl6hzcNZi0n4fx86g1PGjtpEfrdSTJgBzcGXrJX21Rn+bMPXKMJW/vYWOUs
         +yabpjBBNhCzra1YefBk5LzoO/V8kzRBZ0CEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xvN2KQ56pBfopzR5NTpYWY+sY/vGc2/ameqmoybjDrQ=;
        b=BRrokNXIxX5WlxKf5CqPnDjRMvyNWuxzzv1Su2KdfbY3IgH6nhN0VOBg15SsdQ+Yyw
         UFSlPhKRT4lZub97L7cNRzlLqJ4AYrBwrfmX8p92Rgzfqu+VrCT4827V7VzN4HmUh5YN
         G4CzFXhPHxPxBkzFXsYx7qjiPfpsCUn4jfAnakN6F1A+upEb5gejc7BwhZqlwwx/DuYW
         xNN7j7fOiU9Rwa+l/YbX0zqwldr412Er2FMDE1Wuy9CZY6RjaRfy+rHchCNyq0txi3Cz
         HfhljjcvMQJpJfTQ9NbrEjukHGzpael6AgC8/0SFmGDhhLRQW8d7oANTxQ9bfvv5qYyQ
         b/AA==
X-Gm-Message-State: APjAAAW6ALpFIiHhXNn5zVmeHW1UHUcI4DSsCeucrGVyIQtHwIKnn4xw
        YVSrdIcyusWR5z/0vjfrVgYOWyOxNl0=
X-Google-Smtp-Source: APXvYqyvGB+P199VVvhVyeRgrYtwzGRb8rhcCYXgN1XrNDxU33mzOFF29Q0YwGMr60km9utqlRSAow==
X-Received: by 2002:a19:e204:: with SMTP id z4mr9609714lfg.157.1569009789674;
        Fri, 20 Sep 2019 13:03:09 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id j84sm694416ljb.91.2019.09.20.13.03.06
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2019 13:03:07 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id u3so5854085lfl.10
        for <linux-man@vger.kernel.org>; Fri, 20 Sep 2019 13:03:06 -0700 (PDT)
X-Received: by 2002:a19:f204:: with SMTP id q4mr9514305lfh.29.1569009786273;
 Fri, 20 Sep 2019 13:03:06 -0700 (PDT)
MIME-Version: 1.0
References: <008f17bc-102b-e762-a17c-e2766d48f515@gmail.com>
 <20190915052242.GG19710@mit.edu> <CAHk-=wgg2T=3KxrO-BY3nHJgMEyApjnO3cwbQb_0vxsn9qKN8Q@mail.gmail.com>
 <20190918211503.GA1808@darwi-home-pc> <20190918211713.GA2225@darwi-home-pc>
 <CAHk-=wiCqDiU7SE3FLn2W26MS_voUAuqj5XFa1V_tiGTrrW-zQ@mail.gmail.com>
 <20190920134609.GA2113@pc> <CALCETrWvE5es3i+to33y6jw=Yf0Tw6ZfV-6QWjZT5v0fo76tWw@mail.gmail.com>
 <CAHk-=wgW8rN2EVL_Rdn63V9vQO0GkZ=RQFeqqsYJM==8fujpPg@mail.gmail.com>
 <CALCETrV=4TX2a4uV5t2xOFzv+zM_jnOtMLJna8Vb7uXz6S=wSw@mail.gmail.com>
 <20190920181216.GA1889@1wt.eu> <CALCETrW_mw0qOR2oqYC0+T6V65c+t+Vdxk5Jb6S+sPTqN6SXfw@mail.gmail.com>
In-Reply-To: <CALCETrW_mw0qOR2oqYC0+T6V65c+t+Vdxk5Jb6S+sPTqN6SXfw@mail.gmail.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Fri, 20 Sep 2019 13:02:50 -0700
X-Gmail-Original-Message-ID: <CAHk-=wic-uFGcCGX+JKFA__Xoh=BgzTpmaBJqCxfqWGcMQF0gw@mail.gmail.com>
Message-ID: <CAHk-=wic-uFGcCGX+JKFA__Xoh=BgzTpmaBJqCxfqWGcMQF0gw@mail.gmail.com>
Subject: Re: [PATCH RFC v4 1/1] random: WARN on large getrandom() waits and
 introduce getrandom2()
To:     Andy Lutomirski <luto@kernel.org>
Cc:     Willy Tarreau <w@1wt.eu>,
        "Ahmed S. Darwish" <darwish.07@gmail.com>,
        Lennart Poettering <mzxreary@0pointer.de>,
        "Theodore Y. Ts'o" <tytso@mit.edu>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        "Alexander E. Patrakov" <patrakov@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Garrett <mjg59@srcf.ucam.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Ext4 Developers List <linux-ext4@vger.kernel.org>,
        Linux API <linux-api@vger.kernel.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Sep 20, 2019 at 12:22 PM Andy Lutomirski <luto@kernel.org> wrote:
>
> Here are some possible approaches that come to mind:
>
> int count;
> while (crng isn't inited) {
>   msleep(1);
> }
>
> and modify add_timer_randomness() to at least credit a tiny bit to
> crng_init_cnt.

I'd love that, but we don't actually call add_timer_randomness() for timers.

Yeah, the name is misleading.

What the "timer" in add_timer_randomness() means is that we look at
the timing between calls. And we may actually have (long ago) called
it for timer interrupts. But we don't any more.

The only actual users of add_timer_randomness() is
add_input_randomness() and add_disk_randomness(). And it turns out
that even disk IO doesn't really call add_disk_randomness(), so the
only _real_ user is that keyboard input thing.

Which means that unless you sit at the machine and type things in,
add_timer_randomness() _never_ gets called.

No, the real source of entropy right now is
add_interrupt_randomness(), which is called for all device interrupts.

But note the "device interrupts" part. Not the timer interrupt. That's
special, and has its own low-level architecture rules. So only the
normal IO interrupts (like disk/network/etc).

So timers right now do not add _anything_ to the randomness pool. Not
noise, not entropy.

But yes, what you can do is a jitter entropy thing, which basically
does what you suggest, except instead of "msleep(1)" it does something
like

   while (crng isn't inited) {
       sched_yield();
       do_a_round_of_memory_accesses_etc();
       add_cycle_counter_entropy();
   }

and with a lot of handwaving you'll convince a certain amount of
people that yes, the timing of the above is unpredictable enough that
the entropy you add is real.

             Linus
