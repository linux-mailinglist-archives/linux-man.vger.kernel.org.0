Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 50FF8B83AA
	for <lists+linux-man@lfdr.de>; Thu, 19 Sep 2019 23:48:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732082AbfISVsS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Sep 2019 17:48:18 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:43166 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732457AbfISVsS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Sep 2019 17:48:18 -0400
Received: by mail-lf1-f66.google.com with SMTP id u3so3459957lfl.10
        for <linux-man@vger.kernel.org>; Thu, 19 Sep 2019 14:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=edBNiUCAkfvN/3XpQNySJ3URni0Ib/sxF2qoxmEcdPs=;
        b=aVaV1zCjOFb/oCr3LlveP0iW40Bbf85kACXi2TPOzhPig+J6nPBdquOOmmczmq3Pvz
         eAU+3Jy03OQ31MfO232+fud/OluIqVj1sjHgRJxGMQN/Cu5OAgjExkpNb+RVnX54oHiP
         ko0EAsEVkDpJzJdh060J1gEBSzBA17aW3PG2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=edBNiUCAkfvN/3XpQNySJ3URni0Ib/sxF2qoxmEcdPs=;
        b=F4KPunPp35wWGT/xI3do2rwF0h8JsdCkc03hZMy2MhGpTfDa7whAWXscYkqQj6la2d
         x+u/y3MTZ62rTdQE1yWhmcgSiMrpanfDxCALQncJgA5vTprSdGsLobcB9To0JA146Y8w
         qiW0u5h+8I753yxWWRCsWUE3eEyfGOEtSEUDMwSLzftPVd69D6f8cf5vzS2NR6qIGuo3
         CcDARs2NQhZfd1MhWZL5SusVyF84IWn7bqnVIFSd0ZcqcRIHIMO39Sbeavs+a71q2Uov
         0JBbC5lZzrvfku4fyYbvFkzMrodiAXeXrPn1z3qNw6MbB8r4WjKAObGfVRHg3z7wy7d3
         zBDQ==
X-Gm-Message-State: APjAAAUnwattyrtL8ezflgm2aGv+yAUMP1D/2unXe6lgpp4G9jgB34C5
        Tiw9dgmYDpyqzMfvpS/lZSa1ou8MHPw=
X-Google-Smtp-Source: APXvYqwJv+T9jPNlBbR3T8jqX38ROepnt9mjJzFd7uxx2GuzdNCWwQIgHdMGt18Tp16E9a6dVczKww==
X-Received: by 2002:a19:ca07:: with SMTP id a7mr6692411lfg.181.1568929695114;
        Thu, 19 Sep 2019 14:48:15 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com. [209.85.167.44])
        by smtp.gmail.com with ESMTPSA id c69sm1950423ljf.32.2019.09.19.14.48.14
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 14:48:14 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id u3so3459880lfl.10
        for <linux-man@vger.kernel.org>; Thu, 19 Sep 2019 14:48:14 -0700 (PDT)
X-Received: by 2002:ac2:47f8:: with SMTP id b24mr6182150lfp.134.1568929693778;
 Thu, 19 Sep 2019 14:48:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190912034421.GA2085@darwi-home-pc> <20190912082530.GA27365@mit.edu>
 <CAHk-=wjyH910+JRBdZf_Y9G54c1M=LBF8NKXB6vJcm9XjLnRfg@mail.gmail.com>
 <20190914122500.GA1425@darwi-home-pc> <008f17bc-102b-e762-a17c-e2766d48f515@gmail.com>
 <20190915052242.GG19710@mit.edu> <CAHk-=wgg2T=3KxrO-BY3nHJgMEyApjnO3cwbQb_0vxsn9qKN8Q@mail.gmail.com>
 <20190918211503.GA1808@darwi-home-pc> <20190918211713.GA2225@darwi-home-pc>
 <CAHk-=wiCqDiU7SE3FLn2W26MS_voUAuqj5XFa1V_tiGTrrW-zQ@mail.gmail.com>
 <20190919143427.GQ6762@mit.edu> <CAHk-=wgqbBy84ovtr8wPFqRo6U8jvp59rvQ8a6TvXuoyb-4L-Q@mail.gmail.com>
 <CAHk-=wjTbpcyVevsy3g-syB5v9gk_rR-yRFrUAvTL8NFuGfCrw@mail.gmail.com> <6adb02d4-c486-a945-7f51-d007d6de45b2@gmail.com>
