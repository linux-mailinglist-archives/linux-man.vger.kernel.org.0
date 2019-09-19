Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A688CB8222
	for <lists+linux-man@lfdr.de>; Thu, 19 Sep 2019 22:05:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390331AbfISUEY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Sep 2019 16:04:24 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:45005 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390490AbfISUEW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Sep 2019 16:04:22 -0400
Received: by mail-lj1-f193.google.com with SMTP id m13so4810764ljj.11
        for <linux-man@vger.kernel.org>; Thu, 19 Sep 2019 13:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4m5fsmM1D52MDhgJ8zhgndmWP49nchai632Fc7rhfU8=;
        b=PHHUgZsUDck1+0WgtGWev2ZlhzqlhCDdiuEQXHeHNB3isAv9qmIWo1voeYWP4xuA/T
         +xfLIMLS+z/qhyz5qZFANtXTjNrrdAV2+486tGTU1scf77F8RtXrqE4Kwsnq/Q6BF9nP
         mNagbYeNqWlvqvey2a6BlVYqNvoZoDpKMSclI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4m5fsmM1D52MDhgJ8zhgndmWP49nchai632Fc7rhfU8=;
        b=oXyMvGdZCtWaO0GLMotRgbQ4A3TIsV9glVEvYN98bp5XrvxapAnkasdSgKQkoJJHGt
         n2YcSV3UheEgrBgdLNuefGl/4uYXNH38YcglOdU1JqjHlIyRB67wOxOV9FLYrqsPyFrG
         Q5TvBqg65onFLck0pD7MSctAvQSnvwJhuii7yyqI3HSLaPZHq76V3+qvcg8mjzAzQqw0
         o7EFER7Kef0sZ/fJ7HCD8jkR+NkulbJS0ZdL0Mye17xDiy1vIV/OO70VHoOjl4uQkeOr
         oEJbwNxFLqJL6A8QY5Qnt7ybCJkhbNt7ZIQB59VYIHyikBVrpaOAYe7UN3LJyYfTJCaM
         op3g==
X-Gm-Message-State: APjAAAWs+NNpSgvSSrIJsRVpQpycR4t4CF0aooICeOJ1oWbqFxAuseZb
        lEhIvBo2Btl1OVobqo2LRGilDa185JQ=
X-Google-Smtp-Source: APXvYqyD7z3+Xf3PPDZbTnVX3FZVXO/GQq9e5NMA+AxxC5AZuBQcjVkqqZj8uN6I9VnRpNCTj8Vo4Q==
X-Received: by 2002:a2e:3a06:: with SMTP id h6mr6621305lja.128.1568923460181;
        Thu, 19 Sep 2019 13:04:20 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id z1sm1330844ljh.88.2019.09.19.13.04.17
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 13:04:17 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id x80so3303949lff.3
        for <linux-man@vger.kernel.org>; Thu, 19 Sep 2019 13:04:17 -0700 (PDT)
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr6044271lfp.61.1568923456905;
 Thu, 19 Sep 2019 13:04:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190912034421.GA2085@darwi-home-pc> <20190912082530.GA27365@mit.edu>
 <CAHk-=wjyH910+JRBdZf_Y9G54c1M=LBF8NKXB6vJcm9XjLnRfg@mail.gmail.com>
 <20190914122500.GA1425@darwi-home-pc> <008f17bc-102b-e762-a17c-e2766d48f515@gmail.com>
 <20190915052242.GG19710@mit.edu> <CAHk-=wgg2T=3KxrO-BY3nHJgMEyApjnO3cwbQb_0vxsn9qKN8Q@mail.gmail.com>
 <20190918211503.GA1808@darwi-home-pc> <20190918211713.GA2225@darwi-home-pc>
 <CAHk-=wiCqDiU7SE3FLn2W26MS_voUAuqj5XFa1V_tiGTrrW-zQ@mail.gmail.com>
 <20190919143427.GQ6762@mit.edu> <CAHk-=wgqbBy84ovtr8wPFqRo6U8jvp59rvQ8a6TvXuoyb-4L-Q@mail.gmail.com>
