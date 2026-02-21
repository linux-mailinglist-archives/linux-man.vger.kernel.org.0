Return-Path: <linux-man+bounces-5176-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YImQA74bmmnZYgMAu9opvQ
	(envelope-from <linux-man+bounces-5176-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:55:26 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C75016DDA9
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:55:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95BC6302A2CE
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 20:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340081F5821;
	Sat, 21 Feb 2026 20:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiVSq05B"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB8C260565
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 20:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771707305; cv=none; b=DfxOuQRGLQhGP4OMzeX3QlCbZ8bs1d7WC/oBZp/RZ/XijW5KM8CcwozsnVfTd3V9ZdldB8DdvBSuVLiIxjVJ0WrC1Sw7H3AnFTDZRaN3Rj5+KWdTWjAOnD20YHOWsUylpTipf8v2fWk1kJnjUFFYACfAvUTC8AmuDBmN6cvV2GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771707305; c=relaxed/simple;
	bh=iq0IheSpwHkA9dUwlkXncCVmoqQOEUtTv3TTpPzET24=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y/m+7JmpZOLC18tGML6nwhT1PsHlDSIWjhYsaGse6ttVsNebH3FYgGZu9772pfjsFCLbGkNdIygIYy7yJpswrtmdRVbwjGA/vzR5APNbALY2pLfUioq8v5wyTebU8cHI7bfjdj3DphOSjLoMy1DNDYKg8uQmFHwkwCQOOHfcHNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiVSq05B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C347CC4CEF7;
	Sat, 21 Feb 2026 20:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771707304;
	bh=iq0IheSpwHkA9dUwlkXncCVmoqQOEUtTv3TTpPzET24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CiVSq05BTkJ6zWcXDyjSGOm1DyR57lvHfNtZiQjgw86DrA338fzXVl9dwJ0+71bbz
	 9aO1HPjMjM6K5gaxSV+52FqYjt7DRdBnNToOrPkny4dHQUfpMOs049aej23M6QEGsF
	 OlzBh3CfqbU36ccwegiPEKRLMKbFbcbvbcuHHAxEQCyFfNH8WK66Qv/Z1QFouJtArY
	 vfiKVPRjel4f2vL7cg2eAlq3Bvyv37JBsTtnv6QnOCha4siF2DKMPW7bzjH8PWGiPR
	 2s18ruu1plgFba3R3G3bZRB093ffiFFWEFLtlpuiHLW/D59hL+wv3LXbehp7HlqwQ8
	 9Qyrf1x8f3tTg==
Date: Sat, 21 Feb 2026 21:55:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZobaC_UCI7CYkcZ@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <20260221174142.5e6xufffrawahxsp@illithid>
 <aZoMp9gUNpU6rGo4@devuan>
 <20260221200509.vxfbyyg7v2d2svhb@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wn6354uc74gcbxlm"
Content-Disposition: inline
In-Reply-To: <20260221200509.vxfbyyg7v2d2svhb@illithid>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5176-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gnu.org:url]
X-Rspamd-Queue-Id: 6C75016DDA9
X-Rspamd-Action: no action


--wn6354uc74gcbxlm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZobaC_UCI7CYkcZ@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <20260221174142.5e6xufffrawahxsp@illithid>
 <aZoMp9gUNpU6rGo4@devuan>
 <20260221200509.vxfbyyg7v2d2svhb@illithid>
MIME-Version: 1.0
In-Reply-To: <20260221200509.vxfbyyg7v2d2svhb@illithid>

Hi Branden,

On 2026-02-21T14:05:09-0600, G. Branden Robinson wrote:
> > > I assume that the string library reforms you're pursuing are
> > > intended in part to be adopted by newcomers to C.
> >=20
> > I intend old programmers to use it too.
>=20
> Goooooood luck.  As we've seen, to take gets(3) away from some people
> has required killing it off from the standard C library itself.
>=20
> Some old programmers get really good.  Some just get old.
>=20
> > I guess you're expecting a patch to groff once this is in a branch of
> > gnulib you're using.  ;)
>=20
> No, not expecting.  :)

Well, now you know.  :)

>=20
> Replacing our bespoke `strsave()` with `strdup()` seems like a higher
> priority to me.

Will you, or should I?

>=20
> https://savannah.gnu.org/bugs/?66518
>=20
> Regards,
> Branden

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--wn6354uc74gcbxlm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmaG6UACgkQ64mZXMKQ
wqkcQRAApXIRwJ06rt1FUQCxOUBAXgFVJTkQevGk7GItAaJJVjXzpHOqLD5lLJLi
r8g2y1iC9lxk9MfJyxBhordJ4mDVATsICmYA1wR1z5J29c6C1FrxoOU5fDhdnbiw
x1rWxlwUyFr6JwRP0TD0aUAVx5Nj9jWOetJ9imNR3fvlBMbc8BeNGtPbwJBj6YKA
FttseQ3fpMAMO3xRSo8bLHSPBFhF7HI+ADZHAeUj7dgrD5vUGXfonCUzYymahn0o
HN1CedwrfVgvjIfATHwVyEKMijf6k4S/4GZ4GtNf0C9FkOkzdk7xVq9aaGAOc9JR
eVmymuMlb0m/NM5jTqOtT+HF14WUAItrYe/zSLosQTtk3T6E5IBV1RJint6r4ejH
XKJNuDFI0pIF+5jlfgHbz4YDrnuvnUyiGuis0K+NFSav+39dvzUN4X9e3UqUngI5
VStmV+nr2jJtOg4a1pAHCE4y8EhVAeZ/oQ/BWLI5PNlBucCx8IyD8jQalpX2VqH8
AiNlM18VdUFZ3wRS4og/01v9sZ1bZ88ROASnJYbTgeS0UQ2L7555ucfLYlf5d9/p
YgTmUWtoJyndlTCVw4pkb7uCPjLF1MMyRrpnmyIUaPFb5QoCU0TnxEVrU1zP2VqC
1j0NJhbwdtRznxBafJhZsJOBykMCr79S2iwBHoGwRX82/NtGnFY=
=JlWS
-----END PGP SIGNATURE-----

--wn6354uc74gcbxlm--

