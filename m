Return-Path: <linux-man+bounces-3039-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A200DAC4F50
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 15:07:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AF7E1883D39
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 13:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDFA11ACED9;
	Tue, 27 May 2025 13:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="pR8lz4dx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F972550D3
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 13:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748351255; cv=none; b=HTp9PGg5RNLKbTftfNnacYCcwkp4/va3Jcxskw9Jub3D5nBxb86zDa9bLvXDrcTF2mo6Q+WTizr2Ao+ifx9hm9uxizveJ1oyLmxJnIlfNKD2r/SGFs7jxzzBRk6E8UUE7IDMvMKOdAD5O9Eaz0HRmbbhM0s5oT3ctsS4x26qRLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748351255; c=relaxed/simple;
	bh=BIhdJgyZXlWMNB3V3uamYwlRqe3g/hmOUAk4cH/S9aA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dDuFIDI5Zp1YXz3bBL8TMaroMr8mO+5eeEphr7Pvl5WUHgiMG7TEa42DykDvdCmYiUm/WfxJdQBy2ooiS8345Tg40YM40eP2mwqo1bsOHXDPgTgJXSDxp7z0135kWq2DCDjv4q6bs1yeyrwhJqiJ1h1fXGeYCg+QTkDemQzj3sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=pR8lz4dx; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=i5aUu81mHnHa6BGPDW6ZA1VN8DXo+Jb6+KXhYZaWuds=;
  b=pR8lz4dxSlotODPyIzni66CID5SjFijo3ijaluh47Bcm2SRdrmiGj1u9
   +pqyDNhimYiRjE9NnuT3aLCO8FYRP4nvd/iMbmqXBprUBk/r8r3q6lu2E
   id7mN3/3IrHkcPMvQd0+VTiY1BzukhTkgFTcOSrxCMeORhA/Cvuujc1d/
   Q=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=jens.gustedt@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,318,1739833200"; 
   d="scan'208";a="224153196"
Received: from unknown (HELO inria.fr) ([130.79.192.217])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2025 15:07:31 +0200
Date: Tue, 27 May 2025 15:07:30 +0200
From: =?UTF-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, Michael Kerrisk
 <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper
 <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>, Todd Lewis
 <todd.lewis@gs.com>, Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <20250527150730.3b328571@inria.fr>
In-Reply-To: <30b84225-8965-44a4-8856-3ab2169ba226@redhat.com>
References: <20250527115303.3304206e@inria.fr>
	<s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
	<7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
	<zrwfojd3ddditnyyppbyxwmzc5xoqp32gkitffxws4gxabnvm6@bpm6xy7f2l7w>
	<30b84225-8965-44a4-8856-3ab2169ba226@redhat.com>
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

Hello Carlos,

On Tue, 27 May 2025 08:42:27 -0400, Carlos O'Donell wrote:

> Suggest:
>=20
> (Specifying val as INT_MAX is not useful, because it would make the
>   FUTEX_CMP_REQUEUE  operation  equivalent  to  FUTEX_WAKE.)

That is not true because `val3` is checked for the first and not the
second, so they are not equivalent. And indeed `val` as `INT_MAX` is
usefull, because it provides a wake up of everybody with an additional
check of `val3`.

> Suggest:
>=20
> (Specifying val2 as 0 is not useful, because it may make the
>   FUTEX_CMP_REQUEUE operation equivalent to FUTEX_WAKE depending
>   on val and val3.)

I think that specifying `val2` as `0` is in fact useful because it
provides a wake operation that additionally checks for `val3`. (and
does no requeing)


Thanks
J=E2=82=91=E2=82=99=E2=82=9B


--=20
:: ICube :::::::::::::::::::::::::::::: deputy director ::
:: Universit=C3=A9 de Strasbourg :::::::::::::::::::::: ICPS ::
:: INRIA antenne de Strasbourg :::::::::::::::::: Camus ::
:: INRIA PIQ program Strasbourg :::::::::: piq.inria.fr ::
:: :::::::::::::::::::::::::::::::::::: =E2=98=8E +33 368854536 ::
:: https://icube-icps.unistra.fr/index.php/Jens_Gustedt ::

