Return-Path: <linux-man+bounces-5559-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIgTBP+RC2ohJgUAu9opvQ
	(envelope-from <linux-man+bounces-5559-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2026 00:26:07 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A63A95746D5
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2026 00:26:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 19C74300380F
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 22:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16C7A3ACA6C;
	Mon, 18 May 2026 22:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqqYrtPY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7DD3AA517
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 22:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779143164; cv=none; b=GUbg5aD/E9VQIlxcPi1U4Ufv1FFIY+cGx84dPK5dsxsJp4twcSP38s4siWnA1BoEWRlYmlbhbr17OFyrmy68f7FbDpXZ4/D8F5VVPrwaQTN5r6RUngqbv3VCuo9+aOhmFNdpIMvVra22BQXKk1alyAS8gCKSc+JJG4+YPmlEjkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779143164; c=relaxed/simple;
	bh=9pbK0XhcQ+yakCxTbgU+kx4/lt7IELrVR3LNe5H8zbg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PoxZVMBApAQw/ZBe0NSS3rrQlx77dOjV/Kz/08CGqOpBBspL/Y9uMTuZQwAp8jXkUoX56FS7OO5pPv3lQyvVhX3TTaokLYWfQlOUlQR5YczOT2DUemVU254XRak3hNlWBI1lxMVMHZBQQw+suecieJD0r9k28YDT3qZaCqdcovA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqqYrtPY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25941C2BCB7;
	Mon, 18 May 2026 22:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779143164;
	bh=9pbK0XhcQ+yakCxTbgU+kx4/lt7IELrVR3LNe5H8zbg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OqqYrtPY/0X4hzh8wBHaDe63p4CfOtQ+Ip224R9KoFdk76/08iUZ3gCiYFgve53b9
	 z2b+UvZfzDbGYQSv2VKqUBgeWIfyQeKvXSAxpBbFVqTS4D280izEDYx/xq62if1yv+
	 0Xk7ZDfaRljKbBbxhlcnk9pL9yNQX7MKTwH9axUSo5/B4l++fOeWbVnuC/wjdIRQ2i
	 +iSMaci+J1Il7CJHRyXJkMJZPqvJaJ187n0Tn0vHwlG3pqlF3XHWyDH+hw0VyX6ctY
	 bA/mWdOd3UaON8AOb2sFa3v8BXkOq0WBi5BBnkF8R+Ft1MAcbpMGG3oZgDuxMQiWkm
	 yrfPYAUsNAQfg==
Date: Tue, 19 May 2026 00:26:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Tycho Andersen <tycho@kernel.org>
Cc: funsafemath <funsafemath@proton.me>, linux-man@vger.kernel.org, 
	Tycho Andersen <tycho@tycho.ws>
Subject: Re: [PATCH 1/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_TSYNC_ESRCH
Message-ID: <aguR0Zb5E9R7k2RK@devuan>
References: <agjZM97qL3w4JZBX@nix-mail>
 <agjag_tIzuKpME-B@devuan>
 <agscUq8v8623uLMb@tycho.pizza>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l465mutqmw7ycwhl"
Content-Disposition: inline
In-Reply-To: <agscUq8v8623uLMb@tycho.pizza>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5559-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: A63A95746D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--l465mutqmw7ycwhl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Tycho Andersen <tycho@kernel.org>
Cc: funsafemath <funsafemath@proton.me>, linux-man@vger.kernel.org, 
	Tycho Andersen <tycho@tycho.ws>
Subject: Re: [PATCH 1/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_TSYNC_ESRCH
Message-ID: <aguR0Zb5E9R7k2RK@devuan>
References: <agjZM97qL3w4JZBX@nix-mail>
 <agjag_tIzuKpME-B@devuan>
 <agscUq8v8623uLMb@tycho.pizza>
MIME-Version: 1.0
In-Reply-To: <agscUq8v8623uLMb@tycho.pizza>

Hi Tycho,

On 2026-05-18T08:04:40-0600, Tycho Andersen wrote:
> On Sat, May 16, 2026 at 11:38:48PM +0200, Alejandro Colomar wrote:
> > Hi,
> >=20
> > On 2026-05-16T21:53:17+0100, funsafemath wrote:
> > > Document SECCOMP_FILTER_FLAG_TSYNC_ESRCH flag, which allows to
> > > use SECCOMP_FILTER_FLAG_TSYNC and SECCOMP_FILTER_FLAG_NEW_LISTENER
> > > flags together by returning ESRCH on synchronization error instead
> > > of the thread ID.
> > >=20
> > > <https://lore.kernel.org/r/20200304180517.23867-1-tycho@tycho.ws>
> > > ---
> >=20
> > Would you mind signing the patch?
> >=20
> > >  man/man2/seccomp.2 | 15 +++++++++++++++
> > >  1 file changed, 15 insertions(+)
> > >=20
> > > diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
> > > index 75c7b2d58..0729a653c 100644
> > > --- a/man/man2/seccomp.2
> > > +++ b/man/man2/seccomp.2
> > > @@ -241,6 +241,21 @@ .SH DESCRIPTION
> > >  .B SECCOMP_MODE_STRICT
> > >  or if it has attached new seccomp filters to itself,
> > >  diverging from the calling thread's filter tree.
> > > +.TP
> > > +.BR SECCOMP_FILTER_FLAG_TSYNC_ESRCH " (since Linux 5.7)"
> > > +.\" commit 51891498f2da78ee64dfad88fa53c9e85fb50abf
> > > +Return
> > > +.B ESRCH
> >=20
> > I expect that in user space, we'll see -1 in the return value, and ESRCH
> > in errno, right?  If so, we should say "Fail with ESRCH ...".
>=20
> Yes, exactly. Probably worth changing the wording in the commit
> message as well.

Thanks!  I've amended the commit message while applying v2.


Have a lovely night!
Alex

>=20
> Tycho

--=20
<https://www.alejandro-colomar.es>

--l465mutqmw7ycwhl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoLkfgACgkQ64mZXMKQ
wqlR5RAAiTiX5BTS5qDYg4suvneG1Db5aOHyb7OWQLQj6oGaMPd/MDfzPej07mMn
OasRGr2ZKZGrUHkBcOkTtdVPX9oa/V9dY0oFNJayMwr/J8D0/rNZLxYlZ7GYxCCw
NayyHIeHhW4Hx1Ytxkl0MvAa9U7LrRplenvami+8Z4A4SlCZZ9E/0gYuqhjiC4e7
qL8bRz/l0Mtn5tqQGDBTBQib6JarmHcYJPDdbvVeZTqrVpfXIT5tavkoh0WCuvwN
e5Sh0qBgS4HY2YZn7iqOw6ZvpDvhc2i3bNMrpBytoyDny8EgOzsGK2Fx+hPLCwaE
Kq8SFT5MAqP96p2eVvc9W33AHJedQqCF7assWaQLHyl+Lzk9Gttdz9dHPKoU2VMB
FlKUwp6pCHzmvoXVJzBksUQwIOQpEg1YYJrVw7/4EUWxGBI7+nXqKuTM8lCXAi84
Y5gs9QJYy873WQCAxyruutOgPN2r8DJ8FY4WhPZ4UQibS3KblgW0q4QXcidn9YPy
T1wy21sAVvHOr0urYfNRg9AS5HnDE5DA4IJj8aajd5tuJmCVt+SO+yEoLQwkLMao
A0OguIRVmYjbVijJsaizPTqUdg/Cgzv3SJ9voKLQgtwLltMMVk74CVbrBnurIf0W
6WAVgLm3H6nvWPHthwhD8V4FX69GdyNdtUBtDtgLcjooX9P4fyE=
=u21w
-----END PGP SIGNATURE-----

--l465mutqmw7ycwhl--

