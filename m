Return-Path: <linux-man+bounces-5338-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMRAFCYf4GkPcwAAu9opvQ
	(envelope-from <linux-man+bounces-5338-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 16 Apr 2026 01:28:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 96694408F02
	for <lists+linux-man@lfdr.de>; Thu, 16 Apr 2026 01:28:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8BA7E311EC72
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 23:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2486E3939DA;
	Wed, 15 Apr 2026 23:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKOrhKF8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AB43939A6
	for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 23:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776295602; cv=none; b=LvLXP28Kf3vWCL+JgB4WpZXbFb69Yr+QXO9xlIhrDHH6rUnjrX6QzFTlKQX6lYcRwGiREB6IJ+2vGDGPjs1urQV6x1knQm1R+fRB2PsfWsEBo9RSvfa2U8646dC8AAcEVjSLjZXaKGur0zn5RDE+0L7Ytroqfi1r+H7CWRlkTjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776295602; c=relaxed/simple;
	bh=Fq4Kyz+mt63z+us5sF+b43znuQY8x6z8m4vzGQPe2zA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a0R/B/wWm/pdrAaQp2I0c6sPBB0tdgDf5e+zGIMLPdapO8XYO8xc6NzH8su2xYjmtTJUBTzFDjnMquiQToicPmrGGJWZZHvXW3H/LgxPbxhaJr2J+CXrnlG0Podz8qqSAeqLIIIvTvzMqkxKKFtZkxKfdA6nU+5g1rrW2/QMyQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKOrhKF8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EBFFC2BCB5;
	Wed, 15 Apr 2026 23:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776295602;
	bh=Fq4Kyz+mt63z+us5sF+b43znuQY8x6z8m4vzGQPe2zA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bKOrhKF8S1aI8zLWH9t33SnaDRxq9k7n771tPDsFRq8+DROVMb3qhCO/o80TvNYeA
	 JRKc5IE69YI+ANwtN9qzaDOqiu9/w/8TRZgs906akjv7Me/3QGQKnJ157yD6Hhftjn
	 bwmKiHyCTMDY2D5GjTMmR7jX5MlcnAhPdA5od0FYcYgAQVSj/iw7KKjW1j51gp6knO
	 g4v4qgaZFz7SJ9ZvbcurwX7NFICesgL6Kl4BvT6uCELvkoYdtwaQlnOkWNxRPKCYWZ
	 9kzEoA2Y1U+uPhIUtfz4dxCb+F4IQ5JovbciFtcu5ZRJXR+7sfKxZnHGwc4mT1avEm
	 MdpBCgFxPKHBA==
Date: Thu, 16 Apr 2026 01:26:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dirk =?utf-8?Q?M=C3=BCller?= <dmueller@suse.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [BUG] typo in man2/readlink.2
Message-ID: <aeActTSkTKUvMSSW@devuan>
References: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
 <20260415182417.b6cvefbzk6ss3lmw@illithid>
 <CAN6Ha9YYK7jD6D-_eKhHQA0dT3kfkGZuka31Pg+ka=mzt+QtxA@mail.gmail.com>
 <aeADVnt6NpZ8qC9E@devuan>
 <CAN6Ha9YD1T41jTLDux_fwFGQnWEWKQfwPGUC54GrRRG5XXtXog@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p6ezmyl4anffxfmt"
Content-Disposition: inline
In-Reply-To: <CAN6Ha9YD1T41jTLDux_fwFGQnWEWKQfwPGUC54GrRRG5XXtXog@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5338-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 96694408F02
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--p6ezmyl4anffxfmt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dirk =?utf-8?Q?M=C3=BCller?= <dmueller@suse.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [BUG] typo in man2/readlink.2
Message-ID: <aeActTSkTKUvMSSW@devuan>
References: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
 <20260415182417.b6cvefbzk6ss3lmw@illithid>
 <CAN6Ha9YYK7jD6D-_eKhHQA0dT3kfkGZuka31Pg+ka=mzt+QtxA@mail.gmail.com>
 <aeADVnt6NpZ8qC9E@devuan>
 <CAN6Ha9YD1T41jTLDux_fwFGQnWEWKQfwPGUC54GrRRG5XXtXog@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAN6Ha9YD1T41jTLDux_fwFGQnWEWKQfwPGUC54GrRRG5XXtXog@mail.gmail.com>

Hi Dirk,

On 2026-04-15T23:57:12+0200, Dirk M=C3=BCller wrote:
> Hi Alejandro,
>=20
> On Wed, Apr 15, 2026 at 11:36=E2=80=AFPM Alejandro Colomar <alx@kernel.or=
g> wrote:
>=20
> > That's not what readlink(2) documents.  readlink(2) has a semicolon (;)
> > after the fisrt 'size_t bufsiz'.  That means it's a forward declaration
> > of a function parameter, and not a real parameter declaration.
>=20
> Ah, got it! Thanks for being patient with me. This made me realize
> what tricked me here (other than not being able to distinguish ; and ,
> on my particular terminal today):

:)

