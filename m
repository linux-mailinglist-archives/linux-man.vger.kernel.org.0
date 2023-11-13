Return-Path: <linux-man+bounces-66-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3631C7E9F76
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 16:03:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCCC1280DB8
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 15:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60BE521108;
	Mon, 13 Nov 2023 15:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LqUd61IW"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D650208C2
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 15:03:42 +0000 (UTC)
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38316132
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 07:03:40 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-dae7cc31151so4449392276.3
        for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 07:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699887819; x=1700492619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mNDVaQ30GtElt10EQ+YmLXs9jX9IMOjQE2WfQuGADKs=;
        b=LqUd61IWPLPXAvjP/fmtvSsqCXV5noQe9BSHfW2yJXX2ALc/fJHJzBmw3jdUzjJdEF
         cy7rwj7/WzFD+S4OMibdAFzRajW29UB0utTdccaJ8QBqS9311AuV5jXvKHysxJgI/6ia
         DAPIjc/26hIrSkZFJSlLg2R+Oysgw5Acl9KXtWklmF2vuEqrW6S0DR4SPpnY5DcSyask
         ZxK1gZ9Fv/Q8Yzhz0Iv7rzQyINmBOlO8JHEHTVSl4iL4jm2UR93xIOjL2yyI1z/Tr8eR
         pkbY2jNp5vstIJoY0JnSv4z0zonUBAZjb3ovcEK9ZM1pSkXLOEONetnY/sHBzoZQMu7U
         s4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699887819; x=1700492619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mNDVaQ30GtElt10EQ+YmLXs9jX9IMOjQE2WfQuGADKs=;
        b=mBiHYD0PFyZAFo+r/9VxpdCv5j/oQYEVjlT86SJdwD8Kt+sk3VlqFRja8Je95SSXUN
         OFuk1NlPzyYsdlZnUwfminRrFIRhAnB6HqM43Ba6eEjUKpNfPm/3cqoKrsnnmwqPLVGr
         7qbjF/3pLu7h/cBbxSwbAz7Zsu2QZmYGoEUqOTg75ugjssu9/Jp6shcfmByGKl02W7k1
         OMB9Tnku1bW2x7ekrhplsDAA6a/7S6znqabl1QiIGS7vqI7PW4wskouus4WTqjzE+AVg
         m7yEpzm8oRRdeHTZTvbbJL18f2WkbCP66YnRhp139ev5G9DyKsTzWkKZCP0qGR4FDpZP
         Koxw==
X-Gm-Message-State: AOJu0Ywvimed+8sGMkQJke6CbynYk4K7z03cuki8ewmTTp4bt5F61+Db
	G3wKemWw1xTL474T7Yh2e9olHl6KfoKEMA==
X-Google-Smtp-Source: AGHT+IHwqtPsPF7jndo1PywkdiqIsALiEdKnrkVv/dEW+sV+elgsS04lZfvMsjq0cbl+O+R45i635Q==
X-Received: by 2002:a0d:d489:0:b0:5ac:552c:3462 with SMTP id w131-20020a0dd489000000b005ac552c3462mr6669528ywd.41.1699887819189;
        Mon, 13 Nov 2023 07:03:39 -0800 (PST)
Received: from firmament.. (h198-137-20-4.xnet.uga.edu. [198.137.20.4])
        by smtp.gmail.com with ESMTPSA id l135-20020a0de28d000000b005af5ef0687fsm1812990ywe.6.2023.11.13.07.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 07:03:38 -0800 (PST)
From: Matthew House <mattlloydhouse@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Date: Mon, 13 Nov 2023 10:01:54 -0500
Message-ID: <20231113150201.539849-1-mattlloydhouse@gmail.com>
In-Reply-To: <ZU5s-kWDTYNdxvQb@debian>
References: <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org> <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org> <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com> <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com> <ZUzPNydLkFPEvvsa@debian> <20231110160602.352085-1-mattlloydhouse@gmail.com> <ZU5s-kWDTYNdxvQb@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 10, 2023 at 12:48 PM Alejandro Colomar <alx@kernel.org> wrote:
> On Fri, Nov 10, 2023 at 11:06:00AM -0500, Matthew House wrote:
> > As I learned, the typical use of strcpy(3) (at least 80% of uses in my
> > estimation) is actually copying a string into a new buffer, not an exis=
ting
> > buffer. And that does need a +1 to calculate a size to pass to the
> > allocation function, and usually a lot more +s if it's going to be
>
> If you strcpy(3) to a new buffer, you'd usually strdup(3), no?  Unless
> it's part of a larger object.

