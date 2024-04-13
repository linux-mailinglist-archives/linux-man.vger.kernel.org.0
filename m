Return-Path: <linux-man+bounces-743-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8651E8A3CE5
	for <lists+linux-man@lfdr.de>; Sat, 13 Apr 2024 16:01:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 270AF2826F3
	for <lists+linux-man@lfdr.de>; Sat, 13 Apr 2024 14:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE46C41A81;
	Sat, 13 Apr 2024 14:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B/IPoPd5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386571CFB2
	for <linux-man@vger.kernel.org>; Sat, 13 Apr 2024 14:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713016894; cv=none; b=NJIVfI/O/HILTXDMd4yIa/MiuTyaDV+EvAwFtAMaoB0xyPixJpTk3+3ocXZtf1BdPFvk2S1u2XVhDD1hMznniGkYwkfDHUE95CZUp3x/UYFqamz7PvrpRlJH8WY1WgyTcOC7Zk/+lT8Tfk6iY3h8Ri8uiN6AhzU4aS877AuwTTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713016894; c=relaxed/simple;
	bh=SBS8YBtLNmPHKrnCAZgBhHLmhptRQVGuMghI69j+7pA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OJiPVbZ9bKaDY8cmzv0BgjT2Yh9J9bZTL87JRX2YMhVUtq2kNxzIbLZU6gJqdj2HwkZbHngHuI68iAIadHHwzZY8t88/yDWw/L/2Hf2nbbHPcV3690+VyfutaftZjHDupHpN98bJUaBOJOzT1M7YTid1kPtmoEJz0/OBSPxN+1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B/IPoPd5; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5ac5376c4b2so1074019eaf.2
        for <linux-man@vger.kernel.org>; Sat, 13 Apr 2024 07:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713016892; x=1713621692; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1XGF/d2AbpxCohEaNtMXJ0g1OGuAIynPMhCjcUrVGoc=;
        b=B/IPoPd5UzCJJNLLRMnttp936553EscvVHjTNd3fzdzcYmU03YUQskOJuCxdDgvuTV
         soXRNLLB6nkJP6XSlVQzMVZ70hOiESwiIZ4Xju8rCtgdSQ/sBsxBHkClFkq/iKVTPqlt
         vo1m50ZhGL5lAQtaWsKCeYdIavPJ61ZyUBkDzLHJohFS5hbok/15cF7oUPHeH0kci1Ub
         pgakvnO6sO+Zci+r4h4jDxt2Ne/WayRcbSBCza5UJ1tErZBIwzuD/GQUoXmE5pNTy2e/
         4aDr2Ye2i3HGxg93tr3m42Df0luIx5UA3wh/tVgHsq0yMWLxKfQEbB4CFCHWk1MarYHk
         +pTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713016892; x=1713621692;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1XGF/d2AbpxCohEaNtMXJ0g1OGuAIynPMhCjcUrVGoc=;
        b=MCrvHMt7xFUygWVHF7Cx3RvjdfGbi/YEnFttSoxPQiqwS0etunwV1M5fOFftVLI5bC
         8vGt8HTiC0F3jtUslQYl/jkm5100dtqmeiSs5MUwjIvE/Del8wBBhFf/ase3Uo+TDtFR
         qbW1EPtVlYfJPR5g4tmvfgOWM8pJqqLbEMmkyEOBxti44L0n+K48xh2aUojP8AVLvBjl
         /Gw32WHvKYcHTPqq2MX+CwxE7fDaM1DZbD/QTCC4w6WISKaXrvtcHfCEhpjpKciyOyI6
         PcaUCHX/d6JjujivU9arbbnhxLWwHVuGtAXr4SX/PcKz5VqOm+WFA3jPN9cIM39GkKvl
         YevA==
X-Gm-Message-State: AOJu0YwoSjJWzezoaEexlRW9mtq3eVbDsN5DeOWY0mMtN/VnRRrtaLB6
	L//YDF+FIHwvku41K4NROjAlfm0LEmFKr2HvYWPu4J334JnPw14q
