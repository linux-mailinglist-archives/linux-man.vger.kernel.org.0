Return-Path: <linux-man+bounces-4008-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDAABACD90
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 14:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D4797A06D2
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 12:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E432FB97E;
	Tue, 30 Sep 2025 12:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zek0OXg4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D2A2F5A11
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 12:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759235572; cv=none; b=MR/WbUDwVv29yr94/OM/VFiqPOJGzNuNPEdjDYn3haZTz7P/Cx0ara6nihJPgEsQZlvgbihThjmPwUv20DHmlHlTiC8Rb7SUhtixr/sG73fju5oeVGrEwh6HzdEBbck+g0yZfohT8ni0qBFgkvHZnA39QKvVbMmiDibX/3GWPL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759235572; c=relaxed/simple;
	bh=D4blRUpq6e2Pv7FlqKq0TsEP1MEes++Dp5lZqW0K3qA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HS6ZiJm+SIIJuqsBYZBcDCY+GNyJhLge60JWfIE21n1lbwbjS7dYE+Z6g0Rpyx/F0lGbxqH/5JQOvRzs4p8f76cnf3sKUo6c/WjdKGFfIwgDztN56a3n0CREUqc3+kFyfJtLGksEdDNOYqRzGxsDQ0mBXYrL114056qd7Qtazs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zek0OXg4; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-71d71bcac45so58742507b3.0
        for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 05:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759235570; x=1759840370; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h37tpm60hTkRaxMSAb0sjTbQmjm6v9h3Uy+LNfOp/40=;
        b=Zek0OXg4EglK8Lj3ebgJRQkIbp1PQvb1mOzbFGpl+RhOZjcpCFeh+fI3tB0W1Ifq7n
         33e7z3j4TF2ci9zSbtEzwkDCyEtvyC+wqztqzUqNaMw6tCW4DRWeHefwYcy1pXEg1O+Y
         iFGyPf8Q+dpCsjnXK8YyjRWfOu9jPKXs2vSeOkvZfAWP4yE6yJM4GF7rTtmIMs6Cnuoe
         3AgRUVuCtGp878lRCH1anonXSoXm/u3uSx6bdU5fJnwx+EFA9aylCajKp39OyTMtmLex
         qqu9qmZMCt6iy69js3Ym30gJ8TMEQULwgm+Aj6byLRhii/f6yovOkjdix9r1zVdIIT9i
         Jxlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759235570; x=1759840370;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h37tpm60hTkRaxMSAb0sjTbQmjm6v9h3Uy+LNfOp/40=;
        b=LQoctS1r44iQYtwekgoew5WcsUInV0v4BaUMjWN71mub4QoJ6zlwh1fiRMq8l6bsj8
         QockwHxiorap83L8tAByAiL7vwK3B7T4zQnuk/lS5q0cKNLxhb11u3tBjSCnXlLDWlV4
         n/VlTjRnpYpMb4b2dLW/u2PRalSXeKfPBGbiNs1ALuwXbmOPEacOx9CqcfcDLjJGlTiz
         CR4uke4iG87OnAIBqddRleFOk9cMm4ezRPhpUhRKAZFIOLkeaUJ8v+/9Va+LYQL8x9ny
         0S3BxfoOkAc0/XzJ+CBAQENIuxTHv89TokuWRTsgBeAz/05JcIcurPNGeNK3B7DooFUw
         oVTg==
X-Forwarded-Encrypted: i=1; AJvYcCUuHFR+6SfcqrikdMUx1ng2HTanh1OZk9koUMBS+2WzzZj59sqpdAXGQzByT0wqVFlCKg7+jFhkWtE=@vger.kernel.org
X-Gm-Message-State: AOJu0YwnZTM1zZkNoqGxkz9FR5C8o2bUV0yM5jTDzh3mIkSUjm8ALzVw
	kJb9PLz3Ih60Ae87ZsyDE++0SjpLlBTAeey3WkRD/KRVruQ4sfFex11I
X-Gm-Gg: ASbGncte8S9noJHm6o176nDx6+peFmPGxBr7rvScczMrIhrf+Cd/6cg6e5iubzp/uqC
	wv9grV9dDlDmj8WqXCc6pLDMXlh5ELEYXZgLR+Ql4oMdyIa204+qxU61kAq9awugxD3X4cq0Jum
	5yJiWqSR/DbB0l7Rt3GL4ujMEer00EKrxFViSRXaxkW5bxDkfO9q1xe1WJS/BPj2xbJJI8kfTTk
	RO/m4B6CTSKjM8Zrv9q+zqsUlJWDsUPPdxomf0ncdNEBeUNG9MSYYURDc4d1pLhUw7otkg77B5v
	26FMydf1cilUTpcFxZ1sNE/86/USQwE4J9KEKVbmhZX2jOCnAfKGKj04BQrMVrl2AGekaE/g3yV
	1nCj5I/+v9Axzs5si0n8kK45I/+qcjoOmFJcG
