Return-Path: <linux-man+bounces-3351-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD529B1C306
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 11:13:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D803B3A1F73
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 09:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71C4228A714;
	Wed,  6 Aug 2025 09:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m/3dmjW0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E26928A1C3
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 09:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754471523; cv=none; b=OI49ijFWf4YoL726cSHWNRiHhOFZN+bBUKtS/e3Iu2V8RAvI1EaJBeFLb2tscyxKuzPAKrnzwPBuJEOqtDuTzQK7aojcjgU+D4oHN68z5lYCXQOwpJrkd2WhKj9a08fybz94Gh5CeMqqEftTUCrwapaXz4Z0Ab9RRi2m0OtpgLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754471523; c=relaxed/simple;
	bh=eE6u8qpLnYFQbV8WBrATEh6BJsY8i5QoIwSA8r1jkbQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=he/dvEQVU8vqSXVO9T5ZPwjRF/hv/pVlJllxa+ddc1sjXjnAqSoiEW/Slihb7phkXFFNKkiSiZEy9XCfGaqNr5gTDImU/bidnW9cGszRfi1GDGVBKr2qudLkSa3dHqnd0GySc5U3tQXtKnV1uNzvLhYHwCrpGb3fsuADxmo/GXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m/3dmjW0; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e8e14cf9e2aso6069024276.0
        for <linux-man@vger.kernel.org>; Wed, 06 Aug 2025 02:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754471520; x=1755076320; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6jEH7k/8JWLz49yDKIqqK5aDP7aIPtSCHJXH0GdS0OU=;
        b=m/3dmjW0mGHNFcrlim5D9Sl8RJM+bPHjtpRZGNlLAkEiY1bynkSQ7P6JlP4tUQeAeC
         aQLDLSvxzcY1C1kqhYsqH5vHe7ezu8BEZnxDDas4MyquXpltlIHGEMB9UwEf/iDhngCV
         o/8q4/ZtaJkj2ErHRuoGoT42aN378ThCk+JLpbd7L0B9ifF5YG/3lTJXV7GdiRKZ9VQ0
         /7GlNqC58JY3KPPUkRdEOoqoFSmezQipHHU4A3jqsQTcyHk4RxmT8a6R/No2H2oyx0D4
         cYsbOIl3FyqWa3/zNzRYOLgQ70hZioVyUHrWVhUCG7Jg8Fsko/xUZY4EZN72nrhqc9A9
         Z2NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754471520; x=1755076320;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6jEH7k/8JWLz49yDKIqqK5aDP7aIPtSCHJXH0GdS0OU=;
        b=EvYutVRvv+qASl5xX1QjimCSJq2cwPCirI6ZXvjBrAzd+9XgRiyfb7lB4IyauqVfjB
         rN5kW7zcXze8Ll8Bft4u0YsfAlaRqVzy7XxIkwvDqxzMydjAKqcoUOW7CxiZ2fDMZJ3/
         jfKk2+mVhgNZhHj/jrnZ/fnUPTOSrAC0T10WADcR0IssOdHxTPJhpKed8cywkMXkrrHZ
         Qfb1P/oOjs1LctG+Wq7Wjg+i68cAsTeqLUwBGc7z8nG0Fv/YmoJkZJerKy/yzbWlfshV
         +iKUI+VhanJneszwSy5iOx9B/iiEkbKlkjrJ65gY7FXr5+LH8A33Bb5y9DOD4vVl3dCd
         7OtA==
X-Forwarded-Encrypted: i=1; AJvYcCXY0XtevY5uI2TCDLgX6QEipS721GEDvuOzeo7taL/TEh04njGTXRHRWn7ErNpk21KwCw0NmmRirTk=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5DV8fbL1AOc0zqyIKg08DeehNZ62H34FieuFc8ZwCBmpqHdqk
	nZ+GTifF97Y4MyiM8Y2THD5kVdi7XYksHTBYFeK4q+w92nHAiLptoJnW
