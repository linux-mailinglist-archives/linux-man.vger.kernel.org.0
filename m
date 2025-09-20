Return-Path: <linux-man+bounces-3904-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 774F7B8D167
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 23:05:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A81A7A6E31
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 21:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 717251EFF8D;
	Sat, 20 Sep 2025 21:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcat3Lxe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312811A0BF3
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 21:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758402341; cv=none; b=sMv4IX+2CCKWkj4A/SVLhr6tO7lBSTIAiRmnrhKLju2CRcD4aYA8b5ggR7UQCLmbWXeN+K0czJNPhR8Ys+B+FQyOsAYcV0YvCMqH6029tBWC+EcE027sJliFhU1ZdQaz+l+Pr9YKMtGZvSoEk1ayk3hqCrRkuZOXf5xHyd5d/jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758402341; c=relaxed/simple;
	bh=iny9M2YUoYPMS8vozyz7H47iH2wpeBkotw3A4QZm+5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MqkgTY24Hu+eiiBxkUCRuzGOG0i9MlcujXIXl4EFXUn11d/2yuePgvI3AJNNJ2VrQ32MAK74Vjn6trDcVExCxRQPw2Lmez1BuqLDcemzAFTG/P1Ynt0s5DXIOeRZV4so51CBpO8UG7/c4idVwRpwtcht0LIuP1C8ODLk3OxL5Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcat3Lxe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6475C4CEEB;
	Sat, 20 Sep 2025 21:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758402340;
	bh=iny9M2YUoYPMS8vozyz7H47iH2wpeBkotw3A4QZm+5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tcat3Lxes+enfg1vEdrn8eCyTl3cnxfDltGn0aGgqrLAsjNM0TdP/vAHfQOjCCAWl
	 5KYLyVddP00wgOcfU3wZugTzpGRl1qUXJRYUtqFUHl9TBPZ+ooZW9ED8IKxw0onzmA
	 9htx0euyGdfFJVyGjBEn5YFP1dbs30xyUPwN3+W9gETYwg4celB08BZX6fnieHH7Sy
	 1xLUSfIgqRM06JdnTS8i7U7klg4UuOEs0U6CnoNgsieCqmoH4eP+Rey0oScBlw8JJM
	 T6+yvKP6Kb1QaatIHckvEjijOO6vZO+VKu/lv78HOM3pzxanIjzQzwa1LgcCk7vqwd
	 HfZZpT2n/qzFQ==
Date: Sat, 20 Sep 2025 23:05:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>, coreutils@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <nry5d4nhpdnujv63wyzxvuwkowzladgeqvjcqpm5yubd6p6xn2@qhce56dl465s>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
 <jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
 <87o6r4zy73.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ceine3zv3isqxfzf"
Content-Disposition: inline
In-Reply-To: <87o6r4zy73.fsf@gmail.com>


--ceine3zv3isqxfzf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>, coreutils@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <nry5d4nhpdnujv63wyzxvuwkowzladgeqvjcqpm5yubd6p6xn2@qhce56dl465s>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
 <jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
 <87o6r4zy73.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87o6r4zy73.fsf@gmail.com>

Hi Collin,

On Sat, Sep 20, 2025 at 01:05:52PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Hi P=C3=A1draig,
> >
> > On Sat, Sep 20, 2025 at 06:01:21PM +0100, P=C3=A1draig Brady wrote:
> >> > > All of the man pages have links to the info docs for full document=
ation.
> >> >=20
> >> > I know.  However, many users don't enjoy the info docs.
> >>=20
> >> I my experience user don't enjoy the info _reader_, while the docs are=
 fine.
> >> The full docs are on the web though and also linked from each man page.
> >
> > Yeah, the info online docs are much nicer.  However, I (and others)
> > don't enjoy going online for documentation, when offline documentation
> > is available.
>=20
> I wish distributions installed the HTML docs to
> /usr/share/doc/coreutils, or somewhere similar (and substitute package
> name for other packages). The gnu.org site is down or takes ages to load
> frequently nowadays.

