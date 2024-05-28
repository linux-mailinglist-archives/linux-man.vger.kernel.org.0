Return-Path: <linux-man+bounces-1014-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A5E8D203D
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 17:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FCC61C232EB
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 15:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29FBD16D9B2;
	Tue, 28 May 2024 15:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b="NZWdmtuu"
X-Original-To: linux-man@vger.kernel.org
Received: from xry111.site (xry111.site [89.208.246.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE291E867
	for <linux-man@vger.kernel.org>; Tue, 28 May 2024 15:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.208.246.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716909639; cv=none; b=H7S31rxhEHvWe/+YfUxB3Z/uCY42Z0Hfrgs8f9ZvB+jmhQJMC2e49koFkcRoLcumkTIU8XCmFNq0WFAqOI8aaiBXTaItosIEqgeLrqDHekKhyP6xz8iSvlkdE0pM+bZ2h7Y40BhQUuTgo1bZcQiZ6c2iXFN9NlEyrxQXWId56r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716909639; c=relaxed/simple;
	bh=ZZT8uxhlbTPVIAUDKcvS19dpKUJoqNesQq57Mmq4e6Q=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Se+D8jLmHrjjmrE3JEu1BKMaHvEeWjEorIl1t/aUPL5mCVSbwzP2omx7naQxWKzqRjLiwXax4aPrrzEeGwUNClxsdWNf0hRCtb5QfDY/Ij+0h+rfpVamDWaJNeykLEcgrwAIwTj2eELOnldP7bm6OONoafU5ofZxvHZH7YI6gCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site; spf=pass smtp.mailfrom=xry111.site; dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b=NZWdmtuu; arc=none smtp.client-ip=89.208.246.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xry111.site
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
	s=default; t=1716909632;
	bh=ZZT8uxhlbTPVIAUDKcvS19dpKUJoqNesQq57Mmq4e6Q=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=NZWdmtuu5W2GQL7kOoN44hSEY8cZJUYu1nBzBM0KJmqrkynVUOdHmIzTNQxb1wbWb
	 dEtSCMkwQidLb40AvqyfOt9OcywMT7wgCiDPPJZmHXhx/WEq7ks11x1FZ5XdFW+235
	 25JIUy4sEBelL/n7Ys18uuIoyocQ4GsHJ8ZQ6d/A=
Received: from [IPv6:240e:358:118b:9200:dc73:854d:832e:2] (unknown [IPv6:240e:358:118b:9200:dc73:854d:832e:2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
	(Client did not present a certificate)
	(Authenticated sender: xry111@xry111.site)
	by xry111.site (Postfix) with ESMTPSA id 9FF336705C;
	Tue, 28 May 2024 11:20:28 -0400 (EDT)
Message-ID: <252b0ce7b2aa613d96b28dadcde80c84b3a700e6.camel@xry111.site>
Subject: Re: Correct way of calling prctl(2) (was: Sashimi of prctl(2))
From: Xi Ruoyao <xry111@xry111.site>
To: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Date: Tue, 28 May 2024 23:20:23 +0800
In-Reply-To: <vuuanrtyoq7abctrlmfggqqc7vjw6v64ubbyeijvyngnw7xead@yehc5po76nzf>
References: 
	<eofw4itya3kwaznneoizgt3dspfa4h7ttrw6ehshfrksj3wmst@xwjxpi3iro6d>
	 <ddbdyaiptesjalgfmztxideej67e3yaob7ucsmbf6qvriwxiif@dohhxrqgwhrf>
	 <vuuanrtyoq7abctrlmfggqqc7vjw6v64ubbyeijvyngnw7xead@yehc5po76nzf>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2024-05-28 at 11:24 +0200, Alejandro Colomar wrote:
> From what I can see, glibc does no magic to set unspecified parameters
> to 0, so this means passing '0' results in Undefined Behavior.

On most targets where Glibc implements prctl in assembly (not C), the C
standard does not apply at all so there's no Undefined Behavior.=20
There's just "expected" and "unexpected" behaviors.

So on 32-bit targets (both long and int are 32-bit) there's no problem.

On targets like riscv64 and loongarch64 the ABI mandates a sign-
extension on parameters narrower than a GPR, so there's no problem as
well.

x86_64 does not have such a guarantee (as said
in=C2=A0https://gcc.gnu.org/PR46942) so yes passing '0' may leave the high =
32
bits of the parameter uninitialized and cause problems (at least in
theory).

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University

