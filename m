Return-Path: <linux-man+bounces-3790-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 566BEB3D484
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 18:58:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25AD4171AA0
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 16:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F852594BE;
	Sun, 31 Aug 2025 16:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="fv1hEzAn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA5A213E9F
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756659516; cv=none; b=WqqAuDaDJb6pv9X+VZ4wECflu0WFOQ1Ms0c04UGillc7E6hNgBTHVX3sTngvHa7gp6AVMllLZ9vIT1M/A3pL3htyrBPf/tdhnhckRyqQ+CG0tDrCABewE6jHt98qaPeyBXgfUsC/3wLV8Q18Kc8RUN9gNu5MAQ9zP3xh2A4i+Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756659516; c=relaxed/simple;
	bh=gQ5Jv6wCozdFZ9pqcTVY7GhJip/u59XKpHPEPPSbpPk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=om3ULCfIUXi4bTjCDWjiuNNcTToxrEjK5in0GY8xYh3++Khu6cEOw0OXpslRnvUXErZ3RA68broE3WeTxnlWkwJT2NsLa5XkDHbZH6TO8eKsaRoy5BMW9moTMZEC5lTUlTHQAdZh8J9Mnb5SNO7uRVF/oFx/6d+mYkDta9kQ7KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=fv1hEzAn; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756659513;
	bh=llhh3pKTNgzGAHWfoTZK5nHPONCCLhbHOE7v5H/anyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fv1hEzAn+QPV85qqHCCRHhQU/1LrxVBhioLE3ZVU5Ky3aqVaowAkm0VmLdPC3MA4k
	 s1RsKU3krpx+vvWp/3SGLOVW6oBOSqkk+eEf8hZ4U1KJgCETl+Z2LNwi4ICSJUKXmq
	 P55mSsuwon1H/TAVQMbelcdIjiQvlQPWA5Rgt5SSz+Bv1LW4HhbplPuPW9Z3V4pFyX
	 IUglcvGBd5oqXIryCGijEaYzyr6rOSLb2v3dLBhRUMBYClvYplGGcLlxOf//DyifbV
	 t07rVr/n5vPUFkuO+z99fYiGimiV8xJKXk0NPKNzI32oSrZhJ0fS+DuUp0VfsqfBLk
	 GQYz9ceCPVqjw==
Original-Subject: Re: Issue in man page getrpcent_r.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D0.0000000068B47F39.0025EA94; Sun, 31 Aug 2025 16:58:33 +0000
Date: Sun, 31 Aug 2025 16:58:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getrpcent_r.3
Message-ID: <aLR_OUIGgyT4FG2h@meinfjell.helgefjelltest.de>
References: <aKsmSfE4bvw0ZzPu@meinfjell.helgefjelltest.de>
 <bj437znuohouyfth45eevyrlbywxzbt65urtdm5o254axj57hd@3rmek5ldbgqh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-2484884-1756659513-0001-2"
Content-Disposition: inline
In-Reply-To: <bj437znuohouyfth45eevyrlbywxzbt65urtdm5o254axj57hd@3rmek5ldbgqh>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-2484884-1756659513-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Aug 31, 2025 at 06:43:33PM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:41PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    I<result> =E2=86=92 I<*result> ?
>=20
> This was fixed last year:
>=20
> 	c9af0ac6e039 (2024-11-17; "getrpcent_r.3: tfix")

Same as the previous one, sorry. Please close.

Greetings

        Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-2484884-1756659513-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmi0fzkACgkQQbqlJmgq
5nBMlRAAqX9dpSeNe8g5w5HSAjQlvGuoAvFSx7xRzh75jlxMRxGPZWcpXTdhxMV2
Hi017UzPhQD+6FgPL5aPmwrZUw4KGzLksWutxBbpvmq3vqXjAU4QvycipiEIoON6
/ZHL1vDsLSmnA6f8Z5aGMmLWZ3oKmgU9r5shukQgwfGCO34ql4PmFbOUur268scg
FmNCfhWc4mZhx5bB1ywAsrjDrx35/LQS1PchDaIr6fZadNGRHRQjEqn+V2OBVY68
zMLLLKjOjAdFHin273WMNWMBYdziBAC4MQcaW1kYGgJcQzxRrVckP1EHPZz4GWbS
2LJthoXWx+Wx0+Y4hJ7oXyJtg6Qij0LWKwfK007Z4ALIOw2z2jshmh00gZn3GK7c
/O9ZTk2k5nL/xuzqXchpGjwnpdcsnbrQmyNEQLyCOlsPb1yQvfiVVic9ALYwlHk9
9KaAaeCpjwzyiekXQRsa8RIyVRge6xiMr0E4HTO4Fp9d8etjz4nGjbDaMxqvm7GZ
fpLVw1AXXHLe5ztbOw9gSG2GUV3AyjMhNTj29a4R03zpJvzEsswO9Eir6VC1tiFe
bL86EF3iJyMpKgEvrpO4l7+F4VVBR5dE9PherW2isW/1UWW91c1BhO7nwv5HOzid
tT5yOPCRvoviDjKnpUCXyv27SDuEae41rrDfizoaSChHs50sz6o=
=z7Jf
-----END PGP SIGNATURE-----

--=_meinfjell-2484884-1756659513-0001-2--

