Return-Path: <linux-man+bounces-1628-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AA0959817
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 12:45:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54DFE1C21D67
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 10:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9814189B86;
	Wed, 21 Aug 2024 08:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b="V5g0kTz2"
X-Original-To: linux-man@vger.kernel.org
Received: from violet-aeron.relay-egress.a.mail.umich.edu (relay-egress-host.us-east-2.a.mail.umich.edu [18.216.144.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EA3165F11
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 08:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.216.144.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724230429; cv=none; b=X9obBK5a5oIMF4A61ZiowX8Ac0Ju5GD+yzVOBFf5+jf6PkBMGcnZAuCGhs8Tx8dE7Km6vnWaWsK81axRTxSqYsu/mqPZP/v3+9WCVKpv12eEa4qDHjOe/56l56WakF5Gj9hI3xzLGqBBwGUmeJtjAyHhahC6JVaSnfBICizK26Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724230429; c=relaxed/simple;
	bh=ItAWJVcwlWLPpsg2epUE6NQ4rmIgNA8VIN4Opie6lZY=;
	h=From:To:Cc:Subject:MIME-Version:Content-Type:Date:Message-ID; b=TVqPse9wZhPhTdG7ef9mJ+Qe0hMVL2JZN3LvKkhA1PFid5OAkuLdDArgYxEghfSuh9fXk6pZ3XGapz0ZpSQ/hQAGbTrCt1iF4fwPpDtyAsaZTtCWuj4hg6IPEZaDH/pSpabu1UHjutcI3IzIwhLlckT8LXVlotIB9FjJK+wy6jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu; spf=pass smtp.mailfrom=umich.edu; dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b=V5g0kTz2; arc=none smtp.client-ip=18.216.144.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=umich.edu
Received: from devoted-ogre.authn-relay.a.mail.umich.edu (ip-10-0-72-123.us-east-2.compute.internal [10.0.72.123])
	by violet-aeron.relay-egress.a.mail.umich.edu with ESMTPS
	id 66C5AA46.3A729F5D.70BC97FE.2787037;
	Wed, 21 Aug 2024 04:50:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umich.edu;
	s=relay-0; t=1724230214;
	bh=Ykm2DmOBSOrg/BhF2XW0yyxbaXWtYT/uBBDiBA2m27M=;
	h=From:To:Cc:Subject:Date;
	b=V5g0kTz2H9w4nxMttGaBElfEd5+9ljvmK/myrjjaIrSwpJxkbDd5+sbkSUNguSK5O
	 O3MHHRdygqrAyktTRw9djAgqJ+3uxSdOvHzTd6OzT6lCvkPeeZZKPxiVIFZ7o7RwBP
	 RjQffvpSiwacV3Ig5Oi2IKH+Ld5DHrEBK10Ytg77JgZ3jpJNDWmzfgdOgUWAcO5LNG
	 vJiaz1fGKNlCRllruJ9Q3n3XWKJIM7yJx7ndlcyGBO9xlnggYWQnZ50l4+3svA+vgD
	 Au4E+Mf0Avs7x/Dr2cxWg94FcewYXCUgKNd6DHFUWFpXGg03LOsv5oBRF6zoGUuVrr
	 ZAEZS7tty3+bA==
Authentication-Results: devoted-ogre.authn-relay.a.mail.umich.edu; 
	iprev=fail policy.iprev=85.108.143.146 (Mismatch);
	auth=pass smtp.auth=minshall
Received: from localhost (Mismatch [85.108.143.146])
	by devoted-ogre.authn-relay.a.mail.umich.edu with ESMTPSA
	id 66C5AA45.1C46BCB4.DD01EC4.1393344;
	Wed, 21 Aug 2024 04:50:14 -0400
From: Greg Minshall <minshall@umich.edu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: getaddrinfo_a man page: add notification example?
X-Mailer: MH-E 8.6+git; nmh 1.8; Emacs 31.0.50
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <728183.1724230207.1@archlinux>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 21 Aug 2024 11:50:07 +0300
Message-ID: <728184.1724230207@archlinux>

hi.  first, thanks for the man pages.  always a great resource (in spite
of the --help's of the world).

i recently tried to figure out how to use getaddrinfo_a with its
notification facilities.
----
https://git.sr.ht/~minshall/gai-a
----

the examples in the man page was very helpful to me.
----
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man/man3/=
getaddrinfo_a.3
----

that there is any example is great, though i can imagine controversial
(because of length).  but ...

> This example shows a simple interactive getaddrinfo_a() front-end.
> The notification facility is not demonstrated.

if there was a desire to expand the asynchronous example to demonstrate
signal and callback notifications, i could take a stab at it.  maybe
adding commands to change the facility (for future requests that
session), or some such.

cheers, and again thanks, Greg

