Return-Path: <linux-man+bounces-4818-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1921BD38DC8
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 11:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86F593015EE8
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 10:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27DEB2580E1;
	Sat, 17 Jan 2026 10:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="V21D/2TH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10629.protonmail.ch (mail-10629.protonmail.ch [79.135.106.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E75419004A
	for <linux-man@vger.kernel.org>; Sat, 17 Jan 2026 10:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768646263; cv=none; b=XozETo1IgJBMRJhRgee1N9bM32jSzwJLzCbi9Q7GpZjOX0YxNwV7dVorveOb45j4VksW026Vtz4m8phTpUPTW/r1KJLqh6MtD3y1sZIp+Jszfx/htiPKIg289VT3o07APQi8whXnPjnq25CwgItIFifRWI8ZI+sL/ZNKK17T7Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768646263; c=relaxed/simple;
	bh=dNI9Mchpi98vsegzFs0dARqXKmjsKAMhnFkZ1ia0WoE=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=Wo+N9rIl7Jbh3jp1YjJIyD7rpbMpIG4myZY6yHyTShvEeZAA03HutRvESsrAd9GdG4HVnC7X1g3YVH57HnJZojFoDadBeskbJDGZL/Q6XnbRQG8hwD+t6J7zsi0sgPPvvKLgpYMG8iRowhrPtcRqfyzkpCW/Pu01E8gegjAxDi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=V21D/2TH; arc=none smtp.client-ip=79.135.106.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768646259; x=1768905459;
	bh=O9p4+giI5ieVzeTKm/mSLrOd1p+ysqmHRv8o2tiPYaU=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=V21D/2TH62pVzDYmRO+Bi4uK17bc6muQz16zRmNoUqLWcjD6fm8w3ESbfY9n4waK+
	 t5c7OcLu0Aab7l4RaAR3mKpA1oFYBDtMFIlkESTRHsiQH2k3IsII+g3LgRjAVWpx1w
	 bZBD4f/y2e82JW1ji7SzQH2gCi7rCMLpAtSMWkmT8bib9P2qgjgvMZWXL4iEWkH4/q
	 aXzo/dffdDIOqDW4bEdobyK9zfIsqtChiz4rYxWDnG4v6Y/rpYbGiKZtTPUYO+pGMK
	 yF1SXMpfeM8b+DzUu7Slo0ogzJcTnUSGj/Nf1+nF8T212E08jo1E8fcPwnEScOUe9E
	 7mQqOceeRhA2Q==
Date: Sat, 17 Jan 2026 10:37:36 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWtmabtT1dFTBCI8@McDaDebianPC>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 1476e8817c297056360a5f1865096ade91a68431
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------0e8beb3a4d4dc0c691d42522a892e7bd3035c812c2d73a95f5b621cb2cf8d625"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------0e8beb3a4d4dc0c691d42522a892e7bd3035c812c2d73a95f5b621cb2cf8d625
Content-Type: text/plain; charset=UTF-8
Date: Sat, 17 Jan 2026 20:37:29 +1000
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWtmabtT1dFTBCI8@McDaDebianPC>
Mail-Followup-To: Seth McDonald <sethmcmail@pm.me>,
	Alejandro Colomar <alx@kernel.org>,
	linux-man <linux-man@vger.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/2.2.13 (2024-03-09)

Hi Alex,

In my next patch set (for system calls), I've generally been ordering
POSIX.1-1988/1990 relative to BSD and SV according to their release
years as specified in standards(7).  Which gives the following relative
ordering between SV and POSIX.1:

SVr1
SVr2
SVr3
	POSIX.1-1988
SVr4
	POSIX.1-1990
SVID 4

And the following relative ordering between BSD and POSIX.1:

3BSD
4BSD
4.1BSD
4.2BSD
4.3BSD
	POSIX.1-1988
	POSIX.1-1990
4.4BSD

Because many of the system calls I updated listed SVr4, and some listed
4.4BSD, I want to check that it makes sense to list them after
POSIX.1-1988.  In case, for example, SVr4 is known to have influenced
POSIX.1-1988 prior to being officially released.

(I've also taken your recommendation and am trying out mutt(1), starting
with this email.  It's certainly a learning curve, but I'm slowly
getting there!)

-- 
Take care,
	Seth McDonald.

<sethmcmail at pm dot me> (on-list)
2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369

<mcdonald_seth at pm dot me> (off-list)
82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289


--------0e8beb3a4d4dc0c691d42522a892e7bd3035c812c2d73a95f5b621cb2cf8d625
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlrZm4JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdGxiXw5+uasMIcWcuYSInOFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANBeAQC7WwPzrVIVLFJRhhKqdwVCBDQH6feeWT50uhJs
LgCC5AD7BioJbxF/WXkCv/XHlQkhFO6Q0L9n4HQYDbIVmVg04gw=
=mrZD
-----END PGP SIGNATURE-----


--------0e8beb3a4d4dc0c691d42522a892e7bd3035c812c2d73a95f5b621cb2cf8d625--