While having offline HTML docs would be better than having online docs,
I really prefer something I can read comfortably from the terminal.
man(1) is really comfortable to find and use documentation.

And if I want to sit down and slowly read documentation --as opposed to
just consulting quickly a detail--, I can read it as PDF with pdfman(1),
which has essentially the same command line interface as man(1), but
opens the page on a PDF viewer.

> That said, I have seen complaints about the Coreutils man pages being
> "incomplete". However, it is grown on me personally. I use the man pages
> as a quick reference when I want to find an option or understand what it
> does. And the info page for examples and/or commentary that is too long
> to reasonably fit in --help.

I personally would remove documentation from help, and only print a
usage line.  The user is welcome to read the manual page for consulting
the documentation.

This is what I'd use in a command:

	Usage: foo [OPTIONS] FILE

> Writing all of that in groff would be a pain. More of my time would be
> spent understanding the syntax than it would be focusing on the content.
> Texinfo's syntax is much more readable and easy to remember. And the
> HTML and PDF output look nice to read.

I volunteer to maintain the man(7) source.  To me it's quite
comfortable.  When you get used to it, it's not bad.  The syntax is
actually quite simple.  You don't need to learn the full roff(7)
language; the man(7) macros are quite small compared to it.  mdoc(7) is
much more complex than man(7), for comparison.

The PDF output of man(7) also looks nice.  Please have a look at the
PDF book of the Linux manual pages:
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-6.=
15.pdf>

Or you can read single-page PDFs by running pdfman(1), which some
distros already package, or you can find pdfman(1) in the man-pages.git
repo (it's a shell script).

HTML is not yet good, although groff maintainers are slowly improving
it.

And the build system of the Linux man-pages has a lot of lints to make
sure the man(7) source code is of the highest quality, apart from also
helping catch easy mistakes.

> I guess Markdown or reStructuredText would be more friendly to new
> contributors since many do not know Texinfo. However, I haven't seen
> good PDFs generated by them (though I concede that I very well could be
> unaware of examples).

I doubt Markdown or RST would be good for quality documentation.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ceine3zv3isqxfzf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjPFxkACgkQ64mZXMKQ
wqmXZA/8CnGRcvSywYLimlbQmnq411qVGyas4uGBlWs7RbD1W4pbAjDA1WOAGt7U
YPBSVXAvzUyaQJCruB+P0oOeArE31rgUQagIhSpaAK+ekFJjjXMD6Zfx2OMkNh+6
yV3vcWBOwteqUr6L9HnKrdg0bGT0NdTP83/RrLe5mPF6hLn0zF4be+23Loja92mg
qH4FRV79RhukCJv1Wey3mrYRDZ4WjRDbaiorQHmiAnuJNElUJf4UOCEo90C4+XYR
mNUnMOUHzkWKJIbhD9gUjMdsqYC1u8mIzWzEOSSHnhquEqhl6NGbK+wADaTPitle
QWyRXghWTixOo1MsURAS9oOKCmqIyd+StstdEbid+62OhZ1B06q864GnAF8/BCct
iQiq9oGs8NxTKFTUQ4uaAXLt2b7p5lQtBfVh0xZXD3TU+PATrKbRqi4htkW13lrU
lM24wHNmGQoGwL3jdJHebkn+JEPihscy2FNLInmKcnWXMO5pPl8AdJjQpKX+t0/d
b90z2Lsn/JqhubIfoaZ1u7PRWL7pinCLc+pFlAd9VJHf7H/MNdqr5HtZ94zklceq
3DE4IEbyWKydh1r0Hm/pf7go5ZpYE6cd3HPSWLs3I0fMq8sSfG+bJlKcfttVn2Of
kKrvri5pZ71Ah4v+tGF4oANY9qcr9XEhtWc1/YL5TCcbr7zofPw=
=m1qM
-----END PGP SIGNATURE-----

--ceine3zv3isqxfzf--

