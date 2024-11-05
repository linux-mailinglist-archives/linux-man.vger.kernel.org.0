Return-Path: <linux-man+bounces-1873-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6959BCFF8
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 16:01:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BB701F23FE0
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 15:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351211D9A61;
	Tue,  5 Nov 2024 15:01:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp1.bureaucracy.de (smtp1.bureaucracy.de [80.190.133.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECC83FB1B
	for <linux-man@vger.kernel.org>; Tue,  5 Nov 2024 15:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.190.133.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730818881; cv=none; b=jJoP/HiPtaMZiGO6RHd9sJu8U3MdsLHB0wEYpN6PDVHfNCDYO86VBonx7jlWbMQ7rTIUDYivF5Lp9OYaDXy1obbFOcDqpo0pFuy77JvaueG50qGXEArlPutiMs9zzsYsPp8U8iK4P3BIEjtmeite9gnhxjzOzM133voLzqcqB/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730818881; c=relaxed/simple;
	bh=3I/KxO60jpQgklGev/Szu6nJM1nud7arf2sAWqamgHE=;
	h=Message-ID:From:To:Cc:Subject:In-reply-to:References:MIME-Version:
	 Content-Type:Date; b=d9+zUg7P2lDPf3wLVpRc5UgmelBhoeSXOJT7I2JMdfOCSt2Ua+D6kWLPQDsZKdaitoiswo0aBzgyIAs0EeAVdAf4OTGRbbXAMJcMrxT3tVhKK0YyoFUtshkGKjoH2VKbZMewUJ74JX21KqXAO/A9aaAJlCRfXzE0hiNRoRD82SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bureaucracy.de; spf=none smtp.mailfrom=bureaucracy.de; arc=none smtp.client-ip=80.190.133.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bureaucracy.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bureaucracy.de
Received: from localhost (<unknown> [2a02:8071:7111:c540:23f7:f09a:8e0d:fdb0])
	by smtp1.bureaucracy.de (OpenSMTPD) with ESMTPSA id 3ae905e7 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 5 Nov 2024 14:54:37 +0000 (UTC)
Message-ID: <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>
From: Philipp Takacs <philipp@bureaucracy.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: bind EADDRNOTAVAIL at wrong postition
In-reply-to: <20241101124840.icu2zoyzbmfnzckd@devuan>
References: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
 <20241101124840.icu2zoyzbmfnzckd@devuan>
Comments: In-reply-to Alejandro Colomar <alx@kernel.org>
   message dated "Fri, 01 Nov 2024 13:48:40 +0100."
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <367757.1730818476.1@hell>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 Nov 2024 15:54:36 +0100

Hi Alex

[2024-11-01 13:48] Alejandro Colomar <alx@kernel.org>
> Hi Philipp,
>
> On Sun, Oct 06, 2024 at 03:17:48AM +0200, Philipp Takacs wrote:
> > Hi
> > =

> > In bind(2) there are general errors and errors specific for AF_UNIX. Th=
e
> > EADDRNOTAVAIL error is sorted at the AF_UNIX specific errors. But in
> > posix[0] EADDRNOTAVAIL is a normal error.
>
> Do you know any system under which it happens with a socket other than
> AF_UNIX?  It would be interesting to know if that's just a POSIX thing,
> or if actual systems do have that.

I found this while debugging a bug[0] on in the OpenSMTPD package of
Debian. The problem was that the interface was not fully up but already
had IP(v6) addresses configured. So OpenSMTPD get the addresses from
the Interface and the bind failed with EADDRNOTAVAIL.

There are also some other places where the linux kernel returns
EADDRNOTAVAIL on non AF_UNIX sockets, for example in sctp[1].

Philipp

[0] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D1059700
[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/net/sctp/socket.c#n399

>
> Have a lovely day!
> Alex
>
> > =

> > Philipp
> > =

> > [0] https://pubs.opengroup.org/onlinepubs/9699919799/functions/bind.htm=
l
>
> -- =

> <https://www.alejandro-colomar.es/>
> part 2     application/pgp-signatur   833

