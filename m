Return-Path: <linux-man+bounces-5116-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CAEEDGLjGmHqgAAu9opvQ
	(envelope-from <linux-man+bounces-5116-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:59:13 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7473E125069
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED804300F514
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 13:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23E8F3168F5;
	Wed, 11 Feb 2026 13:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyM3rSKC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98A38460;
	Wed, 11 Feb 2026 13:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770818349; cv=none; b=CTJpMZVyfgN8dMvgKpfI/P/+UrWJdI0DOEJQG7pjH63C1c1AJ9caxEUcz5LNgyuxfK/WKzgvuDEVMeYl9Or3W0zFcdfIUyJ3SCUW/OyQFe6QonE+wwyKVBgEQKD2Vwe42jf6SO535Z0ENmbVxl0NaCH5JgKSUhxOONl+v1dkIrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770818349; c=relaxed/simple;
	bh=DDXSAKzZnwBGFBGNIGoH2MEdVTiD7R3L0tH+P6HbT00=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PPK6Hd9DoY/0a6rocc+JHu+V3y/T8FktYJpO/QZvm4mnVXYHmdYU9ShOzkcFUS7PqqjlWrj9yKkLpaWHJuZSle9fzNZx/gL5YPviNYXBvPKAQbnj8bbVupFLPc1xYgkK9MtOnhEIfqHSJAW6skOGiJonwJEtbo0AKXnYuWWqfL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyM3rSKC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88B74C4CEF7;
	Wed, 11 Feb 2026 13:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770818349;
	bh=DDXSAKzZnwBGFBGNIGoH2MEdVTiD7R3L0tH+P6HbT00=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SyM3rSKC6YavMZAkYzlESkEwMe0U0/qCtQP96Vy1qQy3KOzyi82i3qtBeSm39gTup
	 Ux1yun7PLcoVRyzxVrAQdLvsHP34LLaOt8OIub8cng6Yw4Iu4Eoqa0zSlbjrLVfF/5
	 Oxqt7ygkGHNK0MKW8LYvXGT4babci1CLwAD/pymZZHks1bIjl+rW5bmU4NsJHGaMRL
	 ZdYUEP9nkOqoouXtRAC+dwS96eJT7AotZKm/BaZvCvjZRJu4WIApZRoR0L4Nv7LKUa
	 tXHq4ja4FopxPmQ26FlHwxzwze1uamWu/PZ+Ike1TlacDBOYirk2kZV7LzWbKowbxB
	 tA5JN70faH3gA==
Date: Wed, 11 Feb 2026 14:59:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 07/10] man/man2/statmount.2: Document
 STATMOUNT_{UIDMAP,GIDMAP}
Message-ID: <aYyJMflAWPJu7_EQ@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <fe86edd32cea5b9bf80320fc2ce9b6507a85af1c.1770671863.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mdo2qkzi3mxrjsz5"
Content-Disposition: inline
In-Reply-To: <fe86edd32cea5b9bf80320fc2ce9b6507a85af1c.1770671863.git.b.sachdev1904@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5116-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7473E125069
X-Rspamd-Action: no action


--mdo2qkzi3mxrjsz5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 07/10] man/man2/statmount.2: Document
 STATMOUNT_{UIDMAP,GIDMAP}
Message-ID: <aYyJMflAWPJu7_EQ@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <fe86edd32cea5b9bf80320fc2ce9b6507a85af1c.1770671863.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <fe86edd32cea5b9bf80320fc2ce9b6507a85af1c.1770671863.git.b.sachdev1904@gmail.com>

Hi Bhavik,