X-Gm-Gg: ASbGnct4WxV0gjWa8EBwzdOVIobwcABwq01CM/LjneaA9GdLJpnfhWWdZcwfR1KNt8N
	XssiKroTzXk8WscQxovkWLCi/IxOK5hbHur9MiDhc3IWRm7Q70R6gM9oM33FcTY2Tz4KxIK92s5
	lXTZUGd33x9tkyN4Nwly3bvNjWdHTrhYEJvO+W7ij25V1PtSfqtHXZXVa8JAMJ7wrqGCZN/H/pM
	2XX2qxYQ1jFqi3KbvBKWbPfiCqs9PPUgnfAMhyVdwmbBk/lPsoDql221TFq/5fecEoVLdinAh0k
	OcTwHliTNMcZ3Pgm7scehC3jE3tRJmuDLEqjzgaWlKlY0Ba/6dFa97TQ9rnOSjgWnuyoSxgQcgB
	J9fiTb4o8LDLhLMN+3Irl0+LaRyaxD3mNdA==
X-Google-Smtp-Source: AGHT+IF4GH0DDA5bKNVL5AW41Pag4EF1mftf1FSZIuS7YLJ7Be1CrEFpzSgyNxI44kR15D53CY+hzQ==
X-Received: by 2002:a05:690c:610d:b0:71a:251e:36c5 with SMTP id 00721157ae682-71bc98a0b19mr33738437b3.28.1754471520298;
        Wed, 06 Aug 2025 02:12:00 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-71b5a5993eesm38071117b3.42.2025.08.06.02.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 02:11:59 -0700 (PDT)
Date: Wed, 6 Aug 2025 04:11:57 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: Askar Safin <safinaskar@zohomail.com>, alx@kernel.org,
	brauner@kernel.org, dhowells@redhat.com, jack@suse.cz,
	linux-man@vger.kernel.org, mtk.manpages@gmail.com,
	viro@zeniv.linux.org.uk
Subject: How and when to control hyphenation (was: [PATCH 05/10] fsconfig.2:
 document 'new' mount api)
Message-ID: <20250806091157.ldpnbcbtik4eudjh@illithid>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dunsyl2r22hkgqff"
Content-Disposition: inline
In-Reply-To: <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>


--dunsyl2r22hkgqff
Content-Type: text/plain; charset=utf-8; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: How and when to control hyphenation (was: [PATCH 05/10] fsconfig.2:
 document 'new' mount api)
MIME-Version: 1.0

Hi Aleksa,

At 2025-08-06T18:40:32+1000, Aleksa Sarai wrote:
> On 2025-08-06, G. Branden Robinson <g.branden.robinson@gmail.com> wrote:
> > At 2025-08-06T10:45:03+0300, Askar Safin wrote:
> > > As you can see, "man" breaks word "FSCONFIG_SET_PATH_EMPTY":
> > > "FSCON" appears on one line and "FIG_SET_PATH_EMPTY" on another
> > > line.  Can you somehow prevent this? I. e. to prevent breaking of
> > > API names. This is very annoying.
> >=20
> > Yes.  Use the `\%` escape sequence to suppress hyphenation.
[...]
> > Thus one might say:
> >=20
> > .B \%FSCONFIG_SET_PATH_EMPTY
>=20
> Is there any way of knowing how long an identifier can be before it's
> necessary to \%-ify it?

TL;DR: five letters.[1]

I use the following shell script to aid me while composing pages:

[snip]
$ cat ~/bin/hyphen
#!/bin/sh

: ${HY:=3D4}

for W
do
    printf ".hy $HY\n.ll 1u\n%s\n" "$W" | nroff -Wbreak | sed '/^$/d' \
        | tr -d '\n'
    echo
done

# vim:set ai et sw=3D4 ts=3D4 tw=3D80:
[end snip]

Long story short, that tells groff to hyphenate as aggressively possible
(within the context of the English hyphenation patterns it uses), and
show every hyphenation point.  Though I'd love to explain exactly how it
works, that'd be off-topic for the linux-man list.

Example:

$ hyphen FSCONFIG_SET_PATH_EMPTY
FS=E2=80=90CON=E2=80=90FIG_SET_PATH_EMPTY

> I don't know if the man-pages folks will accept a man page that is
> just full of \% for every identifier (and there doesn't appear to be
> any rule when it comes to existing \% usage).

It's a question of house style.  I tend not to bother suppressing
hyphenation of "lengthy" (> 5 characters) identifiers when:

* the text where the word appears is not being "filled"; or
* I know for sure the word appears at the beginning of an output line.

The latter situation incorporates paragraphs that start with a literal,
and the use of literals as tags of tagged paragraphs (`TP`).

