Return-Path: <linux-man+bounces-4016-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4FFBAE936
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 22:56:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB8303B28E1
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 20:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54327286D40;
	Tue, 30 Sep 2025 20:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L0DjjWLS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742484C81
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 20:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759265759; cv=none; b=BmoRgGclQ7eiJtuWXU6jSF4uoBxWgJX5/wwsE68Dc3dCNhJVL+BbrnzPTlF+hintKhiju2lQMMJmxrx794H1jRAgsl0EBFPp0eHp6ZS4s8pmU33u8xO46h69aXdQ6euoOwLdrV/Zjwzb9l+pRLnYhwfNbe1TsJyS4f+nzh/idyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759265759; c=relaxed/simple;
	bh=9cGHBFpuSinQzc2V/JgvT2zeiXTknhI27d5mf3JBxZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u40GJussfnPOHROXTiyM8nFstE+XWd0FGU3EjJVJKlKSH/Z/pp3LL9vKQ50NgoA4jM0MrZO0W++5a6N9kC80BfmoH64vbdIodPkCg5itu7KyysuO364ke24A4+RY3tIo4TMRzR6hdjRsQtQNbXh6IcaAQg14MqwhceREYZ8m814=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L0DjjWLS; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-71d603acc23so63001437b3.1
        for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 13:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759265755; x=1759870555; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y6ZX0sv6LTKwuHU29U3BfCmQVrelwyxFqlNSCX6tDx4=;
        b=L0DjjWLS37XiSdwFidiEDGnajCeeoCtWpyJmHCGMoNftkQdKijpNHHZMtehPn2B2sj
         HwCfGcIZHkWygpCRby+AYW/qve4piRQf0kXFlLPSgAlTglv1so/Z/RONwIqmibJPVcKw
         z2xMbfjriIB4P6ioliqL6Q3Hing22vW/5bILbik1qTyPKnT/EW7aEoNsXZ3Mj4aA4IcC
         wUcHDIl1zbwnl5A5nd1+PFLTOJhGKYK3Ni2nCHe/JTh6DiDz5SljJJe/t7/52ofFh/NJ
         hy8KsvpulAeGjXa41qTyfKDpGkzRnn+rPGUn6AVhxiKsvRr+ppZcflbDAZhOPo3GODnF
         7VFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759265755; x=1759870555;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y6ZX0sv6LTKwuHU29U3BfCmQVrelwyxFqlNSCX6tDx4=;
        b=p75jMR9VKmEsAuxXOon2QtIqVopB4bhTbKMviiiZG7YHvNibZ98wWnPQPjeEQA/3ZW
         YhijcHl0kX1DKeXDGmXdhUbyQ7Kkt72s4WyVDvarm6Sp/a82KC2z6NNs1mBF4KhndhkA
         BNaI221hKFczkbRmbfy93A3xNHeq2ywErtJy691W93Gpqgjy03BWn0AtGsNnrYqWCrFJ
         NTBLEHEHo6jQrj14ZEZxw9yGf5EtIGoFwN2q7zvXm5GfErKNiObL+c8yfXGldmHhIw9d
         GemosOP9RD6q2KlNgrYkuNr1kFtU3qOnTTlNtVPPt2Tabvc4nEzJASywa3vZYZTs/Oxk
         VHyA==
X-Forwarded-Encrypted: i=1; AJvYcCUh5/YcQ7dCIRYbx0hD31mIGRtE+aRLKFHyfLm73+mm8R4puZaq3XOKNEBq848zohaRUooZIHPH0X8=@vger.kernel.org
X-Gm-Message-State: AOJu0YyznLhprasFX4rCxmFnEYSB2G1fBYOtCN8CKKSWa4XMtZAu990e
	dkiKIWIPBlqHKXjoZ6NPXEKz6Xpb8BPk7l0fL1q6af+4Shxa+lYKMaghO2L4lA==
