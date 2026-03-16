Return-Path: <linux-man+bounces-5263-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ge7CD/BNt2nFPgEAu9opvQ
	(envelope-from <linux-man+bounces-5263-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 01:25:20 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFEB2931C7
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 01:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 14C08300461C
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 00:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49241E4BE;
	Mon, 16 Mar 2026 00:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCrc5EOu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A1DEADC
	for <linux-man@vger.kernel.org>; Mon, 16 Mar 2026 00:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773620712; cv=none; b=GfraGAfD669TB072ae2pT4RSPGZl7HsCINNU8CfcTF+HiQVdbSCULWQGmBCzVuxJ0mw5YkPIjLZWyodjSW6SxdgnHF2dUpqzrSRT6djXUdO6MVmmVhs6gPELPCnFYlFQLjOwWumboAJn4WswIiRoGVuoJnFsxYBv449LV1mSRio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773620712; c=relaxed/simple;
	bh=s52oT32u+hwCqqwkZYqnyNkzzKP23xygkXQ3S33LtX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Px4Rf1sBTreJ5k3bhGFEHWCzatg1QyLjVM575gk3c6cWOSVmq8QSH0MoBaznSwbsiiM0fG2DYvH1rYJfANuMKAw1WLmNxn0Au8p9tCbY6H3GOfvioAH6gvi7VQ5MBDSt4vKMu2gzioT3tErDpWH2Hsq869VrakIsEXEbkrVv10k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCrc5EOu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F2E9C4CEF7;
	Mon, 16 Mar 2026 00:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773620712;
	bh=s52oT32u+hwCqqwkZYqnyNkzzKP23xygkXQ3S33LtX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rCrc5EOuP/5U5+nB4hfIOCb/TeeRPu/vlc7h5DvBijQq/vtXmlRp1G5irnjlnrJ5P
	 u4Khhf/WG5OQai1VbZC3tLCBo/8eiJZdf4Aokl0m48yEgfu24grCtdnMKnfqq0nlCB
	 Ah5iw/kWi/mNqOekIpNvc2BZAnUcIbqoJjnAQcaBolzPO18X0JAKycVdxVAxYZxSko
	 ZDLYo1WGyei8rV9ycZKeAvWawAWXnFl47k4pqprAGHQmJkEVOjbZk0WGWOijGcHdM3
	 ImTpl7N94jm46nRmbipLErfh4xrZG1YXwqVy5wqDtXcgEOiHQvMivxG5qkkH8jtA7j
	 cUtFbok00QPgw==
Date: Mon, 16 Mar 2026 01:25:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ben Song <bensongsyz@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/strcmp.3: replace equal/less/greater words
Message-ID: <abdLnYA73AoL6e3P@devuan>
References: <6385edaf0e1f056ac12df9b42c71fad48364b5a2.1773150610.git.bensongsyz@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w4gnfo5prg6mn6gf"
Content-Disposition: inline
In-Reply-To: <6385edaf0e1f056ac12df9b42c71fad48364b5a2.1773150610.git.bensongsyz@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5263-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 2FFEB2931C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--w4gnfo5prg6mn6gf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ben Song <bensongsyz@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/strcmp.3: replace equal/less/greater words
Message-ID: <abdLnYA73AoL6e3P@devuan>
References: <6385edaf0e1f056ac12df9b42c71fad48364b5a2.1773150610.git.bensongsyz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6385edaf0e1f056ac12df9b42c71fad48364b5a2.1773150610.git.bensongsyz@gmail.com>

Hi Ben,

On 2026-03-10T21:52:48+0800, Ben Song wrote:
> There is no meaning for one string is `less than` or `greater than`
> another string, but the value of a character in two strings can be
> compared.
>=20
> Signed-off-by: Ben Song <bensongsyz@gmail.com>
> ---
>  man/man3/strcmp.3 | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/man/man3/strcmp.3 b/man/man3/strcmp.3
> index 2784d51c8..bc238aec1 100644
> --- a/man/man3/strcmp.3
> +++ b/man/man3/strcmp.3
> @@ -23,11 +23,11 @@ .SH DESCRIPTION
>  .BR strcmp ()
>  The
>  .BR strcmp ()
> -function compares the two strings
> +function compares the characters in two strings
>  .I s1
>  and
> -.IR s2 .
> -The locale is not taken into account (for a locale-aware comparison, see
> +.I s2
> +one by one until characters differ or until the end of one of the two st=
rings is reached. The locale is not taken into account (for a locale-aware =
comparison, see

Please don't go past the 80-column right margin.

Also, use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | awk '/Use semantic newlines/,/^$/'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

>  .BR strcoll (3)).
>  The comparison is done using unsigned characters.
>  .IP
> @@ -39,16 +39,16 @@ .SH DESCRIPTION
>  .I s1
>  and
>  .I s2
> -are equal;
> +are identical;
>  .IP \[bu]
> -a negative value if
> +a negative value if the value of first different character in
>  .I s1
> -is less than
> +is less than that in
>  .IR s2 ;
>  .IP \[bu]
> -a positive value if
> +a positive value if the value of first different character in
>  .I s1
> -is greater than
> +is greater than that in
>  .IR s2 .

I think I prefer entirely removing this list.  We should defer to
memcmp(3) for the description of the way the comparison is done.


Have a lovely night!
Alex

>  .RE
>  .IP
> --=20
> 2.53.0

--=20
<https://www.alejandro-colomar.es>

--w4gnfo5prg6mn6gf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm3Td8ACgkQ64mZXMKQ
wqk1Dg/+KK19IPKn6OtA0BuFvBWZ2FgfLdgfgMoR4CnsdR3q8dyEdosUKg3cr7CZ
OSKjkKfB/FbCDwVCVdovuh/ZY9ctw5fWe9jZ18DyUrymt5AZPaQFQGD6tIyNBNJT
8TqZrQJbp007eZTESGAMDHgOF5AYnEk1YoCdm0a0iTQ8ABJBpP7apOCcRgzZVVWm
cLmNGT1R6aNgBnD/hbwyD7rI3mU6K5/E4QoIc621dQSncquWahX42mlmsnCbvjjn
hO3+/9UqlofLTYF4lCWYd4ZJm7EzRx/ofcfTTWOf5ywTUCKUVO9mfLL1svtq/olF
zbpIcGJOuR/2Mp2vfZLcCoVu6BbSnYbT3/Yc6pTFHMpzNSYoAQocEIYEz2gxpd5O
ZbndJqIhZMzMzSuSpVb7tr6KDT7WwWjbqLgUCRsVAwcLu1vuBhc3v5qTTLmn5WM3
LjuDViHVmDEV7Y/jgP9NR838EpXtSjxYVTRO3/YomTVJ1UreRK3OHaKVH1V+xVar
wN7azX+CXBd0/HWMxOs147vIfSxFrt6Gtjzp5pk25QSnCsDZWffE3ZtQgTrh0WVr
EJLxleduen+SLXGh29PGPFz+ch03q9RtYHD/d/92JGB8n3OfJGIWo/VtlOAvmF9Z
KScZY9GeA/z/OSg4eSpB7Vdr9hpRYTY8F3FEtzf+BSFQSFp/eI8=
=vpJ4
-----END PGP SIGNATURE-----

--w4gnfo5prg6mn6gf--