On 2026-02-10T02:47:40+0530, Bhavik Sachdev wrote:
> Document the STATMOUNT_{UIDMAP,GIDMAP} flags and the corresponding
> fields introduced by them. Most of this is based on the commit message
> provided here [1].
>=20
> Link [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D37c4a9590e1efcae7749682239fc22a330d2d325>
>=20
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> ---
>  man/man2/statmount.2 | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index b7acde8f4..4da55eb38 100644
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
>  STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
>  STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
> +STATMOUNT_MNT_UIDMAP	/* Want/got uidmap... */
> +STATMOUNT_MNT_GIDMAP	/* Want/got gidmap... */
>  .TE
>  .in
>  .P
> @@ -299,6 +305,34 @@ .SS The returned information
>  buffer that contains security options separated by null bytes.
>  They can be iterated over the help of
>  .IR smbuf.opt_sec_num .
> +.TP
> +.I smbuf.mnt_uidmap_num
> +The number of uid mappings in case of an idmapped mount.
> +If STATMOUNT_UIDMAP was not unset and this field is 0,

"If ... was not unset" is confusing.  As far as I can read, the .param
field is an ORed combination of flags, so usually you set things,
because otherwise you get 0.

The wording seems to imply that something is set by default and I'd need
to unset it explicitly.

Am I missing something?

Should this say "If ... was set"?

> +the mount is not an idmapped mount.
> +.TP
> +.I smbuf.mnt_uidmap
> +The offset to the location in the
> +.I smbuf.str
> +buffer that contains uid mappings as string array separated by null byte=
s.
> +They can be iterated over with the help of
> +.IR smbuf.mnt_uidmap_num .
> +The whole range of uid mappings must be resolvable inthe caller's user

s/inthe/in the/

> +namespace.

I think "the user namespace of the caller" reads better.

> +.TP
> +.I smbuf.mnt_gidmap_num
> +The number of gid mappings in case of an idmapped mount.
> +If STATMOUNT_GIDMAP was not unset and this field is 0,
> +the mount is not an idmapped mount.
> +.TP
> +.I smbuf.mnt_gidmap
> +The offset to the location in the
> +.I smbuf.str
> +buffer that contains uid mappings as string array separated by null byte=
s.

What do you mean by 'string array'?  Array is confusing, because it
doesn't match the C concept of an array, since that would require all
elements to have the same exact size.

How about 'consecutive null-terminated strings'?


Cheers,
Alex

> +They can be iterated over with the help of
> +.IR smbuf.mnt_gidmap_num .
> +The whole range of gid mappings must be resolvable in the caller's user
> +namespace.
>  .SH RETURN VALUE
>  On success, zero is returned.
>  On error, \-1 is returned, and
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--mdo2qkzi3mxrjsz5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmMiygACgkQ64mZXMKQ
wqla2xAAp3RdlYQTiXIi0Ztfo4CaMeqk/1Qi395Zk4KlMMoIxYJ/3KPNHxiRuP6V
bN035iuju1W4EBxu3e/XqJkdO/9UdP3q1ATRSAD5D8RfH9gqssPV748crz/Imw69
yxUG28ZsFvxA/k5kEDgv7CVq/89hGRElQ/6vw6C3kWnHjV73evAJEABaFJ4viDZb
VMNS+gs2wFK6pWScj/In4urjIRlAM0PobskZRQPL+FpkaL8zGDQGJHb3QhDbJDyI
0EIffiGMA0MfzFvpW+QP9kHRXRp4c4HE2Gs6vCNA+yEosJSJbEdZZAFNTta/4TsC
KulfWqLgOdBLvHQ03rR6zJcZJN19trVI71CbbjGF7LeoZE7IPMljrEMFu1QR2SFl
dT451Hrhsh0BptpvAWIPzfPZmPfPv+i22NjWiPh8IUjA95MEG+1Fzml7TQdlu3C0
M6jVCCpxZ5KFjnwcrjjqZSA/lKiebsmZmumzXV5p2Ce7NVRFp3qIZcqx/VKIrgrm
7DONzS4GsCLEs8NBD3nhnSNh9yWg7QPDkeEd/1qWj+LCuk6VrFrffRvSo/B1NLWZ
u1680ff96dDXH561kRBh/hcJVl3HoSKBcRKhBbaqbc72+psVaJPAynkJJcL6/tLN
RwIVNbJd+8OP5jCx3d0HZd2SlIVc+05y3LtGCuSLcjH9iXmEE9Y=
=l2Bl
-----END PGP SIGNATURE-----

--mdo2qkzi3mxrjsz5--

