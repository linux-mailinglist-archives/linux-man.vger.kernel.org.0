Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22BE27E6AD5
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 13:51:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbjKIMvm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 07:51:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230055AbjKIMvl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 07:51:41 -0500
Received: from xry111.site (xry111.site [89.208.246.23])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E0F52D72
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 04:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
        s=default; t=1699534298;
        bh=ZKda+DYEJqDPbBlRxIM4zwxPdYegW2soMeHxN7a9MAw=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=OVOBCwePs3/S6ZujulT1Hz6IF9qUdSxCMd1djurxQXkz23d5Wjcqp3Mg6lJFOZTzm
         yzJBtnV1OBRSPvT/o9tn3hU2QfJASEMG6hq70gdqamZQp+ZA+i6IpPncS5bk6Gk4wD
         raYLC4SohSpGqBnmmblHrZX+Zx+pl04FIPugdoaw=
Received: from [127.0.0.1] (unknown [IPv6:2001:470:683e::1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@xry111.site)
        by xry111.site (Postfix) with ESMTPSA id B034466A03;
        Thu,  9 Nov 2023 07:51:36 -0500 (EST)
Message-ID: <b14f59e81e1c6ad2c75999ed62f2374344b5942e.camel@xry111.site>
Subject: Re: strncpy clarify result may not be null terminated
From:   Xi Ruoyao <xry111@xry111.site>
To:     Alejandro Colomar <alx@kernel.org>, Jonny Grant <jg@jguk.org>
Cc:     Matthew House <mattlloydhouse@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Date:   Thu, 09 Nov 2023 20:51:34 +0800
In-Reply-To: <ZUzEw2j6gHF5WtsO@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
         <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
         <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
         <ZUo6btEFD_z_3NcF@devuan>
         <20231108021240.176996-1-mattlloydhouse@gmail.com>
         <ZUvilH5kuQfTuZjy@debian>
         <20231109031345.245703-1-mattlloydhouse@gmail.com>
         <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
Autocrypt: addr=xry111@xry111.site; prefer-encrypt=mutual;
 keydata=mDMEYnkdPhYJKwYBBAHaRw8BAQdAsY+HvJs3EVKpwIu2gN89cQT/pnrbQtlvd6Yfq7egugi0HlhpIFJ1b3lhbyA8eHJ5MTExQHhyeTExMS5zaXRlPoiTBBMWCgA7FiEEkdD1djAfkk197dzorKrSDhnnEOMFAmJ5HT4CGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQrKrSDhnnEOPHFgD8D9vUToTd1MF5bng9uPJq5y3DfpcxDp+LD3joA3U2TmwA/jZtN9xLH7CGDHeClKZK/ZYELotWfJsqRcthOIGjsdAPuDgEYnkdPhIKKwYBBAGXVQEFAQEHQG+HnNiPZseiBkzYBHwq/nN638o0NPwgYwH70wlKMZhRAwEIB4h4BBgWCgAgFiEEkdD1djAfkk197dzorKrSDhnnEOMFAmJ5HT4CGwwACgkQrKrSDhnnEOPjXgD/euD64cxwqDIqckUaisT3VCst11RcnO5iRHm6meNIwj0BALLmWplyi7beKrOlqKfuZtCLbiAPywGfCNg8LOTt4iMD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1 
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 2023-11-09 at 12:38 +0100, Alejandro Colomar wrote:
> If you are consistent in checking the return value of strlcpy(3) and
> reporting an error, it's the best standard alternative nowadays.
> snprintf(3), except for using int instead of size_t, has an equivalent
> API, and is in C99, in case that means something.

Yes, you can always create your own wrapper instead of demanding a
standard function which must be implemented by every libc.

> If you would want to write something based on Michael Kerrisk's article,
> you could do this:

> 	ssize_t
> 	strxcpy(char *restrict dst, char *restrict src, size_t dsize)
> 	{
> 		if (strlen(src) < dsize)
> 			return -1;
>=20
> 		strcpy(dst, src);
> 	}

I'd like to add __attribute__ ((warn_unused_result)) for this wrapper as
well.

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University
