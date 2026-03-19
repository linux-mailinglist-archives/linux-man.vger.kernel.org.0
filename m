Return-Path: <linux-man+bounces-5280-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yO/5LxUovGkxtgIAu9opvQ
	(envelope-from <linux-man+bounces-5280-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 17:45:09 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 647262CF067
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 17:45:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B51873006816
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 16:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 539DE3EB7F0;
	Thu, 19 Mar 2026 16:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8h/bxkB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBA13806B6;
	Thu, 19 Mar 2026 16:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773938703; cv=none; b=sTXIhLZVQXTHhwHReeIoO3Yor3OesMDs/vedmfiL9cXpBnFyGBUVwyn83tpO/vPZXdCl260+BBSwgHqie/4pteLK8ly/zJum3yMQ42/Fj98GhvOlc1m/b9+D77CfiWMmKuxprX1Ht2/5dIdJIGfRZpcYrSK5lwH9LYnJVyzyTYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773938703; c=relaxed/simple;
	bh=73NoJsO+/z35yrR/TMQzJW/S0AITk+AtTa31RbratTI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZhgyS+6DuewSxobrhVCBvPoieoJQNA4P8uaboyLVnLsJkuXMmQlL6d0a/RGmREKQEvCjY1Ki00GyzLZ3k/IG11yL3M0I6ud/2XhSklZYed39ntkBbC+qyTmQWnUj3q+cYeTBdFSvxHawL1En7riU7IAEn7+zBzxiVqkCCHfnxZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8h/bxkB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F9F9C19424;
	Thu, 19 Mar 2026 16:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773938702;
	bh=73NoJsO+/z35yrR/TMQzJW/S0AITk+AtTa31RbratTI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h8h/bxkB5VHTi/iXqxQ/BXMMXH75s7zdbgNyDHCiMFDCae2tp9hjAd3scBeRZAk1m
	 MfUNLHrVzoLv9zstiWNOSyTx7cA9pxOAgNhc2bTn00teZuEY9I1Jycc4+OYEh2Gpa9
	 wsL8sQOqG56B/DG/w41L1KKpITnKkiaIo64cMw5QbIcGj5hOtfuQmKf3MM99kjNRIR
	 ixPVB4Ia+4uHfHYAKLWlgxNuMgqnWaTmBKTJB5s8m9sTwVV7OVaJXkZtR/Qx/2dteM
	 eNsZ4RL52dYMjJUav6XhbOBFjCbKBg15Xlbl8pcls3JC7dz4yI4h+Z2gFYJ2Wl1eMZ
	 r6MQWCGS4yCUA==
Date: Thu, 19 Mar 2026 17:44:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: avagin@gmail.com, brauner@kernel.org, criu@lists.linux.dev, 
	linux-man@vger.kernel.org, ptikhomirov@virtuozzo.com
Subject: Re: [PATCH v2 2/2] man/man2/statmount.2: Fix incorrect naming of
 STATMOUNT_MNT_{UID,GID}MAP flags
Message-ID: <abwn8ux0V534QVdx@devuan>
References: <abnzrP7a2ci_dG4j@devuan>
 <4f6135c8b84b8b291a7145a72f216e77f8cf0103.1773904035.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6jcygmezgrbac3ai"
Content-Disposition: inline
In-Reply-To: <4f6135c8b84b8b291a7145a72f216e77f8cf0103.1773904035.git.b.sachdev1904@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5280-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,vger.kernel.org,virtuozzo.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.922];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 647262CF067
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--6jcygmezgrbac3ai
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: avagin@gmail.com, brauner@kernel.org, criu@lists.linux.dev, 
	linux-man@vger.kernel.org, ptikhomirov@virtuozzo.com
Subject: Re: [PATCH v2 2/2] man/man2/statmount.2: Fix incorrect naming of
 STATMOUNT_MNT_{UID,GID}MAP flags
Message-ID: <abwn8ux0V534QVdx@devuan>
References: <abnzrP7a2ci_dG4j@devuan>
 <4f6135c8b84b8b291a7145a72f216e77f8cf0103.1773904035.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4f6135c8b84b8b291a7145a72f216e77f8cf0103.1773904035.git.b.sachdev1904@gmail.com>

On 2026-03-19T12:39:12+0530, Bhavik Sachdev wrote:
> STATMOUNT_UIDMAP is actually STATMOUNT_MNT_UIDMAP and STATMOUNT_GIDMAP
> is STATMOUNT_MNT_GIDMAP.
>=20
> Fixes: 9968ead5 (2026-03-05; "man/man2/statmount.2: Document STATMOUNT_{U=
IDMAP,GIDMAP}")
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> ---
> Hey Alex!

Hi Bhavik,

> Found another mistake while replying to your comments!

Thanks!  I've applied both patches.


Have a lovely day!
Alex

>=20
> Thanks,
> Bhavik
>=20
>  man/man2/statmount.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index 78b6e9be..b6d9dc2a 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -355,7 +355,7 @@ .SS The returned information
>  The number of uid mappings applied on the mount.
>  If
>  .I smbuf.mask
> -has STATMOUNT_UIDMAP set and this field is 0,
> +has STATMOUNT_MNT_UIDMAP set and this field is 0,
>  then uid mappings applied on the mount
>  cannot be resolved in the user namespace of the caller.
>  .TP
> @@ -372,7 +372,7 @@ .SS The returned information
>  The number of gid mappings applied on the mount.
>  If
>  .I smbuf.mask
> -has STATMOUNT_GIDMAP set and this field is 0,
> +has STATMOUNT_MNT_GIDMAP set and this field is 0,
>  then gid mappings applied on the mount
>  cannot be resolved in the user namespace of the caller.
>  .TP
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--6jcygmezgrbac3ai
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm8KAoACgkQ64mZXMKQ
wqm52A//YAO9Fp8/8yjEGAnEBOEkLQLAvevgfPS5DZyFs8EfOSH6oRaDf8kveW3j
wYnWbc6twaJkwSd16xTpvUIqnS48dFSczQ30d/GTB9d2h2WD2Rv7GBC7v1i37mpo
YXw/Vdg7yQn2adjo2/3nP5BctH+RMuhkrOFmguGAGWhtJd1lT/zVrqM18fAOouRF
ju3QDYpfHXO49FpKEmEm/d5CSWEiezsuqse+p9TamxygCdiq/ZDO0/62Pzioy8Yc
13jrvPoXWXNNmgoknRKlzqAKRvGYkvdWF4Hho5BQ2nFaL88AFbe/bXkjWD/muBh6
NY1WFuv4WqQ+KFtncLlPGZXZca9CL0NnXIzJNj7Xjr8Ao5tTiA6kKEpSUMKbZl3j
ee8aw1invwfvGzhbSpmkB3hX+KVcEDOFS8SwLECxVLy0lsvKu6A6JboRMEv0mHJe
UlvMNI49z1Rwz3zvUTWewZj2cOMeqoHiQIA0gHad1i8EyjpF80Y+1bj9h12i1zsB
rOsLeGKisEhWNWgiBTLtAEvSFaPyIbemkLyxsZbXADl2sBzpnvMOmoSKNcdXZhSE
AchN+ErvWPrWN9pDgOhzbFJ2yRzCQkkpjK5FkUjU6v4ncpakaOoL0T6TG9GLHAUt
B5VLtnsJjHkNHT88v0KnG+0JiS/G1gRB43O2X9KiT9Dv0hwj8d0=
=QzB0
-----END PGP SIGNATURE-----

--6jcygmezgrbac3ai--