>=20
> In `man 2 strlcpy`,  or `man 2 strncpy`, and probably a few others the
> forward declaration is in "regular font" not in bold/highighted color

That's correct.  We call it Roman font, BTW.

> for the type.

Both the type and the identifier should be in roman, actually.

> for 2 readlink the forward declaration type is bolded.

I can't reproduce that in my terminal.  I see the forward declaration of
the parameter in readlink(2) also in Roman.

> I derive a visual clue from that to scan for the argument types.

Yup.  The commit responsible for that was:

	$ git show 8eea66b8 -- man/man2/readlink.2;
	commit 8eea66b827a11bc8983da517499cc236c6cd97ba
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   2025-06-06 13:27:02 +0200

	    man/: SYNOPSIS: Don't highlight forward declarations of function param=
eters
	   =20
	    Previously, many people confused these for actual parameters, since it=
's
	    hard to distinguish a ',' from ';'.  By removing bold/italics from
	    these, it will be easier to distinguish them.
	   =20
	    The cases have been found with a script:
	   =20
		    $ find -type f \
		    | xargs grep -l '^\.TH ' \
		    | sort \
		    | xargs mansect SYNOPSIS \
		    | man /dev/stdin \
		    | grep -e '^[^ ]' -e '[^ ]( [^ )].*[^)];' \
		    | less;
	   =20
	    Reported-by: Mark Naughton <mnaughto@redhat.com>
	    Suggested-by: Mark Harris <mark.hsj@gmail.com>
	    Acked-by: Mark Naughton <mnaughto@redhat.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2/readlink.2 b/man/man2/readlink.2
	index 8e543851..b6c663cd 100644
	--- a/man/man2/readlink.2
	+++ b/man/man2/readlink.2
	@@ -13,14 +13,14 @@ .SH SYNOPSIS
	 .nf
	 .B #include <unistd.h>
	 .P
	-.BI "ssize_t readlink(size_t " bufsiz ;
	+.BR "ssize_t readlink(" "size_t bufsiz;"
	 .BI "                 const char *restrict " path ,
	 .BI "                 char " buf "[restrict " bufsiz "], size_t " bufsiz =
);
	 .P
	 .BR "#include <fcntl.h>            " "/* Definition of " AT_* " constants=
 */"
	 .B #include <unistd.h>
	 .P
	-.BI "ssize_t readlinkat(size_t " bufsiz ;
	+.BR "ssize_t readlinkat(" "size_t bufsiz;"
	 .BI "                 int " dirfd ", const char *restrict " path ,
	 .BI "                 char " buf "[restrict " bufsiz "], size_t " bufsiz =
);
	 .P

> Is there a particular style preferred? Either strlcpy/strncpy needs to
> be also doing bold for the forward declaration or readlink should be
> changed to not be bold on the forward declaration.

=46rom what I can see (both when reading readlink(2) and strncpy(3), and
reading the diff pasted above), readlink is in Roman as expected.

If you can reproduce the difference, please share the details.  Maybe
there's something wrong that I'm not seeing.


Cheers,
Alex

>=20
> WDYT?
>=20
> Thanks,
> Dirk



--=20
<https://www.alejandro-colomar.es>

--p6ezmyl4anffxfmt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmngHqgACgkQ64mZXMKQ
wqlBzhAAozFuWVTsmwxFJB0PqUOFl1pPUxZoEU03aKIKA5zAqo3GRJGwLdgkw0EF
jelU4kzFbIDqfsMdd9/uv5bjUoeDWWk34lpTe1eu+/HM9hLXAjXLWU9Y3tiPBg7e
A4xY3KD/M5pd9pGP7hV/eHjIGjleZTiyPNBS8aOybLBDdBUyqGB3Kd+0Z7O4XOh5
fLNFwBs2NdRXOD99dQo/6VnHpo0OsixMF1Mfctq4xe+ZYbVD4BLqU4KdS5kIJ9L3
ilJnSoQSZyCzBomviinkrpLruDa5QbdapoMUp9nERA/vnftYwLiFhpTri+7RMWga
JGQge3kjGmg7u/JgpbN21Pmg0QK2cg2fwyddjBsO2/y9Szt6a+aLeqyLvN+e6Ef5
bkgiUjDj2Jei039Ytz/+PN6qBoSPVQJ7nTA3DgUskPC7/3LlUdkMdr/Dsq1jDzBd
pj7YFr+q+TlnOEqESv5RR649kEZNi3c6Oesy7O1BdMLaYfoDJJLzN/9oArZ38Pu7
2nb9sIuFz4+E9/syKdZThZPHe2Nfv1gA2NB5//Rnaj3ZE6tAYyJcuL58nuEiD18L
w15H+BdLIui0dnajWikn7APyj0gk/0ckkT9Y1X7aKJk8J8tBSwcEu4RVer0vgqwS
prqghZdbKtFX07rJcQV2mOXJylvSaCpLvvKHlXgNwHSrQfHMmM4=
=ZyTu
-----END PGP SIGNATURE-----

--p6ezmyl4anffxfmt--

