Return-Path: <linux-man+bounces-5209-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GiuBEJ1nGmwHwQAu9opvQ
	(envelope-from <linux-man+bounces-5209-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 16:41:54 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F8B178E76
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 16:41:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 338D73043071
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 15:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBAE42F28E3;
	Mon, 23 Feb 2026 15:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUARRoqg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8892F069D;
	Mon, 23 Feb 2026 15:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771861267; cv=none; b=MZ4b+Nc4XU9LbfMqlm7Vx0aSIWbnZW4cAUMO+0CF3qxMPhr7E6W7YGiUX7sEjhDE03MIARF1MQRkoRAxk1QCtwwblpPAYGuvU8W9XS47V0NW4zMr6yKm5QNtTJGG5qrA5LM2hk2JvfMS66z9sjaVQRuTyShqCVbqxGGaEEtlRQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771861267; c=relaxed/simple;
	bh=11btOjK0KyQNr+q6Z6nUKNX9smucW0BikkWhbBHGsYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pJC79CGVDAgssocyKFDxlyHMU6bL6ZHPdIswo3Qhy450iHMfANt3fys6OKIAv/9gt3Zy9PgbM2vskcfqFDawHFN6uptD2D1ZfRonCdZjPj5Uuopn1fm3m1SnzY0RKEhkqhjgTavTEQ7idZfs/CkHAKkyZ0z9CDkYptqOiV5G79w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUARRoqg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35D55C19423;
	Mon, 23 Feb 2026 15:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771861267;
	bh=11btOjK0KyQNr+q6Z6nUKNX9smucW0BikkWhbBHGsYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WUARRoqg+EfGCKmmR4o5oC2UBOWUhDlla9Vbglcz3dMV0f98nU754c42Wh+l2rp5e
	 QkhSjIw9HNC5pqct6pxzHT17pGrV9cW+ua5biWSt9URahJv+q9j05Ji5T4ylUHyKb0
	 qpRoLX/vXSMlp3/XgTHgOzJ68xxcuK7Do2VQzdhqe8JIrvTQ1Xg/++whYdvYilLQ6T
	 cAiVMVYLAL9XlzckL7I5LNA6SwVLGfITQ/Km3tcTUYWtKvUL6g7QhubCEFVtB/xfRL
	 U5XXmlkrfiVKUEl7mMJUrk3kfBgSwb8Q9HLyRddihPwFqT2WRDDPLZH9k9pwRcVpfb
	 Db/nlffRPG6fw==
Date: Mon, 23 Feb 2026 16:41:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: avagin@gmail.com, brauner@kernel.org, criu@lists.linux.dev, 
	jlayton@kernel.org, josef@toxicpanda.com, linux-man@vger.kernel.org, 
	miklos@szeredi.hu, ptikhomirov@virtuozzo.com
Subject: Re: [PATCH v2 1/4] man/man2/statmount.2: Document
 STATMOUNT_{UIDMAP,GIDMAP}
Message-ID: <aZx02VGlW2GfBdce@devuan>
References: <aZt6WFt5uATpgPDY@devuan>
 <2c1e23c24b64c5466075dcf5d4ac1595c04b4139.1771855680.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="whomw5ydmgorp53w"
Content-Disposition: inline
In-Reply-To: <2c1e23c24b64c5466075dcf5d4ac1595c04b4139.1771855680.git.b.sachdev1904@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5209-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com];
	FREEMAIL_TO(0.00)[gmail.com];
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
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C8F8B178E76
X-Rspamd-Action: no action


--whomw5ydmgorp53w
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: avagin@gmail.com, brauner@kernel.org, criu@lists.linux.dev, 
	jlayton@kernel.org, josef@toxicpanda.com, linux-man@vger.kernel.org, 
	miklos@szeredi.hu, ptikhomirov@virtuozzo.com
Subject: Re: [PATCH v2 1/4] man/man2/statmount.2: Document
 STATMOUNT_{UIDMAP,GIDMAP}
Message-ID: <aZx02VGlW2GfBdce@devuan>
References: <aZt6WFt5uATpgPDY@devuan>
 <2c1e23c24b64c5466075dcf5d4ac1595c04b4139.1771855680.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2c1e23c24b64c5466075dcf5d4ac1595c04b4139.1771855680.git.b.sachdev1904@gmail.com>

Hi Bhavik,

On 2026-02-23T19:40:23+0530, Bhavik Sachdev wrote:
> Document the STATMOUNT_{UIDMAP,GIDMAP} flags and the corresponding
> fields introduced by them. Most of this is based on the commit message
> provided here [1].
>=20
> Link [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D37c4a9590e1efcae7749682239fc22a330d2d325>
>=20
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> Message-ID: <6146fa1d59006387ad7996f28f5651787125d956.1771855135.git.b.sa=
chdev1904@gmail.com>
> ---
> Hey Alex!
>=20
> Hopefully this is what you wanted!

Yup, that was it.  :)

