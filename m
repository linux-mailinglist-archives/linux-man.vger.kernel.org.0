Return-Path: <linux-man+bounces-1971-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B709D0333
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:10:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4104C283A58
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:10:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD1C413A27D;
	Sun, 17 Nov 2024 11:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qa9VvUT9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B09326ACB
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731841847; cv=none; b=Hd1nONJYtnDNyQXeYO1F5NyRLnbn2BtcD3J2pbVVYZzMBBsZ/NwlzzYJ/jU2SjlbXaNl8sKP192zauCvIZzmpm3LYmfVgZW3du/jrnbJT2GGcQji4nDS1U9aGXsrRHuyJxjixkeIf3vGHviu1J3v3S/P9UTLPVPJDG4+LuuomFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731841847; c=relaxed/simple;
	bh=Z4jwxhmQuAM/RcIz+ar3tiSGGbm6zIGOmosefFpx84Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GfG0Nd1cEt4l4okCJg32BsdLE0ZlHKOFvg8C7w8gMZfBbO0Qlcyow5OYiHWH7B5m11cRrZrrhC8ZWAEPuOkor1PyVQFBjwmmHVmpdlTG9uO6B9AeDb8SWtZOCM9X+7JKaBYLXt/tnuJqwY262+XxQdiaGjRONVF3l3YXpdkF6UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qa9VvUT9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD1BEC4CECD;
	Sun, 17 Nov 2024 11:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731841847;
	bh=Z4jwxhmQuAM/RcIz+ar3tiSGGbm6zIGOmosefFpx84Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qa9VvUT9LHdptA6YXvmzIbNLk4aKtta48SvSVqqqghmOClg2KXwe+8s+SgqTt1DLq
	 WXIebBwHlSViyiANSpVeFTuzcSFq9R9TG5TGQTNLQw7GeBLJAupi6jRejZ4zTbPrhL
	 pgmU7KIFFg1xi3qKIQNqDDATBA+B5SsuDHhm+z/Oa/AgPCFQildf188Rq7XGAygWxt
	 cRixJ/qBYvCpT/zTAb/7WDBVq0CJk/kav2+tx9LAp1JXfYeVLVMBd6b9YN/Um1FV/5
	 I6ACCbKmHaAZf2TDO4FRCDpinZESeeLp4IqT9VZbxt8qNA2lr+2tuNfUkd9thYCHX2
	 dXFx7iX7YkaHw==
Date: Sun, 17 Nov 2024 12:10:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>, 
	Marcos Fouces <marcos@debian.org>, "Dr. Tobias Quathamer" <toddy@debian.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
Message-ID: <r6pzxg3yr5g65bh3go2g2visovpymilhyvsmnf2zh2xjtnl4m4@cgngga5l5ed6>
References: <ZznJfQAa4S1cRBE5@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iqroamx52zdu677f"
Content-Disposition: inline
In-Reply-To: <ZznJfQAa4S1cRBE5@meinfjell.helgefjelltest.de>


--iqroamx52zdu677f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>, 
	Marcos Fouces <marcos@debian.org>, "Dr. Tobias Quathamer" <toddy@debian.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
References: <ZznJfQAa4S1cRBE5@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfQAa4S1cRBE5@meinfjell.helgefjelltest.de>

[To +=3D Debian developers]

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:21AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Missing full stop
>=20
> "On Debian GNU/Linux, dynamic content configured at I</etc/pam.d/login> i=
s "
> "also displayed by I<pam_exec>"

That's a bug in a downstream patch from Debian.  See the patch below.
In that patch,

	+.I pam_exec

should become

	+.IP pam_exec .

Woever does that change, please add:

	Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	Reported-by: Alejandro Colomar <alx@kernel.org>
	Suggested-by: Alejandro Colomar <alx@kernel.org>

Have a lovely day!
Alex


alx@debian:~/src/debian/doc/manpages/debian/latest/debian/patches$ cat 0007=
-motd.5.patch=20
=46rom: "Dr. Tobias Quathamer" <toddy@debian.org>
Date: Sat, 6 Feb 2016 01:22:57 +0100
Subject: motd.5

---
 man/man5/motd.5 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/man/man5/motd.5 b/man/man5/motd.5
index 9de8eea..2ddfae3 100644
--- a/man/man5/motd.5
+++ b/man/man5/motd.5
@@ -12,12 +12,20 @@ motd \- message of the day
 The contents of
 .I /etc/motd
 are displayed by
-.BR login (1)
+.\" Patched in Debian, maybe other distribs
+.BR pam_motd (8)
+.\" End of patch
+.\" .BR login (1)
 after a successful login but just before it executes the login shell.
 .P
 The abbreviation "motd" stands for "message of the day", and this file
 has been traditionally used for exactly that (it requires much less disk
 space than mail to all users).
+.P
+On Debian GNU/Linux, dynamic content configured at
+.I /etc/pam.d/login
+is also displayed by
+.I pam_exec
 .SH FILES
 .I /etc/motd
 .SH SEE ALSO


--=20
<https://www.alejandro-colomar.es/>

--iqroamx52zdu677f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc5zzMACgkQnowa+77/
2zK1iA/9Ft0X/Cq1+Lbm4mkxEMbjpHhS0uAJ/p70YGDOY/gauKQurc5fu2XXWf9+
UCt+GsqevGxfX5BDWE1yYJxw5MMdbB0mmvDokNSdHUOQI2eFQlsezYlEdOLwAxgM
mlS42iqKs2unZH8XzO9Px15+qymLnBrvFDM1xjijxMZn8J8WvOvxUrN3I3NK3tmo
kMfC+FTw67LOPTo1CMbjTvKBAQQ5lzTxkEPz7zv7Y4mOzll4xWAg7oL48QgvRqzg
23o5vl6LJffJ594KCtcoyh+CcU/zrhF5ezr2Vvm4ewcpPIBHM5UEREpuMYNjVGBy
76pa7JOD2KjjNEsjJfOJRyMB/7hs5BimngOoZg4Phb2+0RlBCxE9tljjgt3YbHSD
uMnwuXce213FDtDC6aDUo814vf2Is+UecCCpNRG0bfxe8kCfnF5BaOQyZkVR27HG
bmmv9fwudTw1+1dxkd3lakJfCTARhq9BQEKui0yBOMRc+EfS2ih5mhbvpmnVmy2F
2wYc603oSLsUPUlIOz3eNGLQ424faXrRl9KlRWV690qtBjoGDTmjM91swhtoD0D+
E34W9S3pFw1HmKH35lK46T0lSk0jcgq1nMFf+v8RAZaggDenHvJO3BMVkGmDSYFM
Lq8Ng0gfqp6yUUfGmko0GTkQV5ChKbWox/qpyc3ptz6v1NXtieA=
=2Wyz
-----END PGP SIGNATURE-----

--iqroamx52zdu677f--