X-Gm-Gg: ASbGnct2QSRJnf/A8yEUpy519LU5K6p9PZ4X5XEjo0w7c/hkUouJZyZqN78tyOwUDXO
	YESdscEG8XIoT6NsiSvKcytiywbXgpnyQEFUw6e9MMyXD4+ILDY0am5dajoUs6oyGNn46ke1UuV
	qr2z45Q+jyeotDl5Mo3YyfrzDMX9TZOvTlnCLybAiObNvbutsCii5c2ryEtFJt89IahvngdRh8T
	uzUuPrQFHNdsE2NetGfFO9vxJIehTsalBC0Y6vbRWqxB/FkAMNBpJeuN0gx7dhKQ/w2msnwLyON
	OLdDzkeLYSsRH7NJScAUIW94ZFW9sU4HQliCqirD3rnihIid+kfx9TQytJc7azDX4dB6DqjzuLt
	K/CLBgArbfnWz6R800kDr9tvQrtdtUvZV/K0DKP5isZ+pusI=
X-Google-Smtp-Source: AGHT+IFnBeuFGVuXcNsfrs2+lZrW0JZ5bFWw3vVxrY2O6neZaChsBWmDty2wToW0yXS7QU1/7ABk0w==
X-Received: by 2002:a53:bc0c:0:b0:628:ef07:5e75 with SMTP id 956f58d0204a3-63b6ff0a3e0mr1444641d50.18.1759265755234;
        Tue, 30 Sep 2025 13:55:55 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-636d5b1d94asm3844210d50.25.2025.09.30.13.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 13:55:54 -0700 (PDT)
Date: Tue, 30 Sep 2025 15:55:52 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: Alejandro Colomar <alx@kernel.org>, coreutils@gnu.org,
	linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <20250930205552.nevihqli7tw7lefk@illithid>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>
 <86tt0jn27n.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jrtbgsicg5l64yyc"
Content-Disposition: inline
In-Reply-To: <86tt0jn27n.fsf@aarsen.me>


--jrtbgsicg5l64yyc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Move GNU manual pages to the Linux man-pages project
MIME-Version: 1.0

Hi Arsen,

At 2025-09-30T21:57:00+0200, Arsen Arsenovi=C4=87 wrote:
> In the original Unix v1 programmers manual (or, at least, the copy I
> could find),

As far as I know all copies of the First Edition manual on the Internet
descend from one scan.  They all are missing ascii(VII); presumably some
CSRC person tore that page out and taped it up next to their Teletype.

If someone locates a different scan, especially one with that man page
in it, consider the groff mailing list interested.

> (A funny side note: subconsciously, I chose the name "fildes.7" as to
> not go over eight characters; it came to me naturally after many years
> of working with and on Unix-like systems, this archaic element simply
> lodged itself into my instincts after some time.)

