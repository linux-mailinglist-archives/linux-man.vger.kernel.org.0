Return-Path: <linux-man+bounces-4440-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 152BDCC9584
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 20:01:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CC0973007669
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 19:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28A8E23D2B4;
	Wed, 17 Dec 2025 19:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SuGiRAtT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C2210FD
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 19:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765998084; cv=none; b=dSirSNb0QitBkJvetjC3tw0g0rVmDXIrAh9EV5i415Fy1F/3AP0KNRWazcnHUgvcwAmA0brzoNZLlu68ra+rD43r5LmakiMcV7P+eAQvzZK+3QKcsPzJzJCujAGrNyvMgqnJIpuKo+YDgf9M7fyjYT4xR81DF/mMWE1/UPNb48M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765998084; c=relaxed/simple;
	bh=RTpSjYC4NO1y8rov4kaUJH1EOuWN3Uffoh7+PJ4s+MQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZP6JXzv0j8RRfrra4hYD54CfzbCuY/ggPr8cueoQyq83nF6ZW/sgxT8HPM/im/Nfm2NGnXpzYZIeOD8kEO9XPbddPIolOnfKDwq9Pz7Mq8gHRjh9YTzhLMb9+FdVOqt9KcET4seLXNVvygmUQehkz5U6oH8rBtPnaUVYkEtD+pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SuGiRAtT; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-78e602d09b6so50452777b3.3
        for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 11:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765998082; x=1766602882; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ydTkqCeQx4+NCBegzjQJcQdMjxaZRmIuLmIUrtHnbkc=;
        b=SuGiRAtT0eU1qm1f8TseZ26uO+FJgGrMp1/l7r1VYqtw1zr/UNsPtuQLv5ToFYd3XY
         IpC1sp2AB0m3FUvoUUtzs3cf9xeMWj1Csbh7n+pLgOvM0LZrYbmQ378lpppBNbmRRzcM
         jMgMHrsR0O1Wmzamce3rXtBdoZ5dxRkUXEMx6fb1Z7PpdVm1UwfdvJk+VCS1AXxpVGhw
         fPihmmqR61fpYModQDSQNrAjvOwVmUQKRxl5XIe3YRjQPaGz9d13Qz8liRz9gzV5owBC
         YYgTA/9zmOZL6e1VW4IYXZERs/6+Wp0dASacAKUMXfrjUOPjifg524A52kDNV6Wp4hI2
         FRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765998082; x=1766602882;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ydTkqCeQx4+NCBegzjQJcQdMjxaZRmIuLmIUrtHnbkc=;
        b=sYJH7TfRBlpQrKIGs4M/6P1yAJDh1xeGHgjVBgPfibM0q5CaEqYAdQMJVw30cFDCF2
         IRu7Ir2oRIZ9980XYzTqSdfUZsyLlsNYay9e52Y2zFpvCJqrkQlmkMqIAFyjHSxc/coB
         yrKowKMj2/E8UKrL7qwZXLFb9SBXvGAN2WYH0kwG601h+DYdFxmWdjaecEEdLb5I/d+2
         VSwgW6bU0P2TxG7zdraNwRit1LmCgx0WNCxXWCnKbFO39IyZwaq8vBU41IO8l02a2Hi5
         h0ky+UNEgoHjm16w68dEAHmQbw77uwscUI2u0haHhch7M9C55Yy0oXJ3I3T/+dPQgdqg
         p3mA==
X-Forwarded-Encrypted: i=1; AJvYcCWvg1AalXyd8tVJ3pJdIM9PgUAgoCiyPHhsvbkstPRYHICsyITMc+ncX1vZsqmG51s4807OOKtybJ8=@vger.kernel.org
X-Gm-Message-State: AOJu0YzFvgsCF0EaKoLdSPivZm+JB4nyrCY/CMyqhQZ+6/J1I4TYHeTV
	TCbXYbzZWoMcopkMSeu3sg6XQ++SK//BN9yK/ECuzQkYjlzyNeXZUBJ5
