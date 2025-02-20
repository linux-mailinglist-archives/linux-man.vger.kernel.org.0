Return-Path: <linux-man+bounces-2496-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D18A3DE8F
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 16:30:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F15AD1893B01
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 15:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2B5C1FDA94;
	Thu, 20 Feb 2025 15:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhEphJT9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2DEF1FCFF0
	for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 15:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740065341; cv=none; b=hoc4o4Idkx8Ctitw3l6uNrkQaXuvCGOsDbuNh+mWKRoo20MAjPC1JUg6q6YkhxghadmCCfsGwMe3OG5GRSvPnJ3ai8+qJOedPV9yT12ia1r8Nc3tOKH3eF8w+2Uo6+t/Y6A9A9EV79GG74G+zHT5BapFlNgKp7l1F2D9w5+AMNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740065341; c=relaxed/simple;
	bh=vX5GX+dJNesKeJmlyxIModj2ncBTTw7kApHa59kfKkE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N12xUlMQVBAPEQDLximkUbx6mF02cxIsnxz5ETRFZsQFNr9fXsvEMWqSeMuxJNsUTavnZQP6O2Vg0+/lfuNc3eMfccR1a09NdscbTJcjuUGkx3HI5tqwxDcvZoqcMbb0up1cbwfJPpr3K1Rlq9P/lqJ7hDXqccQf007CBn3aqb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhEphJT9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E5CBC4CED1;
	Thu, 20 Feb 2025 15:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740065341;
	bh=vX5GX+dJNesKeJmlyxIModj2ncBTTw7kApHa59kfKkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dhEphJT9HwSDkyCQIrbajUTquVi3MTuDlXibBr6rI4sst8whQ+UGk1SpLQmLK3oik
	 enGabLjF3JOWP3Wz3RLfkP28ZSL3AGmRqwqlJCUxU+Djw7fzeieA9Ml5W6PoZ3ZLSi
	 PVMALJ8GCrBQ9jCl9jc3HAz8BBhfnwFpSfSxHh7jswlZRxtEpBq7sV8WqgeUAvtTro
	 70c4mb+gu3LrTSC5tRYNdt+om/zbMG7RgCnpBkLZpF9fpWmSRlvIoQOQOYb0N2nnOC
	 5wMqOFVH09j5fNNrwa3DKdrcsDwvsRuLzs0qrCYRZmGVCkxBMCyaV4knfBGPqBZmpM
	 7Oyfhg6A4Z/OQ==
Date: Thu, 20 Feb 2025 16:28:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 0/2] man/man3/getcwd.3: say more clear that syscall
 can return "(unreachable)", but modern glibc wrapper cannot
Message-ID: <3th4augdyuwfr3iosszkkrupc4xgmixwcymjx3keewc5n2irzx@gfa66hqlcoxk>
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250220091926.3985504-1-safinaskar@zohomail.com>
 <xsogcn7ta4j24np4diop3uiyg2ulqqkrpxvrpshcslkefgmdhd@eljyq62r3fjp>
 <19523b7f740.cc9a3f43142477.6001365032620281680@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sbd72h6zbffqjtk2"
Content-Disposition: inline
In-Reply-To: <19523b7f740.cc9a3f43142477.6001365032620281680@zohomail.com>


--sbd72h6zbffqjtk2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 0/2] man/man3/getcwd.3: say more clear that syscall
 can return "(unreachable)", but modern glibc wrapper cannot
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250220091926.3985504-1-safinaskar@zohomail.com>
 <xsogcn7ta4j24np4diop3uiyg2ulqqkrpxvrpshcslkefgmdhd@eljyq62r3fjp>
 <19523b7f740.cc9a3f43142477.6001365032620281680@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <19523b7f740.cc9a3f43142477.6001365032620281680@zohomail.com>

Hi Askar,

On Thu, Feb 20, 2025 at 06:16:53PM +0400, Askar Safin wrote:
>  > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.gi=
t/commit/?h=3Dcontrib&id=3D32148703be51b3db5277c82e6e2d21ddfedeee4e>
>  > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.gi=
t/commit/?h=3Dcontrib&id=3D82fc3796b345caa08653dcba8ef6db37d9a4c05c>
>=20
> Your site https://www.alejandro-colomar.es/ shows error "Your connection =
is not private"
> in my browser (Chromium 132.0.6834.83).
> When I click "Proceed to www.alejandro-colomar.es (unsafe)", I'm able to =
see
> your site.

Yup, that's expected.  (See <https://www.alejandro-colomar.es/ssl>.)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--sbd72h6zbffqjtk2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme3SjAACgkQ64mZXMKQ
wqkUDw//SPwIEHhSafWBG1fysd/o5F0RDGos23VrQBx2PvXamGMZJc+Z8n7mylES
9TLhoQI+pOT+4sQCEU4uHNPbmEpdIZlcvWebbgUZH/xyuQhTPqG/CkQDxqWZRN1K
D9nUUv2ddROJ9mHqCAiUkv5XIFWltbXrlf6y94JIAuluWC8d7K26kq7MHSG1YNvy
i+p3/EAsgXv3HFH+GnNgIETcKMVpqppveKPqZPrHiD+DApHC3Z+UpsEfikJVBb06
CjV8qRLag4AA0ibgR5R2mwJrP260YY4r7aEqZizThOUsA7U9jAniqqE235sMIZLo
HPWPFqoh+smj6Lb91hQO7LAbfK/s6+KRKS4YZhww/K5VqfRkoc6T8VxIsor8DUFX
tOipvDaH79q8zf8elCnV4Vj6X9m1WPiCXmqppcvLEhVeXJvXxdyPfONLG6hbLjQC
bj6gqeHjdsr3mMOwbw7x4aT/rbF8l4KdAmSiAfeE0XMd4PdGmrqRaoByC1onxELD
6lHOB61MwwSW197JqZT5MuI44w1u4NXa1PWEDUxetvATSmApQrpZ9c/rBlgd0Bbd
/82XKjPcoGxtH+QCFBFQz+qEI+QdnV40weavoRBf+KyC86FgUVMoho4IdcjD917D
nrkqcteCaPt6dIGa+9vioNU0eO7ssW6SDi63K17ZswDcDHjiDCI=
=yw4F
-----END PGP SIGNATURE-----

--sbd72h6zbffqjtk2--

