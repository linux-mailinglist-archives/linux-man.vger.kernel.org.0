Return-Path: <linux-man+bounces-774-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DD78A8060
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 12:06:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A841BB21774
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 10:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB56213B794;
	Wed, 17 Apr 2024 10:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvSbgQrv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A37A13A258
	for <linux-man@vger.kernel.org>; Wed, 17 Apr 2024 10:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713348345; cv=none; b=WcMXNY8ktFLinpHvWajVWaH1/qfXXPZWGEVNIMAh5kMa3C5Mi/qQa1P5JT23WC3/2KXWmcYdWhbl7Y9yARkFaG3qavxjURCEya4/fZfoQ5b+FQdDN/7Pzs++u244Nh9W4bVCwbV+eUASnGKjKQrqCO03OpbGFgpy46FSdrig5LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713348345; c=relaxed/simple;
	bh=g5jWfo0tuf5JjjwKrarXx35TgVvhRPLkM/dWuigWH3Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N78TqgS6gsp14fVPzLSJZVYvUX+0sz1cnoN7kVaC3uajL8JzioIaq+A/h1mmZzeauQ8umM3bcnGa71Uu6RDZqYxuBBtqxH4WFbHXT2pkUOjQ9fDPta73fvrooQ6BFFbHJUvCVzsEfSR72SNVL5UafPPo9I97T0isU1Wa4TJhYaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvSbgQrv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5246CC072AA;
	Wed, 17 Apr 2024 10:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713348345;
	bh=g5jWfo0tuf5JjjwKrarXx35TgVvhRPLkM/dWuigWH3Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tvSbgQrvUp3wRLeNxMy+vk5gXkodTArXNNIkPlw5ORIVpe3wYnvw9OPqu6uHAdqdK
	 rDvIi3EFPoVG4zePMVYHWADcsv2ly9Bt9/ESBcR8lOwIRjWjMXph6xGaVJDiHEpIMG
	 0BeY8mo6ikawngAKDrYYScYlIn2iatpGWpYzntI0OnybLQs6z0XyQxzoNdhGfsPzz4
	 cuTsH3BBQHsN69Gh5jXtNUQNI6hDzecktWmAsH/sOhCyRFpb1bWAXngMqwRG0YK6pB
	 9VoapOjgyOAV952CzKB2PdhHdHPVAwUyk5UQ0OJ11haZqXoVTMb+oZjP20QqFjieR+
	 XFoDBETpAaL7Q==
Date: Wed, 17 Apr 2024 12:05:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man2/syscalls.2: srcfix
Message-ID: <Zh-e9hUbXw-d4_lB@debian>
References: <20240415223942.yjb2a36a43prhhjz@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l2GO8Pz/asKQzIjW"
Content-Disposition: inline
In-Reply-To: <20240415223942.yjb2a36a43prhhjz@illithid>


--l2GO8Pz/asKQzIjW
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Apr 2024 12:05:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man2/syscalls.2: srcfix

On Mon, Apr 15, 2024 at 05:39:42PM -0500, G. Branden Robinson wrote:
> Tweak input format of table text blocks to make a planned sed-driven
> update simpler and more reliable.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Hi Branden,

(The messages seem to be a thread, but they don't have In-Reply-To
 field.)

Patch applied.  Thanks.

Alex

> ---
>  man2/syscalls.2 | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index 69f24ef29..7a7d6d730 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -469,7 +469,9 @@ .SS System call list
>  \fBname_to_handle_at\fP(2)	2.6.39
>  \fBnanosleep\fP(2)	2.0
>  .\" 5590ff0d5528b60153c0b4e7b771472b5a95e297
> -\fBnewfstatat\fP(2)	2.6.16	See \fBstat\fP(2)
> +\fBnewfstatat\fP(2)	2.6.16	T{
> +See \fBstat\fP(2)
> +T}
>  \fBnfsservctl\fP(2)	2.2	Removed in 3.1
>  \fBnice\fP(2)	1.0
>  \fBold_adjtimex\fP(2)	2.0	T{
> @@ -677,8 +679,7 @@ .SS System call list
>  \fBsetns\fP(2)	3.0
>  \fBsetpgid\fP(2)	1.0
>  \fBsetpgrp\fP(2)	2.0	T{
> -Alternative name for
> -\fBsetpgid\fP(2) on Alpha
> +Alternative name for \fBsetpgid\fP(2) on Alpha
>  T}
>  \fBsetpriority\fP(2)	1.0
>  \fBsetregid\fP(2)	1.0
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--l2GO8Pz/asKQzIjW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYfnvUACgkQnowa+77/
2zLlZw/9HMV8G3VwRB4kKJfoxtGX0fugjg93arvu/ihFPFzVsLyBPAQ4u/DG1AuP
/G9IMwkIUeumx0NHVm76Gee5xtuDIpTym8C6Ksj+llQCVdPcHEXyMSFVkfC3xQwk
MzgCX600rIXTZm1fHrd6isbaNWDGul/OjGdI5N3tnKOE4f1RpT8dncQcWDyM9FUK
Y85W5Xgx6f7+lITdeIok7p+PTex+f4lqzvCRyCuH1HQ6fGsshZtU4VObHUXcCxDb
bpBoMQaw1wTtg1lME1o2GXlWefK2dzbnMnmSHjKZI5wTnlC5gysFhoaSPsfr3yKz
wBXrlyTlTCP4zJZsZKPm95Pohu87Rwjz/NDrPX1VG10/rIzVQFMWiiCzcns1G7zA
XrdCReIWxzrQb2Tm3Sp7I9i/OU0iALX+9fxOxfGztQfu0CALracMdJzKhTANBnTH
QII2Vi6rJcurTdmNzEC3glau2nMUbmpHTiWj8p95jPuQ5u4w4ql/HDJpZbfAF8gF
D/+j+dfFZhgBlHBBfEBQf47oWM6a1Wpi9gbGUYSNd2QzO6fxW4sdOB8F8KS1mYFX
WqAIurC/B0jzh7TSissrAyjlnglPs27VwwK2P86t3I1YJ9x4fFzenwkwSaQl/UG3
/WPi4ZtRlThuddPO32qURdavoaMkdKFGkUP9YcGn9NGVl46dytQ=
=9igA
-----END PGP SIGNATURE-----

--l2GO8Pz/asKQzIjW--