In-Reply-To: <6adb02d4-c486-a945-7f51-d007d6de45b2@gmail.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu, 19 Sep 2019 14:47:57 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjGAaPAGnfok6fuZK1PYMkZ9bNOGkWXLYtS7+6bAWnAGQ@mail.gmail.com>
Message-ID: <CAHk-=wjGAaPAGnfok6fuZK1PYMkZ9bNOGkWXLYtS7+6bAWnAGQ@mail.gmail.com>
Subject: Re: [PATCH RFC v4 1/1] random: WARN on large getrandom() waits and
 introduce getrandom2()
To:     "Alexander E. Patrakov" <patrakov@gmail.com>
Cc:     "Theodore Y. Ts'o" <tytso@mit.edu>,
        "Ahmed S. Darwish" <darwish.07@gmail.com>,
        Lennart Poettering <mzxreary@0pointer.de>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        lkml <linux-kernel@vger.kernel.org>, linux-ext4@vger.kernel.org,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Sep 19, 2019 at 1:45 PM Alexander E. Patrakov
<patrakov@gmail.com> wrote:
>
> This already resembles in-kernel haveged (except that it doesn't credit
> entropy), and Willy Tarreau said "collect the small entropy where it is,
> period" today. So, too many people touched upon the topic in one day,
> and therefore I'll bite.

I'm one of the people who aren't entirely convinced by the jitter
entropy - I definitely believe it exists, I just am not necessarily
convinced about the actual entropy calculations.

So while I do think we should take things like the cycle counter into
account just because I think it's a a useful way to force some noise,
I am *not* a huge fan of the jitter entropy driver either, because of
the whole "I'm not convinced about the amount of entropy".

The whole "third order time difference" thing would make sense if the
time difference was some kind of smooth function - which it is at a
macro level.

But at a micro level, I could easily see the time difference having
some very simple pattern - say that your cycle counter isn't really
cycle-granular, and the load takes 5.33 "cycles" and you see a time
difference pattern of (5, 5, 6, 5, 5, 6, ...). No real entropy at all
there, it is 100% reliable.

At a macro level, that's a very smooth curve, and you'd say "ok, time
difference is 5.3333 (repeating)". But that's not what the jitter
entropy code does. It just does differences of differences.

And that completely non-random pattern has a first-order difference of
0, 1, 1, 0, 1, 1.. and a second order of 1, 0, 1, 1, 0,  and so on
forever. So the "jitter entropy" logic will assign that completely
repeatable thing entropy, because the delta difference doesn't ever go
away.

Maybe I misread it.

We used to (we still do, but we used to too) do that same third-order
delta difference ourselves for the interrupt timing entropy estimation
in add_timer_randomness(). But I think it's more valid with something
that likely has more noise (interrupt timing really _should_ be
noisy). It's not clear that the jitterentropy load really has all that
much noise.

That said, I'm _also_ not a fan of the user mode models - they happen
too late anyway for some users, and as you say, it leaves us open to
random (heh) user mode distribution choices that may be more or less
broken.

I would perhaps be willing to just put my foot down, and say "ok,
we'll solve the 'getrandom(0)' issue by just saying that if that
blocks too  much, we'll do the jitter entropy thing".

Making absolutely nobody happy, but working in practice. And maybe
encouraging the people who don't like jitter entropy to use
GRND_SECURE instead.

              Linus
