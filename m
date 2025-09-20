Return-Path: <linux-man+bounces-3894-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F0BB8CC86
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 18:08:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66568189E6E3
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 16:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A802877CF;
	Sat, 20 Sep 2025 16:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jwq0Wgiq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641C41A9FAB
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 16:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758384520; cv=none; b=Rn4Zcy/sNx4rqq+zZMKONShQZLH8q/Q+iUGVA/PBiz7VnZec90wtvnyoi4nSqU82Uu6w4tBUDONsu9BrhNFRumER1jfq45iSSxdWRWr56Y0H6aGiYNobAIA0Zkedn6kmT1cDsnkjtCivD/XyopJ6/D6ZQ/iD5M17a91jIr/InAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758384520; c=relaxed/simple;
	bh=P/x65/nSVcspFGsgtwmJYF03e1L0N5eyPfchkeX1T5o=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=V0vMVm7az+RLtdjqdG4c+0o96F6isE1LbJ2UjqOjUhNPhm9AA6M2GXFlR2ISZIIGi7ZblJutD9FlfPnoiEqulFYKoKfposQfP5GO79krQR66BVbr6a+cr0y3g1oJ7XycxWxhOGyBj+PC0LhAVt9k43zssL5uYcGCvLaQRoHRxOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jwq0Wgiq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4D62C4CEEB;
	Sat, 20 Sep 2025 16:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758384520;
	bh=P/x65/nSVcspFGsgtwmJYF03e1L0N5eyPfchkeX1T5o=;
	h=Date:From:To:Cc:Subject:From;
	b=Jwq0Wgiq/lPqDXChHvzEWGCfRtPhfuzUVsOGrToW1z6um3vAU5uEQUozgEgd3McPI
	 SbU/1jBf1a/YYEC/5/3ajiQIks/lcxSF0Q83SC6LNj7wKVyGyOwoSFZoy2TxvecW2X
	 eSpoCxsis98HdDvwCRsbVLfXnHRzrB4Xkdv66LGbReSFu1l+OvREHdgIGdSdetOmwE
	 dq4GyQvAySpG8O2IJnQw8LZbXfk/PTbYdkTGQafpkEGdoDct+H5KPGTlVm0G2DqIka
	 ZH4lS0ogn24lstPK8DGuIDKBnnGD/ss6a+uOwnnjKjNn7ZxvgrXlPc1p82A2WHnaXe
	 PLa0WVOofELHA==
Date: Sat, 20 Sep 2025 18:08:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: coreutils@gnu.org
Cc: linux-man@vger.kernel.org
Subject: Move GNU manual pages to the Linux man-pages project
Message-ID: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="itc7iylw75lt2hvw"
Content-Disposition: inline


--itc7iylw75lt2hvw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: coreutils@gnu.org
Cc: linux-man@vger.kernel.org
Subject: Move GNU manual pages to the Linux man-pages project
Message-ID: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
MIME-Version: 1.0

Hi!

GNU coreutils manual pages are to some degree incomplete.  I was told
today that "tsort(1) is a bad joke".  I wonder if you'd be interested in
moving the maintenance of the manual pages of GNU coreutils to the Linux
man-pages project, where I could take care of them, and improve their
contents.

I understand GNU's stance on manual pages, and that you might not be
interested in improving them much, but maybe you're open to them being
improved elsewhere.

The Linux man-pages project already documents the GNU C library, so it
wouldn't be extraneous to also take ownership of the coreutils manual
pages.

What do you think?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--itc7iylw75lt2hvw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjO0YMACgkQ64mZXMKQ
wqnZDRAAl4OuRe1Wg2JVPfV+uolth3wopaxdYHAn1AIW0hDRUDGYFkrnxSV32gRZ
9fnT2V/tsqHrzbmC838O4d+Lm8ULcvCfzNVtiks05e+lDGrrg2Gczcvu/TFn5zsy
4TKP77nCjPNS+SkdwK/MRpUnckH2hetyXeSxWPaL7xW55FMD477JVxdCzw2kIzJp
NeZ7cl6w403vKz6eUwxzI7ZXpSkn/L7+2bQmlk4HC8ph568YJDmWttloT17zoW/J
5Dookgak7YZGe7xB6CGnge82lJvjchHP4EemyaTezKtGz8RWMK6BgIME3/oVsb13
Um10Ad8Gcw6vTOstPLuZapUOlbS5X/ImLyBpdONaaGKg7Jh64LiimRjezmvaIdBT
+txMqirvpr1+WWdiNZxZIrQK+lYGMhWRmsRcmW+GqC/4Kruy+NfujYTV3HECXP9l
SUQQYMI6OY66tstrXHQVzzg2TF+KPm0StnmL1H6/8NSVl8l5kW3EVivLPh+whptj
WWwD846pSjaeYN0EiL/ktCmuozqqeeWxVYAq56nChGkjM2gaE40tSW7il8NxTG91
TbCskQLsMRRB0ZOnqWO4AKYRzoyzev3isiU4C66Hpk/7yls43ySNotrQg9T0CfxT
GfZUwz5JOewEPVnenJkPD2AMx+p1qPxCURzT6DIZS7NvkG3lJVM=
=6If2
-----END PGP SIGNATURE-----

--itc7iylw75lt2hvw--

