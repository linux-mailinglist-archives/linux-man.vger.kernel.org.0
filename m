Return-Path: <linux-man+bounces-2958-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A63FDABAD09
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 03:44:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DF0616E611
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 01:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A248D35280;
	Sun, 18 May 2025 01:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="gjPuENww";
	dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="GQeBN9C+"
X-Original-To: linux-man@vger.kernel.org
Received: from sdaoden.eu (sdaoden.eu [217.144.132.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD62D2FB
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 01:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.144.132.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747532655; cv=none; b=jnI8ivrfW7xzr+GOZ7iu1TpRktvN4xPi+5jnLWGgllXwcsvjsD+noaS3ttsiiXnF+2PjbLvumtucwnhnBBbv9AzpWryVN1IUO+9FpQF0CI+FK5CUB51LsYjJy/V4xL4nqiwfJrW6BvNHbBerhbSTDqFlQY7N/Vj9CJ7pjxPg1aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747532655; c=relaxed/simple;
	bh=wytZMANglH1Xd0IYexWl6QUIvTo2SebVx3o0XsMSSF0=;
	h=Date:From:To:Cc:Subject:Message-ID; b=B5gze1IsqNaikRtsw9Mhj7ua75Xe796+DLzi28q0YtjqNGeedtbESxO24FVa1Cu2/nJGLsa+wQ4oFx1Sg0OIFVl2asf9M6gjEXq5FYgylKo9s1ZZxXBjuvkaiIsKLZS87FkDNLi0ocg0iJZjQn3eOvb7bAzuQPuKv0xxEEUeyMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu; spf=pass smtp.mailfrom=sdaoden.eu; dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=gjPuENww; dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=GQeBN9C+; arc=none smtp.client-ip=217.144.132.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdaoden.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1747532043; x=1748198709; h=date:author:from:to:cc:subject:
  message-id:mail-followup-to:openpgp:blahblahblah:author:from:subject:date:
  to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=PvanJoT8nc4hBxfPf3XfOvyEzg0v+7pLUDx/U7Lij/c=;
 b=gjPuENwwxzuBcHHtlbvcY5LOQbsAM2pgKptxuJSfTA+WzDD8+9NICcWc3udp6+YoznnDsHlN
  jn4O8iICrlh5q8REoZky5CZaLQpM6RVlA72u8gP6hOA9M32b7jPeOEkHP5memscmT2/wlAgir6
  ZBfqnoNWvBoZE+LD9Xk/3KJY1B2/+eMvZmbmpQ81Wu+/jCkIf1Zx3Swc73aD/Eo+LDWP0x99XH
  5dt5NNtY1jjYcXRp530hsdD0KBefeFqqJ4+/6NLcbb1hyagTBbAtXlgH5fdVP5Br6TghDrif0k
  1/zXMecnE2DdNcsQEWeebreRay2VrjVQKzb0LKVEHcvKvv1Q==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1747532043; x=1748198709; h=date:author:from:to:cc:subject:
  message-id:mail-followup-to:openpgp:blahblahblah:author:from:subject:date:
  to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=PvanJoT8nc4hBxfPf3XfOvyEzg0v+7pLUDx/U7Lij/c=;
 b=GQeBN9C+kUnKkAO+frrLK/vJxUDfmtITEWMWN58K3USgglPsA0d+/dOmVg4PVSTHMKI3BRhK
  2HIa9LpgeyKHCA==
Date: Sun, 18 May 2025 03:34:01 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: man-pages: mbrtowc: misleading
Message-ID: <20250518013401.seThfADR@steffen%sdaoden.eu>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
 linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
User-Agent: s-nail v14.9.25-651-g6870bcb8c8
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>

Hello Alejandro, all.

"man 3p mbrtowc" is great, but "man 3 mbrtowc" says for the -2
return that "meaning that n should be increased".  However, "n"
bytes were consumed; more data is needed, that is true.

Ciao!

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)

