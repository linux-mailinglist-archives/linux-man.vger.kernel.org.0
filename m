Return-Path: <linux-man+bounces-3031-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F61FAC4EB1
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:29:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE896179856
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8DA26563B;
	Tue, 27 May 2025 12:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="IHfMgZ4+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6415D1EEA3C
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748348967; cv=none; b=LkzCSLklUSHtFL3qaTIuzj5D8Cn7F6evEluj/cMRAt47Y9ZjhXEVa68eABolML9H800uzCXBwrY4a6KbyhdFg6Adjx33IeVDlWtSyhavg5EwvloFcxGwPrYfUAVetbfEI4RgfAbNX90HUNDXKhvimXT6PykNRmhotjHi+u7D8os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748348967; c=relaxed/simple;
	bh=XP8JcMNr+9obXtNK6r0g+Lmzilw5ER+qLV+TnvDwGEg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Lm0Or27VtitomnIkueFAiPt0l1BzArKyj4YZH6afy+qnQLAYf5eyBYsaNw56mGu0lcWEHXGBy27KWwzpgNvGW6xRmteX/hDdSKDQHS/KNtmAYT2OVctu3IiPpSmyuDMIy4LZQKfa6I8xDGebk8dFzZMmqYAQIcnvfhqXYNdb4ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=IHfMgZ4+; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=bS3BmLpMSQhd0a94y+/FwFsj2lk1Xn7kcZKK61ZCCts=;
  b=IHfMgZ4+xH1Mlr6RIDUar+kVtD13CoErvH+ucNsO5CT5schE5MYUR9PY
   XGBTm3rmAwWLeqd5m+gK6vIxe7xZNxweGaY7LzAkpm5MOiAnVg9SueIJZ
   Cd3MRRy5W646mSU/aZjyIQwYXfZoxINv5tiW4XTGtrbO3/I+2db9X436c
   s=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=jens.gustedt@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,318,1739833200"; 
   d="scan'208";a="117595848"
Received: from unknown (HELO inria.fr) ([130.79.192.217])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2025 14:28:13 +0200
Date: Tue, 27 May 2025 14:28:12 +0200
From: =?UTF-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, Michael Kerrisk
 <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper
 <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>, Todd Lewis
 <todd.lewis@gs.com>, Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <20250527142812.51ee1c30@inria.fr>
In-Reply-To: <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
References: <20250527115303.3304206e@inria.fr>
	<s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
	<7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
Organization: inria.fr
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
X-Face: iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAMAAAClLOS0AAAAAXNSR0IArs4c6QAAACRQTFRFERslNjAsLTE9Ok9wUk9TaUs8iWhSrYZkj42Rz6aD3sGZ
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello again,

On Tue, 27 May 2025 08:12:41 -0400, Carlos O'Donell wrote:

> > 	    Fixes: 3dfcc11d4630 (2015-12-15; "futex.2: Expand
> > description of FUTEX_CMP_REQUEUE") Fixes: 8297383e9eeb (2015-12-15;
> > "futex.2: Clean-ups and FIXME removeal after feedback from Thomas
> > Gleixner") Reported-by: Jens Gustedt <jens.gustedt@inria.fr>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
> >=20
> > 	diff --git a/man/man2/futex.2 b/man/man2/futex.2
> > 	index 128612ee1..9a15a0fdb 100644
> > 	--- a/man/man2/futex.2
> > 	+++ b/man/man2/futex.2
> > 	@@ -501,7 +501,7 @@ .SS Futex operations
> > 	 (Specifying the argument as 0 is not useful, because it
> > would make the .B FUTEX_CMP_REQUEUE
> > 	 operation equivalent to
> > 	-.BR FUTEX_WAIT .)
> > 	+.BR FUTEX_WAKE .) =20
>=20
> This is incorrect.
>=20
> A value of zero means no tasks are woken.

No, `val2 =3D=3D 0` means that as many as specified in `val` are woken,
and that no task additionally is queued on `uaddr2`. So this is
definitively a wake operation.

The resulting text is then not completely correct, because it is
missing the tests for `val3` but at least is a bit closer to reality
than before.

Thanks
J=E2=82=91=E2=82=99=E2=82=9B


--=20
:: ICube :::::::::::::::::::::::::::::: deputy director ::
:: Universit=C3=A9 de Strasbourg :::::::::::::::::::::: ICPS ::
:: INRIA antenne de Strasbourg :::::::::::::::::: Camus ::
:: INRIA PIQ program Strasbourg :::::::::: piq.inria.fr ::
:: :::::::::::::::::::::::::::::::::::: =E2=98=8E +33 368854536 ::
:: https://icube-icps.unistra.fr/index.php/Jens_Gustedt ::

