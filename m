Return-Path: <linux-man+bounces-2981-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AABF8ABC007
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 15:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 926963BA9BF
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 13:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34ACB2820DF;
	Mon, 19 May 2025 13:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="Oe/Iq0G+";
	dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="7iVn0K4w"
X-Original-To: linux-man@vger.kernel.org
Received: from sdaoden.eu (sdaoden.eu [217.144.132.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32D327AC5D
	for <linux-man@vger.kernel.org>; Mon, 19 May 2025 13:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.144.132.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747662756; cv=none; b=jf1FYwoBWpU0E3ZbNF1Q+KMxUeqUVl3Xw1CLAcpO0O1d2GOiE7w2w9lJp3Q0Vmdl8tymYh0tMQbx30uxywdaYqpp3OZ12gsxVzLu5CNuc/TYepWXepfEi8FUs2h8t6qpYf5xe38zRlJ5kRipco35wW7NZ7rVmeHJeGXpjbQIgw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747662756; c=relaxed/simple;
	bh=UHrLhdRDJ1p6a80YTF61GV6dKQLB5IiHiXew7N+M/TI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References; b=UPVTh8C/X+xz4b6KNyLmt1rJQ6Trqscvb3Orrb4CeDZmCINvaUiW9ls/JDVWlrgu5VfYcpTx/wSIc5FMVaauklfNw6hjw9++3l8hGBzQiDFxpeUWIGb2ufMPLWdxNmHXcy7AwK7Ux2+GHirKjc8q1n8K33lfZRO7iYCTH6ixl8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu; spf=pass smtp.mailfrom=sdaoden.eu; dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=Oe/Iq0G+; dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=7iVn0K4w; arc=none smtp.client-ip=217.144.132.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdaoden.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1747662743; x=1748329409; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=wwn9k7yFsPiXhZqvihJ0PPgIXA0ssb1HtIIv8PNQJtI=;
 b=Oe/Iq0G+nSIYj/0Yn6ted97Z7EMfB0ObwAWKPsGy0cRCMDviuQRj/BpZwUY4dKjZhGWycQEJ
  q1J4DX0Hq0237+Et3ri41lmkSpNPh+aUXbzshRXSnLTugdQN6TyZmcaxg67KWlt8IM+ZCIsXJe
  Bhy1TsC68GC8qInyUAG/ImRiBkwz+8cu0VUb2DB1h2FyWTenfcxQsd0HT5ZpJVQPyNp4y1KpiF
  qpeB2HrWpAVFWJ0EK8SWh7AZKmNAHA466YpoNaiHsOtZWBtq60q6oPopoa5FnkXWGeAqlcB0O6
  dNUlqt6hJWXarRhEpTQhyxstAMIxM57Ef7TS6HHvDtDg/apA==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1747662743; x=1748329409; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=wwn9k7yFsPiXhZqvihJ0PPgIXA0ssb1HtIIv8PNQJtI=;
 b=7iVn0K4wKJ6uTZZ43JAuhfCmMU6KHMdwaZdLwVmqfImWz5AFFFJf08KJLlQIRyjTTJwVinwR
  V6JyZKAtMtlqBA==
Date: Mon, 19 May 2025 15:52:21 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <20250519135221.5a48Joxu@steffen%sdaoden.eu>
In-Reply-To: <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
 linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
User-Agent: s-nail v14.9.25-653-gb160e2cb86
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>

Hello.

Alejandro Colomar wrote in
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>:
 |Hi Steffen,
 |
 |On Sun, May 18, 2025 at 03:34:01AM +0200, Steffen Nurpmeso wrote:
 |> Hello Alejandro, all.
 |> 
 |> "man 3p mbrtowc" is great, but "man 3 mbrtowc" says for the -2
 |> return that "meaning that n should be increased".  However, "n"
 |> bytes were consumed; more data is needed, that is true.
 |
 |Thanks!  Would you mind sending a patch?

Hm well.  By the way, i sometimes admire the Linux-specific
manual pages, but at times i wonder why they exist at all, if the
POSIX one is comprehensive and no Linux-specific note is to be
added?  I mean, for example, clock_settime 2/3p is such an example
for where the Linux page is of significant value, but for that ISO
C thing mbrtowc ... hm.  I mean i would simply copy over the
RETURN VALUE block from the POSIX page?
I will have to look around where i can find sources, 'will look
today or tomorrow, ok?

Ciao Alejandro,

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)