X-Google-Smtp-Source: AGHT+IEpjfemOqZCNCv46S6PuB0Hkn+5IB9tnyCKs/lM5n/BxpEouKXfc60j6L1ocsL17Crt9FjgjA==
X-Received: by 2002:a05:690c:4908:b0:739:ca5d:d97c with SMTP id 00721157ae682-763fa52a40dmr227679657b3.15.1759235569586;
        Tue, 30 Sep 2025 05:32:49 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-765c7ac669fsm36417067b3.58.2025.09.30.05.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 05:32:48 -0700 (PDT)
Date: Tue, 30 Sep 2025 07:32:46 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Aleksa Sarai <cyphar@cyphar.com>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: [PATCH v4 07/10] man/man2/open_tree.2: document "new" mount API
Message-ID: <20250930123246.eq7alqia44wzxyw7@illithid>
References: <20250919-new-mount-api-v4-0-1261201ab562@cyphar.com>
 <20250919-new-mount-api-v4-7-1261201ab562@cyphar.com>
 <gyhtwwu7kgkaz5l5h46ll3voypfk74cahpfpmagbngj3va3x7c@pm3pssyst2al>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lpagfhsfhwovdqsk"
Content-Disposition: inline
In-Reply-To: <gyhtwwu7kgkaz5l5h46ll3voypfk74cahpfpmagbngj3va3x7c@pm3pssyst2al>


--lpagfhsfhwovdqsk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 07/10] man/man2/open_tree.2: document "new" mount API
MIME-Version: 1.0

[CC list trimmed since I'm covering only English style and typesetting
issues here; adding groff@gnu accordingly]

At 2025-09-21T11:47:21+0200, Alejandro Colomar wrote:
> > +(Note that the unmount operation on
>=20
> Maybe I would make this note a paragraph of its own; this would give
> it more visibility, I think.  And I'd remove 'Note that', and start
> directly with the noted contents (everything in a manual page must be
> noteworthy, in general).

Good advice.  I call such removal a "Kemper notectomy", in honor of the
groff colleague who brought the superfluity of such constructions to my
attention.  Also see
<https://en.wikipedia.org/wiki/Wikipedia:It_should_be_noted>.

> > +is lazy\[em]akin to calling
>=20
> I prefer em dashes in both sides of the parenthetical; it more clearly
> denotes where it ends.
>=20
> 	is lazy
> 	\[em]akin to calling
> 	.BR umount2 (2)
> 	with
> 	.BR MOUNT_DETACH \[em];
>=20
> (I assume that's where it ends.)

I'm uneasy about the acceptability of setting an em dash and semicolon
adjacently like this.  I checked my copy of the Chicago Manual of Style
(18th ed., 2024) and it has something close, but not squarely, on point.

---snip---
=C2=A76.95.  Em dashes and other punctuation.  In modern usage, a question
mark or an exclamation point=E2=80=94but never a comma, a colon, or a semic=
olon=E2=80=94
may precede an em dash.  ... If the context calls for an em dash where a
comma would ordinarily separate a dependent clause from an independent
clause, the comma is omitted.
---end snip---

Here's the full sentence at issue.

>>> +(Note that the unmount operation on
>>> +.BR close (2)
>>> +is lazy\[em]akin to calling
>>> +.BR umount2 (2)
>>> +with
>>> +.BR MOUNT_DETACH ;
>>> +any existing open references to files
>>> +from the mount object
>>> +will continue to work,
>>> +and the mount object will only be completely destroyed
>>> +once it ceases to be busy.)

This construction uses a semicolon rather than a comma, and that
semicolon separates two independent clauses.  (Whether "Note that" is
retained or deleted makes no difference.)

CMoS therefore doesn't flag this as "wrong", but I think it'll look
weird to a native English reader and maybe to non-native ones, too.

The best solution might be to recast.  It's seldom wrong to break a
sentence using a semicolon into two sentences when the purpose of the
prose is to explain rather than specify.

> You need to escape dashes in manual pages.  Otherwise, they're
> formatted as hyphens,

s/they're/they can be/

Some distributions, like Arch[1], Debian[2], and Fedora[3], won't
exhibit this problem.  Why doesn't groff do this upstream?  Because some
groff users _do_ care about correct typesetting, and it's more
straightforward for distributors to patch their packages as the
aforementioned have done than for groff to adopt that as a default and
leave people to their own devices to revert it.[4]

(Maybe I should copy some of that rationale into groff's "PROBLEMS"
file.  Opinions?)

> which can't be pasted into the terminal (and another consequence is
> not being able to search for them in the man(1) reader with literal
> dashes).

=2E..but if you're looking for an incorrectly hyphenated term like
"foo-bar", you _can_ search for "foo.bar".  Both the more(1) and less(1)
in the (now over 2 years old) Debian Bookworm can manage this on
UTF-8-encoded input.

> Depending on your system, you might be able to search for them or paste
> them to the terminal, because some distros patch this in
> /etc/local/an.tmac,

That's not the file name any of the foregoing distributors use, but
you've got the right idea.

> at the expense of generating lower quality pages, but in general don't
> rely on that.
>=20
> I've noticed now, but this probably also happens in previous pages in
> this patch set.
>=20
> While at it, you should also use a non-breaking space, to keep the
> entire command in the same line.
>=20
> 	.IR \%mount\~\-\-bind )

