Return-Path: <linux-man+bounces-5005-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJY4GYN/e2kQFAIAu9opvQ
	(envelope-from <linux-man+bounces-5005-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:40:51 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B949DB1958
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A7CD3019F03
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 15:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889603090C4;
	Thu, 29 Jan 2026 15:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1aoIFsf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDA526CE32
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 15:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769701060; cv=none; b=l3EVM/qRFs8Fc2rZT4FhUvNcaxZGzWM7GSFJAgxzUEAfjBmontMd1EpACMxvJ6CTOUaZXDtEa08ZAlGeJy5wYSAm7o1yNs6Z/t6nRQuJqDRmknsIJTtWmituf4kA7K+HkUivg21ZM8Caiie253EeL9oW0mdQx/ZAI0pV1z0bdYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769701060; c=relaxed/simple;
	bh=DgKdqwQAujhb7zcxNLLlTjL7SRhHv8wdIbtF6Bl2aFY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n4dbDLXXd6/kHnESGCRkoPupTPeWNgny9ExwdtFa4VdOMKj31vPfn1WuYFTkeVNbncxdDklrHmnuXbaMwWZR053KJReGxgMKCc98f0y/h45NDhkaswxwG+8aLfd0aP18xNr1jYBopdU3LaS4E/Z4ZMPdY1/UMm8vF7FW0QY8CSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1aoIFsf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1C6CC4CEF7;
	Thu, 29 Jan 2026 15:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769701059;
	bh=DgKdqwQAujhb7zcxNLLlTjL7SRhHv8wdIbtF6Bl2aFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B1aoIFsfqTVwC+OiSqTeFMXrRG4rCcLHUzF5q5rCV3Na1qqputbPiZbI7n4KQl1iH
	 ank5YV2eM9qCB4hUKNeydMaUCHTXu0QLLB5pCbZF9z5om8bJiNd6Tu3Kcjyx1b3tLJ
	 V76rn3MCxFBvALdcJtHYn2CXV0UQdMnx966c/NyMvuwEAHjEg8Doo0G+aYuMpmYXK3
	 KW9UOHODx/Haq2A155vlhKXZdT9aAMRcegXtmCLxbQy2EU9y/Ts4V+JWaQaK11Tttq
	 CkFFRBa+SlI7sbEISNa5noVJ5w7TgzhCRvK8LarujyNCdUfK1IG5etsPk7WyaJOKCa
	 XiOLt58kHcRiw==
Date: Thu, 29 Jan 2026 16:37:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>, josmyers@redhat.com
Cc: linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: floor/ceil man pages
Message-ID: <aXt9Cad8zPxKEWHx@devuan>
References: <CANv4PNkbi35JzgKump4zdNSUEwSjCpS7pQLZ8LTm+kKZ_4vtyw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="66xiigo5vnslvqiu"
Content-Disposition: inline
In-Reply-To: <CANv4PNkbi35JzgKump4zdNSUEwSjCpS7pQLZ8LTm+kKZ_4vtyw@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5005-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,redhat.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B949DB1958
X-Rspamd-Action: no action


--66xiigo5vnslvqiu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>, josmyers@redhat.com
Cc: linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: floor/ceil man pages
Message-ID: <aXt9Cad8zPxKEWHx@devuan>
References: <CANv4PNkbi35JzgKump4zdNSUEwSjCpS7pQLZ8LTm+kKZ_4vtyw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANv4PNkbi35JzgKump4zdNSUEwSjCpS7pQLZ8LTm+kKZ_4vtyw@mail.gmail.com>

[TO +=3D Joseph]
[CC +=3D libc-help@]

Hi Morten, Joseph,

On 2026-01-28T09:51:47-0500, Morten Welinder wrote:
> I see two minor problems:
>=20
> "If x is integral, +0, -0, NaN, or infinite, x itself is returned." --
> this seems to suggest that NaN is passed through unchanged, i.e., the
> type and sign of the NaN is unchanged.  Other references I can find
> suggest that the NaN details are not guaranted.  See
> https://en.cppreference.com/w/c/numeric/math/floor.html, for example.

Would you mind quoting the specific text that you think suggests that?
I see in that page

	If arg is NaN, NaN is returned.

> "ceil(-0.5) is 0.0".  I can't find a reference, but (1) this looks
> weird, and (2) it looks like libc actually returns -0.0 which makes
> more sense.  As noted above, ceil(-0.0) is required to be -0.0 if if
> ceil(-0.5) were to return +0.0 it would make ceil a non-monotonic
> function.

I have no idea.  It doesn't seem to be specified by the standard.
Joseph, do you know if the floating-point group has talked anything
about this recently?


Have a lovely day!
Alex

>=20
> M.
>=20

--=20
<https://www.alejandro-colomar.es>

--66xiigo5vnslvqiu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml7fsAACgkQ64mZXMKQ
wqmGXxAAoC4x3UoOVTwkzi09Q9I+Ifu7ANjOfZA1YclqCGtGTv2WMY/5de124xVJ
EWYPNW4oa1gaXuW8TssxqwNybCfpk6QScdMeVTrHoZ/9EqPZx//UwDVsB/jXokal
Z9KRxE1zSG5RXhYtXTCIHSna+ZrGo+CYfwkXxx3eA50wv9R4Xmua94AyZWBB+afm
uYGnvzfK0psE5rJAXMnLhXwiPj9z54pNPvhrhJ1KamjQBd8infX/XXjtU4OPCfEd
glSflzdCD91MdJaJYU2Szdp4EDOnXbi+KAkdc5R34VwXZPnKf5B4lUHxkExOq+D8
SQdOZyocodqtIuBwQr9KyVR/REH7vlG9aoAsieu/xTZtgvqyEhqIr+7FkDVw8IMc
tHq6Cqr8kgIogUiHIWmx0UrGgWLLXaUlm4+XsaWMjNRmfyn24WMz0LP/imNnNktf
jAaEdbS4rqyKlUn/W8916uS8BWdMnvq6q91cognKqlnN5ZDDwSn8OoiIpGk276qj
44u3BUOr8hdiVLvcNuvyF/X1Kw1ipcPkm+qOtbjbGGLFDb6itlrKe9LvGtVemHnm
emOx2KeYxkQJiU+sspcSUa6f1377MDUJ22mKf9ohTn27plLpDQTKRz9+kxzw3Gnf
eg+BcOK8cJgAOJ5ViMGT/WOl9JT4t/j50NCRh23R8Ro5bskFKEA=
=TaaQ
-----END PGP SIGNATURE-----

--66xiigo5vnslvqiu--

