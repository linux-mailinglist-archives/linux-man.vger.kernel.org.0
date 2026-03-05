Return-Path: <linux-man+bounces-5241-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gE7qHugJqmkaKAEAu9opvQ
	(envelope-from <linux-man+bounces-5241-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 23:55:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D26212191D4
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 23:55:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86AE63025931
	for <lists+linux-man@lfdr.de>; Thu,  5 Mar 2026 22:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A242F364EA3;
	Thu,  5 Mar 2026 22:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iZCJ3zjG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369DD364E9E
	for <linux-man@vger.kernel.org>; Thu,  5 Mar 2026 22:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772751328; cv=none; b=e0RueiI/pTWS4tJ3MdQ191M1EqtlZbvWZZ5oKEBXyq9u/Zy0h8hsRnd/hk9GxA7fJZfB1XzzA9vRWmB/208CmYYb0BNQWi2t9IdSEsKyYRLwyuEJ3xoWSU6sNxAM0NvNUhWTWvxl6Ha5mochw1vpAKNlpi1TZ67kbBpOA+Wrg80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772751328; c=relaxed/simple;
	bh=KeFALiosktjcJFKBmySVSF3VtDWoqItiJbhy5bJ8Iho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cDq8pW8NZ9b93J57E7tX24vqWKWYDEFGOzfhEhZqPNepu5XgQRjIzdUE+X3f10vkDt3i7mCzBp5HauGSs8UOgcc9QhDPZq0NUuhac1sES0OF2G3pQBT8A2m9scPOGa0/FNBKazVhhUemdL2cx5B8sL5kHmCd8439ttlwEGTIXRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iZCJ3zjG; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64ca09f2056so6328189d50.2
        for <linux-man@vger.kernel.org>; Thu, 05 Mar 2026 14:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772751326; x=1773356126; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=85zkXHRMT5ZJEvav0J579qCYFOpY7GsDnzmppTSko4s=;
        b=iZCJ3zjGSqcBb6tRIiF+OfG2C5Mjw6LLl0WC0v1CxidWOhfQzz/7aztL0glK6EJMeQ
         V4Pd8vFlzME01sPNtSUxL6ShLOjXV3KK+2k73ku9z89B4ZwKOxDIcnqQ/n2iyvHLSf74
         WCJxzhU9iVtKc6/woKq86UKBmCCAigaW75IP2usRpd23k27s5lFa+ImeG2uBYlEyZNMS
         lAl5ECaeLC0dV5YcPJ+9jEd7mDmAx0Yxqv8zG3mxgysLuXMrpkYfcJ6EAEG8RlgIt5pz
         dK6NK4gdCg15m5kESO5iLF6ny2IbnitopZdtQnHMa3fax5oGNfnq6GuJ9ChWmOF2r9Xm
         0ECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772751326; x=1773356126;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=85zkXHRMT5ZJEvav0J579qCYFOpY7GsDnzmppTSko4s=;
        b=rwErrNbLhPCBE6vMo2TFFd0xg6HLrNGtsJZeCcD5OotxMgcyqxGmB/yIvrKsSoFu7S
         5zMsQyp+RNMmJc4GnnTDgpPnRAinuVHc8maZSlVEha0HIJYwxTOGsxFLjls+2Dq1x/1D
         wBSx/mNRWGAsN5Qdo75M9KXV5AZypKg9g+OHOfGqHmz6xa6xRNHpiZ7ztX9vj7HVdrD5
         6ywE4XmGCz777QtV1MdzorV8mH8rOAICoQ2FGBnz08MEs+4w01DcHB8iQaI8wGSmkeSs
         b0NysinZQ5TKHDdPKxYp8TLScsdA0pmgGB+xyHotYRMbG1J4WsfeAP2w2SS/4bPAvogT
         hiWA==
X-Gm-Message-State: AOJu0YwJh+oT+Y40dMZsAWMozlAsIdFUe4iVHeGDk3wT03Bjv6zuI2IY
	AZUA3ZOXNQ9OzMyQ53raxgO4tdQCzTSkh4lKrCIKMYTIXKWGKOQ2TtI9T2wx1w==
X-Gm-Gg: ATEYQzy8plfXPupCnDKQ5NOWEkPQFHC8aSMIdEcPfrvhjveG1Ajqr+k+PaYwDnk3+od
	vmbhO/LKxeIiO9dv7gfStnyiUn14BLdPKTdtE2G1BjEdoI0dILGYF3K4Vzv24mX9qPwe/qMVD7N
	e0E/r+qMmbpuoB6YL4RaSlspIbk22EkKax50nHNSDWqlL+OtvlJXTKUL0QAfEYGuyqj9fdTDKng
	5Ge9W+AZNfanlaMec7C21regOwhvXsxLuo6Jiqj1MRpFTK55S0GfVarQXRhVURiSt5+5pF4Nvhk
	RrfxKZwZee66jWnMS1RVwBW92u/RbDqHZ/37AKv4f8VvYjDAqvue81yBdeDirHIkpHCupt4Ji0j
	xQw8PO/v01UKaOW7+Cfkpy58uMqQD8fdb7rRPOT1Jlk+HSwLbZfPQslNTA+ztOJQeZ4fqNGWt07
	aPA5Y40Dbdpl50
X-Received: by 2002:a05:690e:c45:b0:64c:9a6d:66bd with SMTP id 956f58d0204a3-64d1407f910mr207417d50.8.1772751326240;
        Thu, 05 Mar 2026 14:55:26 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64cb759f507sm9668191d50.8.2026.03.05.14.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 14:55:25 -0800 (PST)
Date: Thu, 5 Mar 2026 16:55:23 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <20260305225523.dh3ifjwkvvecv26c@illithid>
References: <aZzuI5pPe19gFvPf@devuan>
 <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
 <aahG1Mb0oRBEG6sy@devuan>
 <aam6Yn6ZJhM9PQup@devuan>
 <20260305222431.geycb2pof2k7sdba@illithid>
 <aaoGRLXhJfpUz04o@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fvbqth5mzjiwhhtd"
Content-Disposition: inline
In-Reply-To: <aaoGRLXhJfpUz04o@devuan>
X-Rspamd-Queue-Id: D26212191D4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5241-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,gnu.org:url]
X-Rspamd-Action: no action


