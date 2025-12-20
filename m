Return-Path: <linux-man+bounces-4461-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF1DCD3365
	for <lists+linux-man@lfdr.de>; Sat, 20 Dec 2025 17:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63A2C3011A7D
	for <lists+linux-man@lfdr.de>; Sat, 20 Dec 2025 16:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F00F2ECD2A;
	Sat, 20 Dec 2025 16:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ivOT2Ogv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-05.mail-europe.com (mail-05.mail-europe.com [85.9.206.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9031130B520
	for <linux-man@vger.kernel.org>; Sat, 20 Dec 2025 16:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.9.206.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766247486; cv=none; b=MIp/R/wHV7NE4/kwUTFRgHip1AxbgUHl5Xyx6GvdglMprgxt9Pa4Dr6/5gEJTdPEmVJ915AYhGsXite4VofXsfwrHipk+af1QF7yw2r/FP7/IwLWzsXuNK+7Um2j1II1sCj0t+LHOMzT5qqeE/H8C0qwHAq4BX6fr9Ll8oqDnJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766247486; c=relaxed/simple;
	bh=u5xcDC0FiEnCqZbO5pi3+VZ6UHU5veA7TCMOzLybeIo=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=NcjeqFrexBd0oaU+gG18du/v4zti5VSpr+gVeS2gKM2g5s1z54WI4f6X5YWrPKQcfcg2OceDnq88RVLmyRUcMsQTm8U2KPMFJGI0ntFNkQo1Hdj/cXnxwl8iFn24PTgDrLxfXtYGM9AV5e5gSreydUyjiWhxFwocvTd55a4+Pso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ivOT2Ogv; arc=none smtp.client-ip=85.9.206.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1766247470; x=1766506670;
	bh=4j83qoXW6LchgRoecyVV2kpmg5GnGNY9tLHlZdpxu1E=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ivOT2OgvjezHohWLU7dW+OqEryQ5BweshYzLdzyLDU6+/C1dmzZSrxEOwm6GYiMUT
	 i232h6VZLpkY5FuEgf4tsIgmImbo1aoklcae9IOQ9VeW4nB095AtOhN/sek2sNePDP
	 75P6F56T8D03zm7+kf78NFMzjx9cv7MC5NDYWKw3Rwe02a1WPsP6LZjQaMrwARSZVF
	 t5/oA2WuLAdrEaEi//6GTQafSFaxOJf2Pr+APnDWY/seEOa+J6Ena9oEtAxzg3uDE9
	 ryzMFPRAXJzXnbiJYYmPCoZi7M79UcRNTt/JWGn2f9QTyQMpMeBoPZ2X7DGhTMGwJG
	 xFZiue1iCVI6w==
Date: Sat, 20 Dec 2025 16:17:44 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Early POSIX versions seldom included in history sections
Message-ID: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 7fa9db09a82df23372db664280753c01ec160b3e
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------d3b91e8f4d43b5ff4c687e298b70772ca095b4bc6d93c2237926a46397077eb3"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------d3b91e8f4d43b5ff4c687e298b70772ca095b4bc6d93c2237926a46397077eb3
Content-Type: multipart/mixed;boundary=---------------------3c2385683182e545a00cdfe27d173d59

-----------------------3c2385683182e545a00cdfe27d173d59
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hello again!

I've noticed that in almost all man pages for POSIX functions, the
history section documents only as far back as POSIX.1-2001, even when
the function appeared in prior POSIX versions. For example, the man
pages for close(2), read(2), and malloc(3) all list POSIX.1-2001 as the
functions' first appearance in POSIX, when all three were included in
POSIX.1-1988 (though read(2) got its current function signature in
POSIX.1-1990).

But there are a few man pages that do actually go further back. By
grep-ing the repo with

$ grep -E -nr -e 'POSIX.1-19[0-9]{2}' man

I get 28 matches, some of which are from functions' history sections,
such as in the abs(3) and ctime(3) man pages. Which makes me think that
either the history sections were intended to start at POSIX.1-2001 and
these few exceptions were unintended/overlooked. Or the exact version of
POSIX that most functions were introduced in was not known, while
POSIX.1-2001 was freely available online as html to check.

If the reason is the latter, then I'd be happy to help here. I have
access to POSIX.1-1988, POSIX.1-1990, and POSIX.1-1996, as well as SUS
(1994) and SUSv2 (1997). So I can check each function and update their
man page's history section with an earlier POSIX (or SUS) version if
applicable. Though only if that's desirable for the man pages, of
course; let me know if so.

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369
-----------------------3c2385683182e545a00cdfe27d173d59--

--------d3b91e8f4d43b5ff4c687e298b70772ca095b4bc6d93c2237926a46397077eb3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlGzCcJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdcXiGk4GHWkl8NJOzkjj7ORF0bMUazi5aHOUwi
ISuFCBYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAABAuwEAgk/etxBsCwmgZTPg
rvserSRnRQpAz24BxY1MaQcRU+gA/3f6cWT+3JcTRRA1AyNjrr1/cmHYBIHk
fWdT7sxy5jAE
=ocEY
-----END PGP SIGNATURE-----


--------d3b91e8f4d43b5ff4c687e298b70772ca095b4bc6d93c2237926a46397077eb3--


