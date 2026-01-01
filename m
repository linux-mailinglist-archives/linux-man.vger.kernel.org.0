Return-Path: <linux-man+bounces-4602-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4845CECD4D
	for <lists+linux-man@lfdr.de>; Thu, 01 Jan 2026 06:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D514430052B0
	for <lists+linux-man@lfdr.de>; Thu,  1 Jan 2026 05:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3151A38F9;
	Thu,  1 Jan 2026 05:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PU4zfyKN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f193.google.com (mail-yw1-f193.google.com [209.85.128.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94EB8CA5A
	for <linux-man@vger.kernel.org>; Thu,  1 Jan 2026 05:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767246399; cv=none; b=oADaTU+nxqeK/tpgwh8+uPvMaZzVvCRhBa5cN++O505z5gJkvbaMhgZ4TiF8Wo+1+EKZS4s07twjscFFKBQTnOYS0KL/P9TSMy+7YLXyHOT8+KURbqQLEvuHBez7jcpRzR/6Sp856uhzP9jKNc/9xLCKHbpCUV5euPY1mWcs75k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767246399; c=relaxed/simple;
	bh=MCLE81FD5r5c1+jVx4pBwRCYR1e3fdU0sEY/EtCwha4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u8X/UYF/3QFnBPRTSf6Vu88s9QWQ8wbXc3eQyBPAc/yUizRb3sBlHBLK2A+GtdcfXcQ4w7pismpwXvthGBIKWVwb38eGPmlNBnJKBVSE12DYLHG35s5UnfrZ0wZLZWFgDv+qw3oG9b2hXI6Wql8JHKndA+rfA+FcVOVlAK4Vk4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PU4zfyKN; arc=none smtp.client-ip=209.85.128.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f193.google.com with SMTP id 00721157ae682-78f89501423so127400327b3.1
        for <linux-man@vger.kernel.org>; Wed, 31 Dec 2025 21:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767246396; x=1767851196; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V/d0U8/7iry8cAKvgpADPWYjcRuQXKP1M1RYQa5syXE=;
        b=PU4zfyKNSNjgUM+eS/1LYJbUgLhWM99+pTFZ7UZB4WHALhRneZ3ShMO70XviywLlfL
         GZp4MsQMll3v4uLnPuutJhDGLF39lLjPc4o2WvTcEIo6A9cuDFpICd05CLDQbrJ05dGx
         btHOr3GmhApsvMerX2xSvIcZNLx8EwfGVTTL3adpB1UnSNWqkyBfVREptNuNG2YXWvYc
         6JuOBID38wT5K3DRHR/lTaUZXiyRqa0/BLogU7X/MZL2OgqKVGteivlcgZ0CLlFvl1Lu
         q58wcdrUEOJToaEbO+SUE1sXMA3EWpZaHwAlPcfYc0gZ0IjuhVNsFplOb3AJ60gMIe6G
         Pgmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767246396; x=1767851196;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V/d0U8/7iry8cAKvgpADPWYjcRuQXKP1M1RYQa5syXE=;
        b=bCYL76gddgrXlo16y86tUlBEWoMNGjTZjjyCqUsiZg9C/PErN1DB165QlMx1Ai0wox
         iLqTPa0n8NqPL0Hp6LLN2vkg3+j94BF1XMLbsaNUNNRP2DVgrAiVSTL/PnmshPq/YeZ0
         LCQ/Pjv0sbjJxw0ruvbOshWHiIaBAF015Iy29hzYh1cEKfXIWxAT4sfGNwHLFCYfKFYT
         zZcNW/PXbWguxY9H7Pv37CThKd4CZesfBSVTFv10onUZCdm8GDb2V1TrslAxGPIutxpI
         ahTVTHA0jGkruvgsk1zZb0szfauYQZqbH78mZFKvG/GG8CwCa3eS5z2xft17Ssoly59Y
         Ll5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWFEm4TBIx3eIt7zVpMJDxgcAiQxJAOUr/PEryKjMpigPOREW7RQILenec5jEQ0awFuz+KJSmzrsEg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5j9H/1/hjo3nvRdGUfQCy/J1K3GVqhjlETTHZnRlWANS3aKBO
	yfbMCTPv4nvaORa9IZOb/9Mf6gGjJ+h9B9tXdm0F+mSOeMly6/Guzh7ijsDmPikA
X-Gm-Gg: AY/fxX6QvyihEFhnre505uaGH8IAi9iQzfDgB1r+wU5GZq4IkyPTCLq+J5x6LikttML
	+SkbNHHmyey5yJf8fxLrjLMdirV89qFMSLzLzt32IRtB5OTqg+q1eTGZdewtQQkpna4MmYRZq1x
	N2OpXCVJJyIK4wp6JMaLRHA2J9x5x8seelJHXIj6uuvBj+4usFh69YGJYyD53lMvTN/Ug9GLrXi
	YZlodX6OKtEerb5qQ5C4nH2onF6wFtyc5t8+970xwuhqrX5ZRh0FXVTGcDFiyD8G7qsh8ZAOpl3
	YgjwdbWgN2AzsdK1NFWdjnpNkvoYgJl6+JycNmVlnM2IPVQeEU4EtIsDNNBitbEhtXGV6P37PmE
	B5vdc/+QsbLexK4gr3KOftvwNNNFc9VY05a4SMGrIU6C5zO+sM3Uj/ZMwjLMqMfSO3DfdwOq0QS
	ir
X-Google-Smtp-Source: AGHT+IEMFpqrJVsIE+EUyS5+TloQ20Y1npDNkCRSpYgphafqUGCgjP4V70ryc9Vod5MTRcH9uBBYYA==
X-Received: by 2002:a05:690e:1901:b0:646:c662:5fc4 with SMTP id 956f58d0204a3-646c662608amr4198054d50.45.1767246396224;
        Wed, 31 Dec 2025 21:46:36 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6466a8b16e2sm18381804d50.2.2025.12.31.21.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 21:46:34 -0800 (PST)
Date: Wed, 31 Dec 2025 23:46:32 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Seth McDonald <sethmcmail@pm.me>
Cc: Alejandro Colomar <alx@kernel.org>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Undocumented systems/standards PWB and 32V
Message-ID: <20260101054632.pw4fyjijp2hmrerb@illithid>
References: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uq4ev4yjxbkrs4n6"
Content-Disposition: inline
In-Reply-To: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>


--uq4ev4yjxbkrs4n6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Undocumented systems/standards PWB and 32V
MIME-Version: 1.0

Hi Seth,

At 2026-01-01T04:45:28+0000, Seth McDonald wrote:
> Starting the year off strong, here's a classic bug report.  The man
> page for alloca(3) lists two systems/standards in its HISTORY: PWB and
> 32V.
>=20
> $ man ./man3/alloca.3 | sed -n '/HISTORY/,/^$/p'
> HISTORY
>        PWB, 32V.
>=20
> After some Googling, I assume these are referring to the PWB/UNIX and
> UNIX/32V operating systems, respectively.

Yes.  Most likely.  I have some remarks on nomenclature, orthography,
and history.

PWB stands for "Programmer's Workbench".  It was a flavor of Unix
maintained and sustained outside of the Bell Labs Computing Science
Research Center (CSRC) in Murray Hill, New Jersey.  The CSRC is where
Unix was born and where famous names like Ken Thompson, Dennis Ritchie,
and Brian Kernighan worked.  Eventually, the flavor of Unix produced by
the CSRC came to be known as "Research Unix".  In the late 1980s the
CSRC decided that the Unix system was an unrewarding vehicle for further
_research_, and shifted its emphasis to Plan 9.  Over time, the Jack
Welch-ification of AT&T[1] meant that research at Bell Labs became less
ambitious and eventually halted.

PWB came in at least two revisions--the original, retro-branded PWB1,
and a second, sometimes called "PWB/UNIX 2.0".

Back then, AT&T corporate demanded that full capitals be used to spell
"Unix".  This however was contrary to the preferences of the people who
actually invented and developed it.[2][3]

I'd say, if you want to side with the suits, say "UNIX".

If you want to side with the engineers, say "Unix".

Sources conflict on how to spell "32V".  I've seen it thus but also as
"V32",[4] which may be an error by McIlroy in an otherwise authoritative
source.  If it is an error, it's an understandable one arising from the
naming conventions applied to editions of CSRC Unix, starting with
(again, retrospectively) First Edition in 1971 up through Research Unix
Tenth Edition in 1989.  These were, and still are, often keyed in as
"V1" through "V10" for short, and the "V" spoken as "version".

> However, they aren't listed in the standards(7) man page nor anywhere
> else in the docs.

The first few entries in this document aren't standards; they're more
like convenient _milestones_ from which we can infer a loose
specification.

Plain "PWB" won't do as a standard because, as noted above, it saw at
least two different releases.

Two more remarks on PWB Unix: the system with the best claim to being a
successor of PWB 2.0 is Unix System III (released internally within AT&T
in 1980, but not commercially until--so some sources say--1982.[4]

The reason for the delay would, one supposes, involve the divestiture
of AT&T, that is, its dissolution as a "legal" monopoly, a watershed
event in U.S. commerce.[5]  It's one that was crucially important to
Unix history, because prior to divestiture, AT&T was legally prohibited
=66rom operating commercially as a supplier of computer hardware or
software, per a 1956 consent decree it entered into with the U.S.
federal government.[6]  In practice, AT&T violated the consent decree
with increasing overtness from the mid-1970s into the early 1980s,
marketing Unix System III and then System V as commercial products[7]
and charging ever higher license fees for Unix as software.[8]

"For example, John Lions, a faculty member in the Department of Computer
Science at the University of New South Wales, in Australia, reported
that his school was able to acquire a copy of research UNIX Edition 5
for $150 ($110 Australian) in December, 1974, including tape and
manuals. (See "An Interview with John Lions," in Unix Review, October,
1985, pg. 51)"[8]

(Aussies may be surprised to learn that that the AUD was once "stronger"
than the USD.  As a former resident, I was!)

> As such, the two systems should likely either be added to standards(7)
> so they can be referenced,

Yes, maybe under a different heading.  They weren't standards, but they
_are_ worthwhile benchmarks.

> or be removed from the HISTORY of alloca(3) and replaced with another
> system/standard.

There was no _standard_ for anything to do with Unix until the
/usr/group user group (get it?) produced one in 1984.[10]

> I would think they should be added to standards(7), but perhaps
> they're too old be notable enough.  Wikipedia says they were released
> in 1977 & 1979, while the oldest standards listed in standards(7) are
> K&R C (1978) and V7 (1979).

Again, K&R C wasn't standardized; it had a reference manual, which is
not the same thing.

Maybe we should term such things "milestones".

I don't think age alone is a sufficient criterion to reject them, but
when citing non-standards in "STANDARDS" sections of man pages, we might
want to use English to clarify the matter.

To build on a point of Alex's, whether we can get at authoritative
documentation for citation purposes (and to settle or avoid arguments
over facts) is of more probative value than a standard or milestone's
novelty or lack thereof.  Some things that are old are important, and
others aren't--just as with new things.

Regards,
Branden

[1]  https://www.nhbr.com/a-lesson-from-ge/
[2]  https://lists.gnu.org/archive/html/groff/2015-01/msg00026.html
[3]  https://lists.gnu.org/archive/html/groff/2015-01/msg00029.html
[4]  https://www.cs.dartmouth.edu/~doug/reader.pdf
[5]  https://en.wikipedia.org/wiki/Breakup_of_the_Bell_System
[6]  https://law.justia.com/cases/federal/district-courts/FSupp/552/131/152=
5975/
[7]  https://www.tuhs.org/pipermail/tuhs/2025-December/032907.html
[8]  https://github.com/thaliaarchi/unix-history/tree/main/licenses
[9]  https://www.tuhs.org/Mirror/Hauben/unix-Part_II.html
[10] https://wiki.tuhs.org/doku.php?id=3Dpublications:standards

--uq4ev4yjxbkrs4n6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlWCjEACgkQ0Z6cfXEm
bc79nA/8Cae+EFYBrh9wuuXk00yHHDtPajsL12IFMSytAkZWrYdJJscU1LAPe/bd
C3RFo+j1exr9v8gYLFjWH7F4v4Yq18y52yH8Vlwl1dQG8TP9BWd6H8Bz1+1vaihj
p459u9kZCjEOVi/Hs/+cMUyATCXMM+wMpMqvKmx6LvJl3IrsweIuo2KaMvi4soRP
oZ1BDxTsDRM4aIVCvuqYzBBashkTgS+cSk+pnbpaOGXAoEFIgY+NvXLxMoZfeVZH
S8LfpTc5IUpujLi2tGE62AFrRpEQ1Z57x3s/YpwDlm7NjNB6GVuq82b/HMFQz7sT
5lJvGD3nDU7wWNxDOhmKZq/XPb9btYlsaErYstn26faRPGLeNDqeOQa25eXiHjOe
ogKXUDFiIHlC4Aj7joaf632dxlmhIAo8ictEXcbKvt7hk6rrk3cGeN8pWEfo1qqT
Alpk9bBHAqH2mDcFpCIFTVEkgAEaQCK6XY3ujD8MscmdZuRypVjFzEd0N6eDGXS9
oUJytL86JJxyO1mdl9sefHDz7EaK4wtOLngt67nNA9DVFyCWxV58/xRlqR4ZzDxP
981cKnJRWViAPfCjg2OPdiOLk4C9mv1uLxG8SI0rli6Veah7mjC0KthB/v7qQ/N7
1jxKWL0Fm2e8AaiYCK9ynRD1AejG2iOYQKCwKO1KmDXohEHE0b8=
=MUW9
-----END PGP SIGNATURE-----

--uq4ev4yjxbkrs4n6--

