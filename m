Return-Path: <linux-man+bounces-482-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2FE869EB5
	for <lists+linux-man@lfdr.de>; Tue, 27 Feb 2024 19:15:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BDFB21F22E9C
	for <lists+linux-man@lfdr.de>; Tue, 27 Feb 2024 18:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0701B4B5C1;
	Tue, 27 Feb 2024 18:15:01 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cilium.nesselzelle.de (cilium.nesselzelle.de [138.201.35.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DFF376
	for <linux-man@vger.kernel.org>; Tue, 27 Feb 2024 18:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=138.201.35.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709057700; cv=none; b=EjDA44xDjNgU6T5RKaUeTUvrfKqZDuPJlCiDS+J1RDchMc0HCcX+wIvnvVsXBcbWF3oyXXe9xbE8YGWb9fUdrWlgGRTlIdBDYHCopSIXDjKPoBIqNxPCP2c8VFNoP9ekmiBSaUMAL3jNT9aegJNHY+hI2kJIAhVoKI1/nmHmVS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709057700; c=relaxed/simple;
	bh=E1sL2fm9S/KdcwGDmscJLJUQAGxk3rlvy6MsjhZSbmY=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=rcsQbeUMz+EdR2uWcbEv1ETcMnu9JXICZX29l8ZQgpKH/vyf0Hw1xgHTQiA0scMfgXsDawagShokBOac0ilVi0f8QNMMlDV6GUZeJYiGla5QpO3rXzFFCqMXesWUGHdmWC909FoNkeQM/WQ+9RuSA1yESAK309KhC5zy0nXYZQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=orgis.org; spf=pass smtp.mailfrom=orgis.org; arc=none smtp.client-ip=138.201.35.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=orgis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=orgis.org
X-Bogosity: Ham, spamicity=0.000000
Received: from localhost (zentriol.nesselzelle.de [144.76.80.99])
	by cilium.nesselzelle.de (Postfix) with ESMTPSA id F0B9440081;
	Tue, 27 Feb 2024 18:14:56 +0000 (UTC)
Date: Tue, 27 Feb 2024 19:14:55 +0100
From: Thomas Orgis <thomas@orgis.org>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
CC: Eric Blake <eblake@redhat.com>
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_2/2=5D_sigaction=2E2=3A_HISTORY=3A_S?= =?US-ASCII?Q?ome_constants_are_or_were_XSI_extensions?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20240225115307.438556-3-alx@kernel.org>
References: <20240214095707.1824c25c@plasteblaster> <20240225115307.438556-1-alx@kernel.org> <20240225115307.438556-3-alx@kernel.org>
Message-ID: <CB3A0C8D-43F9-4681-A8C1-7F9EC779FBE9@orgis.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Looks fine to me, thanks=2E Now one can deduce that an additional feature t=
est
macro might be needed=2E

Am 25=2E Februar 2024 12:53:19 MEZ schrieb Alejandro Colomar <alx@kernel=
=2Eorg>:
>Reported-by: Thomas Orgis <thomas@orgis=2Eorg>
>Cc: Eric Blake <eblake@redhat=2Ecom>
>Signed-off-by: Alejandro Colomar <alx@kernel=2Eorg>
>---
> man2/sigaction=2E2 | 10 +++++++++-
> 1 file changed, 9 insertions(+), 1 deletion(-)
>
>diff --git a/man2/sigaction=2E2 b/man2/sigaction=2E2
>index b64dcaf2b=2E=2Edaca34a27 100644
>--- a/man2/sigaction=2E2
>+++ b/man2/sigaction=2E2
>@@ -1026,7 +1026,15 @@ =2ESH HISTORY
> =2EBR SA_RESETHAND ,
> =2EBR SA_RESTART ,
> and
>-=2EBR SA_SIGINFO =2E
>+=2EB SA_SIGINFO
>+as XSI extensions=2E
>+POSIX=2E1-2008 moved
>+=2EBR SA_NODEFER ,
>+=2EBR SA_RESETHAND ,
>+=2EBR SA_RESTART ,
>+and
>+=2EB SA_SIGINFO
>+to the base specifications=2E
> Use of these latter values in
> =2EI sa_flags
> may be less portable in applications intended for older

--=20
sent from mobile device, trustworthy or not

