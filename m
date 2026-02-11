Return-Path: <linux-man+bounces-5112-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAd4FnCHjGmHqgAAu9opvQ
	(envelope-from <linux-man+bounces-5112-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:43:12 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C3914124DFD
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5F259301475F
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 13:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9496B287265;
	Wed, 11 Feb 2026 13:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBBQxWvP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5854D191F94;
	Wed, 11 Feb 2026 13:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770817387; cv=none; b=Qp2OgXklh9OsZIvvZUYoLX65FxEyR5Xd2r16XD2qeW8BFARVy1m8HW4p9J8meBIF65dWRJ9py4WoA6tEwy7PP+ZUDItzOAExajOWQczpisIFJKhJXkdmyOAjUuC6SkpPu4Uy7CwSbibC2qMvXaVC2L7AxM2SbkzSou8jAkDpZ/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770817387; c=relaxed/simple;
	bh=rY7k/jfLnHX1EgXcp7pZxKu13oHQf/obv0PCxyZ3Z3s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TVmPTdzsS2WkrQB4tv2JoXTjmaXw13ZDFZBylvMUVtKVJeSaGLbejS2eSH/r8COnZ//UzbqMNiBzYb3iKBxP5lxQkmqmmss5Ugv52FfUoPSRAxgB90Zol9rkPYyt+iiTRpb6VhmyPSXdJISxgRELsgBBBmsdq4L5Iutv5NLgnZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBBQxWvP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4423C4CEF7;
	Wed, 11 Feb 2026 13:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770817386;
	bh=rY7k/jfLnHX1EgXcp7pZxKu13oHQf/obv0PCxyZ3Z3s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MBBQxWvP2btKVpvr23qSRuk1vDX0iCGCJiFXhU7warpV8WSjC51UG6iCnLeRRcSB7
	 Sil1jdG4yBBakKoDbdLWMp2H4ykIw1YRgWBf0yCEiOM98S8ya3dwpx4qgzeQqsuu2X
	 FBSnah1B80dZo50ey7p58He0nbWQAF6O2tp0iof9XgAwbUZDqPgQVxOFeSSXAUkzrw
	 frmgw9i8+AgMIpfI88VMcpNcB89h/d1ijZsmdXKP1mUSHbH6kD4Tp3o82CZ8t4LWHv
	 kf+4x+llYDCOUyuwi/pf/+ptZWC5+jIzQFUNOjihnhwRKWDMOh3eindKhcWlXtLW0Q
	 cDkSwPn2bPjYg==
Date: Wed, 11 Feb 2026 14:43:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 02/10] man/man2/statmount.2: Document
 STATMOUNT_MNT_OPTS
Message-ID: <aYyGsFC5xew1S5MW@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <ece6d92155a289a30e316ff0c52bb279ec9f1186.1770671863.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5p3l3hujhjjpoqlj"
Content-Disposition: inline
In-Reply-To: <ece6d92155a289a30e316ff0c52bb279ec9f1186.1770671863.git.b.sachdev1904@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5112-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: C3914124DFD
X-Rspamd-Action: no action


--5p3l3hujhjjpoqlj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 02/10] man/man2/statmount.2: Document
 STATMOUNT_MNT_OPTS
Message-ID: <aYyGsFC5xew1S5MW@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <ece6d92155a289a30e316ff0c52bb279ec9f1186.1770671863.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <ece6d92155a289a30e316ff0c52bb279ec9f1186.1770671863.git.b.sachdev1904@gmail.com>

Hi Bhavik,

On 2026-02-10T02:47:35+0530, Bhavik Sachdev wrote:
> Document STATMOUNT_MNT_OPTS flag and the corresponding field introduced
> by it.
>=20
> STATMOUNT_MNT_OPTS is used to get all mount options on the mount
> separated by commas. Similiar to how they are displayed in
> /proc/[pid]/mountinfo.
>=20
> This text is based on this commit [1].
>=20
> Link [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3Df9af549d1fd31487bbbc666b5b158cfc940ccc17>
>=20
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> ---
>  man/man2/statmount.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index f5c4da122..fee37069a 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -31,6 +31,7 @@ .SH SYNOPSIS
>  .P
>  .B struct statmount {
>  .B "    __u32  size;"
> +.B "    __u32  mnt_opts;"
>  .B "    __u64  mask;"
>  .B "    __u32  sb_dev_major;"
>  .B "    __u32  sb_dev_minor;"
> @@ -108,6 +109,7 @@ .SS The mnt_id_req structure
>  STATMOUNT_MNT_POINT	/* Want/got mnt_point */
>  STATMOUNT_FS_TYPE	/* Want/got fs_type */
>  STATMOUNT_MNT_NS_ID	/* Want/got mnt_ns_id */
> +STATMOUNT_MNT_OPTS	/* Want/got mnt_opts */
>  .TE
>  .in
>  .P
> @@ -159,6 +161,13 @@ .SS The returned information
>  structure,
>  including any of the strings fields that were filled.
>  .TP
> +.I smbuf.mnt_opts
> +The offset to the location in the
> +.I smbuf.str
> +buffer that contains a comma separated list of mount options,
> +similiar to those in /proc/[pid]/mountinfo.

The path should be marked up:

	.IR /proc/ pid /mountinfo .

Though you may want to refer to proc_pid_mountinfo(5).


Cheers,
Alex

> +It is a null-terminated string.
> +.TP
>  .I smbuf.mask
>  The ORed combination of
>  .BI STATMOUNT_ *
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--5p3l3hujhjjpoqlj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmMh2YACgkQ64mZXMKQ
wqlihQ//axG23wFzS8eY2QBhIdCrxU1gGKqXKBKf3oD6pCBt8EUzTSIPwsxdEQc+
Nqsscf2IJfNSXy0pGenvq//AGwyh/TOvF0whoh3biU+yhFkRGt8uA0nwVwamViGx
vj31nUEbfZ9irE7aiygGVep4JhaTLI/zj3wWOnZf/RnI2Xd9MbAn51TKLtArbQwq
zb3OjCEhodmfCvJWma8EYKOYB11ZDIlvh378RcXy2ltEu3oUQbnQxxVE5mCN13Nb
5U+TPN7ZXyaTel5QhXRkIWw0k6tfBusR9lokSXK0XSc1R/Rdwx1thHOe/SiV9qwf
5bd15b9rwv+163Ww8gWo+47o7fWg5bFWIraYu2eRg7J3/HuIPEl2gfNIgebjEjjb
azsyNGBdLNQz6huAG3/RwCtcKBmoGwnrc3Q6oeNsxUDSI352rHtetslBYclKsdoE
8gT8dU5sQwhfQGzHYFTHHdR53d5Wz8tcV+PEp7u28iGGlmz2KAvlDM+Wyaw4JXHh
y3tzei1Ky+GEtn6lwc+nmrM6L/gez+XDpdYQHj7AMV7R74u9klrFH/b2EvXCr0rx
+W0XrkfWGJTz3PZRGx+sXjCPcx92LNZeSbNNKHeZDZrwYLAV5Nnr1iPg3UPws3WP
4FPW6sWEXfBaGnE1HUnHSweUNhL5a7/kFeoukzgBETqCPC7RHOo=
=xt8/
-----END PGP SIGNATURE-----

--5p3l3hujhjjpoqlj--

