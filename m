Return-Path: <linux-man+bounces-1768-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A5896F4F8
	for <lists+linux-man@lfdr.de>; Fri,  6 Sep 2024 15:02:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CABC1F256EA
	for <lists+linux-man@lfdr.de>; Fri,  6 Sep 2024 13:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712411CDFA4;
	Fri,  6 Sep 2024 13:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifKYeTjS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3FD1CDA20;
	Fri,  6 Sep 2024 13:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725627726; cv=none; b=lrJjfg5pezM0JQ6U+j6rO8QkmeXsIuHQhONhRugrqnCwBqFmKMvl4IYcyS10kJ5UePok+/kQTi7wMfIU28WalguHpBd2mlJq8bKMtLKWtXH/4efMKagNgdYu2+P8lvrETZxJv8kD4lNowB5yaOGA4FUYMdtpAGhp3azOaEt/R5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725627726; c=relaxed/simple;
	bh=idwRASSbmNV21nib+1VGsgeol9toTLiON592OGeghxw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ZCk+J53/hlzYfvFBsiesIRgGu0DPb/v7y3lVkSn7uip1YOuZFxyxorFL75ijOsH3KZZE0nnBNDtUiPRpCXqbIeAV/2QUlTZji8y9LPdEc97xzjp7UzYtt6zbF/iR9gonOl5qeHYqrBVdJAQ5Gve/HrDHdiAmrIzSDwmZfzylNZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifKYeTjS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99508C4CEC4;
	Fri,  6 Sep 2024 13:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725627725;
	bh=idwRASSbmNV21nib+1VGsgeol9toTLiON592OGeghxw=;
	h=Date:From:To:Cc:Subject:From;
	b=ifKYeTjSDDmDmLUPFxtzCoUjs1IQ/saqyNMvJVDsHrBJKLVcSiJAgCmIouV47SKr1
	 ZnwaZWWMabT3ybzR4NJEL5zia2NlLuHvEnXgKaXMqyZlwUFvkMD75U3tDV2QHQwgU8
	 dgPbdO3EyMCh/5dDTZmj7/KCK89uBhHstQz5zzLqljYcpnSzObscQdLF0JFXcCWx3W
	 eMcX21SK1UI2AkqMjtcHQN1BAHIsjloNd9in3HgOTJdV6kSNAvNViuYLHzE8UaKoEs
	 A4e8+FC0ekUpCMU3o9OtOjAFuz5+HzRXKfsUtC/q/VVYioc8zoUlQIVA/4zDwQ7BDV
	 CN3JFO048VoEA==
Date: Fri, 6 Sep 2024 15:02:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Linux man-pages project maintenance
Message-ID: <4d7tq6a7febsoru3wjium4ekttuw2ouocv6jstdkthnacmzr6x@f2zfbe5hs7h5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a27xozlhmlusaa4q"
Content-Disposition: inline


--a27xozlhmlusaa4q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Linux man-pages project maintenance
MIME-Version: 1.0

Hi all,

As you know, I've been maintaining the Linux man-pages project for the
last 4 years as a voluntary.  I've been doing it in my free time, and no
company has sponsored that work at all.  At the moment, I cannot sustain
this work economically any more, and will temporarily and indefinitely
stop working on this project.  If any company has interests in the
future of the project, I'd welcome an offer to sponsor my work here; if
so, please let me know.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--a27xozlhmlusaa4q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmba/UoACgkQnowa+77/
2zKdug//cEewPvpFqvkGbC7wgy2zLhrqEh756Nu3Db8LZpCmBvCO38Zu1bZ2j6VF
DXuF6Nj4cJeVOtCP3hdA1vCleIia+arTTnR1+4FcmODuxO45Pig4tAVkXWlmkYxu
aAGhtZ618GGSBPvwf71lKq64e97zmbcGYjQepCQkGmz1XonkSIwC6OjOISYHFhML
VXwYqiq8VR8rBqlzLPMHfkPI+xqNp7HZEcKwrummPTLNPAdccUatZVhiVo50hSpD
Y2BNiSOLNHsD/IPOEMVoDUgO+y5we6JQOAtZrNgJU7ZpcsWUjFXuUjWIx+6xjhLx
uVqFD8b2qjb/ezOwc81kFQDCDYjAGx8lzk1OTRJlY9UAwoLZnQ9qCu1pdhC9Zj+k
U34OWpc4yAN95kDBEF0S0O2LZ8rgkkLgZp3t39Es7w8eGTCozBH1K9SFjsecwbMS
KoIp2DmXkqolq0BNnCnUYuX1NIj80LrN0F95c6jpkNNHTo4DoqwoqSrCrUy1L0BG
CvT2lXB/D6BZ6RO9W4sqFCtgUgZhhxa1U1YIaYDLIbJgKQEeY8HbnFiBv09QaRxC
kmsLD+CEW2ewgXyku9bSTd5FdkdrNQJaSpUPZEai//yn/a1i/rJ1HCc5gizeNXXE
asGag40cit6/WBIW5DAY6eceplsXfBoYW1LM1NrYHziY9Dj7YGU=
=K3L8
-----END PGP SIGNATURE-----

--a27xozlhmlusaa4q--

