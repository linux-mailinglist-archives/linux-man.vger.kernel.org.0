Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D84E1B9711
	for <lists+linux-man@lfdr.de>; Fri, 20 Sep 2019 20:16:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406324AbfITSQO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Sep 2019 14:16:14 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:43256 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404864AbfITSQO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Sep 2019 14:16:14 -0400
Received: by mail-lf1-f68.google.com with SMTP id u3so5666666lfl.10
        for <linux-man@vger.kernel.org>; Fri, 20 Sep 2019 11:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rM+Onl6ZZjCImWZH5w1UTQehqPPbzrNaxCZa4cd8l/4=;
        b=WFFZp5fgdUni5U9NnLZhbw6pO9xDM5RkYeghIYgcBWXFD7T14QJUQvBU7Cdx+lxBSa
         bkTbGx0p3+3IzHwHnVfQ/fS6soC0P0rWIQj80S3A+ae2wmbHsBjD9Sa0XYRauaOcnE0g
         4Ju1XgJzmbU7Wa53qZygI9UxcmISnicMfpTV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rM+Onl6ZZjCImWZH5w1UTQehqPPbzrNaxCZa4cd8l/4=;
        b=ZRJnNllAET/89mYmcBYtVwIsCo/cPDCcT/CGp6pK8HYrdSyCuWRBbK4MCMgZGSCfqB
         I+k1+rlk8gUFgawSfdLXXngoxSgiRkV2lbjaNvA1RDEjNPEdEW/zzUJaWrN9tid87zss
         N7NKgxdWOz8QTWXU5/VXhJyzHBNC81bOxrvjTqKp3SwPXktdSunEJnHdkCNDpOi2Vy9P
         9eAJHM6Itm67GCnLFlL75mIsIalFMK+yZBXwS7522b210Ra6U/lzXMgVoWl3yaOgJiWB
         NGvAuqxaWi45PXX3FWrMSZZ/r90k/xvRgs9lXosc+mePhT5fw6waeZO+Vi9G3fvQ0UJ2
         HVEQ==
X-Gm-Message-State: APjAAAXNrEVNiDVAFkNRheSCEWDz/8cqMtM1uoL5o4t7LLNkh1L+oezp
        mt2YV7Kef5kULpHWWXkuCY1D3nfuN+I=
X-Google-Smtp-Source: APXvYqwinRRIpllWhL48yaMTiWPih7WGUC6XJO4bPtmmDNkbs+kOIYvQu/5M8Uqt8QFjyuq9pDw6bA==
X-Received: by 2002:ac2:44a3:: with SMTP id c3mr8803254lfm.17.1569003370986;
        Fri, 20 Sep 2019 11:16:10 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id t82sm643193lff.58.2019.09.20.11.16.10
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2019 11:16:10 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id r2so5675717lfn.8
        for <linux-man@vger.kernel.org>; Fri, 20 Sep 2019 11:16:10 -0700 (PDT)
X-Received: by 2002:ac2:50cb:: with SMTP id h11mr9479913lfm.170.1569003009866;
 Fri, 20 Sep 2019 11:10:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190912034421.GA2085@darwi-home-pc> <20190912082530.GA27365@mit.edu>
 <CAHk-=wjyH910+JRBdZf_Y9G54c1M=LBF8NKXB6vJcm9XjLnRfg@mail.gmail.com>
 <20190914122500.GA1425@darwi-home-pc> <008f17bc-102b-e762-a17c-e2766d48f515@gmail.com>
 <20190915052242.GG19710@mit.edu> <CAHk-=wgg2T=3KxrO-BY3nHJgMEyApjnO3cwbQb_0vxsn9qKN8Q@mail.gmail.com>
 <20190918211503.GA1808@darwi-home-pc> <20190918211713.GA2225@darwi-home-pc>
 <CAHk-=wiCqDiU7SE3FLn2W26MS_voUAuqj5XFa1V_tiGTrrW-zQ@mail.gmail.com>
 <20190920134609.GA2113@pc> <CALCETrWvE5es3i+to33y6jw=Yf0Tw6ZfV-6QWjZT5v0fo76tWw@mail.gmail.com>
 <CAHk-=wgW8rN2EVL_Rdn63V9vQO0GkZ=RQFeqqsYJM==8fujpPg@mail.gmail.com> <CALCETrV=4TX2a4uV5t2xOFzv+zM_jnOtMLJna8Vb7uXz6S=wSw@mail.gmail.com>
