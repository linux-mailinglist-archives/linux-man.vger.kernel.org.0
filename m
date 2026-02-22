Return-Path: <linux-man+bounces-5203-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qiCRNaJ6m2mq0AMAu9opvQ
	(envelope-from <linux-man+bounces-5203-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 22:52:34 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6C717083C
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 22:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 612FE300D45D
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 21:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B197C35B65E;
	Sun, 22 Feb 2026 21:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCMKcCZJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7451F1C3C08;
	Sun, 22 Feb 2026 21:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771797151; cv=none; b=bk8qz+KyIrND4YGkMV+1oZJ/m20/tZXQ4xoH1vKjpMCokVnE3cDADcNiMtt07V2ywo20XhkRKXgJFcWPV2KGWLBlzdblYzIPZGZ/+ma5U6aoWjVmIZ30gL+32j3VmTe+vzRXpUf+SPwwt41pp4WGYMp3LzI35RI7gr1frNM9sIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771797151; c=relaxed/simple;
	bh=SF70OoymdyKEQQOV9Adb3hKkpiTLkeZNUdYXK2olfD8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tJWes47O725kyju8jCoOdAvdQPYFOVpPQVKnIISxi6rnAP6tg//jAYWoVPEuEGQoXGbPLM9aj8IZq1Fc5LgSxNvRd9o9tV2d8Z+oltVhsy4VG6qNbzWus27kaNtidtH5nNRAZXlGMzgViD/UI+LfKoiT3TNVJ9JrrAjUHtVnZcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCMKcCZJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E951C116D0;
	Sun, 22 Feb 2026 21:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771797151;
	bh=SF70OoymdyKEQQOV9Adb3hKkpiTLkeZNUdYXK2olfD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GCMKcCZJFpa2G4YXSuRQgXvLih4TP7CjjtkRr+LrE/UpJ9PnMLL60CQeK4YZbiZKj
	 +dCBsE2BiVJae2GiPBHDysauZK6ho7qlOXd7fI3qijNJQlRGGvJ7zSFz5B0M5hskK3
	 LbGPTrn1oqgAQZjr8R4o8ZoEkPxLL3OTRWGBSN7kC1HkKpX2m5/rRVUHbB8qrMxO2R
	 7Z45UP+K0M1/tm/yOYP7bi+miZ/AmJZvXT/COgVJkqvfjAJVvAJ+1J621T1b8/ukW/
	 eBcbb5CMIhV7Q9sZsR+dwT+DO41KZcJnHGWfSxL56Rzx1ylhvZsggJ/C3/i1tGg5Tk
	 2/CE+E/H0O2Ng==
Date: Sun, 22 Feb 2026 22:52:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v2 00/10] man/man2/statmount.2: Document New Features
Message-ID: <aZt6WFt5uATpgPDY@devuan>
References: <cover.1771771560.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7vwsabrtt5fsxkqg"
Content-Disposition: inline
In-Reply-To: <cover.1771771560.git.b.sachdev1904@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5203-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 2D6C717083C
X-Rspamd-Action: no action


--7vwsabrtt5fsxkqg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v2 00/10] man/man2/statmount.2: Document New Features
Message-ID: <aZt6WFt5uATpgPDY@devuan>
References: <cover.1771771560.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1771771560.git.b.sachdev1904@gmail.com>

Hi Bhavik,

On 2026-02-22T20:15:50+0530, Bhavik Sachdev wrote:
> Hello Everyone!
>=20
> This patchset documents all the new features added to statmount() since
> the syscall was first introduced.
>=20
> I did work on the STATMOUNT_BY_FD changes and I have tried my best to
> understand rest of the features and document them.
>=20
> I have cc'ed the authors of all these new features, please let me know
> your thoughts.
>=20
> This patchset is also available on github [1].
>=20
> Changes from v1 to v2:
>=20
> - Appended Linux versions to document in which version new fields were
>   introduced.
> - Fixed formatting issues and wording problems pointed out by Alex
>   during review.
> - Reworded STATMOUNT_{UIDMAP,GIDMAP} to better explain the feature.
>=20
> Changes from RFC to v1:
>=20
> - Document req.mnt_ns_fd as well.
> - Fix all lint errors generated by running
> `make -R lint-man man/man2/statmount.2`.
>=20
> [1]: https://github.com/bsach64/man-pages/tree/man.2.statmount.v2
>=20
> Bhavik Sachdev (10):
>   man/man2/statmount.2: Document req.mnt_ns_id and STATMOUNT_MNT_NS_ID
>   man/man2/statmount.2: Document STATMOUNT_MNT_OPTS
>   man/man2/statmount.2: Document STATMOUNT_FS_SUBTYPE
>   man/man2/statmount.2: Document STATMOUNT_SB_SOURCE
>   man/man2/statmount.2: Document STATMOUNT_OPT_ARRAY
>   man/man2/statmount.2: Document STATMOUNT_OPT_SEC_ARRAY

I've applied patches 1..6.  They're in a branch:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dstatm=
ount>

I've done some amendments to patches 5 and 6, and the following ones
don't apply anymore.  Would you mind rebasing and sending the rest?


Have a lovely night!
Alex

>   man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}
>   man/man2/statmount.2: Document STATMOUNT_SUPPORTED_MASK
>   man/man2/statmount.2: Document req.mnt_ns_fd
>   man/man2/statmount.2: Document STATMOUNT_BY_FD
>=20
>  man/man2/statmount.2 | 176 ++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 172 insertions(+), 4 deletions(-)
>=20
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--7vwsabrtt5fsxkqg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmbepoACgkQ64mZXMKQ
wqlm7Q//f2HPHhPPmoO5Sn3sU3L4RmU5J2Uy7vqmglYQUmTX4Ljgq0ljlZm8t/2S
DeHMq5PJgXRKaO7det55O9rwojoDVAUM1wRYFFHDbns77GjFxTHfaNbabfv2Sooi
ubBJnGt80SVB+s7gGBXyc0ffVjRYWd3Bsfv+wtvosoFgN+Nz0oaMo2/3riixygw3
sI9BsA6Vl09WeqLk63jjaQd9AwXvSIYN0amgfqvd8iGl4XAYXqbVwSGO2ATb4nhM
fIp3nnl/p7YhtIdVLYNiUKvGOLWa+pj8DJnu0Uy17xMVblGZxR0AL5M+sUFQa9XF
QGzBgPqB6sk2cFW4dnmBtjcAKvRuNF8hVX7BTLAr2X6PMGMOiivB2CQJNgl6xj3E
MmDQRm2Jxb08RjO14CXDCmp7Ky3GtXbGQWU68YIMmhPbADRnAsLV+UWVmkHh1AeN
q06dMnXvaz4W3G9koIYYDgeoOOMs4EpkBpAnh4d/MD9RpTVgpb/I4g1917hHAzCa
5QlQCSTTl3xuZ9uiC0Lsn7lrqEVCLh8QgeWPirfaYm/ZRuyzGQWmws5FoVOie6+4
8NgnCO8lRfMMJ1DC0PTz85FLlcon9QW2tEWkoA4sVcMickbEx4pA1wpILos5qhAU
t1tIzRCZi8PBGtA5yrjJvLEVfONMZMpEohfSzEx9L0LFZZUFbf0=
=4Eyj
-----END PGP SIGNATURE-----

--7vwsabrtt5fsxkqg--

