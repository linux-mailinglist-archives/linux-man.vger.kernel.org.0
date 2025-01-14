Return-Path: <linux-man+bounces-2228-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BC9A10B84
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 16:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A93918868B1
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 15:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1CF15746B;
	Tue, 14 Jan 2025 15:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NLteBYis"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9492823242C
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 15:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736869941; cv=none; b=I7rwsWgttlUAOeG9WRtfmZFS3lZ9C3N43o8pOIx6PCB+6zMK3vl4DsbYoVHOWL1HWhTRKKmYMwGFi34cCxjav7gFiOCPWVDjx/guFVvAn5y6YAIK5qoNI9hkbBiMlQ7JMuz4xrN9QXBVlgmkDoF9IdCofR/PpAYXdUzh9tAQgcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736869941; c=relaxed/simple;
	bh=QyuXHWmzEQCg3/PjLCjQFQW3W3Qj/BfQURaQJhlxc8Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Altjeqw4IYP1xo7SpKVQrOaMwNXHMhsp7X2pxSHSsdTHgHXAFd/vxVlOTE5dSnPRg8eka1be9eKLspfjyykC9COU1NTEBzCS3Iazd59DDlVsubOU5GBXglIOjaKHggwwvTkukZudMeU1IAcRaCbjUwxJiR2S5r/dlNe2psvGgZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NLteBYis; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-71e16519031so2870079a34.1
        for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 07:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736869938; x=1737474738; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0UymOFlP0NtqlTyKV4HqMMYZG9GL0HcWOvlxkiEIb4w=;
        b=NLteBYisDzLigoSgv0uJjVnHiId/W62mh6ucsIolIeCYlKKkPGcSV1g0PJRT5IZBB4
         nXGWrygmNUpYxVYTWYp8cfWPm90BNtGXoS77GwFD43wUtyV/U5kTpF4yTSa+C9aA68Rn
         fboHBv5TVhNpqIorLkeNxlAUwmPOHw1Phn0IyUfvPGsFDdeGBZSAl2IPDzARJ9GASQRl
         tlZdGKIhVjbIYYifUENLLlhSvkvgnkGNmC8sthE7/aSgvdjFBszl7myKgrD+PxPfFzF5
         FGoJTm+aZn6bHiCt2qKRCmKmgqt8b21n7ovBhUYkDx6DQgeBQjMgKmHhJNJFBu5sKVM8
         /gng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736869938; x=1737474738;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0UymOFlP0NtqlTyKV4HqMMYZG9GL0HcWOvlxkiEIb4w=;
        b=PlPf+pzAoE6Wf2pDfYAwmQzozJhABVemUpwS5cJTHR71136WG+bjP6bcy63F3Krpi5
         mdfUHCHsj1ezVpuAbHtqDfIKVcDnpwAP9ScpimN0uYaV7hbKHTqVL8NbXF3lBx4UlJUF
         2ukL725ao+o9R7qfK+TkoP45jfy7FROCuhYyUbuaPAMCmCL7DxNIaAW5Ho6SeGLma5jC
         ttjWIsr2Qt5JoflWQ6f+ybCqEU2kQ813eo+sTZXqKbBzaU3qQS62qZyO85YVBQzvEjpE
         1qxvPh43xhn+mOfq6+g2r9zklxLrM3dlf8ZedG0FJTs1GXOLPsqU5UZboNjEhyKITmsl
         Zj/w==
X-Gm-Message-State: AOJu0Yyjvk559+xIXnWTWXmhPEFixqwBkfmJ/eLGCu4w5HdFD/sjuqwd
	xzHwfMZ5Y7FMyVfMCR4LyVj7AcZAuBMxXZ9TiiDi2auKxAN/o41ULkexmA==
X-Gm-Gg: ASbGncuZ2q/WWS4gGQxBlVfiYGCbrOVqTlMpBtFAtaoVrZVyg2KiqjqQHELGS4trYFH
	aoYh2D8xCqZ9dOirAsD0j2j9RFqhC/uuJo+yj/wmwgfP8/Z/x9NAtge6MOHc0JpH6OKCyVCj+Jo
	rIhmpfHUTdYQZlSDN9XmEU8Q0nI3ee0vC5O+rdaNngpuuslLPEa/NqVQiwnYr+iEh/KBlx9l59H
	sOpJDzdNTZpgzySeDd4VMyzfHfD0dolhoNacigqP3reY5o=
X-Google-Smtp-Source: AGHT+IG1Lt/xM+515SgaUoqPrQc+xMfJ78SK6vEVa3xvTXv5pD4Y7gPMr0BQtdGPvXFQ4XQgnuVTUg==
X-Received: by 2002:a05:6830:600f:b0:71d:5962:b3ca with SMTP id 46e09a7af769-723162e639bmr17495000a34.10.1736869937615;
        Tue, 14 Jan 2025 07:52:17 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7231861bfdcsm4688171a34.48.2025.01.14.07.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 07:52:16 -0800 (PST)
Date: Tue, 14 Jan 2025 09:52:14 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Jason Yundt <jason@jasonyundt.email>
Subject: Re: Man page titles, identifers, capitalization, and hyphens therein
Message-ID: <20250114155214.3rdz4zwqim2gyhfc@illithid>
References: <20250114130028.28638-1-jason@jasonyundt.email>
 <mog6nnwzwl2dmlrec5b7l76wbxlsnklvdulok644x6o557trib@3zwtoz47r4x3>
 <20250114151504.3wipct4hpkuzn57t@illithid>
 <ndy2h5rm2azltvcozordn66sl5fn6lipmen32qhgtjgyuxgt4p@fnlasx4tg7ax>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3dnkopfu5yuwkrl2"