Here's where I disagree a little.  Lengthy unhyphenable character
sequences like this can lead to ugly formatting, even when adjustment is
disabled.  (A ragged right margin can get _really_ ragged.)

While I personally would not use italics for inline examples (and don't
in groff man pages), regardless of the font style you use, you can
surround multi-word inline examples with quotation marks so that they
are properly understood even if broken.  (Further, no font style
selection survives copy-and-paste into plain text email.)

The Linux man-pages don't require portability to AT&T troff, so you can
achieve this with groff's `lq` and `rq` special characters.

I therefore propose:

=2ERI \[lq] \%mount
=2EIR \-\-bind \[rq]

If you _did_ require portability to AT&T troff, you could use the `lq`
and `rq` _strings_ instead.

=2ERI \*(lq \%mount
=2EIR \-\-bind \*(rq

These strings are _almost_ universally portable.  The only line of *roff
descent that didn't incorporate them into man(7) was that of Research
Unix, of which the only surviving specimen is Plan 9 troff.   In other
words, BSD troff (1980), Unix System V Release 4 and its descendants
(1988)--including Solaris 10, and groff (1989) all support them.  I'm
working up a patch to add it to Plan 9 from User Space a.k.a. plan9port.

Quotation is a useful and important linguistic facility.  It's a shame
man page authors have neglected it so long.

Regards,
Branden

[1] https://gitlab.archlinux.org/archlinux/packaging/packages/groff/-/commi=
t/e474b541a32fc905b4f748de0313acfb8b98c081
[2] https://salsa.debian.org/debian/groff/-/commit/d5394c68d70e6c5199b01d25=
22e094c8fd52e64e
[3] https://bodhi.fedoraproject.org/updates/FEDORA-2023-f5d1e63191
[4] https://lwn.net/Articles/948616/

--lpagfhsfhwovdqsk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjbzecACgkQ0Z6cfXEm
bc6lyA//ZgdZkgDAzXJ5hsQOTa3TBPjvYCbBeS4h7Q1+MsI6Z006yFlgfCzIJ98d
jnBXKy+hDJG5FQGzjjbMzpyP+lFne0nPxlbfnFZeQ57bFEjSIeE6XYjveQmidTOe
l4ueLNIUv+QQ0UPHvkLueLN0MgK8a/8uPceIm9CuIGJ6geTfonTpEKX10GJC4met
hEby+K4+lAFzM9/dStxv+gXv5aOcjUkyHbb4QqR/sMRyJ37Wyzbtbzii01Hn1R8x
tZi3cVrftOscD42XjpG6DUGZnEGGPL8M8CEyb10uo2CmMIUitLV7B+1aslQqM1XL
9FaSqK8DjLMgRO9gyTsxhTWrvWjTFiqe+O/mhJZOyfNZHtuw1Nk6dNAXMN6OXwo3
fbx5YXf1a6A/vo4TJYxjojeNeKPXImuBFG58y119o+XMj8j85ahR2r/i9Ygkx+CY
Vyj+DJOHLoF86ClzzhnCZEKzhcLylmpNjT9gUyqFD8a08ghc5eth7Uqmi4qpWkrF
iH54xdoucHI+8LJFqTS2NkNMCnQnV3f8s79He///G9mexusm/OLKm7tFWXl2IwGw
8izT3hMzXk44767nUgyINP2Kkq+FqEWqE/c9Ou9mdVtY8W1Lh0yZJogz7BkVjw+n
02Ho8jX4o2y4liOMyxgWq1B4Xc/UjZ2kMenNg4Y5RzBEt2a4/fs=
=ZOeL
-----END PGP SIGNATURE-----

--lpagfhsfhwovdqsk--