However, some "houses" (projects) might choose to mandate that literals
be protected from hyphenation regardless of position in filled text,
because recasting might move them closer to the right margin.

These are questions of taste and policy, and I'm not situated to tell
the Linux man-pages project what to do; I see my charter, as groff
maintainer, as supporting the satisfactory achievement of desired
formatting.  I do make style recommendations informed by popular English
style manuals and the history of Unix documentary praxis, but I lack a
strong prescription on the present point.

> I guess groff has some typesetting rule that decides whether or not to
> do hyphenation, so there probably is a number somewhere, not sure if
> it's documented (or guaranteed).

The groff_man_style(7) page in recent revisions attempts to teach
basic concepts of typesetting briefly enough to fit on a napkin while
still equipping the document author to predict the formatter's behavior.

   Fundamental concepts
     groff is a programming system for typesetting: we thus often use
     the verb =E2=80=9Cto set=E2=80=9D in the sense =E2=80=9Cto typeset=E2=
=80=9D.  The formatter
     troff(1) collects words from the input and fills output lines with
     as many as can fit.  Words are separated by spaces and newlines.  A
     transition to a new output line is called a break.  Breaks can
     occur at explicit hyphens, at \% or \: escape sequences (see
     subsection =E2=80=9CPortability=E2=80=9D below), or at predetermined l=
ocations in a
     word if automatic hyphenation is enabled (see the -rHY option in
     section =E2=80=9COptions=E2=80=9D below).  An output line may be suppl=
emented with
     inter=E2=80=90sentence space, then potentially adjusted with more spac=
e to
     a consistent length (see the -dAD option).  roff(7) details these
     processes.  The formatter prepares output for terminals or for more
     capable typesetters that can change the type size and font family.

(Italics and boldface appear where helpful when the foregoing is
rendered in the terminal.)

I'm intensely interested to hear about any deficiencies that you find in
groff's documentation.

Regards,
Branden

[1] TeX's English hyphenation patterns, which groff uses, assume that
    hyphenation is forbidden within the first two and the last three
    letters of any word: no word of five letters or shorter will be
    _automatically_ hyphenated.

    Explicit hyphens _are_ hyphenation points, as might be seen in
    "can-do attitude" or "ha-ha, green team wins".

    For more, see:
    https://www.gnu.org/software/groff/manual/groff.html.node/Manipulating-=
Hyphenation.html

--dunsyl2r22hkgqff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmiTHFUACgkQ0Z6cfXEm
bc7CFw/+NRthNrgSfTvf9N48izZkqmQJUPewg32AoZm5taoR7h+/YD20dTKcEm0S
bU8Se2bZXGzf2HT/el1Dc48g1hXpyCpz9/nfL8wpLtTseIQo734kfI8aI/KCOeYL
SkcMdtpfUDgvWR8UP2V+0Yp4t62SqHLGlt6E4k54tW34BKAW+COHNYXMI9Ztf+tM
x3z/Wxs7DivSAFiY+5I6pSJHWGtQ+nOIuJrkDJCLPFaptn56ULYEGDwu5fKr1gjK
zcjKLE/JxScsKJLPvhyHXn0fTV7zbOEihKI+T6J8DwIJc0ZIo24OBFxlvzNahym3
oxnE+p9AzZc+Ua+ccybEp6gtFemhqrAPYJPplcQrr1FUOQ2eHQaoftscE3hR3L15
1YvEAgJtc1/snK5nKuh5/ii2RsANMybcY0Eq/0ONg6cjE6Z3UpU+3oxk3kKb0CY2
UE9PGoKuz/vm9Oe4Ya5iGNLuRFncgfTHOaE7J6uTzoEr2SlCu/mMcUI8pj1r+M+4
fdrd5jT2+4x3al2XRxIeXlA9lEV2XM+KQjq4C8SzA6t0LQ+h82QYkG40q+rHYsvv
zu7Fgje5zimsKzY1CcDwcUbv/Q7trd9Znh2mvfnJCc1zViBHxAfSBhSBYM7he7ky
1RG+aglBz/3JjDTz9nhVZfr9t25I8r//V3Uyxaa0LVlmLKa5NaY=
=0u1T
-----END PGP SIGNATURE-----

--dunsyl2r22hkgqff--

