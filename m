Return-Path: <linux-man+bounces-2283-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BAAA189CE
	for <lists+linux-man@lfdr.de>; Wed, 22 Jan 2025 03:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3EF73AB59C
	for <lists+linux-man@lfdr.de>; Wed, 22 Jan 2025 02:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A7A538384;
	Wed, 22 Jan 2025 02:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="VfxLqQTu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAC017BB6
	for <linux-man@vger.kernel.org>; Wed, 22 Jan 2025 02:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737511808; cv=none; b=VSTCQVCusUT3W2frO8ul60JS/xIFOUTYdtZlbuwyNj+JpW5VZXfM3EJXbFuIazbqudFsnrenQA6z1H69N+rqQmCaTsWqcElq/K+1yyYck/ARhCQZiR7R8qBvRFOywKol+H7OPeQfddSVOn8LOMlDf5oF33PBCTrkHql0iCjZhSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737511808; c=relaxed/simple;
	bh=ttMLTt5zLiVK3EUPEIODG08Fi3kSQ5OyPogtq3Uk29A=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=eRwjCTyf4C/gfMIYLTgyU/CMabbYMJqqGy5v7ngt75/oWAl8LqZxGXYX06Z29Q5nzZhabyLnV61F4Ty5s9uzyuVYD0bUll9mx2Q8R/Sz80AZ27xmuoRtzCbzP7CBLDdliJ+CMywtd1sUmU6ZQw0dP9k6PMhVKbxPe0dYyxJGrmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=VfxLqQTu; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1737511770;
	bh=yQLfsuNO+Nk1rqLefeq85MUUVhyxTxsazhLD89jf518=;
	h=Message-ID:Subject:From:To:Date:MIME-Version;
	b=VfxLqQTuJ7qkN1EyNEsEdhjnNRCFnngJkx1Pa8IrOy0FRAGDeWq8JXu84+yGD6Zpc
	 tN9avxRgXFiVnJxDbo3xB+pkBrQqRQe1R219MB1LD6J0Y4QpXtdy+uQEFQLqtr5yPP
	 WJbSurYg8FrucG72j0GB95MpCR91G06cqvmsV0sY=
X-QQ-mid: bizesmtpsz11t1737511767tm4pob
X-QQ-Originating-IP: rarFQpG6REUvR4XZGg0E/pe3QOhpaXiD1gOEJSvy7kk=
Received: from [10.20.53.121] ( [113.57.152.160])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 22 Jan 2025 10:09:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 7865408881680112603
Message-ID: <FBCBEF399E8A8B3C+d123b81b793a115ec50008cd74d0a37a6c7f50ac.camel@uniontech.com>
Subject: Re: Missing `munmap` in clone.2 example code
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Wed, 22 Jan 2025 10:09:26 +0800
In-Reply-To: <amuuz7myresymfcsl6nmg7riwmmlzn42qadqmqbeck6lfmrpwl@jmeocxcpkynb>
References: 
	<0FE174BEFC4B0385+2930538d0fd26e9b135e20d69c75590ea6237435.camel@uniontech.com>
	 <amuuz7myresymfcsl6nmg7riwmmlzn42qadqmqbeck6lfmrpwl@jmeocxcpkynb>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: Nr5N425iK0yrM9pTpXd2Zaa2WOw0N2A/d2zYvCgMYBaIULNbQrMHgAoh
	blH/+pyfZZeOpEsDt4j6JZWQksZrccmW99wBTcQ5LbKa6Mv6OqI77ketHWbUyKwwGUvDNqM
	ar6dIZUrcR2qXKi1yk+wC/xbM0gzg8OuHsW2zlNsAI5CymjB7vmwpHYC7KxmWU3LL45zllT
	lvgADHCXDCSNMCeryDsgZo2yd0AbMQQSerxpCm4CRMpMrbpNqk/TOzQ3nCSKtkOoLPp7VMa
	oshNPPzbh7fQtjWcYfKzqGrpCfDicglbWVq5vmCloqzrkNe+fVOdBFNxzT31+9QUFLFO6cZ
	I1K/QkdfN/LbQbr29+H1w6YedYLd4x3dS2ZmFg/RL03rl/dFBlSlwtLXjL1zRMFwG5UyLpn
	lBQCGRWaezN9Xd9S5c3oWv/6pkUTFbc4Fb9q7rwIz+2JzlppdpR7jUA1M6eS6SH0OlrDYhb
	2s0MDJVqQZuRgSiipo2Z9WSO7h2wPRAM9J3SXJMz6Qf86+T4dO1uU/r07Jxl5HBLcTR4apO
	Ze40rdvqdM6jFJu+4MMC43DAUUf2V6Xrvdl7n1WblooIdm3HmGFz0UvzfXfqNnYYubLrfrd
	FQ6PnqpOLwyhYNMLss8R7xpZMh7ZbVsVLLmOo/9xGFJ/DcXtlk1fpcjaODCeh8p8kXLLhUE
	eizcMvZJ3Fhh4aFsmYn3qZ2ICndqym4i8jq8mMXPjuLk3CiiMMQQAUhnjp2KnuNLMpwtwjv
	ayEBrMxwRv/6JjP5OkZTYaT9Y2qJi6otsaHbBIEtvjZleFZl5iXbhE/huNiYFx+vzj1FElV
	C5LBpkOHdx5cGKG3DkvKBo/Bjn6+Y5bvd4lJ1fMFR8Hp/ESxmjovGHO+cx2HqaFkF+Q9yh+
	BLijIlgcypm9+ZkNODflCdItwct8bZXy9tHaYvYI/UEnNoAubwdL+PXG2JvgGupbcTotZat
	jd2dW/nj1UFs9ObBx+VEZPAdNjEfyGPRs2L4=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0

On Mon, 2025-01-20 at 11:56 +0100, Alejandro Colomar wrote:
> Hi Chen,
>=20
> On Mon, Jan 20, 2025 at 05:20:54PM +0800, Chen Linxuan wrote:
> > While reading `man clone.2`,
> > I found that the parent process doesn't unmap the stack of child
> > process.
> > Should we unmap the memory in this example?
>=20
> Would you mind sending a patch to discuss it?  Thanks!

The patch has been sent.

https://lore.kernel.org/linux-man/647EBDB1A8DE7507+20250121031351.548052-1-=
chenlinxuan@uniontech.com/T/#u

>=20
> Have a lovely day!
> Alex
>=20


