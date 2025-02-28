Return-Path: <linux-man+bounces-2538-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F72A495AE
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 10:46:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48B993AB35A
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 09:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AFFD2561A2;
	Fri, 28 Feb 2025 09:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uni-hamburg.de header.i=@uni-hamburg.de header.b="RmMm5Bv4"
X-Original-To: linux-man@vger.kernel.org
Received: from mxchg04.rrz.uni-hamburg.de (mxchg04.rrz.uni-hamburg.de [134.100.38.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C22E25744D
	for <linux-man@vger.kernel.org>; Fri, 28 Feb 2025 09:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.100.38.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740735925; cv=none; b=aJQ0G0poZD3i++eJLPHmlWnK+mL+zhKTBeM7qxTgm8uCwRBpq6/CtHwF38oaM9IfyA/xhW3hCHXbq07uolf2xdCducj+g/ahN/gGbApX2+sGN96BsdXh19VcwEDeht7vWKHskkT67D44wuXtAixdqud3+NZove5dY/eO0U2jLmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740735925; c=relaxed/simple;
	bh=Nr9gn3EPjXRVRCcx9QQKLHY5tuGpJs/ZFOMU/2ZV7Tc=;
	h=Date:From:To:CC:Subject:Message-ID:MIME-Version:Content-Type; b=VjA8TKz6xoCzBboAnlbGg2ls+eqbp6FXxdbqsZGwyHAlfEkFAKco6O04qdFqMPTMgS8vVK9rh5IpA6ipCgtV66kXdgZqSUzxOqv/KthlWZY5B8Njo/ggslkrUjr0XKc94sh+ckDR/0IQPD+jdz5SFDnH7yVFibBrLaa76JrrkO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=uni-hamburg.de; spf=pass smtp.mailfrom=uni-hamburg.de; dkim=pass (2048-bit key) header.d=uni-hamburg.de header.i=@uni-hamburg.de header.b=RmMm5Bv4; arc=none smtp.client-ip=134.100.38.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=uni-hamburg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uni-hamburg.de
Received: from mxchg04.rrz.uni-hamburg.de (mxchg04.rrz.uni-hamburg.de [134.100.38.114])
	by mxchg04.rrz.uni-hamburg.de (Postfix) with ESMTPS id 4Z434C75GMzLlWr;
	Fri, 28 Feb 2025 10:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uni-hamburg.de;
	s=rrzs003; t=1740735372;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=x21P/oWFnGE+hIFfE3zv4HWh2Che7TBVjVVUJsN5vS0=;
	b=RmMm5Bv4M+E9wABnf4YIybqZUq/kC7FU7YeQe0EvKGo9cwxx/vavV3ENb8h1bykONj+bRu
	uf3MQz3Dc2GqcgmPGOWMYWCOdfJJxQAUEbkwhC9KraqLlBo115FI3MgQ8+z0RWZwjnmyy0
	Ms5goUz261+Ufffxy4wgnumoWUPoe2O+MifdgTtMlwunmssfAeOq8sdqYh1R80VepHzYPI
	AjQy9KsFVsBx7Fao0BAznZ3hZ4HDttkH3VYc9De9917WUhudMI7MTxJaSy34A5p65MCuBM
	+KlcIjZkzf8Bl0O5htdvNbRh2w0CHBxiF5mYS51jYMig8PdCD3cmYhxpeYZ8tQ==
Received: from exchange.uni-hamburg.de (EX-S-MR06.uni-hamburg.de [134.100.84.89])
	by mxchg04.rrz.uni-hamburg.de (Postfix) with ESMTPS id 4Z434C5xPHzLlWg;
	Fri, 28 Feb 2025 10:36:11 +0100 (CET)
Received: from plasteblaster (134.100.32.91) by EX-S-MR06.uni-hamburg.de
 (134.100.84.89) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 28 Feb
 2025 10:36:11 +0100
Date: Fri, 28 Feb 2025 10:36:10 +0100
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
To: Alejandro Colomar <alx@kernel.org>
CC: <linux-man@vger.kernel.org>
Subject: mismatch of type of ut_tv.tv_sec between glibc-2.41 and utmp(5)
Message-ID: <20250228103610.6c908004@plasteblaster>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-debian-linux-gnu)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: EX-S-MR03.uni-hamburg.de (134.100.84.82) To
 EX-S-MR06.uni-hamburg.de (134.100.84.89)
X-Rspamd-UID: 4e21ff
X-Rspamd-UID: 1c737e

Dear man-pages,

while investigating some old bad usage of time(&ut,ut_time) I noticed
that my glibc-2.41 headers define that part of the utmp struct like this:

#if __WORDSIZE_TIME64_COMPAT32
  int32_t ut_session;           /* Session ID, used for windowing.  */
  struct
  {
    __uint32_t tv_sec;          /* Seconds.  */
    int32_t tv_usec;            /* Microseconds.  */
  } ut_tv;                      /* Time entry was made.  */
#else
  long int ut_session;          /* Session ID, used for windowing.  */
  struct timeval ut_tv;         /* Time entry was made.  */
#endif

The man page claims this:

           #if __WORDSIZE =3D=3D 64 && defined __WORDSIZE_COMPAT32
               int32_t ut_session;           /* Session ID (getsid(2)),
                                                used for windowing */
               struct {
                   int32_t tv_sec;           /* Seconds */
                   int32_t tv_usec;          /* Microseconds */
               } ut_tv;                      /* Time entry was made */
           #else
                long   ut_session;           /* Session ID */
                struct timeval ut_tv;        /* Time entry was made */
           #endif

I don't know the history =E2=80=A6 did it use to be a signed integer and
someone decided to buy some time by making it unsigned? This is a minor
detail for the bad time() usage, where 32 bit vs. 64 bit time_t might
be more serious. Also the macros being checked for this compatibility
mode differ, but I am not sure how closely the man page want to follow
glibc here.

At least the type of tv_sec should match, I guess.

Now I have to think how elaborately I want to handle possible overflow
from time_t assigning to uint32_t with the recommended way of using
gettimeofday() for utmp =E2=80=A6


Regards,

Thomas

--=20
Dr. Thomas Orgis
HPC @ Universit=C3=A4t Hamburg

