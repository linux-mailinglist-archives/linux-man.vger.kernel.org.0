Return-Path: <linux-man+bounces-4294-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67365C5DBE8
	for <lists+linux-man@lfdr.de>; Fri, 14 Nov 2025 16:07:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E29A3B0744
	for <lists+linux-man@lfdr.de>; Fri, 14 Nov 2025 15:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84F632ED3A;
	Fri, 14 Nov 2025 14:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dzwdz.net header.i=@dzwdz.net header.b="r9JGI4AW"
X-Original-To: linux-man@vger.kernel.org
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C321832ED22
	for <linux-man@vger.kernel.org>; Fri, 14 Nov 2025 14:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132232; cv=none; b=QK9+JU42DEuiaxdJN5dRCxKcZ78dQWuF24+7GfOwvR0l6veUlx2Wpl+r9SbFuS/nCOqmEG3szrXa3rUOOSEiyB80Xab/ybbpj62YPf0gkyX3q1md6yKjd3bV7LPAV1DuNMvH7T1Yad3Or4rB25OLxm2ZdXcw3Mk4yOZ3zQ4jyk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132232; c=relaxed/simple;
	bh=ZK84TVSnbT29DVQ4u3IpgrAT3JvZwfEosJ04ZuCpYRs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FcZ2qXe4HSqb2yPL1OIfYvv8lZkg1ttm0/JdsgUdDrcArgVy9XSBRCa/aa6imhYW1xsoIFPC2zyEzr2FvhsugVcEDv7LdClm/r1wBbPlmeBAOawJ7pdPyrhAkcTW3obltCJdUgqdd4HygBHhpeZK6668i8H2DqsTkCOmBMkitP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=dzwdz.net; spf=pass smtp.mailfrom=dzwdz.net; dkim=pass (2048-bit key) header.d=dzwdz.net header.i=@dzwdz.net header.b=r9JGI4AW; arc=none smtp.client-ip=95.215.58.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=dzwdz.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dzwdz.net
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dzwdz.net; s=key1;
	t=1763132215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XxQDvenYwOfi1z40Msuf0GFhxvO0FGPXYzpJJN/4oG0=;
	b=r9JGI4AW+9uRn6/4s67t/RcrYpRUXYiUo2q3E7DL3OwdnJ11WOVifzLTMJyAlyzKKxa7/l
	hoGntP0O1mPhQi4zklfR9XZ9UPN0Zf2th+kI4AshslOxyQXgLqXGmOihrHZZORtxmAJndU
	JLbUFWizSismSEogeZvl5jiU/+tKZJ5hXMnRzsX5NDo42F9DOVdUPFCWAo+lkytyr9Kvmo
	bqct+m8kriYydDHe/iBQKPytMaGQPJxZiasDYz3mOQPScIVaXVAGsoMuOp+Lp6GiFz5M9r
	rRTxQl0Iyjn1gUW8Gq3fhhWYX989soRrehwC19T3BfE5jYdBEHkxQT1pZlcMzA==
From: =?UTF-8?q?Jakub=20G=C5=82ogowski?= <not@dzwdz.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?UTF-8?q?Jakub=20G=C5=82ogowski?= <not@dzwdz.net>,
	linux-man@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Linux API <linux-api@vger.kernel.org>,
	ej@inai.de
Subject: [PATCH 0/2] man7/ip.7: Clarify PKTINFO's docs
Date: Fri, 14 Nov 2025 15:29:29 +0100
Message-ID: <cover.1763130571.git.not@dzwdz.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

I found the PKTINFO docs pretty confusing, so I tried clarifying them:
- being more specific about each field in the struct
  (e.g. "local address of the packet" for a received packet could've
  been interpreted in myriad ways),
- making the differences between sendmsg(2)'s and recvmsg(2)'s handling
  of that struct more explicit,
- and some other slight rewording to make it (IMO) more readable - I cut
  out most of a paragraph that wasn't really saying anything, etc.

I'm not sure if this should even be documented in ip(7) together with
the other sockopts, though?  sendmsg(2)'s handling of in_pktinfo is
completely unrelated to the IP_PKTINFO sockopt.  Documenting it in its
own manual page would also give us more room for subsection headings and
other formatting, examples, etc - instead of trying to cram it into
what's already an enormous manpage.

Same goes for some of the other more complex sockopts, I guess.


PS. sorry for not signing this email, but neomutt didn't want to
cooperate :/  I'll try to figure it out for any followup patches.


Jakub Głogowski (2):
  man/man7/ip.7: Clarify PKTINFO's semantics depending on packet
    direction
  man/man7/ip.7: Reword IP_PKTINFO's description

 man/man7/ip.7 | 57 +++++++++++++++++++++++++++------------------------
 1 file changed, 30 insertions(+), 27 deletions(-)

-- 
2.47.3


