Return-Path: <linux-man+bounces-2023-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D049D047A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB1B22822C8
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAA861CCEED;
	Sun, 17 Nov 2024 15:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1/Ida90"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A14DC2ED
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731856818; cv=none; b=n268jZ5b4hKpzH1uvl1TFtIXARgeKo1+r4dOnPOv43FSFo+uFgCNZqyvIwB5/sEN8M+CbU03z8sgBYYxhJ3YgnYWXaghjToKhL2WbAjkMt+fBU1YN26t2pX8S2niLQNTu5urVuVo23mKBz5UPYVW7aw0nKaKRYWMvQc6bR/YZRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731856818; c=relaxed/simple;
	bh=trNSTFeBBVarO0PL0Kg26OD6w9kVZ7xldCtOv3eIH7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lv2mXIYEV+OYf/MGkXY9BuVx8vyIrmWl898wh79BSDaM39sIcnqNDg+cs3F29EHgPFKYmLxhKfnIyoSExu1UxHM0kvVN3Wt/1cZtIpAv+7GztYjF4oi1qhAjAP13YSXbxeJ7Y3t8AKrs7rA21U/GozeKMbw6VOGBNg4LmA92kjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1/Ida90; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 493A2C4CECD;
	Sun, 17 Nov 2024 15:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731856818;
	bh=trNSTFeBBVarO0PL0Kg26OD6w9kVZ7xldCtOv3eIH7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V1/Ida90gFR8yDv5BvgFi1rR/pRJM4RY8kJ7iyu6RjtKhK5Q167p3cXEwNPRMeaqN
	 I6D+QKtk52Bsog4ys7F2Gr89poIZ0PxFbVMJDDmuRtkUPuq5gM3a9ImpfIUXCPfkjc
	 rtoZaC/580IU9tungZIycHHqWTTDdmpXT04ZFdOHJKFwWLzwK+V87XR9icMS3YnAwt
	 q4ojgbBfXs8l6wmE/z2fyj6tU98vVteABLMzdeLeHYAezvcTAIEdw/6Q6PL+47I+Ny
	 RQyxvZB6VOb5nJ+N5vGiBXm19oG1HRVbXI+aUsCELvk94Bt4ZNppXAXKX1QHNZafKg
	 R1U6qZ9ZmreuQ==
Date: Sun, 17 Nov 2024 16:20:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fmod.3
Message-ID: <bdqvuuvpwadm3kafgd4q5fdsmxxe6iqhrkxbrvgyzhwlv2gztw@msnpeeiuaz4g>
References: <ZznJgTA9xeSYKNwA@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zzqgmddggmt2e32h"
Content-Disposition: inline
In-Reply-To: <ZznJgTA9xeSYKNwA@meinfjell.helgefjelltest.de>


--zzqgmddggmt2e32h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fmod.3
References: <ZznJgTA9xeSYKNwA@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgTA9xeSYKNwA@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    fmod =E2=86=92 B<fmod>
>=20
> "To obtain the modulus, more specifically, the Least Positive Residue, yo=
u "
> "will need to adjust the result from fmod like so:"

Fixed.  Thanks!

Cheers,
Alex=20

--=20
<https://www.alejandro-colomar.es/>

--zzqgmddggmt2e32h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6Ca4ACgkQnowa+77/
2zKhEhAApNhA1J86jAK4M52nCixEx9WRJ6oEIBj2zPVwXggaVbkDPoGbw6TSWveM
7LAKWB3culP5qi8EKwIy2rRdPET+IYcUjMfCkpMW5SL39rHUXxyVSPQFlnVJT69M
/NvzQDF+PJoxVkob093xgc/49QxVjl2iwdIWV2wHHgaqxKSYO45vZgpRQQJSaQqp
PML1JNDsvXBTz6RLie1pK47cWF5TfvXaCvW3C/hhrg/B/cToc0wTSyqSIKbkYl7Y
TBR+cSH2eQ659m0dfHSYOMqcUylBHszWQlcUY+OGrSbrYrPRYQU+u7XR6B5+qO/h
YWFbrjn57H/HyOO89voYTW19wdCdGvxwfpNuLvohDIDvecQ8muvGIB+2do2k7Eqq
jm0dXGmBRz7dPgtXwzDEFJPh/An8InaFFV+ZeYUz12xGDjPCeyMZCgz+wznw2kpq
TGBifAb7J1JTHvV54dmhnc1jIimt7SeAkApE0qwW5zwu6dsZabgb8pgtTFYgDzvF
MQFWEzdWgedFHb69604l+t9QWRx/8ZCv79LXdhx0Drm6Rflf4p4dfAUzHDFqgvl8
NWkFmSxUdNXfDIgmR2QXkHe2vNz97CDtFA0q6hiLkkjo7HnZvTZQ9DvNtfeIkG/i
hwjVmugK1FEdn3zNbFKthqdqN+G/JrawOQVR2UDIadSs342CYjw=
=nxPb
-----END PGP SIGNATURE-----

--zzqgmddggmt2e32h--

