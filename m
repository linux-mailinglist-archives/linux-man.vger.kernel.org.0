Return-Path: <linux-man+bounces-4535-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9D3CDD681
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 08:13:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A7D723009F56
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 07:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0FE42E6CCD;
	Thu, 25 Dec 2025 07:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="EcjCQX9u"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD1229ACFD
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 07:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766646801; cv=none; b=SucmHFI+Wxk0dWfsDS/WygEcN9kyB6dhks9xwhcKm48okbb1DK0g0iVrjhDBxz5b2mE3aAARL2QigwJNFvLtHtseve0+jUb+plMpYzxvaUvlvS8N3PtnWSpn69y9gMvX8MBIMhevaG/GgGXngh4h2I52DVZ//Q2DoPUAO9Z12vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766646801; c=relaxed/simple;
	bh=0DlIu8+rFghPJ5GEyL7U66znaq4GRC3G8EYTvZAAEgI=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=ISf5N9GBMEF3ppgKSt6OYhm0kLfKRyTUeT/vanIcPK4WAW57WwDaDSKzWCCYLiYdZiIJ9L8mrd2VXJvW2WOMy15QgfYlKW4gy86EzcUxmm6H/CtPxNa9hl6rZoB1RaF9NbnLetu50kjsZ3Mi8B+L+l/Q9Hrq/aQM733zbRwOGAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=EcjCQX9u; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766646798;
	bh=UBZCluyLyjRBG+bkJj0xwuDfJhQ0j1hS4egk4DbOuM0=;
	h=Date:From:To:Cc:Subject;
	b=EcjCQX9uV1UuMo3udMSkA/bB139eUkMuaeHZII4g8pFqJxsud/MpRRMwO1Bdps3Pg
	 ovJlUwYrF8/foLqX+HvsBL+B7v8xQEzaI2UaO5Mvl5uV89njGRao0RJsqbeXPaqtS7
	 8Nq3nDs61cH8F1MkSrTuJKrUA1SPZFAqwNL9kDgKdJSBkbwKlC9UVka0OqkT1QvYTZ
	 s20piHAudobQWDaQeiQ3APjuivGzBJCEACsQV91ku9JtosmWS/zkGge5fwiW8lyqLT
	 8REcTwODnlEgZFQVKfmbNb26VEbx24HkRkOgkrjyCZEq6zumuMF2TKYZZuNWbNZ/gl
	 LTsEl6Lj5icQQ==
Original-Subject: Issue in man page  sysfs.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020010.00000000694CE40E.0012CF5C; Thu, 25 Dec 2025 07:13:18 +0000
Date: Thu, 25 Dec 2025 07:13:18 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  sysfs.5
Message-ID: <aUzkDrEHd4qo-3rG@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1232732-1766646798-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1232732-1766646798-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Without further ado, the following was found:

Issue 1:  Documentation/filesystems/sysfs.txt =E2=86=92 Documentation/files=
ystems/sysfs.rst
Issue 2:  these are only under ./Documentation/translations, so I assume: I=
<Documentation/*/sysfs.txt> =E2=86=92 I<Documentation/*/sysfs.rst>
Iusse 3:  Missing full stop

"The kernel source file I<Documentation/filesystems/sysfs.txt> and various "
"other files in I<Documentation/ABI> and I<Documentation/*/sysfs.txt>"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1232732-1766646798-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlM5A4ACgkQQbqlJmgq
5nDpghAAkh0dOSaydXj75vnsBMVgFSkZdrpBnDLyTwE00URqxzOQvu8vOjkRD3/h
/lt/ZdydZg3vzyGkheZGWD56NAhHTD6lK48t9QaJPWNDWBaxvho+Taq3nBxoapAs
t58Wa3gwLUC0/sHAO8RxAhMA+0kilo+5zxGu4fsKVKsNaNLrz81133fh5gK7I4Yc
resiUD6Vz47235F9MwcivOBsqukEQclaunskpeiRHD9Qn8+XwscmbVA1nfSnyHfh
hzaLVYiY+Mc4Dwqk53Nseh/AxdjtnwXSJqPTF7WRIl//cQmyTGo3+NAVrcfymfUt
RGIZjszoIzJOezBfUdWImgzJlK1UlG54+HVGNpsYaSSigYJ0fut7k2kcVQD6vn09
ZcxKYvVYico06iBN+BoIvKW/jmeKxyAgI+xIVjw6g38DhnBi/UAdk+TsichLYL8s
d9E9cbSzBvqkaX+ohVbn7ML6OC3YOOLWEPjFkBlWaeZ+HwkD0/SJr8Y1+oegJK4+
FtFCmx3wr9If8lkh4l0cYBdiVrJFOuExAeqftxJ5TvAJ0L11Hl/i8bTHZLZmPduf
Je1rpIjTaknKxpsYuICwYEKTo3gpJX3P8fOF5j0a+q/yjXf+uK1qRwE34M4D9okG
NWe+92IJ2Jg+hMw6EEl4YItVFf6t7OLzOJFgqXYfgU6xdd41GKA=
=zXJC
-----END PGP SIGNATURE-----

--=_meinfjell-1232732-1766646798-0001-2--

