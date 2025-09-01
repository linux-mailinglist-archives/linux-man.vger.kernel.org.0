Return-Path: <linux-man+bounces-3805-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 290BBB3E5CE
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 15:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35D2B3B94C9
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 13:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25623337689;
	Mon,  1 Sep 2025 13:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TG0trSXn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D909D3375DE
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 13:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756734161; cv=none; b=L8gkMhbCmKtLmB7OP/GJ+dNbcw8Y6NnAjkjrwbAe3y+5F+wGr+sg13jb0WFwloo4O/G/jpB4Xp9ZCvZZ8SQLfVER52OZkqilBM41wndjgkxS0sHQSyxR+cWGbaMoxrSCtViIyIdKoz9PlN1gDW/zvUfhzSixj3GyKTLTRPM5aRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756734161; c=relaxed/simple;
	bh=0b/HB3TGfudk/SKYvge9G3k1M26RI7tzFG7ft+aCrRk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZA+7vmu0SVNe508Wwi3Txt6bpwVok97N4zEeS5pSuOrcg8dfsqCh5n9vVMr0yZ/QRg19UmUKflxV1PGOShfpFqukqAuEi4/hfGfhk3n88BavU+rjXOfpFylMe0a5pfRUhzykWCpmqrb/pzOmmsAP7TZAJBdH+fkARhs53/90pw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TG0trSXn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28AF5C4CEF0;
	Mon,  1 Sep 2025 13:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756734161;
	bh=0b/HB3TGfudk/SKYvge9G3k1M26RI7tzFG7ft+aCrRk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TG0trSXnwMSQIwBHrsKaAR/B4rM2ZcHqnGQ2vseKePTwE+H5cjpFLvtSsVLNxeEVA
	 ah2f8P6qOOmB0/bkho5rcl3qAfEQGfKu1jG+rk9QV1Qw6rKyEoOhQwKCMaxOTGsPK7
	 VLb9X45Pd7hDlRnhnlvQyVvJak4vuYVDWXW+3lEjp7v99jqKc6gtZR9jYWMpLLQ90J
	 RrL5xac/2YBkFow4sRITvPtb91T+NGlv2I978GqXcSk0ikABsQzi3VCby57oANSIEf
	 u74ffmtRMxWv363iKCSm4PCw+DXihNwdbitYaUJAxk/TdSzhjDY/jr++hIBLQHbqnK
	 DwH3ZOkUJSHQQ==
Date: Mon, 1 Sep 2025 15:42:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sched_rr_get_interval.2
Message-ID: <y56rmud62pw7xa5aq6uvhlxdqnnvbt2fctdnncvwpicomfhopz@3mf2k3p7zm2a>
References: <aKsmQXsWjhZYpQCT@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3n5z5y5b3ufte3dv"
Content-Disposition: inline
In-Reply-To: <aKsmQXsWjhZYpQCT@meinfjell.helgefjelltest.de>


--3n5z5y5b3ufte3dv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sched_rr_get_interval.2
References: <aKsmQXsWjhZYpQCT@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQXsWjhZYpQCT@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:33PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    pid. =E2=86=92 I<pid>.

Fixed; thanks!

>=20
> "Invalid pid."

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--3n5z5y5b3ufte3dv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1oswACgkQ64mZXMKQ
wqnUzRAAiRe5I6migxVV8vAzhZaQUIHUXMA6HxfC7zjFp+XY8EvvtPPfcKyVuguS
j5q8Oq6pbdBaazqSisBXR5euGBcQpHjyxSEEs52R7qyTCXOHiAHyrOt6cYit5jmr
o9s9L8ucCd+VrdE3H04vuPfRJHAGLyw0aj+X/7rzjP6c5BwajiQwj5vj2U2+MLld
3Jp87xBgCdRikzkya7JCL4ZeMb3U36BAs004yHygDKird1+LLyOY61hrx0ZJSAje
lIwh5/1EYPmBo6B2leuFDxjPBMb/EDGG9bcpgdCvrcjxKPxdMFfP1dpeUP36p7k5
ITccz5NJE9swCDq/U1VnI4lwwQFKIpCiNAhyf8xRHa0CUooyje14TtJL7r+ZlsaA
vmCAebOvKTUMtif/nOedG9jlp5e1+S3En+CK8cZ6GRptSAOPQIAFmPuY2jr7BLS4
IALldxbLU6aIhWkR+E8JoFloo3mGXsZWTt0SuC+tO9NgI5rQQtSC8bqY4PS2BQRr
pcIK8dDSp7nASHGYBtjO4koZtsGgXiWBYpIm3pGrue0Vu9ayEJxGv6Z6d8D+xI+v
JVJprJQpeFweo7t8hwfzaQUf99r+mYfPYcUB/Wz0O8CE9XILnaQiWrQA+al9J5sm
Os+RY92qOp7ORM9iqE1FRrbJ4nQmyoyV8BDRWBcm33RIHaVE5zo=
=p16i
-----END PGP SIGNATURE-----

--3n5z5y5b3ufte3dv--

