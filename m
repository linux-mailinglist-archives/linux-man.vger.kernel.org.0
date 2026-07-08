Return-Path: <linux-man+bounces-5720-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3d/bMD5xTmpeMwIAu9opvQ
	(envelope-from <linux-man+bounces-5720-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:48:14 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFFC7283F8
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:48:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PIL097nt;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5720-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5720-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A59C3062D72
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 15:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84DAD37FF5C;
	Wed,  8 Jul 2026 15:17:59 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2049A3451AF
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 15:17:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523879; cv=none; b=esaZGNdV/mCqaADrREY6Bl7R5P9dDSdZ4mwh7YypGBEq/7dhaQ7Ebnp/wWBBMjXjq+bvDji99zlUZS2JQx15Kc3LtKHBqSzM0uL0RK2vr9nK1wKmnHiDpa9has9dRBeXNG1ltqhLO2RGnu+hNISYS+mEmQz1WTGRIeXcpSbnAms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523879; c=relaxed/simple;
	bh=/lslHq0J68//kqKqvumVSwkJpYt6MZdkckybYQEXa7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WHANuM8e5RWBRVH0tPJHi8gckLzOtXGkXgmbSiojeo2XORide+DYMKPUTj2zzbqxhADjKQ8GLDetjQlZF9HpCCQt1jWGCUyaus8+qeT72brz05h3bRiOjBjOvSkj2VNKe4MYfQYn4r12OB+3FXgdQADCr6bhdWcuWKrvLDjNUmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIL097nt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2412C1F000E9;
	Wed,  8 Jul 2026 15:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783523877;
	bh=CVgBBlXGwb/jNKNaaJJzr95IGQbYcS0pn+LsCiTHVj0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PIL097ntQ7LSLpfnMM+ZzhODeqjaxCMyAP2yTW4L36XFufQKi7RHggXv8j8XyrK1s
	 1d4NxN8/zQUmbVq/+uKyi94YcWIgJO5yFdCg6KJ7YzropqTPk76xelrutkZWCR4UPT
	 xdGBc+t/ohu6gc25JTSjdcg64c9RHTw1pMZwaye1eW3+lATpgjOwgXuGNFd/bZSgub
	 HdRWzmAJXyV13le1yR6K8yI75VXQVF/cvGNmvwOgKtjvBLt1PiNRdcD8/RyU8LeYwf
	 +cj0XPufFjzpD8sV8Tv+0aDckDD1HOmcvcgdJdO/7h9DSLYbL8olPl+1D+LMoto1Es
	 lA5frv+RE6bug==
Date: Wed, 8 Jul 2026 17:17:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] console_codes.4: rephrase description for xterm's
 ESC ] 4 command
Message-ID: <ak5qEZVPKjmO2mnY@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y2ztbjxthc72vkqi"
Content-Disposition: inline
In-Reply-To: <20260708121458.46465-1-jengelh@inai.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jengelh@inai.de,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5720-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,inai.de:email,alejandro-colomar.es:url,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1AFFC7283F8


--y2ztbjxthc72vkqi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] console_codes.4: rephrase description for xterm's
 ESC ] 4 command
Message-ID: <ak5qEZVPKjmO2mnY@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
MIME-Version: 1.0
In-Reply-To: <20260708121458.46465-1-jengelh@inai.de>

Hi Jan,

On 2026-07-08T14:14:55+0200, Jan Engelhardt wrote:
> The \e]4 code is capable of modifying xterm's entire 256-slot palette,
> not just the ANSI sub-portion thereof.
>=20
> Signed-off-by: Jan Engelhardt <jengelh@inai.de>

Thanks!  I've applied all 4 patches.


Cheers,
Alex

> ---
>  man/man4/console_codes.4 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
> index e0e88537a..28ee4c2fc 100644
> --- a/man/man4/console_codes.4
> +++ b/man/man4/console_codes.4
> @@ -753,7 +753,7 @@ Set icon name and window title to
>  T}
>  ESC ] 1 ; \f[I]txt\f[] ST	Set icon name to \f[I]txt\f[].
>  ESC ] 2 ; \f[I]txt\f[] ST	Set window title to \f[I]txt\f[].
> -ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to =
\f[I]txt\f[].
> +ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set color \f[I]num\f[] (0-255) =
to \f[I]txt\f[].
>  ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
>  ESC ] 46 ; \f[I]name\f[] ST	T{
>  Change log file to
> --=20
> 2.54.0
>=20

--=20
<https://www.alejandro-colomar.es>

--y2ztbjxthc72vkqi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpOaiIACgkQ64mZXMKQ
wqnHhA/8D6n5no6OBQGriVK9GEFWiorGYbUGH/O6laG5Dt/gHDe/Szj04vS6tOOp
Rw3GemsRnV83XWnO5TE3l75e+IlPbNbVAK3Afigq6Vr95EgTbpSkM8KTWHkyr1u6
2fQsqF1oESjBDd6w5O1iIrWEakas8Ll8M1hRlcmzA61UTzsNqyfmgmHgp6nG93lZ
jdYCyKS87QyJ7eMZc+j9mEAXB2oBJeEICuLWfSnRka8AgD1wlowbgWfvJmAXMnSh
ixfIdEvog9wkDScxuiYXvu24pOeS2gMQQixxFNkStZ9wo6BsKmD7weu3YVwO3QBS
Bz6sgpOODyCYxVYZzRgNwNQGs9qBtgtrUDRALA+yKru29wexUadsxeODA9UnJHq/
xPFWBO13ZJdB1MXMXw9QOkgTJGxYUUC/7D7aSK5HOrgmmY8UFol4wyA6P//stP74
nVSVhNITKNN+Bl4yO70gU9XJMAlAc5vr7b/2C8M0mUU3ZeVG1RwqstqyCNge2ZtY
Afv9ZhZKIgBeZa2uL/kFSgbmxTvkvwq0ZaYmu0fmpTlnpOngFfG/XCNUpOAapBHz
FHwxjTUaxN6iWNSjraXrw0UXElGb1cYlb5nyjjudql3OTxhGs46D3D6U4XQfCag4
KnMkMSLONSZRnWk/4K0O5ZjXriel5xqDZ/xDfY+M0RtEULbFxeM=
=f0P+
-----END PGP SIGNATURE-----

--y2ztbjxthc72vkqi--

