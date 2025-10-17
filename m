Return-Path: <linux-man+bounces-4175-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E99BE7EDE
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 12:03:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0E6D64E3848
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 10:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 854842E54A2;
	Fri, 17 Oct 2025 10:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b="TiNZrXr5"
X-Original-To: linux-man@vger.kernel.org
Received: from 11.mo534.mail-out.ovh.net (11.mo534.mail-out.ovh.net [46.105.33.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688D02DC76F
	for <linux-man@vger.kernel.org>; Fri, 17 Oct 2025 10:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.33.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760695382; cv=none; b=NQ8x74wr/JsSU89cd8vH4D0g+45Ef/oziNZ4gnBLZX87lJ1uz7HsOgnrfEx4WJdjJMw7eUGLKBQhVLKPdq9wTC09dYUpsuXDi6huMqOmDMKuodr6tyQbP6h1sbugNc/pgBq0+rVbMOBP27KSOLLSdzX7xZhiMn9abt/nVmwfkds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760695382; c=relaxed/simple;
	bh=D0ObX/u7HEAwfmW5Y4iz7drjq+UvVhnRoiaaumNn8rY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fqra4OvZqcFRWqFhNN8x5IEwH4lNCV0EzkP0gQ2l2LgnZQX22TNhbt25ZFM1/UnCl8TlXyoYLCN0FHuCdv+PtPT8lleYI9dkMb5rcdTGXP9GAbOrFGPH441SCsyUMWafkn2YdxE0Fzer/T1QBrRoZuY1KJH961Kosyo0cwZkBTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net; spf=pass smtp.mailfrom=jwilk.net; dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b=TiNZrXr5; arc=none smtp.client-ip=46.105.33.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jwilk.net
Received: from director2.derp.mail-out.ovh.net (director2.derp.mail-out.ovh.net [79.137.60.36])
	by mo534.mail-out.ovh.net (Postfix) with ESMTPS id 4cnz1q6Q47z68wK;
	Fri, 17 Oct 2025 08:46:07 +0000 (UTC)
Received: from director2.derp.mail-out.ovh.net (director2.derp.mail-out.ovh.net. [127.0.0.1])
        by director2.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
        for <collin.funk1@gmail.com>; Fri, 17 Oct 2025 08:46:07 +0000 (UTC)
Received: from mta7.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.109.249.244])
	by director2.derp.mail-out.ovh.net (Postfix) with ESMTPS id 4cnz1q547Xz20s5;
	Fri, 17 Oct 2025 08:46:07 +0000 (UTC)
Received: from jwilk.net (unknown [10.1.6.4])
	by mta7.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 6A752B83549;
	Fri, 17 Oct 2025 08:46:06 +0000 (UTC)
Authentication-Results:garm.ovh; auth=pass (GARM-109S003c1c9ff22-2512-4e81-8452-57ce6156f9bc,
                    537122C7478F486C3FAD405332B7F21BD3E5ACFC) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.179.180
Date: Fri, 17 Oct 2025 10:45:53 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/opendir.3: document that long file names result
 in ENAMETOOLONG
Message-ID: <20251017084553.d2dgnaicr6loseev@jwilk.net>
References: <4266061219d7406c0aa737f8d52108fea7e0f7fb.1760689006.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <4266061219d7406c0aa737f8d52108fea7e0f7fb.1760689006.git.collin.funk1@gmail.com>
X-Ovh-Tracer-Id: 166351712904424553
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTEgYvwdeLqcx2PvdAeEAzgqC/doS6QDfW8eg9Nqxt+Yxwlcd6kTOSDBn7nGoMMEeJiMBlsiL1RAyFwmQFwSWZhQrTINjxaPewsPg5byqeAjsmXSS2U3dLMzU5K4KHcF5ZZpYknk7CRHjCGFRBB+aEHPhsrwNU7nccnG4xVjQ6ktmAY1fpvXAzqphHTwjqgxJawwRwq17nzpWDU8ACUk+vjMGI2+P5z7B1Sx+ls5b+hzhJV1gvIJQyMWNxeb2OGEhAnd0gUlbwc5+Vd8hbsOQQnTgCqcYe+AwMxkk/3lBAts9htauVKryirbq0Awfo7z2ryk6fsF8G4fXgXpDoUsEvJ2BpwvOip7RqztISJithoIMTSGPIkbLftG8BaTK2uI8rJ+NGvgiofC6PndUSojX7jWJWsYe839yVNNHAW3mouChdVvzpfGUz+N5pD5nbBnZvy61s6wAGD2R8xC4Ux4fS22DX/XO5wL6y7Cmctgf02Q6gvnvoqizBVj3t+jAgJnSTPsJOpC2CK5fDx0i+xhb9ZDLg4er33RgIBUizUPk8OGktVg9YU7yx59ler/ShfLeTFG9Z8kvopecI2RHtGNV4pums8CfidbSPpNi0pwLloCo+Pv1TgfCAk7eOpWkXgZ3LupvuIiJKtCpjh5QQKpTB5uSavjIYSBB/QzNlv2luGe1Q
DKIM-Signature: a=rsa-sha256; bh=WBeO6ijf4SonAoVj0XqGaemAto7JlTmmAHWyV6JnEe0=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1760690768; v=1;
 b=TiNZrXr5GilpB4Py9eBthXyGK7JD6/qi4bp7l2zUjiAldOyhmuM5SUZHniPeT8weGc9s5BSY
 d0nOnp58B2533GwLtMW/sTV377WpqyrbnjuBnArO5O3cf3R6Sr8UCUabJWBePYVDe2iLJXZDMjU
 B8fs5MXySQdDr+cgjdOYIEPBIJC/OmO7DFhYGUFPxmHWijmG3DflAguEVyLIuJ2J3sJLZe1M62O
 UFe5d2NhmRRuvx0heknY0yO/Lc+Po5ILrAme1RdPHEaSYKocWIDDvy+PkFJcPcJ7b/QcqWYs0II
 xF0uauIWryjIj7qp/PLvBNOdTm64FgKMdY5x35Dro0b8A==

* Collin Funk <collin.funk1@gmail.com>, 2025-10-17 01:18:
>    $ mkdir -p `python3 -c 'print("./" + "a/" * 32768)'`
>    $ ./a.out `python3 -c 'print("./" + "a/" * 32768)'`
>    File name too long

Simpler reproducer:

$ ./a.out $(printf '%0999d')
File name too long

-- 
Jakub Wilk