Content-Disposition: inline
In-Reply-To: <ndy2h5rm2azltvcozordn66sl5fn6lipmen32qhgtjgyuxgt4p@fnlasx4tg7ax>


--3dnkopfu5yuwkrl2
Content-Type: text/plain; charset=utf-8; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Man page titles, identifers, capitalization, and hyphens therein
MIME-Version: 1.0

Hi Alex,

Thanks for clarifying a couple of points.  I have...

=2E..counter-clarifications!  :P

At 2025-01-14T16:33:37+0100, Alejandro Colomar wrote:
> On Tue, Jan 14, 2025 at 09:15:04AM -0600, G. Branden Robinson wrote:
> > At 2025-01-14T14:19:49+0100, Alejandro Colomar wrote:
> > > > @@ -95,8 +95,8 @@ .SS Title line
> > > >  The arguments of the command are as follows:
> > > >  .TP
> > > >  .I title
> > > > -The title of the man page, written in all caps (e.g.,
> > > > -.IR MAN-PAGES ).
> > > > +The title of the man page, written in lowercase (e.g.,
> > > > +.IR man-pages ).
> > To try to bring order to the chaos and confusion surrounding this
> > subject, I use the term "identifier".
>=20
> For consistency with "TH" (title heading?), I think I prefer "title".

Except in *roff(7), "titles" are the term given to headers and footers
collectively; the content of these is precisely what the `TH` macro
configures; and arguments beyond its first are just determinative of
"title" content.

Thus:

$ echo '.TH foo 1 2025-01-14 "groff test suite"' | nroff -rLL=3D72n -man
foo(1)                   General Commands Manual                  foo(1)

groff test suite               2025=E2=80=9001=E2=80=9014                  =
       foo(1)

> > I don't understand how the "name" is distinct from the "title" in
> > your usage.
>=20
> Name is "SH Name";

Okay.  There's no collision in our usages here, since I avoid that term
for any other purpose in man page anatomy (except where qualified to
clarify it, as with "file name").

> title is TH's $1;

I followed this convention for my first few years as a groff developer
but ran into problems telling unlike things apart.  That is why I
distinguish titles from identifiers, as the quoted material in my
previous reply explained.

> filename is the file name.

No disagreement here.  I would say that "filename" is an excellent C
identifier, but it is not English.  Novice man page authors have a
terrible habit of porting C identifiers into English prose as if they
were the same language.  Possibly this practice arises from a feeling
of greater confidence and a self-assessment of more experience
expressing themselves in C than in English.

> > > if the name is something like UTF-8,
> >=20
> > (by which you mean "uses code points outside the Basic Latin range")
>=20
> Nope.  I meant UTF-8(7):

Oh, ha!  I'd have quoted it in that case -- use/mention distinction. ;-)

> 	$ find man/ | grep -i utf-8 | xargs grep -A1 -e ^.SH.N -e ^.TH
> 	.TH UTF-8 7 (date) "Linux man-pages (unreleased)"
> 	.SH NAME
> 	UTF-8 \- an ASCII compatible multibyte Unicode encoding

Yes.  On my system, I see both

	/usr/share/man/man7/utf-8.7.gz
	/usr/share/man/man7/utf8.7.gz

installed.  They (and "iso_8859-1.7.gz" and friends) are examples of why
there might be a case distinction between the man page identifier and
the file name.  The proper way to spell "UTF-8" is in fact in caps.

=2E..but at the same time we're all children of Ken Thompson, and at a
shell prompt we experience great horror at the prospect of employing the
shift key.  (Thompson carries this abhorrence over to emails as well.)

Regards,
Branden

--3dnkopfu5yuwkrl2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmeGiCcACgkQ0Z6cfXEm
bc5+Tw/9Hc23qKiBxnYKvBDeGEoyZBFXDj/mTrroc/YvE2PyBp9g2lJ49QsUE7av
ZbF5/8rwiArrRJydaBtCHLQ7sfRZp0I0aEACbxnSmEkYdPg/3pWbWiA3fUcDjqbR
yRofZOcjlYd8BBe1TEWsCJ+0Mora/Wl1VL4bA8rLzDSuYvGdnUdKimuH6evHMODg
IZ30WvfXJrEDEmPpb8fAuZtNoGTknOqu3+Nnri4qrfcoGV08zULTQVqYCy3xEJZx
BN/fwxyI1oKR8VDF/yTxMY2ZPJ1robb8EtXuAuUiSllTU6+Rf6iW9hYzhJXaPxyD
I9oD9h0uvy+DAKqB27OgA9I5USNH3McOGLqNtxPxUodual80um1F4uqJBi6uK88f
LlSyN7rfFtlIGQ2dOPk7k5msEWzMFv2bD2Y8pjezew8YAKzuXA41yTnz+Yy1o0Iv
AOP1aodAubysXbv6+DBdJ6mFFrN51JcYqDo2af4S9VhVkyQ/MFEuD91ZGR2+wuQb
LMrGAE7945Rb8oSg30S5gB/ADOVRDFLZrM5ySZ+fkq/WBZsnOu0/zjXqSY8XpzrN
OHfcJ3DWzHJJ5GNK1oghES9YRDoOArifJp+f66yjaXgkGB/8gRnhCfU0pBDpKc6K
DMfUzerlzAx3yQSiVPttzyKMtUBS9jYTmNC9LlQt1Ae0FUU+7Zo=
=rb6V
-----END PGP SIGNATURE-----

--3dnkopfu5yuwkrl2--