--fvbqth5mzjiwhhtd
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
MIME-Version: 1.0

Hi Alex,

At 2026-03-05T23:45:14+0100, Alejandro Colomar wrote:
> On 2026-03-05T16:24:31-0600, G. Branden Robinson wrote:
> > [CC list trimmed way down since this is a *roff/formatting issue]
> >=20
> > Hi Alex,
> >=20
> > At 2026-03-05T18:19:30+0100, Alejandro Colomar wrote:
> > > BTW, Branden, I'm getting a diagnostic from groff:
> > >=20
> > > 	TROFF		.tmp/man/man2/statmount.2.pdf.set
> > > 	! (troff -mandoc -Tpdf -wbreak -rS12 -rU0  <.tmp/man/man2/statmount.=
2.pdf.troff 2>&1 >.tmp/man/man2/statmount.2.pdf.set) \
> > > 	| grep ^ >&2
> > > 	.tmp/man/man2/statmount.2:155: warning: table row does not fit on pa=
ge 2
> > >=20
> > > But the PDF looks good to me.  Would you mind looking at that page and
> > > telling me what you'd do with that diagnostic, and whether I should c=
are
> > > about it?
> >=20
> > I can't reproduce this diagnostic with groff 1.23.0 or 1.24.0.
>=20
> Huh...  I'm reproducing it on my server, but not on my desktop.
> On my server, I have:
>=20
> 	GNU troff (groff) version 1.23.0.1254-19a18
>=20
> On my desktop, I have:
>=20
> 	GNU grops (groff) version 1.23.0.2695-49927

Hmm.  Revision 19a18 is 9 May 2024, and 49927 is 22 December 2024.

Both are a little old.  :)

> I'll assume this is a fixed issue, since the newer groff(1) from my
> desktop doesn't reproduce it.

If I get stuck on the other stuff I'm working on,[1] I'll see if I can
reproduce the problem with 1.23.0.1254-19a18 and then bisect it down.

> > > 	.tmp/man/man2/statmount.2:155: warning: table row does not fit on pa=
ge 2
> >=20
> > This warning means that a row of the table might be vertically
> > encroaching into the footer margin; in extreme cases, might
> > overprint the page footer itself; and in really loony cases, format
> > text beyond the bottom of the page.
>=20
> Yeah, that's what I was expecting, but the page renders fine, and I
> don't see anything near the margins, which made it weird.

The warning will issue if the table row is overset by as little as 1
"basic unit", which for PostScript and PDF is 1/72,000 of an inch.

That's 0.0000353 centimeters.  It's microscopically small.

If there's a way to get the _amount_ of overset into that diagnostic
message, it would be helpful to the document maintainer to decide
whether it's a problem they want to deal with.

Your other data explains why I couldn't reproduce it.  It could have
been a bug that got squashed between May and December of 2024.

If I find out it's still there, latent, I'll go at it with guns blazing.

Regards,
Branden

[1] largely https://savannah.gnu.org/bugs/?67978

--fvbqth5mzjiwhhtd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmmqCdQACgkQ0Z6cfXEm
bc5Ibg/+JLc0F3TK/lCGx4WXNyDYp/+oflMsH2nWFm/fVjGrvBOFFVqAv6Qs1TBv
wZUe43//AXJF7c8t77WRjk4MuCjuosNCjjy4VRiwKNucXLv+7TzEB5kwmYoYX5iM
b6YQ9zhAunGnjnlB/kwhPkkxJA8/GgGIQPYVYId2MecwdkXn/yxut5Wqh9a4EvYJ
a0vGoWby514uRNfM9Gqse7HrFeYrAWupiJSuZBuIiWGJxx89EAlROeqvrAv89rzn
Fs5t1AYf95vBeaxYGfOZudJByhOWJM2p/+xbu4ATNNYJ8JmBu4PrFdnAzRi/wuJK
VQq8nXN1pDcPR76ALfJ7DwEb1P/41Bj6B+8+7hJRax2RBv/DlTatqP4qDRc1t0ri
IFeeSn2PfAKVe7nfcPtyspHbMDnLA90JdQerctGeG2MiG+X02fk20McwlLoLJeTf
6yNB9kvaYOWF3hnLSLbyhfyvGVgbAXKTNQY+uWYaZy/KZfd+SyvWYLoNsjezLrmR
wbKsZSocLydLSsrhRqCpbF8enjxfZe+oq5KuglzTjoe58zf1Lh36m9bUytASD0Tv
5tE6nX3zVOcJ3Pyn/xdKAHpk48fnsR9aoAsPsERPUbsv6sevz1ZkNcsiOgUR3410
rjn3nxRAbDMmtkyc8m8axJsEiumdPZlQVit3IE3nRQ2y+Pc636o=
=v5v7
-----END PGP SIGNATURE-----

--fvbqth5mzjiwhhtd--

