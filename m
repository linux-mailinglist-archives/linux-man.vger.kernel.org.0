Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 20D28B7E02
	for <lists+linux-man@lfdr.de>; Thu, 19 Sep 2019 17:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388097AbfISPVU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Sep 2019 11:21:20 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:33600 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389360AbfISPVT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Sep 2019 11:21:19 -0400
Received: by mail-lf1-f65.google.com with SMTP id y127so2698638lfc.0
        for <linux-man@vger.kernel.org>; Thu, 19 Sep 2019 08:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zfEuPJ641YJQeJkTLfoZf15jmx/xg/Ot7RIxF8XZrnA=;
        b=IeBlACCv1tdF6ZOzyEP8OJsAwJslYvvpUJkXNzHb4jX+yNNAS3BZmLItZivVoYM1Rs
         VowQP+P9MXEx89V5iLrrCYHL5VwW6G8+q7N0l1WKXVBSnpkmBwKuOyhhfpFxBZfThAv0
         0JhTD0cT+wVcdXd64K9wjv9SZYXH5dnmZ6l+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zfEuPJ641YJQeJkTLfoZf15jmx/xg/Ot7RIxF8XZrnA=;
        b=V15N8dhSB+Miohngsmlx35Li5xLutIt1p75/U+hOUp54xPuJfeiTQIvoScvM2+5oFH
         Nx4AVV3yTReP8H5iVETHsPLAotJg4Fe67o35gcd3k9weE2vWo7jGLu6Nk6TrAgYsL8GR
         S1VZF5wjkUJqPq2WkATyjijgcksJUrf9v+XOYH01dcivCxATQHqIPN39IUyLpP2Fcedn
         LgyKbJq4tyPPf4sbF8wXnPoHx1ObkUTaJ1PnnevZAOj5Py3bnY5jc2b5iokSneEZq8LH
         djRC5Mv2mulL8ri6jgD4D2YDVAbsa2zSDe13GNPNik8u/ioerKvse6rjtzJThBaznBy/
         WvUQ==
X-Gm-Message-State: APjAAAUgydODCX/2MHxrETZpEY2jWuf+6CFw8qGz3ASJSB/0jf4R6mYI
        Ezfb5DUYlhomC4UlrVZxbCuvwIVnw6M=
X-Google-Smtp-Source: APXvYqzJkrEDxNGdQEB7r4OMBxGX0dIym5Jifg9xc+MSwEzFw1JJa3vCsO0R47RCRYOAG+RMZOvfcA==
X-Received: by 2002:ac2:5a19:: with SMTP id q25mr5338095lfn.178.1568906475676;
        Thu, 19 Sep 2019 08:21:15 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id n2sm1721568ljj.30.2019.09.19.08.21.14
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 08:21:14 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id 72so2670650lfh.6
        for <linux-man@vger.kernel.org>; Thu, 19 Sep 2019 08:21:14 -0700 (PDT)
X-Received: by 2002:ac2:47f8:: with SMTP id b24mr5372959lfp.134.1568906473541;
 Thu, 19 Sep 2019 08:21:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190912034421.GA2085@darwi-home-pc> <20190912082530.GA27365@mit.edu>
 <CAHk-=wjyH910+JRBdZf_Y9G54c1M=LBF8NKXB6vJcm9XjLnRfg@mail.gmail.com>
 <20190914122500.GA1425@darwi-home-pc> <008f17bc-102b-e762-a17c-e2766d48f515@gmail.com>
 <20190915052242.GG19710@mit.edu> <CAHk-=wgg2T=3KxrO-BY3nHJgMEyApjnO3cwbQb_0vxsn9qKN8Q@mail.gmail.com>
 <20190918211503.GA1808@darwi-home-pc> <20190918211713.GA2225@darwi-home-pc>
 <CAHk-=wiCqDiU7SE3FLn2W26MS_voUAuqj5XFa1V_tiGTrrW-zQ@mail.gmail.com> <20190919143427.GQ6762@mit.edu>
In-Reply-To: <20190919143427.GQ6762@mit.edu>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu, 19 Sep 2019 08:20:57 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgqbBy84ovtr8wPFqRo6U8jvp59rvQ8a6TvXuoyb-4L-Q@mail.gmail.com>
Message-ID: <CAHk-=wgqbBy84ovtr8wPFqRo6U8jvp59rvQ8a6TvXuoyb-4L-Q@mail.gmail.com>
Subject: Re: [PATCH RFC v4 1/1] random: WARN on large getrandom() waits and
 introduce getrandom2()
To:     "Theodore Y. Ts'o" <tytso@mit.edu>
Cc:     "Ahmed S. Darwish" <darwish.07@gmail.com>,
        Lennart Poettering <mzxreary@0pointer.de>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        "Alexander E. Patrakov" <patrakov@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        lkml <linux-kernel@vger.kernel.org>, linux-ext4@vger.kernel.org,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Sep 19, 2019 at 7:34 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> > It's basically a "we used up entropy" thing, which is very
