Return-Path: <linux-man+bounces-4024-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9E2BB0753
	for <lists+linux-man@lfdr.de>; Wed, 01 Oct 2025 15:21:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77B8D7A68C1
	for <lists+linux-man@lfdr.de>; Wed,  1 Oct 2025 13:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3B0A2ED149;
	Wed,  1 Oct 2025 13:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b="qmb1k19B"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F0814D29B
	for <linux-man@vger.kernel.org>; Wed,  1 Oct 2025 13:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759324902; cv=none; b=nmnTxJpTchxyeCiPN3uUe5wC55sVSvqCCh/XA3JaNh+dNMViqrz73V6RtSgZugGdmqhxiEGpn96LcM4zP8W/4VJ2JGtqG2lLlKP7MCgTqbXDoipshuIwQ8wyucZO+XpezM3OYYWYeCeKASNogF6IU4I7dQS2HNqgAjlURZC2Smo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759324902; c=relaxed/simple;
	bh=E3PW4mltYDrQzYNsT6nuPqmUbAMDoPx5SbOj3GAXbhw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HJesIyfqRRxfke2VLBjGzvHk7ENThywb4ehWIMCYLII/87rGFOpZXC3GpLL+VX1aJKSmnPqQjTpCdQoeCMMdYVbZdyLt7AAZBe/Vo0f5YmnOHyBlE4jLSJrXru52y7yXFuyuSWfPBXRcGNCVhlEe4nuEiFJFRSjwCujuSWTLkRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me; spf=pass smtp.mailfrom=aarsen.me; dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b=qmb1k19B; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aarsen.me
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4ccFtz1VQMz9vCG;
	Wed,  1 Oct 2025 15:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
	t=1759324891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GkixLgAljUtUQA9JwDNPjGhR0eQxy7slWY8VR/t4tLg=;
	b=qmb1k19Bb9LKebrw/nAUYoG0AlcMfT9xATRcqcOvGfTkEG4luzEw/KkkNpLu1Qm3DMmH7u
	mmRfArdB8V7+MzBBipBVjZ9d8gzndKvkTuK38XZZw6V9MYJ50DlBaLnvtgbKU2xUiTnZMa
	qCLJd2uKwkXNzu809apszb1QqbjZFO+3If0O9nPugWQ+458O7TaWEVGVVfeuvzT+4sad96
	kapmFrveooOwoMIReMp4euZ+N6nU3Y4lyujuPDofmmIds8NqxPziaqe5y3SHKQyUaEdvCF
	eWvmuEWuJhx8ZA3tEzGifOVXEx3k2UenVbC+WE2HSSTys/9OKqSgLSotT/HxaA==
From: =?utf-8?Q?Arsen_Arsenovi=C4=87?= <arsen@aarsen.me>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>,  coreutils@gnu.org,
  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <20250930205552.nevihqli7tw7lefk@illithid>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<87jz1sm2t3.fsf@aarsen.me>
	<fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
	<87cy7e7hml.fsf@aarsen.me>
	<e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>
	<86tt0jn27n.fsf@aarsen.me> <20250930205552.nevihqli7tw7lefk@illithid>
Date: Wed, 01 Oct 2025 15:21:28 +0200
Message-ID: <86a52an4fb.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

"G. Branden Robinson" <g.branden.robinson@gmail.com> writes:

>> (A funny side note: subconsciously, I chose the name "fildes.7" as to
>> not go over eight characters; it came to me naturally after many years
>> of working with and on Unix-like systems, this archaic element simply
>> lodged itself into my instincts after some time.)
>
> Eight's an odd choice for that, though.  As I understand it, the Fortran
> linker that Unix originally used (C did not exist yet) had a limit of 6
> characters for externally resolvable symbols, because that was all some
> IBM operating system could handle.  File names (or "path name
> components", if one insists) were limited to 14 characters until the
> Berkeley "fast" file system.  The tuhs at tuhs dot org is a more
> reliable resource than I can be here, though.

Heh, some confusion it seems.  No idea where I got eight from.
=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOYEARYKAI4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCaN0q2F8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0RkVF
MkIzRDExM0ZDMDBBMzE2MkQ2MDYxNTJDMjk0MzAxRUEyQzQ5MxAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTohUA/jtyaFK+l6jQv3Jhw0eyeiaiqSOlULv6z9IK
sfh3BRT3AQDlwZTBs5NZ/viO+zg/m4k787qjT7lL7fJruGb6zjOfBA==
=LJCm
-----END PGP SIGNATURE-----
--=-=-=--