X-Google-Smtp-Source: AGHT+IHm2hBYYw/BxLPPoFTF6v881lAtRHBXD1S6t1yRU5Cano02QTVlCqndQwaYWZ/CWK5E5+wjtQ==
X-Received: by 2002:a05:6820:1e16:b0:5a9:cef4:fcea with SMTP id dh22-20020a0568201e1600b005a9cef4fceamr5913943oob.1.1713016892150;
        Sat, 13 Apr 2024 07:01:32 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d8-20020a05683018e800b006ea2ed1fc48sm1078075otf.54.2024.04.13.07.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 07:01:31 -0700 (PDT)
Date: Sat, 13 Apr 2024 09:01:29 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Keith Marshall <keith.d.marshall@ntlworld.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: man page style conventions
Message-ID: <20240413140129.46usfus6cexjfzgz@illithid>
References: <bcc2e2ec-32af-4254-a2c9-1884f28af407@ntlworld.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ycw4mxls46j6bywg"
Content-Disposition: inline
In-Reply-To: <bcc2e2ec-32af-4254-a2c9-1884f28af407@ntlworld.com>


--ycw4mxls46j6bywg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2024-04-13T13:22:01+0100, Keith Marshall wrote:
> In the man-pages(7) document, as rendered at:
> http://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf#man-pages.7
>=20
> under the section heading "FORMATTING AND WORDING CONVENTIONS", and
> subsection "Formatting conventions (general)", close to the bottom of
> page 9, I see:
>=20
> > Any reference to another man page should be written with the name in
> > bold, always followed by the section number, formatted in Roman
> > (normal) font, without any separating spaces (e.g., intro(2)). The
> > preferred way to write this in the source file is:
> >=20
> >    .BR intro (2)
>=20
> I have noticed that, as of groff-1.23, both groff_man(7), and the
> macro package which it documents, flagrantly ignore, and indeed
> violate this convention.  I further notice that man-pages(7) document,
> from which I have quoted, above, appears to have been formatted using
> that very version of groff_man(7), perhaps with the intro(2)
> reference, within the quoted paragraph, having been formatted using:
>=20
>    .MR intro 2
>=20
> rather than the recommended:
>=20
>    .BR intro (2)

This is a deliberate change and was mooted on the groff mailing list for
literally years before landing.  For so long that plan9port's man(7)
started doing it first, in fact.

> This leads to a glaring anomaly, within the quoted paragraph; rather
> than the topic name "intro" being set in bold, as the convention
> demands, it is set in (non-bold) italics!
>=20
> In my personal opinion, FWIW, the use of italics in this context is
> just plain ugly.  Opinion aside, it does not conform to the
> convention, as it is stated in man-pages(7) -- either the convention
> needs to be changed, by common consent, or groff_man(7) needs to be
> brought to heel.

