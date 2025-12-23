Return-Path: <linux-man+bounces-4471-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BD4CD8044
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 05:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7DCAF3029B52
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 04:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 393222FFDCB;
	Tue, 23 Dec 2025 03:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Asvwq3Iz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10630.protonmail.ch (mail-10630.protonmail.ch [79.135.106.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD792FD1A1
	for <linux-man@vger.kernel.org>; Tue, 23 Dec 2025 03:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.30
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766462191; cv=none; b=Ll9+hIdso6hCp9pbpMfVBflg+mJ+tKGYQXUFthj4OoRo5bxScncIauplm6IvvIAlDQCzKuOPalXRXf7CTAFxd/L10AZglCGDzAcRfLVd4lhFaCa9lv3x5LFu0a/mDNzQtSvyoVBvlhVobvIIJ0GP/Xyz7qACrgc7KEbrXATrNhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766462191; c=relaxed/simple;
	bh=5+aAqmqoemUHZskZakW+Rwtj+t7nNNwx1cWO/RA6uIc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XMJtVmps+XCc76fI30hioPWFbJyyv9CF0wPGdIqNgNu/G7OlZBt6J0i746Kaw9cDarQgyg6BOEZAvk5Ke/PYgOu3cEZ3P2bQh32/maNxGDtbH8pQAPXQHtcDJxNx2LtgAK83wRsvf853oBPoW2MUy9q0CJceALqvooPj/AuGp1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Asvwq3Iz; arc=none smtp.client-ip=79.135.106.30
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1766462186; x=1766721386;
	bh=dJUU8NUc0KSd/WGDFrjXkB21kRPeaDRSec/56YOAn8I=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Asvwq3IzKzYTPt16XAUKeyJjCoOVsNl9uL6dY3Qty/q93G665UKzcUlB1gC6OKtmw
	 G2A2A0jZYtqOw0ufU0hiPj+Op2UIp78jz8QBRWbPwpE1dvoy6xNabhDpKYSGCCYvV/
	 YD5D7rfOIQp9aeCEjo3iX1A+gKavq5MityHCldTdD5Sh/CUaNMaDK8XUZnmT+v8PdU
	 3vLrxwlKnyYW1WgFX5dglf1O72/8ZeCV0ZPCewrKkL8X/3Kpi1qu3K+Rd/E+naBkWo
	 UvRreuFMAUBqqxYK6d6Zkxvtg1dJyIX4VJJIOdkVIe+PSO5lb5rI+ExstSuXhwTpyf
	 y3lb11G3M6Vdg==
Date: Tue, 23 Dec 2025 03:56:23 +0000
To: Collin Funk <collin.funk1@gmail.com>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Alejandro Colomar <alx@kernel.org>, "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Early POSIX versions seldom included in history sections
Message-ID: <SsdGy_ZRyWESN5bZIDs6LXPW-oM7QbWpFa6AWUcX700C7u81iGXJPEatWc0ilPwOHnh4Dq8edSz_D7i-2Ti0iLi0ttFY2BoaYyw6yUjdmTU=@pm.me>
In-Reply-To: <87bjjrbae9.fsf@gmail.com>
References: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me> <aUbf39o2ce0WhJoA@devuan> <nBJHItg3tSnUmbXVk7-VufAS9V8JckVOUAzwYGrGW59ireGiPGb3ppy40QL3bgZhJbheep4RVQ8owzThk4LFmFWV5kohm8s6FbGoqAxchp4=@pm.me> <aUfsE7Yt45BVO56T@devuan> <87bjjrbae9.fsf@gmail.com>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: b95a91cb38922ba0fe220c393e7df4707da0d1c8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------0808c530de3e2ad0b4b6ca47c8edb5a93327124dd902aeae2ad1db248de77fd2"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------0808c530de3e2ad0b4b6ca47c8edb5a93327124dd902aeae2ad1db248de77fd2
Content-Type: multipart/mixed;boundary=---------------------cfcdb5b13e803c6cd247ea440f6dbc84

-----------------------cfcdb5b13e803c6cd247ea440f6dbc84
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

G'day Collin,

On Monday, 22 December 2025 at 10:58, Collin Funk <collin.funk1@gmail.com>=
 wrote:
> Hi Seth and Alex,
> =


> Alejandro Colomar alx@kernel.org writes:
> =


> > > Suppose instead a function was first introduced in SUSv2, included i=
n
> > > POSIX.1-2001 as an XSI extension, then in POSIX.1-2008 it was moved =
to
> > > Base. Should its history section include POSIX.1-2001 or POSIX.1-200=
8 as
> > > its first POSIX appearance (since XSI is SUS)?
> > =


> > I think you could do this:
> > =


> > SUSv2.
> > POSIX.1-2001 (XSI).
> > POSIX.1-2008.
> =


> =


> Just want to mention that I find all of these document names confusing.
> Maybe because some of them predate me, or predate me using a computer, I
> do not know.
> =


> Therefore, I thought I should mention the names are described in
> standards(7) along with the full documents they correspond to. I would
> stick to the names listed there for consistency. That is what I have
> done when making changes to the glibc and gnulib manuals.
> =


> Collin

I do believe the standards(7) man page does describe these standards,
including XSI. From the POSIX.1-2001/SUSv3 section:

'The standard defines two levels of conformance: POSIX conformance,
which is a baseline set of interfaces required of a conforming system;
and XSI Conformance, which additionally mandates a set of interfaces
(the "XSI extension") which are only optional for POSIX conformance.
XSI-conformant systems can be branded UNIX 03.'

That said, I can certainly understand how just listing a bunch of
acronyms and numbers (SUSv2, POSIX.1-2001 XSI, POSIX.1-2008) would be
confusing for many not familiar with these standards. I can briefly
describe such a function's progression through the standards with a
short paragraph, if that would help. Using the function fchdir(2) as an
example, let me know how this sounds:

HISTORY
       fchdir()
              SUSv1, POSIX.1-2001.

   SUSv1
       fchdir(2)  was first introduced in SUSv1.  The function was then
       included in POSIX.1-2001, but as an XSI extension.   Finally  in
       POSIX.1-2008, it was moved to the base specification.

By the way, I too find these documents confusing as hell! I only have a
grasp of them because I happened study them due to a recent
hyperfixation on portable standards (my autism be like). So I certainly
get where you're coming from here. I just don't know how much more I can
describe in the added paragraph before intruding on the job of the
standards(7) man page.

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------cfcdb5b13e803c6cd247ea440f6dbc84--

--------0808c530de3e2ad0b4b6ca47c8edb5a93327124dd902aeae2ad1db248de77fd2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlKEuUJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcme/ZhUAxOpSJTyD3QsDtA90YkI56hQTFCMrK0J0
kSMhYhYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAAD9sQD/S9tS0gp8nctZWhPR
qFClzryKF1tE96gKFOLei6wOYQsBAMe8wD2slahvF1gerJuQ5eRFYmcgAuv7
0UDu2eEdtS0I
=XYKe
-----END PGP SIGNATURE-----


--------0808c530de3e2ad0b4b6ca47c8edb5a93327124dd902aeae2ad1db248de77fd2--


