Return-Path: <linux-man+bounces-3027-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9342AC4E9C
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:21:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BB0417D698
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9DB267AED;
	Tue, 27 May 2025 12:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="F7ZMFDtT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63561A8412
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748348486; cv=none; b=IR7tJ0818+H5JvZx2GuxULktGy5DMJXD95HWg7+Qqq8MBWJ9B/viUCAY9Od+TXYWV0TTCrdgOxb6WehDsRYnN37MeczZB7hP/1+t2GRjIFKbRZE96VKtuVwYkN1CeLdsixeVA+QlcK/dHuf+W//SLdg1qLYwopFBMQhrMTkPcL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748348486; c=relaxed/simple;
	bh=njaKnl59JErNRojSBBz3f6BwDCSk7p8lFn5Smzd9CnU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gX3glEu7NDrZSaTnYBF2siYTEfkdSBPwEEgwLMCL1+aeKez9PQYmeHmyFCXBY0IRRiSxwX2vZqWiHvQHkkiEiythgQYbH+h7kM85e3KYeWAw8ZqBLWn3HzXf+WljnMpJKOQ17XxOplUnBLNagKWaqqZwjLftjhkIfA1SMv2HoMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=F7ZMFDtT; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=f44EpMxIBKnEc9FiAbZt4Z0n8mgUWhfQ/1Iis7VbAh8=;
  b=F7ZMFDtT9UdSr404q+A4AqUHzzvrqJ7oQoZUUF2XIwlGC1/vDL8BlsZl
   8MmyuFQreBj1oSqGF/eWBMuI+y72oadoZxceTXPLJJ7tqx1ge0sbJG1Ae
   oXc/aHstLNJyrs5z+QYSX85pl9dEg/W2URMZ5TIGV7w1n5wQiQr9enCKs
   k=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=jens.gustedt@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,318,1739833200"; 
   d="scan'208";a="224138583"
Received: from unknown (HELO inria.fr) ([130.79.192.217])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2025 14:21:18 +0200
Date: Tue, 27 May 2025 14:21:18 +0200
From: =?UTF-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <20250527142118.05d15dd9@inria.fr>
In-Reply-To: <8b77ea67-2662-411a-83c8-e0e23755244f@redhat.com>
References: <20250527115303.3304206e@inria.fr>
	<8b77ea67-2662-411a-83c8-e0e23755244f@redhat.com>
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

On Tue, 27 May 2025 07:30:09 -0400, Carlos O'Donell wrote:

> > This has several issues, the most severe beeing the word
> > `FUTEX_WAIT`.
> >=20
> > - How can an operation that only does wakes, ever be equivalent to a
> >    wait? =20
>=20
> My opinion is that the text is correct.
>=20
> The operation can WAKE tasks.
>=20
> The operation can also cause tasks to WAIT in a *different* queue.

No, it can make *other* threads wait in a different queue. The
`FUTEX_WAIT` call is to put the current thread on wait. So calling
this equivalent is really far fetched.

Thanks
J=E2=82=91=E2=82=99=E2=82=9B


--=20
:: ICube :::::::::::::::::::::::::::::: deputy director ::
:: Universit=C3=A9 de Strasbourg :::::::::::::::::::::: ICPS ::
:: INRIA antenne de Strasbourg :::::::::::::::::: Camus ::
:: INRIA PIQ program Strasbourg :::::::::: piq.inria.fr ::
:: :::::::::::::::::::::::::::::::::::: =E2=98=8E +33 368854536 ::
:: https://icube-icps.unistra.fr/index.php/Jens_Gustedt ::

