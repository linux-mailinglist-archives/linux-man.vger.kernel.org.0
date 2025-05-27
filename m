Return-Path: <linux-man+bounces-3023-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD0AAC4BD1
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 11:54:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C58643B4201
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 09:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E5D32528F7;
	Tue, 27 May 2025 09:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="mm8ef1l7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28498248F69
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 09:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748339657; cv=none; b=au7VaFTnT11S3iJifT6ZL2UEyPAmqeF312RMZWklqCAxE6lKIWjq9fUvz+ixMmgGpqL2DXhlCQc1Icpn5d+BAhsmklzDjZzKB/CW89b51YUJae1hGl+jAqn5YcsEHfIc23i6QC4CNRUOf198A98MALiFhjtLMXWgTb04bsmJGpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748339657; c=relaxed/simple;
	bh=38vzaCR7hyS5zcY/KSOFXnFeKdEV3yrMpVXXcGvfbts=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=PWAX5SrGjtQ532rGvMJ08RuTsjI7OpA4iS/AHR0+zVjxew0GMGf+dlEOZS/8dQ51dDIY/B2TIQF2kb0qPYgeHpGPbx4zJDda7oYjt+itYo1Qx5IxN4seYyfm+BqiTH9xx8mjgnHnuWZp8A/4OJ0LnkLhSVKGlOSGf4F1B0LPKuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=mm8ef1l7; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=d6Aw1/+KQINbsgB9Sz1A+dE1LS8bZdOtDrII9R/WgZ0=;
  b=mm8ef1l72A/hejimmgiey0pS/kOJG64i0Io1NZUBH2kEY9XsfJJ1+Dc0
   6W9mw9GWH3aO/sjKT01JhpKgErlSWHioVsqcmj65JqyEfshSsbYRpJnsA
   GgSqhkY63NWCwLzCTEpvedfEwdx6YLRQeGalUVClLFPCJSVwnOzKEJUDc
   g=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=jens.gustedt@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,318,1739833200"; 
   d="scan'208";a="224106098"
Received: from unknown (HELO inria.fr) ([130.79.192.217])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2025 11:53:03 +0200
Date: Tue, 27 May 2025 11:53:03 +0200
From: =?UTF-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>
To: Alejandro Colomar <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Subject: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <20250527115303.3304206e@inria.fr>
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

Hello Alex and everybody,
I stumbled upon this confusing text in the futex man page

  Typical values to specify for `val` are `0` or `1`.  (Specifying
  `INT_MAX` is not useful, because it would make the
  `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`.)  The
  limit value specified via `val2` is typically either `1` or
  `INT_MAX`.  (Specifying the argument as `0` is not useful, because
  it would make the `FUTEX_CMP_REQUEUE` operation equivalent to
  `FUTEX_WAIT`.)

  The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
  earlier `FUTEX_REQUEUE`.  The difference is that the check of the
  value at `uaddr` can be used to ensure that requeueing happens only
  under certain conditions, which allows race conditions to be avoided
  in certain use cases.


This has several issues, the most severe beeing the word `FUTEX_WAIT`.

- How can an operation that only does wakes, ever be equivalent to a
  wait?

But then, even if we assume that both subphrases mean to talk about
`FUTEX_WAKE`, the assumption that this can ever be equivalent is
bogus. In fact `FUTEX_CMP_REQUEUE` checks for `val3` still being
pressent in the memory location, which `FUTEX_WAKE` doesn't.

So I think that specifying any of the values that are pointed out in
this paragraph can make sense, because of the added comparison to
`val3`.

I suggest to change to something along

  The limit value specified via `val2` is typically either `1` or
  `INT_MAX`. Specifying the argument as `0` makes the
  `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`, only that
  the operation then also ensures an atomic check for `*uaddr =3D=3D
  val3`.  Typical values to specify for `val` are `0`, `1` or
  `INT_MAX`.


  The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
  earlier `FUTEX_REQUEUE`.  The difference is that the check of the
  value at `uaddr` can be used to ensure that requeueing happens only
  under certain conditions, which allows race conditions to be avoided
  in certain use cases.  In particular, a combination of `val =3D=3D 1`
  and `val2 =3D=3D 0` is similar to the operation of `pthread_cond_signal`
  with an additional check for `val3`; `val =3D=3D 1` and `val2 =3D=3D
  INT_MAX` is similar to `pthread_cond_broadcast` with such a check.

Thanks
J=E2=82=91=E2=82=99=E2=82=9B

--=20
:: ICube :::::::::::::::::::::::::::::: deputy director ::
:: Universit=C3=A9 de Strasbourg :::::::::::::::::::::: ICPS ::
:: INRIA antenne de Strasbourg :::::::::::::::::: Camus ::
:: INRIA PIQ program Strasbourg :::::::::: piq.inria.fr ::
:: :::::::::::::::::::::::::::::::::::: =E2=98=8E +33 368854536 ::
:: https://icube-icps.unistra.fr/index.php/Jens_Gustedt ::