In-Reply-To: <CAHk-=wgqbBy84ovtr8wPFqRo6U8jvp59rvQ8a6TvXuoyb-4L-Q@mail.gmail.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu, 19 Sep 2019 13:04:00 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjTbpcyVevsy3g-syB5v9gk_rR-yRFrUAvTL8NFuGfCrw@mail.gmail.com>
Message-ID: <CAHk-=wjTbpcyVevsy3g-syB5v9gk_rR-yRFrUAvTL8NFuGfCrw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="000000000000545cbf0592ed7546"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000545cbf0592ed7546
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 19, 2019 at 8:20 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Yes, it hashes it using a good hash, but it does so in a way that
> makes it largely possible to follow the hashing and repeat it and
> analyze it.
>
> That breaks if we have hw randomness, because it does the
>
>         if (arch_get_random_long(&v))
>                 crng->state[14] ^= v;
>
> so it always mixes in hardware randomness as part of the extraction,
> but we don't mix anything else unpredictable - or even
> process-specific - state in.

So this is the other actual _serious_ patch I'd suggest: replace the

          if (arch_get_random_long(&v))
                  crng->state[14] ^= v;

with

          if (!arch_get_random_long(&v))
                  v = random_get_entropy();
          crng->state[14] += v;

instead. Yeah, it still doesn't help on machines that don't even have
a cycle counter, but it at least means that you don't have to have a
CPU rdrand (or equivalent) but you do have a cycle counter, now the
extraction of randomness from the pool doesn't just do the
(predictable) mutation for the backtracking, but actually means that
you have some very hard to predict timing effects.

Again, in this case a cycle counter really does add a small amount of
entropy (everybody agrees that modern CPU's are simply too complex to
be predictable at a cycle level), but that's not really the point. The
point is that now doing the extraction really fundamentally changes
the state in unpredictable ways, so that you don't have that "if I
recognize a value, I know what the next value will be" kind of attack.

Which, as mentioned, is actually not a purely theoretical concern.

Note small detail above: I changed the ^= to a +=. Addition tends to
be better (due to carry between bits) when there might be bit
commonalities.  Particularly with something like a cycle count where
two xors can mostly cancel out previous bits rather than move bits
around in the word.

With an actual random input from rdrand, the xor-vs-add is immaterial
and doesn't matter, of course, so the old code made sense in that
context.

In the attached patch I also moved the arch_get_random_long() and
random_get_entropy() to outside the crng spinlock. We're not talking
blocking operations, but it can easily be hundreds of cycles with
rdrand retries, or the random_get_entropy() reading an external clock
on some architectures.

                 Linus

--000000000000545cbf0592ed7546
Content-Type: text/x-patch; charset="US-ASCII"; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_k0r4ezrw0>
X-Attachment-Id: f_k0r4ezrw0

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9yYW5kb20uYyBiL2RyaXZlcnMvY2hhci9yYW5kb20u
YwotLS0gYS9kcml2ZXJzL2NoYXIvcmFuZG9tLmMKKysrIGIvZHJpdmVycy9jaGFyL3JhbmRvbS5j
CkBAIC0xMDU3LDkgKzEwNTcsMTAgQEAgc3RhdGljIHZvaWQgX2V4dHJhY3RfY3JuZyhzdHJ1Y3Qg
Y3JuZ19zdGF0ZSAqY3JuZywKIAkgICAgKHRpbWVfYWZ0ZXIoY3JuZ19nbG9iYWxfaW5pdF90aW1l
LCBjcm5nLT5pbml0X3RpbWUpIHx8CiAJICAgICB0aW1lX2FmdGVyKGppZmZpZXMsIGNybmctPmlu
aXRfdGltZSArIENSTkdfUkVTRUVEX0lOVEVSVkFMKSkpCiAJCWNybmdfcmVzZWVkKGNybmcsIGNy
bmcgPT0gJnByaW1hcnlfY3JuZyA/ICZpbnB1dF9wb29sIDogTlVMTCk7CisJaWYgKCFhcmNoX2dl
dF9yYW5kb21fbG9uZygmdikpCisJCXYgPSByYW5kb21fZ2V0X2VudHJvcHkoKTsKIAlzcGluX2xv
Y2tfaXJxc2F2ZSgmY3JuZy0+bG9jaywgZmxhZ3MpOwotCWlmIChhcmNoX2dldF9yYW5kb21fbG9u
ZygmdikpCi0JCWNybmctPnN0YXRlWzE0XSBePSB2OworCWNybmctPnN0YXRlWzE0XSArPSB2Owog
CWNoYWNoYTIwX2Jsb2NrKCZjcm5nLT5zdGF0ZVswXSwgb3V0KTsKIAlpZiAoY3JuZy0+c3RhdGVb
MTJdID09IDApCiAJCWNybmctPnN0YXRlWzEzXSsrOwo=
--000000000000545cbf0592ed7546--
