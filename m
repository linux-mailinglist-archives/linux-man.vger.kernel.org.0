Return-Path: <linux-man+bounces-5695-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QiHxDIybR2p2cAAAu9opvQ
	(envelope-from <linux-man+bounces-5695-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 03 Jul 2026 13:22:52 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E5E701CA0
	for <lists+linux-man@lfdr.de>; Fri, 03 Jul 2026 13:22:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VGMOALAc;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5695-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5695-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD69F3029244
	for <lists+linux-man@lfdr.de>; Fri,  3 Jul 2026 11:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6EE3BED7D;
	Fri,  3 Jul 2026 11:16:41 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84D53C09E4
	for <linux-man@vger.kernel.org>; Fri,  3 Jul 2026 11:16:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783077401; cv=none; b=E/L14a+Lh2C1wh9F6TAg+d5ivPb9B1rnkxDbecwJOUQ02ejrPhNGlZpsNu3zLkZ2a432vTM5IGF1DEGnTljcjeDhp+M2qmzYYa0KRgVP1N8o3cGfrqXZ1PrTj/8Gw1LVxQTbe9bM+rCM2oxUoQjR7lnlruCav3XzSf1swteS1Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783077401; c=relaxed/simple;
	bh=oShCwGQW/oyxRingGEzi76t+N6o8vYroCFWE9Cm0sI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R0fw0gHn5vAr3s6+fsI5gOZeL7q/Tc4wMSg3GEQ64/9divHCtD/sv0kcD8U14o47SXPG3xa6pucwx1uMFmAgTD0iU9QjI5pa4qDtLWL1+orOaNaDcPd50EkL3vdByJAJX/zYjdXVkbS631gKWWhmsT30P+sQnJUeDTZQA2eusfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGMOALAc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 447B51F00A3A;
	Fri,  3 Jul 2026 11:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783077399;
	bh=/9uBXdMSeG6M7V52e5YlZYmq0kBqOhEHiSAMZqGmZMs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VGMOALAcTV44G/k8iKq4qFFAVujMew4KamVhyiRoMBHuOwD2c8CdgN/iUOgqN1Ixc
	 +9lsr899NliLhdOqKGQ7WHsLLNzYuz1rSRGKZ35xtkv/hj72ReWolo/1r7b5gqrIp2
	 VFwYmyXZKqqKR/hpz4mM3T14DBEvwSCPfj2g2YkQRhCbpoyhQYHb9id0wVCWHKpulZ
	 aZVIuxm54eaxi7fetQ6merHBCYYXMyzBOKqQwZjfeEF29y2oZSaNX1Hs3069pA8WP+
	 VKellHPAw+ddwJDXPpzra+Rs8dq8dJzPLtefZDJR5JNoWbXpEeyIhk7uv3eCJOtOTa
	 Gpe4kzCXMzdCQ==
Date: Fri, 3 Jul 2026 13:16:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, 
	linux-man@vger.kernel.org, "Serge E. Hallyn" <serge@hallyn.com>
Subject: Re: [PATCH v1 1/2] man/man3/str*.3: NAME: Explain the names
Message-ID: <akeUwssG1KVV_-Qu@devuan>
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
 <CAMdZqKEct3eT+Y3-cg5V066hUuo2MzLtjCJPN9uNU4BwUjBFrA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mkld2273ywz3irvv"
Content-Disposition: inline
In-Reply-To: <CAMdZqKEct3eT+Y3-cg5V066hUuo2MzLtjCJPN9uNU4BwUjBFrA@mail.gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5695-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:mark.hsj@gmail.com,m:douglas.mcilroy@dartmouth.edu,m:linux-man@vger.kernel.org,m:serge@hallyn.com,m:markhsj@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,hallyn.com:email,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82E5E701CA0


--mkld2273ywz3irvv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, 
	linux-man@vger.kernel.org, "Serge E. Hallyn" <serge@hallyn.com>
Subject: Re: [PATCH v1 1/2] man/man3/str*.3: NAME: Explain the names
Message-ID: <akeUwssG1KVV_-Qu@devuan>
References: <e1446fbce9d76cea797cf058f74ab0a63b744205.1782995502.git.alx@kernel.org>
 <CAMdZqKEct3eT+Y3-cg5V066hUuo2MzLtjCJPN9uNU4BwUjBFrA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKEct3eT+Y3-cg5V066hUuo2MzLtjCJPN9uNU4BwUjBFrA@mail.gmail.com>

[CC +=3D Doug]

Hi Mark,

Thanks for the feedback!  See below for comments.

On 2026-07-02T22:03:05-0700, Mark Harris wrote:
> Alejandro Colomar wrote:
> >
> > Reported-by: "Serge E. Hallyn" <serge@hallyn.com>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > ---
> >
> > Hi Serge,
> >
> > I finally took some time to do this that you asked me to do some time
> > ago.  I've edited all the str*(3) manual pages so that the NAME section
> > actually explains the name of the function.
> >
> > There's an exception: strpbrk(3).  I refuse to explain that name.  I've
> > explained it as if it were called strchrs(), which is a name that Plan9
> > uses for that function, and which would have been a better name for it.
> > (See patch 2/2).
> >
> >
> > Have a lovely day!
> > Alex
> >
> >  man/man3/strcasecmp.3 | 2 +-
> >  man/man3/strchr.3     | 2 +-
> >  man/man3/strcmp.3     | 2 +-
> >  man/man3/strcoll.3    | 2 +-
> >  man/man3/strcpy.3     | 2 +-
> >  man/man3/strdup.3     | 2 +-
> >  man/man3/strerror.3   | 5 +++--
> >  man/man3/strfmon.3    | 2 +-
> >  man/man3/strfromd.3   | 3 +--
> >  man/man3/strfry.3     | 2 +-
> >  man/man3/strftime.3   | 2 +-
> >  man/man3/string.3     | 5 +----
> >  man/man3/strlen.3     | 2 +-
> >  man/man3/strncat.3    | 5 +----
> >  man/man3/strnlen.3    | 2 +-
> >  man/man3/strpbrk.3    | 2 +-
> >  man/man3/strptime.3   | 2 +-
> >  man/man3/strsep.3     | 2 +-
> >  man/man3/strsignal.3  | 2 +-
> >  man/man3/strspn.3     | 2 +-
> >  man/man3/strtod.3     | 2 +-
> >  man/man3/strtoimax.3  | 2 +-
> >  man/man3/strtok.3     | 2 +-
> >  man/man3/strtol.3     | 2 +-
> >  man/man3/strtoul.3    | 2 +-
> >  man/man3/strverscmp.3 | 2 +-
> >  man/man3/strxfrm.3    | 2 +-
> >  27 files changed, 29 insertions(+), 35 deletions(-)
> >
> > diff --git a/man/man3/strcasecmp.3 b/man/man3/strcasecmp.3
> > index aa554341da4c..65941ddf6524 100644
> > --- a/man/man3/strcasecmp.3
> > +++ b/man/man3/strcasecmp.3
> > @@ -6,7 +6,7 @@
> >  .\"
> >  .TH strcasecmp 3 (date) "Linux man-pages (unreleased)"
> >  .SH NAME
> > -strcasecmp, strncasecmp \- compare two strings ignoring case
> > +strcasecmp, strncasecmp \- strings case-insensitive compare
> >  .SH LIBRARY
> >  Standard C library
> >  .RI ( libc ,\~ \-lc )

[...]

> > diff --git a/man/man3/strspn.3 b/man/man3/strspn.3
> > index fe4414317df6..7c85d209c59d 100644
> > --- a/man/man3/strspn.3
> > +++ b/man/man3/strspn.3
> > @@ -6,7 +6,7 @@
> >  .\"
> >  .TH strspn 3 (date) "Linux man-pages (unreleased)"
> >  .SH NAME
> > -strspn, strcspn \- get length of a prefix substring
> > +strspn, strcspn \- string [complementary] span
> >  .SH LIBRARY
> >  Standard C library
> >  .RI ( libc ,\~ \-lc )

[...]

> > diff --git a/man/man3/strxfrm.3 b/man/man3/strxfrm.3
> > index d4ac57006eb0..a892bf4c813b 100644
> > --- a/man/man3/strxfrm.3
> > +++ b/man/man3/strxfrm.3
> > @@ -6,7 +6,7 @@
> >  .\"
> >  .TH strxfrm 3 (date) "Linux man-pages (unreleased)"
> >  .SH NAME
> > -strxfrm \- string transformation
> > +strxfrm \- string transform
> >  .SH LIBRARY
> >  Standard C library
> >  .RI ( libc ,\~ \-lc )
> > --
> > 2.53.0
> >
>=20
> The text after the \- is documented as a "summary-description", and
> many users and tools (including man -k, apropos, and whatis) rely on
> this.

I thought precisely about whatis(1) when doing this.  Here's what
whatis(1) shows after this change (and a similar one for mem*(3)):

	$ find man/man3/ -type f \
	| grep -e/mem -e/str \
	| xargs basename -s.3 \
	| xargs whatis \
	| grep '(3)' \
	| sort;
	memalign (3)         - memory aligned allocate
	memccpy (3)          - memory until-and-including-character copy
	memchr (3)           - memory search character
	memcmp (3)           - memory compare
	memcpy (3)           - memory copy
	memeq (3)            - memory equal
	memfrob (3)          - memory frobnicate (obfuscate)
	memmem (3)           - memory search submemory
	memmove (3)          - memory move
	mempcpy (3)          - memory return-offset-pointer copy
	memrchr (3)          - memory rear-search character
	memset (3)           - memory set
	strcasecmp (3)       - strings case-insensitive compare
	strcasestr (3)       - string case-insensitive search substring
	strcat (3)           - string copy/catenate
	strchr (3)           - string search character
	strchrnul (3)        - string search character or NUL
	strcmp (3)           - strings compare
	strcoll (3)          - strings collate
	strcpy (3)           - string copy/catenate
	strcspn (3)          - string [complementary] span
	strdup (3)           - string duplicate
	strdupa (3)          - string duplicate using alloca
	streq (3)            - strings equal
	strerror (3)         - string error-string
	strerror_l (3)       - string error-string
	strerror_r (3)       - string error-string
	strerrordesc_np (3)  - string error-string
	strerrorname_np (3)  - string error-string
	strfmon (3)          - string format monetary value
	strfmon_l (3)        - string format monetary value
	strfromd (3)         - string from float
	strfromf (3)         - string from float
	strfroml (3)         - string from float
	strfry (3)           - string fry (obfuscate)
	strftime (3)         - string format date and time
	strftime_l (3)       - string format date and time
	string (3)           - byte operations
	strlen (3)           - string length
	strncasecmp (3)      - strings case-insensitive compare
	strncat (3)          - nonstring catenate
	strncmp (3)          - strings compare
	strncpy (3)          - fill a fixed-size buffer with non-null bytes from a=
 st...
	strndup (3)          - string duplicate
	strndupa (3)         - string duplicate using alloca
	strnlen (3)          - nonstring length
	strnul (3)           - string search NUL
	strpbrk (3)          - string search characters
	strptime (3)         - string parse time
	strrchr (3)          - string rear-search character
	strsep (3)           - string separate
	strsignal (3)        - string signal description
	strspn (3)           - string [complementary] span
	strstr (3)           - string search substring
	strtod (3)           - string to float
	strtof (3)           - string to float
	strtoimax (3)        - string to [u]intmax_t
	strtok (3)           - string tokenize
	strtok_r (3)         - string tokenize reentrant
	strtol (3)           - string to long int
	strtold (3)          - string to float
	strtoll (3)          - string to long int
	strtoq (3)           - string to long int
	strtoul (3)          - string to unsigned long int
	strtoull (3)         - string to unsigned long int
	strtoumax (3)        - string to [u]intmax_t
	strtouq (3)          - string to unsigned long int
	strverscmp (3)       - strings version compare
	strxfrm (3)          - string transform

As an example of how I think this is useful, I learnt the difference
between strftime(3) and strptime(3) while doing this change.  The
ethymology of the name was the key to understanding it.  strftime(3) is
for _formatting_ a string, while strptime(3) is for _parsing_ from a
string; I'll never forget that.  Before, I knew one of them was for
reading from a string, and the other for writing to a string, but never
remembered which is which, so I had to consult the page every time.

>  Repeating the function name in a slightly more expanded form is
> not only contrary to what users expect, but is much less useful than a
> proper summary description.  In most cases the new text does not
> provide the summary that users expect from tools like man -k, is
> inconsistent with other summaries that might be shown by man -k, and
> is not even grammatically correct, making it needlessly difficult to
> interpret as a summary or contrast with other summaries to determine
> which of several matching functions is desired.

I agree I wasn't entirely happy about it not being gramatically correct,
but though that maybe it's not necessary to be so.

> If an expanded form of the function name is useful, it could be added
> to the NOTES section.

I've CCd Doug McIlroy.  I'm interested in his opinion before deciding
what to do.  Anyone else reading this, please give opinions too.  I'm
still undecided.


Have a lovely day!
Alex

>=20
>=20
>=20
>  - Mark
>=20

--=20
<https://www.alejandro-colomar.es>

--mkld2273ywz3irvv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpHmg0ACgkQ64mZXMKQ
wqlqxg//adNfTaA46YDBh2BPB0UJ443Lq/SjWbcF7WGAZ3cK7FT92xi6/XqBJ/T0
68BpVgAjctVYWtBmgE6envC4Gp0EceuZehA27AE+eSC2k/3KHddMRpS4zA0IjniX
rQ/yVg0XX9GRxBJexjh9wNoVwUlm7yiqWrntg3Bz7G3ffq6C5fD1aeEO2YthVDOz
CWAeRES8WP0PpD4VCzDEDsASioxzrpPbhROUVSTGygROUFT+PeDnymBUlsKcLAKa
o9tAP5ayDwQvnhXFGs7PsSm2P1ORSuGMaK8W++7AMbQzNxpKO+PNUSwFw0NFp6TR
RkVPgesoSdbPRVZwZdRVJsJ25hVFZxx+T5xFyLO0wQqdILBZppy4UhDfg7JP/9LU
rbgCLzs1DY7zGRJVy51gEPRVHVfTGhq5foy0YyPF73MN7+IOjAdPu0d2Z1IYZAnh
8fsjD3Eh6DL5KyhLUuYCxGY2p+ZJQaB0OF5r2xaBW9Ln8vjhTRrzvKTU4W4VYeK1
fJv99vp/3raa3HFkQP6IMckTLgG/T+T7BX90OQOhbEHHYB7WMX/5WHLJMfo1/vo9
CZSUZpSC+VTLqo373nB8v15Dd4cJJlluJvausLChDQ8boWKu9Ml8YXlPazKOOGrT
JK1NO5+tn15q/gXqZW8IzNY47dukPtXOeH93fUXjvTPc6fqiuuY=
=VaOR
-----END PGP SIGNATURE-----

--mkld2273ywz3irvv--

