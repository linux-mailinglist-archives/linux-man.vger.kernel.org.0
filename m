Return-Path: <linux-man+bounces-3729-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 241EAB34B88
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 22:10:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE05B3AC0D2
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 20:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3190D284686;
	Mon, 25 Aug 2025 20:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GTxpqT2f"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A89233D85
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 20:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756152608; cv=none; b=BT7vC7fj/LAp/x25YzVLahjbRpmEcgU8QN4WI7ey9AI7BBgzQl3ghGNkGmXF+6TbcNsq1HxoK8Kpb03XhG5pIE+U5ZPrU5HnIMCpC/4nzf00j/KzG51k2jeW2c3b68wI2WO9fWMvHKP6tYRXGROlPAltNS6vLo+Yt+XWlnT1KT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756152608; c=relaxed/simple;
	bh=XQykPxkVpHx8Po2HjFt+li8Dz+FDI4zI84T5xpS5zGo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p1w+evtFvyzPzVMVs+rPplsdqJdnCHWkkhnX6C/0CR/xL1/WmGhH0tK7+ReYLOAjjfjwzKgRxvPazSKdbi5H+O7bSl4Yc7CN24qEKO3CzTLecIaT/mPCYvrspA8PsNL0Eqv05OaR8B9cZLsmC2pv6CZWKZBuciVJC+dxpJUFGF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GTxpqT2f; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e9530e59512so1925303276.0
        for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 13:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756152604; x=1756757404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IkBbY5L4BbWz/PfYzBc6hnuXgUp9GeEjkIexzfvaSHQ=;
        b=GTxpqT2fbWQoI5yiTg8HtGpM5j9dWIQDYWWRXZA1OJ1ansvNR/r1Q77Yx76xAo+1rR
         sUVPqep7Akyc6riVQOPHI7b6aqKAwzyTyTTEmURp2uQWV9VEddhbn1RAG18hOIQmMq1c
         TIRGYb+LF+WqblWC9HAcJla9DgQxTZwRmnPrGhwuugADz1rybIt8u7mdSF9tvmTzF4q6
         RsK+qSaXEra81mSfzaEpvKF3x+Zf4KEsrUFs2wshMNzWwoNmFHJZnhBwqUDEWINbqz1l
         qy6Ncljarm7gyA2rnzMuhsTxvoP2EyPdk5X5TriLOy706X2axDw/66Ss2CYA/LNmHfzQ
         mNRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756152604; x=1756757404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IkBbY5L4BbWz/PfYzBc6hnuXgUp9GeEjkIexzfvaSHQ=;
        b=SyprXWAYGTX7ZCNBkdt13zkO3vgQ5KmevBN/SASFyyYK9h+GhP4ciZU4Zbj0J16oa0
         2YFmBGo5B1Tj3uIe8u+j8Md2MX0Rfh/v17x5Ez+duw885QgtX8ozMbeCwfegeH+Ymhec
         52SslFxS9w1tbOwSoJYJyrJWLfZ/9r/ENlynOfeSokYSGbFCMfhodHr5yhrDlLseN/QL
         rwbvEtYcsTs0BmUf4o5+x9AQxffUv17VqmMcCauRqut9mjeMIoklUQX1NNVLU8g19GNO
         w7aM2Eg7/YJL1j142mV7rMqkbyVeIr0CMZy+44ZWwT59Lp2fw/Jp7noDZewmOnv0rm7o
         3Fzw==
X-Gm-Message-State: AOJu0YyXJ0zSsFbz3K4rBB2CUTpR1JEBNl7eKja3aRMxwjebKdZN7EsT
	tjdzp/Ti7Tic94N+oC9RJfOnfQra2Yu1u2cf4LpoCuXKZ+U/ISNFYD8E/Mqzmg==