Indeed, it's part of a larger object much more often than not. Empirically,
the idiomatic pattern in the strcpy(3)-using codebases I checked is stuff
like:

    char *key =3D ..., *value =3D ...;
    size_t dsize =3D strlen(key) + 1;
    if (value) dsize +=3D 2 + strlen(value);
    char *dst =3D malloc(dsize);
    if (!dst) return NULL;
    strcpy(dst, key);
    if (value !=3D NULL) {
        strcat(dst, ", ");
        strcat(dst, value);
    }
    return dst;

(Or similar with sprintf(3), when the sequence is fixed at compile time.
Combinations of strcat(3) and sprintf(3) are also common.)

And even in the case of only copying a single string, strdup(3) is not an
option for any codebase using functions other than malloc(3)/free(3) for
allocation; they either have to write a custom wrapper (very rare in
practice), or just allocate strlen(src) + 1 bytes inline and strcpy(3) it,
as the limiting case of the general strcpy(3)/strcat(3) pattern.

Also, strdup(3) isn't in current ISO C (yes, I know it's in C23, but I'm
still a pessimist), so it isn't directly portable to Windows' CRT without
conditionally #defining it as an alias of _strdup(), which probably scares
off a few potential users.

> > Relatedly, as I also learned from all the manual strdup(3)-like snippets
> > that use a custom allocator, the typical library author is deathly alle=
rgic
> > to writing a custom wrapper over anything that isn't an allocation
> > function; they'll repeat the entirety of the logic inline as many times=
 as
> > it takes. So I don't buy that most people would be replacing numerous c=
alls
> > to strncpy(3) with calls to a unified wrapper function that can be
> > inspected and fixed all in one place, as you seem to suggest in your la=
ter
> > email.
>
> I try to avoid cowboy programmers, but we know it's impossible.  I just
> do what I can.  But cowboy programmers will nevertheless continue to
> exist and negate reality.
>
> <https://github.com/nginx/unit/issues/795>
> <https://github.com/nginx/unit/issues/804>
> <https://github.com/nginx/unit/issues/923>
>
> The responses from a programmer from nginx are gems, doubting that UB is
> a problem, or even suggesting implementing a cosmetic patch instead of
> fixing an API.  You can read those links if you want some fun.

I don't deny that 'cowboy programmers' who disregard the formal rules in
favor of their own mental models, then blame the compiler devs, standards
authors, et al. if they ever get bitten, can be a real problem in the C
community, and targeting their specific preferences isn't always practical.
(Some of them still do have valid points, though; it's not an axiom that
all instances of UB or unspecified behavior currently in the standards are
necessarily a net good, as a few of the cowboys' opponents seem to
overzealously imply.)

But I also don't think that the very common preference for repeatedly
inlining code over writing a custom wrapper can simply be brushed off as
solely being held by such careless programmers. I can think of at least a
couple scenarios where it can make some sense even for careful programmers.

First, many teams writing libraries don't have much in the way of coherent
top-down control over the general layout of the codebase: every programmer
works primarily on their own functionality, while trying not to trample
over the work of their peers. So it can be especially difficult to set up a
central file of utility functions and keep them fully stable and available.
Instead, if a programmer just sticks purely to the platform-provided
functions, they have the assurance of fully-consistent behavior, at the
cost of the mental overhead of correctly writing patterns on top of them.

Second, some code is optimized for being very literally reused, by directly
transplanting functions from one project to another. For instance, CPython
has a few files transplanted from other FOSS libraries in this way, used as
fallbacks for mostly-but-not-entirely-portable APIs. But if such code
referred to project-specific wrappers, then all the wrappers would have to
be copied as well to get everything to work; thus, it's again valuable to
stick to common platform APIs.

More generally, if strncpy(3), short of being deprecated, became (e.g.)
strongly discouraged and heavily linted against in clang-tidy and the big
IDEs, to the point that library authors are pushed to git rid of it one way
or another, then I'd expect to see many more inlined memcpy(3)-based
replacements than foolproof wrappers. And even if some of them can be
blamed on 'cowboy programmers', inlined patterns represent enough of the
general codebase that we'd all have to read it anyway, which is not
something I'd prefer over working through strncpy(3)'s faults.

