Return-Path: <linux-man+bounces-4526-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7EACDCBA2
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 16:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4011305D12D
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BED524DD15;
	Wed, 24 Dec 2025 15:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WA/nk5k1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD3E156CA
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 15:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590542; cv=none; b=uIjSAmjlqfsS7NCBHmsOPrfuAgWmC35EGzycP2QBUzBFeGWMTUshxu0UOvlDle74lHE7V/Nl8Gs6nXKD9eKOXbY+TjzCma3HccVRHY/Sr8xEkbIbxP+H5J3CJ+OqmWBkojrLaERiCJy+t9W5/uwxnzMMjRgUw3WW4YKL2pllc+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590542; c=relaxed/simple;
	bh=FiXIhH3cCS8iHZgya+N2bTUFhBV9BdyObWw/M7O7RFo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qZQHLy+w4QYBVenViRLj3zzYBjVo6TYrlKxriZBf2ZOn6dqxhD7IB5fnG2lqSXc7AY62TamX7Bu1SJt2suWpFZ57Qn9TU6l/+/DjA7N3JZRtTzqtdiNIWTjaSPAoLVdwUj/9gk1fZa0ZFTe430LsKhNGY+QN+eQ0eXf2hoF1r0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WA/nk5k1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A229C4CEF7;
	Wed, 24 Dec 2025 15:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766590542;
	bh=FiXIhH3cCS8iHZgya+N2bTUFhBV9BdyObWw/M7O7RFo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WA/nk5k1Oa5kmXjE2om1DawXhAV79j525XEj+ha9OMdwFnqg60cWfOJohtrgSFHQz
	 Uc647Pmf2dhQ/fVIT8colzsmoDo1kjvlBILtIcXjagzTyvZ1C0G15sAdAvxYq0Arrd
	 e0CZiUZ4EVn3sjg8hH5emR4PygJDaFEwwtXPdf3P8SjuyuiSSAGr2K3KGYIoxBqOaG
	 kAP5tbr+3gO0FYm4xDo4M6GNcl/PsP2AdpasSHJ51CbzxnIk8SPB9griKRLUss6ZI1
	 F1C30TNIUSIfqtfox8fUqGaRODuTSdTsQo9ecPv6hPSHBSD/rruAlildjNSFvIozLz
	 Wyb7WUAOyz88g==
Date: Wed, 24 Dec 2025 16:35:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mremap.2
Message-ID: <aUwIMCY0ckw5QXT7@devuan>
References: <aUv63blJVbEyCqOs@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h7xqezdxlc3fv6yu"
Content-Disposition: inline
In-Reply-To: <aUv63blJVbEyCqOs@meinfjell.helgefjelltest.de>


--h7xqezdxlc3fv6yu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mremap.2
Message-ID: <aUwIMCY0ckw5QXT7@devuan>
References: <aUv63blJVbEyCqOs@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63blJVbEyCqOs@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:21PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Why is the comma bold?

Thanks!  It was a typo.  I've fixed it.


Have a lovely day!
Alex

>=20
> "Moving multiple mappings is not permitted if any of those mappings have "
> "either been registered with B<userfaultfd>(2)B<,> or map drivers that "
> "specify their own custom address mapping logic."
>=20

--=20
<https://www.alejandro-colomar.es>

--h7xqezdxlc3fv6yu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlMCEoACgkQ64mZXMKQ
wqmHRxAAkMa97E2RvdQJF9U8E9J/GLpRwptip/GKT6NXG8bCZq2w2KuKMRMl5SaR
vczporZlZBFToZKjBvdU3hPp2ds9JwSWeaBgnIzr1tM0mQahfwdZaA2xhMYXZRl/
HB3gbc+NlFeqsf2nO3XZbX7rQ13FuZtonzTMQkyU4rG+UD/esTD8BbvN9LtQaPbx
+0sFzZ8bEu6KEsZAI0C4uB6RB1uBoHX1RsgFWq5cmyfl5Tv7Y+tSfxlIGw5mucuW
gNv6Hy/yxP/IZ7vmPyq7vW/uxtLmgj6JtdejPZyChfe1kQSw9Pk8SRjKEYYgE1Vl
7jm8G/dVVUatnY/j4m75RuqGTlWzTBacFvfWehU/D6miftIhijGCsZ+DSGDsr3Pf
96LZ2iHKZ/BQNmyaPpYbOq3HCm57rY2rdLQTNmQrJzZJ53C/uoow5pQcg/wQ7Xee
q3VyVEv+LghFWYoai/my6aH/SJBUigzwOGrT6f6b8GSjqI1R1Cs2TbU8DxnQhEMR
Dw1v0+Zjls2TckxqaO2YFKNcAYTSywOJA+GJWHgmn0cnXxP/k1/MfdXKDIHvmojF
86N2Iq/msQ2/VBD62q2LTOq81BTd9IMAZyUYXcu2BDHhg+QpYg4cGa98mhX1pwMa
/EZsOAEsUAyL8LPKL03dbgyXDUEegzfnD2GJyfdRCeETBGUfyek=
=kIsA
-----END PGP SIGNATURE-----

--h7xqezdxlc3fv6yu--

