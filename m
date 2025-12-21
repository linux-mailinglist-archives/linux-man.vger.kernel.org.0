Return-Path: <linux-man+bounces-4463-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 722E7CD3CCB
	for <lists+linux-man@lfdr.de>; Sun, 21 Dec 2025 09:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A6A830072BC
	for <lists+linux-man@lfdr.de>; Sun, 21 Dec 2025 08:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E902A1E5B95;
	Sun, 21 Dec 2025 08:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Ha5H4l8D"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D27145B3E
	for <linux-man@vger.kernel.org>; Sun, 21 Dec 2025 08:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766305044; cv=none; b=tPG7vHdk5Fe+EkQ7pcC4xvtVp7cVEiHmaHm8SZMVRQU3AbadQ0DmiCmyaMW7CuxoqFwH+2Fn7ZOwSkgh6LKGWp5yuyBUCXprfRjU+gh67tvbo1EynTF+b8xvQD8mcJ9bMX5TKxCjacWwurWreTPNjelK9yd1u/f+319VtdXaRTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766305044; c=relaxed/simple;
	bh=pAyMElj23dBRckoC7ZCfp0evKSMsNBtLdH8x9+Hi3eU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=f+yJSVGDQAQ/bJO5VHhw+SG7h/OWUeZkCkLiYNig35thwvSnAexJJI0MK/oUgAHjz6cFdip50cfAKBgNmtHjEJcFvqXAjx23Tbtx5fSkagJWzK6lk9Y2Z5iEwi52YtIU/d+WAxiYoYtoqTJYt2PBT8TSyRzDaaQDnS+WECmP8rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Ha5H4l8D; arc=none smtp.client-ip=109.224.244.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1766305033; x=1766564233;
	bh=pAyMElj23dBRckoC7ZCfp0evKSMsNBtLdH8x9+Hi3eU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Ha5H4l8DEgw79ba2RUcXsNQHolWf6RxLvdl42t6UWjRcjAUqgrvhb7HoRdjQGXnHK
	 RuIK7G2tgDfORa3idyIL1jLcureh2XLFocuYltHXbZBo09S3h6PEkEB0dvNh2LZeHZ
	 Tnu9Lg9usCXAxTe50qp+Xh5NcXpm0ITucsgupfRsrgqxR8uBZREGw4eHl4VZbnzMGM
	 6/RwGvo1cfhPSFXOKNBjkJBEp3g6+MpMm8Fss6XYv6zhVugqxeOWYwl4nrdhD9jRHS
	 xHSAaWEX/9S3BFmV2ZfyAsjb32tykZALP/VZxrFjB1BuLSIWFjUrp8t19JyjEqr/lV
	 Ujubhz8SXvXAg==
Date: Sun, 21 Dec 2025 08:17:07 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Early POSIX versions seldom included in history sections
Message-ID: <nBJHItg3tSnUmbXVk7-VufAS9V8JckVOUAzwYGrGW59ireGiPGb3ppy40QL3bgZhJbheep4RVQ8owzThk4LFmFWV5kohm8s6FbGoqAxchp4=@pm.me>
In-Reply-To: <aUbf39o2ce0WhJoA@devuan>
References: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me> <aUbf39o2ce0WhJoA@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: b10f6bba63b9d463049f9fd53caaf2e3e5c4aa98
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------50e4b4fc0cde456c2a14014dc32f6c3a7250f0caef81b4016e8e459fdab44186"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------50e4b4fc0cde456c2a14014dc32f6c3a7250f0caef81b4016e8e459fdab44186
Content-Type: multipart/mixed;boundary=---------------------2549e0643951fe7bdc694a18f8e5c0f1

-----------------------2549e0643951fe7bdc694a18f8e5c0f1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Sunday, 21 December 2025 at 03:44, Alejandro Colomar <alx@kernel.org> w=
rote:
> On Sat, Dec 20, 2025 at 04:17:44PM +0000, Seth McDonald wrote:
[...]
> > If the reason is the latter, then I'd be happy to help here. I have
> > access to POSIX.1-1988, POSIX.1-1990, and POSIX.1-1996, as well as SUS
> > (1994) and SUSv2 (1997). So I can check each function and update their
> > man page's history section with an earlier POSIX (or SUS) version if
> > applicable. Though only if that's desirable for the man pages, of
> > course; let me know if so.
> =


> Yup! Thanks a lot! That would be helpful. :)

Cool! So just to ensure that I conform to the man pages' preferences/
standards, I want to ask a few things about documenting POSIX and SUS.

POSIX and SUS converged to the same document in POSIX.1-2001/SUSv3. So
if, for example, a function was first introduced in SUSv2 and then first
appeared in a POSIX standard in POSIX.1-2001, should its history section
include SUSv2, POSIX.1-2001, or both?

Suppose instead a function was first introduced in SUSv2, included in
POSIX.1-2001 as an XSI extension, then in POSIX.1-2008 it was moved to
Base. Should its history section include POSIX.1-2001 or POSIX.1-2008 as
its first POSIX appearance (since XSI is SUS)?

Suppose a function appeared in POSIX.1-1988, but its function signature
then was different (e.g., returning 'int' instead of 'ssize_t', or
taking 'char*' instead of 'const char*'). And it only got its current
signature in POSIX.1-1990. Should its history section include
POSIX.1-1988 or POSIX.1-1990?

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------2549e0643951fe7bdc694a18f8e5c0f1--

--------50e4b4fc0cde456c2a14014dc32f6c3a7250f0caef81b4016e8e459fdab44186
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlHrQEJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdIyDgEY+1WhwCPxR1YNbcLsjgzi90KDOaHziDN
ll18DxYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAAA9NgD/RjLc68bAPeYlw5jv
kuXJF/YKxYzz86ll36JSXsTXH4QBAP+BK8/Rkxq1IjMzQkjNCsDXsb1Pg6hL
0x0nKrBR0UIJ
=wkt9
-----END PGP SIGNATURE-----


--------50e4b4fc0cde456c2a14014dc32f6c3a7250f0caef81b4016e8e459fdab44186--