When Bell Labs promulgated man(7) in 1979, their convention was
italic-on-roman, and they practiced it with high reliability, except in
the "SEE ALSO" section itself, where they used roman-on-roman.  Doug
McIlroy (the person responsible for man(7), for those who don't know)
characterized the latter as not a deliberate choice.

There hasn't been a single reliable convention for the styling of man
page cross references since at least 1988, with SunOS 4.0, when Sun
transitioned from `IR` to `BR` to cases like the above.  (I don't have
records of what System V Unices were doing in this period, but Sun
retained the change when converting their OS to a System V foundation
for SunOS 5/Solaris 2.)  This shift dovetailed with the limitations of
PC video text mode, which did not have an attribute bit for underlining
or italics, but did support bold and colors.  When BSD adopted mdoc(7)
to replace then-still-encumbered man(7)--at about the same time groff
was developing a free one anyway[1]--they fragmented the convention
further by adopting a practice of roman-on-roman.[2]

So we had 3 choices of face for the topic part of the cross reference
and all got used.

Because proponents of any one convention are prone to leap into combat
with the others to, uh, bring them to heel, I figured the best thing to
do was let the distributor/user decide on the typeface.  Besides which,
marking a man page cross reference as such, semantically, makes it
possible to automatically hyperlink them.  That started to pay off in
groff 1.23 and will do so even more in 1.24.

Reading the groff_man(7) page might be helpful to you.  Here is the
relevant material from Git HEAD.  groff 1.23.0's is similar.

     .MR topic [manual=E2=80=90section [trailing=E2=80=90text]]
            (since groff 1.23) Set a man page cross reference as
            =E2=80=9Ctopic(manual=E2=80=90section)=E2=80=9D.  If trailing=
=E2=80=90text (typically
            punctuation) is specified, it follows the closing
            parenthesis without intervening space.  Hyphenation is
            disabled while the cross reference is set.  topic is set in
            the font specified by the MF string.  If manual=E2=80=90section=
 is
            present, the cross reference hyperlinks to a URI of the form
            =E2=80=9Cman:topic(manual=E2=80=90section)=E2=80=9D.

     -dMF=3Dman=E2=80=90page=E2=80=90topic=E2=80=90font
              Select the font used for man page identifiers in .TH calls
              and topics named in .MR calls; the default is =E2=80=9CI=E2=
=80=9D (italic
              style of the default family).  Any valid argument to
              groff=E2=80=99s =E2=80=9C.ft=E2=80=9D request may be used.  I=
f the MF string ends
              in =E2=80=9CI=E2=80=9D, it is assumed to be an oblique typefa=
ce, and
              italic corrections are applied before and after man page
              topics and identifiers.

     /etc/groff/man.local
            Put site=E2=80=90local changes and customizations into this fil=
e.

(The path in the last item is configured at build time and differs from
place to place; the foregoing is Debian's practice.)

Regards,
Branden

[1] Someone on the TUHS mailing list shared a recollection that some
    people in the Berkeley CSRG wanted to give up AT&T troff
    compatibility in favor of groff.  Apparently, the kibosh was put on
    this by more senior figure(s).  My inference is that this decision
    was made by those intending to incorporate BSDI; to implicitly
    condone copylefted software, let along to ship it, was intolerable
    to those who had visions of extracting fat economic rents from a
    captive market of Unix sites that had committed themselves to
    "Opposing Sun Forever".[3]

[2] https://lists.gnu.org/archive/html/groff/2023-08/msg00005.html

[3] https://en.wikipedia.org/wiki/Open_Software_Foundation

--ycw4mxls46j6bywg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYakDIACgkQ0Z6cfXEm
bc5nWA//REN62gdw1MmMSrUJWe7kt4BBJllcCS0UsM3sRs9ZcayP+kH2BzxfC7aW
ZSg21wuj1/vhidGfqu6Po2wfxZkEy4pqQt+DriuRctdESoBEDa8aWTKal5vLtflc
hYkcMq3DpDv1543wBjAf8mSbtweoFXBw+92hVwv1QokNoAtX44amRZJJtoQuYGWg
KUwcTfc0Ip4Rp0oVS5iUsQxPFFa3rOu3v+61lNelFf5ixf/m/Pwrk4MkEg6XiFkC
O7/M4qHIVITg2fl2Rk+YPTxHv4jkYRg+sSyrfRBt1AZtIc9fZpFNVJij0OsKp775
LoYKy9qCFZ/Pmt5AaPSjC25Zy2ccptbGGqFMo5BIpttC6QFgGBw3vSBzA8Nwesjh
bGmq69O/LGPZ6fEOBUg4Ya2zM7rd82FwswekUtnMvY1smQRno8dyoVw2AHP54rAo
qinfQRVuh0FCFjVJ9fl4AsLzXiAqDs29RnoyOHK7vmBLPukmLdBB9dexXnpfR8FC
/t+zTIdfihm58tDYvB43QI3OXXkk5KUwG8ZJg+RC5I3oiqdRzPaQ+RYYkTPnVeS9
PzjD/narK0v3IgxDOlCndOlwcuxpkoEu+1kU7N5EilpHrZ70PE0EUWuuQXspEl6y
rGqbeQ+Ry+eOEKQMxXF3I08RoTkKB4qFQfZDMtQ/MWiPDrkd+i0=
=XHBg
-----END PGP SIGNATURE-----

--ycw4mxls46j6bywg--

