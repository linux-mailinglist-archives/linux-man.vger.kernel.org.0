Return-Path: <linux-man+bounces-473-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA930862A22
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 12:53:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E3A6281B78
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 11:53:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA8FB101EE;
	Sun, 25 Feb 2024 11:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzrQ2dkf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB204125BA
	for <linux-man@vger.kernel.org>; Sun, 25 Feb 2024 11:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708861995; cv=none; b=Hav+PSguqM/9MbxZvgPXkMZSGKIillWmNb8DsHPbW7NXUaUIP0CedHnXqch5gkZFr+WZD0fJz1LPVJSb1+cPHywK2oI29vvCTqYtVPtlnOfW6fFTXyOr3LmpMRXTQKiwghv0LSrwSqo2Bc8DcnfxyyXWsyBwJ/Yl20dDYyKCKuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708861995; c=relaxed/simple;
	bh=rQpOQDb6ebTshAGW0pslfqfCSzIGVTaSNZCQDOkTIb8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HMKXBZLqvzJWtbIWC0PlEiQHek8S+h8alDRUOerYmuppYdo6Tk9OxYsgbhXDpZ37QzdOp7SYjrxa8vMvgVwUCapppk1+BTzxkfmzR0ULUgfA7rexC4HEc1lNJeIFYOCIHCa2TP4+q2GVqAulq2rzSd5XTDEnbd+7rqIc8OykaUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzrQ2dkf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39AB9C433F1;
	Sun, 25 Feb 2024 11:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708861995;
	bh=rQpOQDb6ebTshAGW0pslfqfCSzIGVTaSNZCQDOkTIb8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FzrQ2dkfPv6UCyhmjiMukqtO3QDInyp9vd2nLvD1I6W7hpmP9Xox7wkV+FUf+/CAA
	 j19LamvcbRNn9fxm+cPGZ1wxwpAxDZ386Inaypxo2BQKoZXzOfSxmROfYiEmyhVBlX
	 Jxp7izcLcdptoI9Do9pPigBOjE0tv1a1wq79Ld2vSKtPV9R94KClNGeHA4RWdl5Uz0
	 X0iq4ZOzKsvcYwbTB0/aSr0Nx6b3M/GQMyj/uj29Cuw5IKwA3rC+YLQZ1hrLM5VhqN
	 9qi//7iENgy7/wkuK4+Epmvh2U/k8Khkj9lNDZFt81khwviYSd3NWRlGjjJeIVwpJL
	 8HmUoMBLF/SOg==
Date: Sun, 25 Feb 2024 12:53:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Thomas Orgis <thomas@orgis.org>
Cc: Alejandro Colomar <alx@kernel.org>, Eric Blake <eblake@redhat.com>
Subject: [PATCH 0/2] sigaction.2: HISTORY: Document history of POSIX
 constants more accurately
Message-ID: <20240225115307.438556-1-alx@kernel.org>
X-Mailer: git-send-email 2.43.0
References: <20240214095707.1824c25c@plasteblaster>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tpfyzgvzkbti4f2o"
Content-Disposition: inline
In-Reply-To: <20240214095707.1824c25c@plasteblaster>


--tpfyzgvzkbti4f2o
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 0/2] sigaction.2: HISTORY: Document history of POSIX
 constants more accurately
MIME-Version: 1.0

Hi Thomas,

Thanks for your bug report in
<https://lore.kernel.org/linux-man/20240214095707.1824c25c@plasteblaster/T/=
#m9dfdb5e0362404de9e720afda72d181b14a93159>
I've prepared the following two patches.  Please review.

Have a lovely day!
Alex


Alejandro Colomar (2):
  sigaction.2: HISTORY: SA_NOCLDSTOP wasn't added in POSIX.1-2001
  sigaction.2: HISTORY: Some constants are or were XSI extensions

 man2/sigaction.2 | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

--=20
2.43.0


--tpfyzgvzkbti4f2o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXbKigACgkQnowa+77/
2zI/mg/+ItR6R8MOqgXrvzKAt67ZrZ0zvUZ9c6Gzb8TCjNwfjj0JouoFVRgUbx9P
Meu9AZ6K6JhsNITeoBzq4P3ZlCipL6FrqKAL25JQnHcNG2lcga610xBGAU+8rGcX
Q7sYehI/u5SLcLofcrvu+/sh9Ik88GWqLzT8pqsPVrj/eFlMi0KC9z+P+pAsyeXo
mHVGF/SqrI5aj1VJ6AlbFVErNTfaUOsoQDZYCE1nA480YmaB4HfAihjGvrnyooB6
jctgv1mxD0VeqRio9ReY08mAeF1C4+OBHDVMSwymm0iFAJljl+DwdyJKN35mygP/
Yj3ZP4SXyZnZ6hiqi3+5jTtYp/YbRSlpGVO4C+gGZZ3bS/RCw9x3Qcmidp8OVVxK
6rnF/N5grTzssItORSgHQ9vecPql2Y5fo4ySQ8Wa4IvuElu4yKxQMMdrwE8IHh+O
jTRQavCwblzFtfuxvjw1v4JP+tHny8OWUSifdFO+D3pkirYfPw/MsjU/OI0ut6Bs
3BmXj7ZdT5NKiM/LBtYXkYwuaLenakPiuNtzYTywALYzGGBwFQPd499lhjplpgvh
DqjWhdcbPyKE2vA4zYc9p/S4ArmLa9G9Lz94NiLEdLsxvDqPVcPyoO7iRFcIgbOW
EWUaqwRIRV3jFTEaLDSAByKBl4qNstJvjouP/tU4mH/VxD4QL60=
=Veo7
-----END PGP SIGNATURE-----

--tpfyzgvzkbti4f2o--