Eight's an odd choice for that, though.  As I understand it, the Fortran
linker that Unix originally used (C did not exist yet) had a limit of 6
characters for externally resolvable symbols, because that was all some
IBM operating system could handle.  File names (or "path name
components", if one insists) were limited to 14 characters until the
Berkeley "fast" file system.  The tuhs at tuhs dot org is a more
reliable resource than I can be here, though.

> Also, in my opinion, it is obvious that the term "file descriptor" is
> a misnomer or misabstraction and that "descriptor" or "handle" - which
> are significantly broader terms - would result in a far clearer
> abstraction (where a file descriptor is one such descriptor or
> handle).

"Handle" _is_ a better term.  So let us politely applaud Microsoft
managing to not make the wrong choice at _every_ turn.

Just most.

> In my mind, this basic failure in design was a result of someone
> chanting something like "everything is a file", and hence attaching a
> read and write operation to all OS "objects" instead of understanding
> that the filesystem hierarchy also contained within itself an "object"
> hierarchy.  I have no way of knowing if my head-canon is correct,
> though.

I don't either, but my impression is that much documentary work at the
Bell Labs CSRC was the work of exigetes attempting to divine Ken
Thompson's hermetic source code.  Thus the value of the Lions book.

> Of course, this is tangental to the manpage discussion; this is caused
> by other forces also, such as the set of concerns usually lumped under
> "operating system" in other communities being broken up between
> occasionally-adverse groups.

=2E..an easier problem to have when said groups share the common notion
that microkernels are stupid.

(The problem with Mach, whose properties big kernel advocates ascribe
it toto to all microkernels past, present, and future, was that its
working set was too large, and created excessive cache pressure.  See
Liedtke, J., "On =CE=BC-Kernel Construction".[1])

It may also be the case that the path to "world domination" appears
easier with a big kernel than a microkernel.

> I'm not sure why this is relevant - roff is capable of producing
> better documents than manpages (for instance, The C Programming
> Language by Brian Kernighan and Dennis Ritchie, was typeset with roff
> to my awareness, or at least I seem to remember reading that in the
> preface at some point - in any case, it was certainly used in
> well-written publication rather than solely manpages, so the format is
> hardly relevant), so clearly it's not an underlying limitation of the
> format.

That's true.  Brian Kernighan uses groff to write his books these
days.[0]  Another well known and well received work written using *roff
was _Advanced Programming in the Unix Environment_ by W. Richard
Stevens.  I don't know what Rago has used to typeset the second and
third editions of that work.

> And, again, there's a somewhat-better macro package for manpages also.

mdoc has advantages and disadvantages.  The groff@gnu list archives
record some friendly sparring between Ingo Schwarze and me on the point.

> IMO, it is clear that developers, especially in the Unix sphere, are
> unwilling to write documentation.  Washing machines from '80s tend to
> have more comprehensive documentation than the documentation in Unix
> and Unix-like systems.

I think documentation quality (or existence) has rotted in both the
software and appliance/consumer electronics domains.  It used to be de
rigueur to include a complete circuit diagram for anything you could
buy that had a diode in it.  Now, almost everything is locked up,
physically and conceptually thanks to trade secrets, with "no
user-serviceable parts inside".  We are furthermore blessed with
stalwart opponents of copyleft and right-to-repair laws, doughtily
keeping their employers' 10-Q filings safe.[2]

The great thing about "intellectual property" is how its premier
application is suppressing the exercise of intellect.

Regards,
Branden

[0] I can't find my citation for this, but if I recall correctly, Arnold
    Robbins asked Brian Kernighan in email, and shared this fact,
    probably on the TUHS list.

[1] https://dl.acm.org/doi/pdf/10.1145/224056.224075

[2] Good news, though--one's firm may soon need only file such
    disclosures semi-annually rather than quarterly.  Free markets work
    better with less information.  Didn't Kenneth Arrow teach us that?

    https://corpgov.law.harvard.edu/2025/09/27/the-forecast-on-quarterly-re=
porting/

--jrtbgsicg5l64yyc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjcQ8cACgkQ0Z6cfXEm
bc5VGA//V2VGD6k/u+ZDeQO8fcTgJGQRE21zdm/ISGhGL4gfBgszB2wJ8V51LB40
aCF1+yk5YQfN2JH+njtkJ+lrTahsEi2yzRXDiyMpWQGBUBaV4mCAKIf/eTQQNc25
BXw4qb4T1kJ9tqlXGVE+jiKlBGC9ngqCKv4Evrn9LjNiUnrZHUnG6RvhdAeUSvIE
HK5ZW/jj0Oo9ZWVKkb7cMVaMjoI5Cqt9yaq8K6quavrwcMY9/s1gKtdtnYyUSMms
/7alpzvdw7njyVh0izXn0psHpZyvJ/nCsj4ifg+xchxb01WDScFiLjn+MtsAwknE
Cw5HVv1aKbNheY2mKQZz6tJwPfzhqvSt9AARVsP5tnDH5ZG9qZBk3AfgNofZeIdv
N3JkfsqDGbAL/ULp2279XOLQ9lfBqzdZLT6slXuF8g8FAV196APGUBMYYdfXzdAt
kuJIcuIQDQv5/sIZwlyIRh+j+BslQL1d93rkLXeovvV434aWWxG0PtXZcdZ0KH0K
DbTj6uN2xIkYCsHR4teflWVAwAcPHXgPgSfUsCsqK+DCm2u55/wnjNm92uNPE5JM
9e19SF6Kmh81+HrSdcP8pUIngB8yvue1vlJTAP0qXUXtofj8RpQZlXtR3wEK023z
+AG7nUmL2zghHedFZOBdscp/yCnbbLAYhAXbMylLDwjvey7wgWo=
=BAsV
-----END PGP SIGNATURE-----

--jrtbgsicg5l64yyc--