X-Gm-Gg: AY/fxX6ObQ9s7Yg/uOxs3/fhLxmMSz5SMHQ5rELBMyauLyyiYsBERwev7+bwFAo22Sf
	qpOgoxV+V1q6si0/Eyt8Vly9B1/oxKWgEysUMagDuU0T6AWZ4Z3zc5pRgkFCd9Zd3eowdWNhByF
	PY85okdv/hgaVM7Bb9uIE0yLbjy8pfr6n/z+sNYQhM0z8AMlZ3GcmJ1Nm8FeGsFpnhNCSb89Pb8
	4vO078IeoLbKgCjO55eiEt1TCUA8V1jZL6Yz0hv22AgO6Ltqi0/4gppCVxnrmwbxfj2DaqbXV5I
	RJsoU75RfPkac8u3nht4iT5COV/gfdKhFCsk0L2+UJ06Uh/5Cl1E56tYu8hGyS7PrmgSoOsVCfE
	SmRJFN0farMd+ALJld9bQDXyJMiHAm6FltgL/dt+n+B8LWBniP1VG8QNXCQsNVUgiOGg0K4WvRP
	kx
X-Google-Smtp-Source: AGHT+IEB1nLTy6QCM4b47uQq2VU7vt0lEXoxIMHcBNfz8dF6XKKrgzCiPzsVjaVMpkKarGB1xN4KfQ==
X-Received: by 2002:a05:690e:1a05:b0:63f:2bc7:706f with SMTP id 956f58d0204a3-64555650e0cmr12666244d50.57.1765998080277;
        Wed, 17 Dec 2025 11:01:20 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-646637ac5d3sm71713d50.21.2025.12.17.11.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 11:01:19 -0800 (PST)
Date: Wed, 17 Dec 2025 13:01:17 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Ash Holland <x-hv2j5m@keysmash.solutions>, linux-man@vger.kernel.org,
	Colin Watson <cjwatson@debian.org>, groff@gnu.org
Subject: Re: [PATCH] man/man7/man.7: Don't warn if groff_man.7 is not
 installed
Message-ID: <20251217190117.ugtyc3yy75sj6wjn@illithid>
References: <03f1e33dd6200c05afaff1f116f5b254cebd45dc.1765314181.git.x-hv2j5m@keysmash.solutions>
 <20251209215149.6ah577ddtqabyypi@illithid>
 <k6mao7t24tzvr32ixz3o6scqfx4wdm7ffnsdibeb3kpfrn4gtv@iwticjuplith>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3pxfxpq4lq3nirbq"
Content-Disposition: inline
In-Reply-To: <k6mao7t24tzvr32ixz3o6scqfx4wdm7ffnsdibeb3kpfrn4gtv@iwticjuplith>


--3pxfxpq4lq3nirbq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man/man7/man.7: Don't warn if groff_man.7 is not
 installed
MIME-Version: 1.0

[looping in groff list due to musings on its development]

Hi Alex,

At 2025-12-10T00:18:32+0100, Alejandro Colomar wrote:
> On Tue, Dec 09, 2025 at 03:51:49PM -0600, G. Branden Robinson wrote:
> > I'm the GNU maintainer of groff and the author (instigator?) of the
> > `soquiet` request.  Your patch isn't wrong, but I must point out
> > that the `soquiet` request is new to groff 1.23.0 (which isn't that
> > new anymore--it was released in July 2023).
> >=20
> > > -.so man7/groff_man.7
> > > +.soquiet man7/groff_man.7
>=20
> I'm not yet convinced that this is beneficial.  I'd like to first hear
> [Colin]'s opinion of my proposal of not following .so in man(1)
> unnecessaily.

Colin with one ell.  Watson !=3D Funk.  :)

> > If Alex applies this, it means the page redirection[1] will stop
> > working _where it had been before_ for any systems using groff
> > 1.22.4 or older.
>=20
> Would it be possible to implement a .soquiet fallback as you did with
> .MR in Debian?

Yes, but it would be ugly, because it would require bitwise arithmetic
on the value of the `.warn` register, to temporarily mask off the
position in this bit vector that enables warnings in category "file".
Since the *roff language doesn't have bitwise arithmetic operators, this
means manipulating large, mysterious integers.

https://www.gnu.org/software/groff/manual/groff.html.node/Warnings.html#War=
nings

I've been taking examples of this sort of bit fiddling _out_ of groff's
corpus.

See, e.g., <https://savannah.gnu.org/bugs/?57583>.

Not long ago, I sketched a design for an extension to GNU troff syntax
for requests like `warn` and `cflags` that would enable greater
expressiveness.[1]  If anyone ever gets around to implementing that, we
could retire the `soquiet` and `msoquiet` requests from the formatter
language, demoting them to "compatibility macros" in some "tmac" file
that would probably be loaded by default for one release, then not.

