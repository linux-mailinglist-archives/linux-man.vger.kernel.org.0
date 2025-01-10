Return-Path: <linux-man+bounces-2216-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C31A08CBC
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2025 10:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AEAC161F03
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2025 09:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA0B20D4F8;
	Fri, 10 Jan 2025 09:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="bSDDL8zd"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FE518A95A
	for <linux-man@vger.kernel.org>; Fri, 10 Jan 2025 09:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736502345; cv=none; b=j4ZAL5Vp+tWVeKRGyzquj3qbAV8NesB1B7VgAQ2uQRaTIsQAuyTTjm+VohvmHvi+5gEwOsFyGpoS2nFft19F8862TBNoBuniVHkopPwbXaX5nnkbFizTajIwlUR7UfubhVruIoOILGsByZ0tEUCeZcSD8OINzO/9QFKOWz3zu98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736502345; c=relaxed/simple;
	bh=FMD78uf01AX22gyVoAbodECLZDnEHY8QeZiIR6AAe9k=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=FtsTnGfw0XUn5/Orjk/d3tmPohczFxUX8g3/t/Iq0Dp35eftJyCsTJvXKz/FMt+MSWNna9O9Gnqm38cHkbiPLrd3V1wU7ETmf8Fuf2GQF7zAuzCuMo+KbCdFno08jdXdJww1x40XfzbDIZshre33BkvNXqNXTXuqXcs4eUMy3vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=bSDDL8zd; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3B4A725B0D;
	Fri, 10 Jan 2025 10:45:39 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4boxZD2mQDom; Fri, 10 Jan 2025 10:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1736502338; bh=FMD78uf01AX22gyVoAbodECLZDnEHY8QeZiIR6AAe9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bSDDL8zdIBCSgLqDQ0XasRT7z2u8k+DqX3fMXl/Cmmzx3uog+AqZ1jZwCEBGUox5t
	 Q04mUv2NEF3ljUZb+ejeMrj02adnkRt85OZXmg02x169WPUxzLz+hFywQJz/AMreK8
	 Y4ArYeCn6oAbl1ELIn7Pa3awfQNTIjIg4Qtd1oupS736u6TMz1PTfUYy1/pgrlb1wk
	 a0Du54h+nKrKo6HuP7lmCXwhX5QfNTw1trBFbv3hGEuml28xCaedBefQilH0ZnYy+a
	 jZci2TtbjoAGiXrB3HHyOwBLRLdOevLBMQZS9VhfSejmEEHj/Od7Br/ww0itcTWy1v
	 dfXDmhfjBWJMQ==
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Jan 2025 10:45:37 +0100
Message-Id: <D6YAPD09F9DZ.2V42VTO1I5YTV@disroot.org>
From: "onf" <onf@disroot.org>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>, <groff@gnu.org>
Subject: Re: duffman(1) (was: diffman(1))
References: <20241125124404.h37pgmy2pxuzxevg@devuan>
 <D5VE1OMV9LG2.3GYDJOAGFIR0F@disroot.org>
 <20241125163421.f37ftfuxq33bax2v@devuan>
 <64nwglzgyqvdpkruvwnp53gd35nzib7xjbluvph7mqg75cjtn6@fm4ckauriwfi>
 <D6Y40GJFESLL.DMBT4LN9UI54@disroot.org>
 <zaxoqz44o6z73zkxxahynszgl4rzop3ek5send2kl4f4oyvlnd@s6j33yfj4ois>
In-Reply-To: <zaxoqz44o6z73zkxxahynszgl4rzop3ek5send2kl4f4oyvlnd@s6j33yfj4ois>

Hi Alex,

On Fri Jan 10, 2025 at 10:17 AM CET, Alejandro Colomar wrote:
> On Fri, Jan 10, 2025 at 05:30:59AM +0100, onf wrote:
> > On Thu Jan 9, 2025 at 2:59 PM CET, Alejandro Colomar wrote:
> > > I have added a duffman(1) program (script) to the Linux man-pages rep=
o.
> > > It is similar to diffman(1), but it diffs the git working directory (=
or
> > > a commit, if specified).
> >=20
> > Where? I don't see it here:
>
> It's on the contrib branch still.  I haven't pushed to main yet.

Ah, I see. Thanks!

~ onf

