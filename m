Return-Path: <linux-man+bounces-5502-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKxzD223BWpZaAIAu9opvQ
	(envelope-from <linux-man+bounces-5502-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 13:52:13 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F785413DD
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 13:52:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BFCF0302291C
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 11:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DADB3C3432;
	Thu, 14 May 2026 11:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaDmdpcA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CD63C2777
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 11:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778759525; cv=none; b=HtulbWr/XebNXNIQgvVg+BT4AW5wNoID7ra9uDv0jjZCsecAup9IkxbrZZ4qTrLYgglOgIeffriXxqs2Z/hTyL3Z4STD4BfMdDMYKo0Pkzear1w6AYrtT2ECZlXOpXXeVds5rx3mFPiHzHf5Q6u8XlRgYpygi8CNglVVbifdAcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778759525; c=relaxed/simple;
	bh=JaVnTh+H5OZDSkLsI2bffSLcLaJusT/lZdeGo79zl2c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=luo2CloPECUiR4PRhBZc20ILhUsxOPbg5Dj5ZUU24FdB3w27eGad9v7Q836aIgTFoflCzukel+YrdR3lv2fpvA9YRv9AbOqonkfiYe7nkSdJO2BoIiivtPxPoyrjETVgbyckpzDmJL8moCw70a04Ioy3tWU+OFHrpKEvvdtiaUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaDmdpcA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EE86C2BCB3;
	Thu, 14 May 2026 11:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778759524;
	bh=JaVnTh+H5OZDSkLsI2bffSLcLaJusT/lZdeGo79zl2c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aaDmdpcAmuxbFJcaQsklRl3WmgGgOULNuAGC/8dMLz6tz5xiPcrA03q74SFzwnI8b
	 0dXIp3in3PfR6Xof8cWSVfsy4z2OVO/BLR3LUFuMyZKHm7vcZUjBWnHIRwEoFjk6rd
	 CeLXTJoGiSO0Zks1FJK9ceOWtb3g6BfzXS+jRg9z0FLEMju/Mjq0zMok6OQJCrWL9z
	 4sOM45W2teEcE0aLnRr8H7woPyXhSKGnbFn9tWlbC6rGPrJpBy0hQs5SSIh2yJSkhL
	 CLmdBS27JivGHjhhYKl51btBXWwQWcqpbmdToJWNStSOUxi2YoqtD7Tf0P7UWwlycH
	 1fJI8ihP9vSHg==
Date: Thu, 14 May 2026 13:51:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man/man7/landlock.7: Adapt compatibility in code
 example to ABI v8
Message-ID: <agW3SQwVtbF6_kJL@devuan>
References: <20260514070417.7923-1-gnoack3000@gmail.com>
 <20260514070417.7923-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v7xqbdvaa4lsum6n"
Content-Disposition: inline
In-Reply-To: <20260514070417.7923-2-gnoack3000@gmail.com>
X-Rspamd-Queue-Id: B1F785413DD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5502-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--v7xqbdvaa4lsum6n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man/man7/landlock.7: Adapt compatibility in code
 example to ABI v8
Message-ID: <agW3SQwVtbF6_kJL@devuan>
References: <20260514070417.7923-1-gnoack3000@gmail.com>
 <20260514070417.7923-2-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260514070417.7923-2-gnoack3000@gmail.com>

Hi G=C3=BCnther!

On 2026-05-14T09:04:16+0200, G=C3=BCnther Noack wrote:
> * Bring the code example up to speed with Landlock ABI v8
> * Use the correct ABI level in the MIN() macro
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

Thanks!  I've applied the patch.


Have a lovely day!
Alex

> ---
>  man/man7/landlock.7 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 06910ccab5b1..0e3a11489af2 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -583,6 +583,9 @@ __u64 landlock_fs_access_rights[] =3D {
>      (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
>      (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
>      (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v5: add "ioctl_dev" */
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v6: same            */
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v7: same            */
> +    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v8: same            */
>  };
>  \&
>  int abi =3D landlock_create_ruleset(NULL, 0,
> @@ -595,7 +598,7 @@ if (abi =3D=3D \-1) {
>      perror("Unable to use Landlock");
>      return;  /* Graceful fallback: Do nothing.  */
>  }
> -abi =3D MIN(abi, 3);
> +abi =3D MIN(abi, 8);
>  \&
>  /* Only use the available rights in the ruleset.  */
>  attr.handled_access_fs &=3D landlock_fs_access_rights[abi \- 1];
> --=20
> 2.54.0
>=20

--=20
<https://www.alejandro-colomar.es>

--v7xqbdvaa4lsum6n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoFt18ACgkQ64mZXMKQ
wqnsaRAAr+Oqm2SvtNplR1oeYbJaTzoSFpfl3Nuog/bLfGT4myplA4M2lCH56nJL
/cVoFE/7Uj2y6KNfyRE2MUZoxvWCfZcOGa08M1DYCRWpiq4NBY/17plbSwKoXMSE
GATIY3IK+Yw0VmR7KzV88HFVz4OViolKoTetpe6d+oDgWZ3HWLHXS/RTGWd3QrJS
e+juaKxuN9goPSPS0W+ylSgKJJ3Vi+tsREGpCTHA5dbYxxa9WIybs+J9amSoi+G3
jQBKbzbd47RawgF3R8Eb2SnCRh3TN3OHnMhmfYChY7FmOadZHOMToF9J2ycrCqPO
jFUMJQoNru6IzuAT3fTT3/TVq9U7tcV+a6hNRcQuwVvczl3XfZaIC7loVamuKeoi
Dr5nuRIClqPjEDzSyd5Pa4rgwnSXlPxh/uOGs8biIjLn3PNiDU90N6MHYD+xvnuU
94Rtdv8lIfrFBKO1rjMic2f+RzDfUcbm6Tbl0KBeuqSMRzZxpkRzM2BtSXLTVgNp
Ye9KqQRi3SwDCtX6KsPC7wXpDZhdDu4KFjDWbQleQ2K9WmCoSdnaTRHqdyB27aHm
hzRaFY0ewyr+k5GiFBnTwpxRk9FF+W+AbF0Ei5ICjSGh2N/zEAXwsZaQeB15WXnB
2C02Ho74UMnyis17Lq/7HU+GE8tNZvNE7NeykZOkfk232DMsKaA=
=xfLH
-----END PGP SIGNATURE-----

--v7xqbdvaa4lsum6n--