Because then you could simply say the following (and this is in fact
almost how I'd write `soquiet` as a macro).

=2Edo nr saved-warn \n[.warn]
=2Edo warn -file
=2Eso man7/groff_man.7
=2Edo warn \n[saved-warn]

This is even completely portable to AT&T troff.

(Maybe "compat124.tmac" would be automatically loaded by "troffrc" in
groff 1.25, but not in groff 1.26.  But we'd keep shipping
"compat124.tmac" forever; as a side effect, this scheme would tend to
drive documents in the direction of either (1) keeping pace with
developments in the formatter, (2) declaring their demand for an old
version, or (3) using a "compatible subset of the language", as AT&T
troff documents largely already do when interpreted with GNU troff.)
All seem like sound practices to me, appropriate to different audiences.

Similarly, if we ever get the string iterator I've spent years grumbling
about,[2] a _whole bunch_ of string-related requests could move to such
a "compat" macro package, and a several contemplated new ones could be
implemented in a new auxiliary package, say, "string.tmac".[3]

> > If Alex wants to make the Linux man-pages require groff 1.23.0 or
> > later (there's been no subsequent release, but I'm working on
> > it[2]), that's fine with me, but such a decision should be announced
> > so that distributors of man-pages packages can judge whether they
> > need/want to increment the versioning of their package dependencies
> > accordingly.
>=20
> Actually, this will happen sooner or later, and the exact date depends
> more on you than me.

Yup, I've just got to learn how to document my inscrutable sed(1)
incantations to your satisfaction.  ;-)

> MR.sed is coming eventually.  :)

Aye, and I'll be a happy guy when it does.

> I'd prefer if Ingo would release a new version of mandoc(1) before
> that happens, but I'm not going to wait forever.  He told me he might
> release around the end of 2025 or begining of 2026, but that it wasn't
> certain.  We'll see.

Yeah, the landing of groff 1.23.0 in OpenBSD seems to be a bit stuck as
well.  :(

https://github.com/ischwarze/groff-port/commits/1.23/

Part of the problem there is, I suspect, multiple disagreements between
Ingo and me over what constitutes a "regression" in groff.  In my
opinion, he managed, in mandoc(1)'s test suite, to explore the *roff
language aggressively (that's a good thing), to the point that he
discovered undefined behavior.  And also a perhaps under-appreciated
major difference in AT&T troff and GNU troff syntaxes.

Regards,
Branden

[1] https://lists.gnu.org/archive/html/groff/2025-12/msg00007.html
[2] https://savannah.gnu.org/bugs/?62264
[3] https://lists.gnu.org/archive/html/groff/2024-11/msg00044.html

--3pxfxpq4lq3nirbq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlC/fYACgkQ0Z6cfXEm
bc44GA/+MtAnMl8eBv2LcZe8HyyZ5Rj3SBEUMzwQo/qyJ5/YngVwC6RajLbw/IdO
pa3h7BKmn2MbqNd/iYtXvMwUjDT7gMXpFb9qZrlWaTpicjXo+3Xv6lBsrN/BgHW6
Nhz54swY3sQ8fMhpZIFYyT+edEO8k0IqHPThMGjBRbAgccj5ypEAptwv59tPRVcb
gALJd2wFYKlpSMoMDqAVzW0EFpSlFMRBtTOPDmKibClZEX3CqYgfJ/cD1Lp4Nkd8
dJAeJSKqY4l07O3XqP8ahM6PW+6IA3jUEf55k9SGgeqZiTEqIm6hRFz8uaa+uVue
WCEDzNOy8A+oB3wgGNV7XY9xiHuzkNPEVvCuX3SdbyYOC7HZroMas6bXnD15HSzG
aeTxErwxPZgLrT7LM2ucBMDFagwpWYSK1zLlSPOMw+sl46oc/oAOifPc1nvdWu2h
H4lth5tViFEuZsQ1OzaYi6vhL77U4DjmHGhV+YKZftO+QwCkePVEcYpeysY73lf3
+OEb8jIRlHEnNlSOHpmDrl0TF2YWf2u+SJ12ApiE6tb58LpHfcZh+jnhjpBnxa5o
kFb5/xIukSjCx6o7UQkoIDrTo9K18H3/4JxJ+GLazIdny37eAvPFJ5pLNbCZbHcK
OIanOaqCjAp/OaDhFu1pRawQsiqbxiSSkTo9pxFRoebQfytI1UE=
=/ITp
-----END PGP SIGNATURE-----

--3pxfxpq4lq3nirbq--