In-Reply-To: <CALCETrV=4TX2a4uV5t2xOFzv+zM_jnOtMLJna8Vb7uXz6S=wSw@mail.gmail.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Fri, 20 Sep 2019 11:09:53 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjpTWgpo6d24pTv+ubfea_uEomX-sHjjOkdACfV-8Nmkg@mail.gmail.com>
Message-ID: <CAHk-=wjpTWgpo6d24pTv+ubfea_uEomX-sHjjOkdACfV-8Nmkg@mail.gmail.com>
Subject: Re: [PATCH RFC v4 1/1] random: WARN on large getrandom() waits and
 introduce getrandom2()
To:     Andy Lutomirski <luto@kernel.org>
Cc:     "Ahmed S. Darwish" <darwish.07@gmail.com>,
        Lennart Poettering <mzxreary@0pointer.de>,
        "Theodore Y. Ts'o" <tytso@mit.edu>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        "Alexander E. Patrakov" <patrakov@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Willy Tarreau <w@1wt.eu>,
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

On Fri, Sep 20, 2019 at 10:52 AM Andy Lutomirski <luto@kernel.org> wrote:
>
> IMO, from the beginning, we should have done this:
>
> GRND_INSECURE: insecure.  always works.
>
> GRND_SECURE_BLOCKING: does exactly what it says.
>
> 0: -EINVAL.

Violently agreed. And that's kind of what the GRND_EXPLICIT is really
aiming for.

However, it's worth noting that nobody should ever use GRND_EXPLICIT
directly. That's just the name for the bit. The actual users would use
GRND_INSECURE or GRND_SECURE.

And yes, maybe it's worth making the name be GRND_SECURE_BLOCKING just
to make people see what the big deal is.

In the meantime, we need that new bit just to be able to create the
new semantics eventually. With a warning to nudge people in the right
direction.

We may never be able to return -EINVAL, but we can add the pr_notice()
to discourage people from using it.

And yes, we'll have to block - at least for a time - to get some
entropy. But at some point we either start making entropy up, or we
say "0 means jitter-entropy for ten seconds".

That will _work_, but it will also make the security-people nervous,
which is just one more hint that they should move to
GRND_SECURE[_BLOCKING].

> getrandom(..., GRND_EXPLICIT): just fscking give me a number.  it
> seems to work and it shuts up the warning
>
> And we're back to square one.

Actually, you didn't read the GRND_INSECURE patch, did you.

getrandom(GRND_EXPLICIT) on its own returns -EINVAL.

Because yes, I thought about it, and yes, I agree that it's the same
as the old 0.

So GRND_EXPLICIT is a bit that basically means "I am explicit about
what behavior I want". But part of that is that you need to _state_
the behavior too.

So:

 - GRND_INSECURE is (GRND_EXPLICIT | GRND_NONBLOCK)

   As in "I explicitly ask you not to just not ever block": urandom

 - GRND_SECURE_BLOCKING is (GRND_EXPLICIT | GRND_RANDOM)

   As in "I explicitly ask you for those secure random numbers"

 - GRND_SECURE_NONBLOCKING is (GRND_EXPLICIT | GRND_RANDOM | GRND_NONBLOCK)

   As in "I want explicitly secure random numbers, but return -EAGAIN
if that would block".

Which are the three sane behaviors (that last one is useful for the "I
can try to generate entropy if you don't have any" case. I'm not sure
anybody will do it, but it definitely conceptually makes sense).

And I agree that your naming is better.

I had it as just "GRND_SECURE" for the blocking version, and
"GRND_SECURE | GRND_NONBLOCK" for the "secure but return EAGAIN if you
would need to block for entropy" version.

But explicitly stating the blockingness in the name makes it clearer
to the people who just want GRND_INSECURE, and makes them realize that
they don't want the blocking version.

             Linus