X-Gm-Gg: ASbGncseLe8EFyM6+eZ9meM77mFjTfsZvFtVi3ufheTU/YgJOTYWSfGC5dmBr7jGfzs
	NEJSIAgkrMZAri3QsevrgGgKZaemr8v3IZ4IyKfKOrYSzh9rXBM+zSuLoD2ceHXr+UQY6VN5P37
	ZO49G+pA5afqNIutd1SQCYzSon1+G05SYOYsRqelyhIkXDaxFRTYLKmT2WKQNpXX/VTQgZecC4I
	+Li9oID3fxVTSofR7UhO4UkGE+X2H2Cfd50SGqQRUEEyrr5K4PyEFhjdkvzZb3pm16m5rmKg+af
	jAw5N2/ndzoggk6cLkclOiicyrzNsvNY44VZIEo6fFeO9r0lfVBndP+7aYt7t9IcNs1d7OR8nE4
	UjUu88CeDYzkM
X-Google-Smtp-Source: AGHT+IEmj6RCShijU1cOdeKXX869caIXEoa0phCgasI2NFwiEub0Q5TqyxjmqpDgcYuylVQf54veWA==
X-Received: by 2002:a05:6902:4311:b0:e94:e1e7:fdf with SMTP id 3f1490d57ef6-e951c42ce5bmr13278303276.53.1756152603397;
        Mon, 25 Aug 2025 13:10:03 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e952c294e55sm2646125276.15.2025.08.25.13.10.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 13:10:02 -0700 (PDT)
Date: Mon, 25 Aug 2025 15:10:00 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org, groff@gnu.org
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	Alejandro Colomar <alx@kernel.org>
Subject: Re: Issue in man page pathname.7
Message-ID: <20250825201000.dnkrcjnzjf5cdr22@illithid>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dljqjcxhsmt55aih"
Content-Disposition: inline
In-Reply-To: <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>


--dljqjcxhsmt55aih
Content-Type: text/plain; charset=utf-8; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Issue in man page pathname.7
MIME-Version: 1.0

Hi Alex & Helge,

At 2025-08-25T20:57:22+0200, Alejandro Colomar wrote:
> On Mon, Aug 25, 2025 at 04:17:32PM +0000, Helge Kreutzmann wrote:
> > Am Sun, Aug 24, 2025 at 10:04:04PM +0200 schrieb Alejandro Colomar:
> > > On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    The URL is invalid
> > > >=20
> > > > "For maximum interoperability, programs and users should also limit=
 the "
> > > > "characters that they use for their own pathnames to characters in =
the POSIX "
> > > > "E<.UR https://pubs.opengroup.org/\\:onlinepubs/\\:9799919799/\\:ba=
sedefs/"
> > > > "\\:V1_chap03.html#tag_03_265> Portable Filename Character Set E<.U=
E .>"
> > >=20
> > > Hi Helge,
> > >=20
> > > That URI has '\\:' in it, which is correct in roff(7) (and in man(7))
> > > source code.  That is removed by troff(1) when formatting the page.
> > > If you read the formatted page that's not there.
> >=20
> > Yes, then no URL is there :))
>=20
> Hmmm, that depends on your terminal.  If there's no URL or hyperlink,
> this might be an issue in either the terminal or groff(1).

I need clarification on what you're seeing, Helge.

The presence or absence of `\:` escape sequences should not make the
entire URL fail to format.  The visibility of the URL is dependent on
the output device's ability to hyperlink it.

groff_man(7):
     .UR uri
     .UE [trailing=E2=80=90text]
            Identify uri as an RFC 3986 URI hyperlink with the text
            between the two macro calls as the link text.  An argument
            to UE is placed after the link text without intervening
            space.  uri may not be visible in the rendered document if
            hyperlinks are enabled and supported by the output driver.
            If they are not, uri is set in angle brackets after the link
            text and before trailing=E2=80=90text.  If hyperlinking is enab=
led
            but there is no link text, uri is formatted and hyperlinked
            without angle brackets.

As far as I can tell, groff man's `UR` and `UE` extension macros were
designed to degrade well on systems that don't implement them; recall
that the man(7) macro language was designed in 1979 and did not
anticipate hypertext.  (mdoc(7), sometimes touted as an alternative, was
designed in about 1990 and had a similar lacuna--but like man(7), later
saw a groff extension to fill the gap.)

Since the link text itself is not in the arguments to a (possibly
undefined) macro, it should get formatted in the page.  A _man_
formatter that doesn't implement `UE` might leave off some trailing text
(usually punctuation), but that too can be worked around portably[1] if
one cares to.