> > questionable to begin with as the whole discussion has shown, but
> > since it stops doing it after 10 cases, it's not even good security
> > assuming the "use up entropy" case makes sense in the first place.
>
> It was a bug that it stopped doing it after 10 tries, and there's a
> really good reason for it.

I really doubt that.

> The reason for zeroing it after we expose state is because otherwise
> if the pool starts in a known state (the attacker knows the starting
> configuration, knows the DMI table that we're mixing into the pool
> since that's a constant, etc.),

That's at least partly because our pool hashing has what looks a
fairly sad property.

Yes, it hashes it using a good hash, but it does so in a way that
makes it largely possible to follow the hashing and repeat it and
analyze it.

That breaks if we have hw randomness, because it does the

        if (arch_get_random_long(&v))
                crng->state[14] ^= v;

so it always mixes in hardware randomness as part of the extraction,
but we don't mix anything else unpredictable - or even
process-specific - state in. So without hw randomness, you can try to
get a lot of data over a lot of boots - and for long times during
boots - and maybe find the pattern.

But honestly, this isn't realistic. I can point to emails where *you*
are  arguing against other hashing algorithms because the whole state
extension attack simply isn't realistic.

And I think it's also pretty questionable how we don't try to mix in
anything timing/process-specific when extracting, which is what makes
that "do lots of boots" possible.

The silly "reset crng_init_cnt" does absolutely nothing to help that,
but in fact what it does is to basically give the attacker a way to
get an infinite stream of data without any reseeding (because that
only happens after crng_read()), and able to extend that "block at
boot" time indefinitely while doing so.

Also honestly, if the attacker already has access to the system at
boot, you have some fairly big problems to begin with.

So a much bigger issue than the state extension attack (pretty much
purely theoretical, given any entropy at all, which we _will_ have
even without the crng_init_cnt clearing) is the fact that right now we
really are predictable if there are no hardware interrupts, and people
have used /dev/urandom because other sources weren't useful.

And the fact is, we *know* people use /dev/urandom exactly because
other sources haven't been useful.

And unlike your theoretical state extension attack, I can point you to
black hat presentations that literally talk about using the fact that
we delay m,ixing in the input pull hash to know what's going on:

  https://www.blackhat.com/docs/eu-14/materials/eu-14-Kedmi-Attacking-The-Linux-PRNG-On-Android-Weaknesses-In-Seeding-Of-Entropic-Pools-And-Low-Boot-Time-Entropy.pdf

That's a real attack. Based on the REAL fact that we currently have to
use the urandom logic because the entropy-waiting one is useless, and
in fact depends on the re-seeding happening too late.

Yes, yes, our urandom has changed since that attack, and we use chacha
instead of sha1 these days. We have other changes too. But I don't see
anything fundamentally different.

And all your arguments seem to make that _real_ security issue just
worse, exactly because we also avoid reseeding while crng_init is
zero.

> I'm happy this proposed is not changing the behavior of getrandom(0).
> Why not just remap 0 to GRND_EXPLICIT | GRND_WAIT_ENTROPY, though?  It
> will have the same effect, and it's make it clear what we're doing.

Have you you not followed the whole discussion? Didn't you read the comment?

People use "getrandom(0)" not because they want secure randomness, but
because that's the default.

And we *will* do something about it. This patch didn't, because I want
to be able to backport it to stable, so that everybody is happier with
saying "ok, I'll use the new getrandom(GRND_INSECURE)".

Because getrandom(0) will NOT be the the same as GRND_EXPLICIT |
GRND_WAIT_ENTROPY.

getrandom(0) is the "I don't know what I am doing" thing. It could be
somebody that wants real secure random numbers. Or it could *not* be
one of those, and need the timeout.

> Later on, when we rip out /dev/random pool code (and make reading from
> /dev/random the equivalent of getrandom(GRND_SECURE)), we'll need to
> similarly map the legacy combination of flags for GRND_RANDOM and
> GRND_RANDOM | GRND_NONBLOCK.

And that is completely immaterial, because the "I'm confused" case
isn't about GRND_RANDOM. Nobody uses that anyway, and more importantly
it's not the case that has caused bugs. That one blocks even during
normal execution, so that one - despite being completely useless -
actually has the one good thing going for it that it's testable.
People will see the "oh, that took a long time" during testing. And
then they'll stop using it.

Ted - you really don't seem to be making any distinction between
"these are real problems that should be fixed" vs "this is theory that
isn't relevant".

The "getrandom(0)" is a real problem that needs to be fixed.

The warnings from /dev/urandom are real problems that people
apparently have worked around by (incorrectly) using getrandom(0).

The "hashing the random pool still leaves identities in place" is a
real problem that had a real attack.

The state extension attack? Complete theory (again, I can point to you
saying the same thing in other threads), and the "fix" of resetting
the counter and not reseeding seems to be anything but.

            Linus
