Return-Path: <linux-man+bounces-4433-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C8BCC84C9
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 15:54:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE60130BC7F5
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 14:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C72369999;
	Wed, 17 Dec 2025 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZNVEVnw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C33736A011
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765979482; cv=none; b=TszjbW7BoNFi0yLjSNJZEDKxJuzU8oi8ddqRMU0qRtyVTdX3EdsDDj0fK8vbm9TKoS9FmPv2uDcTPyoNhfmyFxYVooqdMyaVR5ynnqCOhvTRC4tXKzpKOaC3S8+buxOKdWmZicXNVqSV/UqEGVhDnScsAhGLN8jLy6P2LkfACjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765979482; c=relaxed/simple;
	bh=vAQ3ywVotewHD/FmNy+qqmI07OmWN1Ooo/5bh2tViCY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UK1kewb5n3CucteMyzKYHIHmO41iuxGXQ2zwAxL8CPsDYQeiaLZbHGhOVjH/EWSjwq8tmIwvjir+PVcj1KLt6Vp9TYWGqiJu1pZlrZu+suP5MqFVsq3gSKQuGbciKPg66efwieWbc5AtQdKIn+Gil9EnhpxitdeaFdyJlR7k3kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZNVEVnw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33602C116C6;
	Wed, 17 Dec 2025 13:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765979482;
	bh=vAQ3ywVotewHD/FmNy+qqmI07OmWN1Ooo/5bh2tViCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NZNVEVnwBzn2l9oFhN+mfz1azq+gGAXt0uE/c6frtz1EVvfxPjy2T9w9InUHfLV8q
	 dMQAPDlSxH+V4NuSH2j2PsMVoHvMC1WUa+msEMJM6YCtvOhi9bIPe33p2C5HIg/UBH
	 mJolsjUcHijX224vMxL96DIeKpo/4mKylcm3Re5V0/IDwFEWSVUDpjNszajk7CKvAz
	 toD/xy/HSsGZUDwWehDtLUAjVY/RPr8qUgjZpLnrfAP6ZLXdY5f+qbzw/4Bl1JXR+V
	 cXvAUZd1MkkG3SyqamMlhHtDUa+bA3atswGnsdjqdfnMxS6+mpKiz3i3ZpmrFk81c7
	 dlJgG+a1KvbKg==
Date: Wed, 17 Dec 2025 14:51:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v3 0/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <cover.1765979316.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765370035.git.alx@kernel.org>

Hi!

I've already pushed patches 1..13 from v2, as nobody raised concerns.
v3 only contains a signle patch.

I've updated it to also document the case of FreeBSD/jemalloc, as
reported by Seth.


Have a lovely day!
Alex


Alejandro Colomar (1):
  man/man3/aligned_alloc.3: HISTORY: Document bogus specification from
    C11

 man/man3/aligned_alloc.3 | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

Range-diff against v2:
 1:  90f18b452 <  -:  --------- man/man3/posix_memalign.3: Remove confusing exception
 2:  19b5ea61e <  -:  --------- man/man3/posix_memalign.3: wfix
 3:  82bcf3b0f <  -:  --------- man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to C17, not C11
 4:  04f5087e5 <  -:  --------- man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to C23
 5:  c8ffb2124 <  -:  --------- man/man3/posix_memalign.3: STANDARDS: aligned_alloc() and posix_memalign() conform to POSIX.1-2024
 6:  51b7f9f43 <  -:  --------- man/man3/{posix_,}memalign.3: Split memalign() from posix_memalign(3)
 7:  a60d6283f <  -:  --------- man/man3/{posix_memalign,pvalloc}.3: Split pvalloc() from posix_memalign(3)
 8:  126c39d0f <  -:  --------- man/man3/{posix_memalign,valloc}.3: Split valloc() from posix_memalign(3)
 9:  b23cb7bc6 <  -:  --------- man/man3/{aligned_alloc,posix_memalign}.3: Split aligned_alloc() from posix_memalign(3)
10:  1e5a0260e <  -:  --------- man/man3/posix_memalign.3: CAVEATS: Add section, and move paragraph to it
11:  c0b9fd96a <  -:  --------- man/man3/posix_memalign.3: Remove redundant text
12:  34d984534 <  -:  --------- man/man3/posix_memalign.3: NOTES: Remove superfluous section
13:  a5342ef55 <  -:  --------- man/man3/memalign.3: wfix
14:  cdfc42078 !  1:  6ed874153 man/man3/aligned_alloc.3: HISTORY: Document bogus specification from C11
    @@ man/man3/aligned_alloc.3: .SH HISTORY
     +the behavior was undefined.
     +.IP
     +Some implementations still implement that restriction,
    -+such as OpenBSD.
    -+However,
    -+in those implementations,
    -+the function reports an error,
    -+and don't exploit the UB.
    ++or claim to have it.
    ++.RS
    ++.TP
    ++OpenBSD
    ++The function reports an error
    ++if this restriction is violated,
    ++without exploiting the UB.
    ++.TP
    ++FreeBSD
    ++.TQ
    ++jemalloc
    ++The documentation claims to have this restriction,
    ++but the implementation works correctly if it is violated.
    ++.RE
    ++.IP
     +It was only a theoretical UB.
    ++No known implementation has ever exploited this UB.
     +.IP
     +This restriction was removed in C17.
     +.IP \[bu]

base-commit: a5342ef55f0a96790bf279a98c9d2a30b19fc9eb
-- 
2.51.0