=2ETH foo 1 2024-08-25 "groff test suite"
=2ESH Name
foo \- frobnicate a bar
=2ESH Description
Visit
=2EUR https://my.example.com
my awesome website\c
=2Eif \n(.g \~
=2EUE \c
\&.

Admittedly, the supply of man page maintainers concerned about
portability to DWB, Solaris 10, or Plan 9 troffs seems to be dwindling.
I've never seen any page go to the foregoing trouble.

> > > The effect of '\\:' is telling troff(1) that those are good points
> > > to break the line if needed.
> >=20
> > Thanks for the explanation. Checking the URL after removing the \\:
> > is a valid URL.

It's worth noting that `\:` is also a groff extension; this time to the
formatter, and dating back to about 1990.

     \:        Insert a non=E2=80=90printing break point.  A word can break=
 at
               such a point, but a hyphen glyph is not written to the
               output if it does.  The remainder of the word is subject
               to hyphenation as normal.  You can use \: and \% in
               combination to control breaking of a file name or URI or
               to permit hyphenation only after certain explicit hyphens
               within a word.  See subsection =E2=80=9CHyperlink macros=E2=
=80=9D above
               for an example.

               \: is a GNU extension also supported by Heirloom Doctools
               troff 050915 (September 2005), mandoc 1.13.1
               (2014=E2=80=9008=E2=80=9010), and neatroff (commit 399a4936,=
 2014=E2=80=9002=E2=80=9017),
               but not by DWB, Plan 9, or Solaris 10 troffs.

There's a portability workaround for that, too.  Here's a real-world
example.[2]

I mention these issues because Helge's project intakes a huge variety of
man pages.

Regards,
Branden

[1] except to po4a: https://github.com/mquinson/po4a/issues/527
[2] https://github.com/ThomasDickey/ncurses-snapshots/blob/ec918320a42c0dd5=
7c1ea8481419bcaf862d16fd/man/curs_getch.3x#L46
    https://github.com/ThomasDickey/ncurses-snapshots/blob/ec918320a42c0dd5=
7c1ea8481419bcaf862d16fd/man/curs_getch.3x#L783

--dljqjcxhsmt55aih
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmiswxEACgkQ0Z6cfXEm
bc7KHhAAgwMG4LjL9oDK4E7BRVTv2k/0o4hIYIZWMZoC6oUrZ0SZD/G1xI386UnO
xlbHEgsjPFwT0U/2fbhbZV0qCZPvXx+rD70abfBVHqbykPQUCHJ2Tqnsup9Vy4ZM
qS6Y8LGum5fcIqTd9DfPaB8okfc1PYIyjzkb5/xtgMrDmEZ6k6KuC44GmsVfZJQA
Q+VSMEVkPl5jGTtbvAF1wbEnBuv1eAZAkIrFkCYsYzONoI5v54+E9fsk+1B710OE
Y7RJMvbxlPzbuvA+nCLAlzTw9UsRvM5Aj4bgQikGIH/77RryoVp1QxAahoPn+GSC
/MIidwTlmJyWNtLBnX9UvAgw0ZYUHm1D2FdLlHcYdxLpetOiO/qsamVaTXbdzBli
YGJyjrihcG9W9ZoBtkMJTg4h2AsV3JoilwB9HFacgVRfygOa1iL8P5kJ5sJqW2lS
1G1IwpjkCKb141FSwtfyvLnBGtRVJRfNyFdtpWc7OlDB6xWb7pnrPMm/FcwM2fP7
143COdJo/wsgc1Nycysbt/6x0Ax5tJLpG3BTPetYvPR588wNnNkg6xwLQSXUh4y3
5TbYybMG3jueBR8U913gc3PIYxw21LW7hpptON8+FDpcAsCgqTtDbGJbTcbq3xBK
gafYOl7Vq17Om2vNaqVTu/Qgp4oyIWJ7cJ1t+hKzj0hHHGhqtMA=
=lJlP
-----END PGP SIGNATURE-----

--dljqjcxhsmt55aih--