> > Also, the typical use of strncpy(3) by far is to allow a truncated stri=
ng
> > rather than raising an error on truncation, and in that use case, it ma=
kes
> > no difference whether or not the size inside the strncpy(3) call has a =
-1.
>
> True; that's a benign off-by-one cancer.  But still a cancer.

I don't see it that way. Both versions make some amount of logical sense.
With a -1 inside the strncpy(3) call, you're taking a raw prefix of a
string, then appending a null terminator to the prefix in case it doesn't
have one. Without a -1 inside a strncpy(3) call, you're again taking a raw
prefix, then truncating again by one more byte to ensure that a null
terminator is present.

The only real question is the size that it really ought to be truncated to
(assuming that truncation makes sense in the first place), but usually
that's just "whatever size fills as much of the buffer as possible".

> > Certainly, it can be quite a task to figure out whether the fields are
> > actually read, if the API is poorly specified; without going through its
> > entire implementation, any of those "unused" fields could be copied aro=
und
> > or compared before being discarded, making it dangerous to leave them
> > uninitialized. But need we add a comment to every one of those memset(3)
> > calls, "I'm unsure whether this zeroing is significant at all"? Perhaps
> > such a comment might be helpful, if there really is reason to suspect t=
hat
> > the API is nefarious, but I've hardly ever seen stuff like that in
> > practice.
>
> Maybe it's because in the code I've worked with, there were actual calls
> to strncpy(3) where the zeroing matters, and they're disguised between
> other strncpy(3) calls, which make it all a funny amusement park.
>
> If you _only_ use strings, and wrap strncpy(3) in a wrapper that
> protects against off-by-ones, it would be acceptable, I must say.  It's
> just that I don't find that code when I see strncpy(3) calls.  Maybe I
> don't look at the right code bases.

My condolences! But yeah, basically all codebases I've ever looked at,
including the ones I reviewed for typical strncpy(3) usage, really do tend
to use plain, ordinary C strings all the way; some even have comments
reminding not to depend on strncpy(3)'s zero-padding, on account of a few
misbehaving implementations without it. I recall seeing one library a while
back that zero-padded all strings up to a multiple of 8 bytes for SIMD
purposes, but IIRC, that one used entirely custom functions for string
manipulation, and limited use of standard functions to reading the strings.

> > If forces you to do extra work, the same way strcpy(3) forces you to do
> > extra work.
>
> strncpy(3) still requires you to know your buffer sizes.  So any dangers
> of strcpy(3) in that regard should be shared by strncpy(3).  No?

What I was trying to say with my whole anti-strcpy(3) diatribe is, it's a
very good thing that strncpy(3) requires you to know your buffer size!
strcpy(3), strcat(3), and sprintf(3) share the danger that you can use them
*even without knowing your buffer size* and putting in the extra work.
Thus, library authors can and have frequently written clever things like

    void write_string_to_buffer(char *buf, const char *key, int value) {
        sprintf(buf, "%s, %d\n", key, value);
    }

where the required buffer size is known neither to the caller nor the
callee; callers just all coincidentally happen to use a large-enough
buffer, even though the requirement isn't documented anywhere. And with
enough callers, it becomes very likely to mess this up somewhere and
actually expose a buffer overwrite, as I mentioned a few times in my list.

Meanwhile, with strncpy(3), which requires the destination size to be set
in stone, the only dangers are memcpy(3)-like uses where it turns out the
source string isn't always long enough; truncating uses where truncation
is logically inappropriate, or where the string is truncated too far;
truncation-detecting uses where some source strings are needlessly
rejected; cleverness in deciding when to append the null terminator; normal
off-by-one errors; and, of course, your fear of secret reliance on the zero
padding.

Most of these are strictly local dangers, that can be diagnosed mainly by
looking at the call to strncpy(3) and the immediate use of the destination
buffer. The only exceptions are certain memcpy(3)-like uses, which can rely
on the code that's creating the source string to make it long enough, and
secret reliance on zero padding, which appears rare to me in practice.

But strcpy(3)'s biggest and most frequent danger is a global danger that
necessarily forces you to scour the codebase to track down all the callers
and make sure that the source ultimately fits in the destination. And many
codebases even consider this perfectly legitimate, e.g., by having some
common INTERNAL_BUFFER_SIZE that they implicitly expect the source string
to adhere to! That's why I say that strcpy(3)'s dangers are not really
shared by strncpy(3).

Thank you,
Matthew House