I've applied patches v2 1..3.  I've done some minor amends, and patch 4
doesn't apply.  Would you mind rebasing that one?


Have a lovely day!
Alex

>=20
> Thanks,
> Bhavik
>=20
>  man/man2/statmount.2 | 38 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index f8d2302ef..f5a3721eb 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -56,6 +56,10 @@ .SH SYNOPSIS
>  .B "    __u32  opt_array;"
>  .B "    __u32  opt_sec_num;"
>  .B "    __u32  opt_sec_array;"
> +.B "    __u32  mnt_uidmap_num;"
> +.B "    __u32  mnt_uidmap;"
> +.B "    __u32  mnt_gidmap_num;"
> +.B "    __u32  mnt_gidmap;"
>  .B "    char   str[];"
>  .B };
>  .EE
> @@ -120,6 +124,8 @@ .SS The mnt_id_req structure
>  STATMOUNT_SB_SOURCE	/* Want/got sb_source */
>  STATMOUNT_OPT_ARRAY	/* Want/got opt_{num,array} */
>  STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec_{num,array} */
> +STATMOUNT_MNT_UIDMAP	/* Want/got uidmap... */
> +STATMOUNT_MNT_GIDMAP	/* Want/got gidmap... */
>  .TE
>  .in
>  .P
> @@ -302,6 +308,38 @@ .SS The returned information
>  buffer that contains security options separated by null bytes.
>  They can be iterated over with the help of
>  .IR smbuf.opt_sec_num .
> +.TP
> +.IR smbuf.mnt_uidmap_num " (since Linux 6.15)"
> +The number of uid mappings applied on the mount.
> +If
> +.I smbuf.mask
> +has STATMOUNT_UIDMAP set and this field is 0,
> +the mount is not an idmapped mount.
> +.TP
> +.IR smbuf.mnt_uidmap " (since Linux 6.15)"
> +The offset to the location in the
> +.I smbuf.str
> +buffer that contains uid mappings as consecutive null-terminated strings.
> +They can be iterated over with the help of
> +.IR smbuf.mnt_uidmap_num .
> +The whole range of uid mappings must be resolvable in the user namespace
> +of the caller.
> +.TP
> +.IR smbuf.mnt_gidmap_num " (since Linux 6.15)"
> +The number of gid mappings applied on the mount.
> +If
> +.I smbuf.mask
> +has STATMOUNT_GIDMAP set and this field is 0,
> +the mount is not an idmapped mount.
> +.TP
> +.IR smbuf.mnt_gidmap " (since Linux 6.15)"
> +The offset to the location in the
> +.I smbuf.str
> +buffer that contains gid mappings as consecutive null-terminated strings.
> +They can be iterated over with the help of
> +.IR smbuf.mnt_gidmap_num .
> +The whole range of gid mappings must be resolvable in the user namespace
> +of the caller.
>  .SH RETURN VALUE
>  On success, zero is returned.
>  On error, \-1 is returned, and
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--whomw5ydmgorp53w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmcdQ4ACgkQ64mZXMKQ
wqnnIQ/+JUhu8rL7tGtII0LQ1EmDK14eHzUKeXFV2GAKfYeywlrU+PIVLa8Ra+3F
y5+XFUwf17HJdEHir124CQOt2yMpWhTMOy1Ra3CK+M/ifT8fKdI9N6RpFrvDdeNy
RzH98F6kSS+dz5v1M5gYZxgF7nc0TNzC48vLi0uVwiTjNQVa8Bejoaw4gi1fOAX/
GM6SfZb26W1IGTwUN+4BbuHET8X1G9qQhCxh9yUuWkkqLq8c2GJE8xeXIQLGUXwg
cM10hM3C5PskwrzpGwoQvCsC7j1EwUOOFhe3KADJ5+e97MOKKH5QNeALDVb4r8ki
okeKNnzblN4EXwHR+8wVyXoJeoRzzUnr8PTpQaHS7UBarwjne2TJG6JK/2X6k30i
8L0uF+PigzBfH6ZC47kvsigjOjUsVJpp2R5IT41XMFL0kG1eql9gPFmEv/AgECOC
I5A6291b2Oy7ITByAaHbXpYrLZRGmbrTnnVFlnlWXHFEnmle/aicm7CMh4NOGrZB
5OMXwdjczwotDyxxb5ul1wbB0MQSj0MckgDFDWoSp93u50PTFHd+KdMvSX5Mf3WZ
kfs6bM989G32qoTy0sg3yOxIrW9SEOiFQp0GxJcRtjHrC/8B9DWazzLodUez0lS0
bjKcpRDWhVc5Mkg/cR5abwuL+LBAvW0YHlZcGXQS92v3JXxdKKo=
=/YSH
-----END PGP SIGNATURE-----

--whomw5ydmgorp53w--

