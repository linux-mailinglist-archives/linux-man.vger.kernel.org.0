Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 505AB7E69D0
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 12:38:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231901AbjKILit (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 06:38:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231878AbjKILit (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 06:38:49 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBD00269A
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 03:38:46 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FC99C433C7;
        Thu,  9 Nov 2023 11:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699529926;
        bh=AI9tC7zzTYDfHaNF/f20oxA4HmRbJMBSwCLxgYmnqLk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Wt2Q9A9uSMFpuGJruroTcvcFfmW65wNr9UNi0OH6mr+cEYgInRJyigmVjwTmXfkAZ
         eXyWPcTcNZO3ZjjaENkkrfhOu3G71pBNV6Lzf5bDoD9d5mfkO38XyveJRcK2IwkrUD
         kAr2u8C9MJsnkwy9E2JL4MNZ2nTF7ZkU9kwDEYAucYngqRD9HaSy/wJGNIpIGLEvvB
         VQvZ5qu+Na3NoUXeXfGJ+/GuMncDEFgThu7N/A/FoH5CuTtbYVpMZUyqfp663HvMtd
         zqSFP1Mfc30tpYst1yLHYOOwWfbwM+GJfCJxYuAat0SMLwQOmUAyDxXWIbZQca+LzH
         JQa1Ke+8d9wxg==
Date:   Thu, 9 Nov 2023 12:38:37 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     Matthew House <mattlloydhouse@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUzEw2j6gHF5WtsO@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2k4+IF0JIE/YlFLp"
Content-Disposition: inline
In-Reply-To: <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2k4+IF0JIE/YlFLp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 12:38:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Thu, Nov 09, 2023 at 10:31:49AM +0000, Jonny Grant wrote:
> > Probably the only way to solve the cleverness issue for good is to have=
 an
> > immediately-available, foolproof, performant set of string functions th=
at
> > are extremely straightforward to understand and use, flexible enough for
> > any use case, and generally agreed to be the first choice for string
> > manipulation.
>=20
> What's the best standardized function for C string copying in your

strlcpy(3) will soon be standard.  POSIX.1-202x (Issue 8) will add it,
which is why it's been added recently to glibc.  Hopefully, ISO C3x will
follow (yeah, it's not like tomorrow).

> opinion?  They all seem to have drawbacks, strlcpy truncates (I'd
> rather it rejected if it didn't have enough buffer - could cause
> issues if the meaning of the string changed due to truncation, eg if
> it was a file path). Other alternative functions aren't widely in use.

If you are consistent in checking the return value of strlcpy(3) and
reporting an error, it's the best standard alternative nowadays.
snprintf(3), except for using int instead of size_t, has an equivalent
API, and is in C99, in case that means something.

If you would want to write something based on Michael Kerrisk's article,
you could do this:

	ssize_t
	strxcpy(char *restrict dst, char *restrict src, size_t dsize)
	{
		if (strlen(src) < dsize)
			return -1;

		strcpy(dst, src);
	}

You may also want to calculate 'dsize' automagically, to avoid human
error, in case it's an array, so you could write a macro on top of it:

	#define STRXCPY(dst, src)  strxcpy(dst, src, ARRAY_SIZE(dst))

These are just small wrappers over standard functions, so you shouldn't
have problems adding them to your project.

This is my long term plan for shadow-utils, indeed.  I'm first
transforming strncpy(3) calls into strlcpy(3) to remove the superfluous
padding, and later will use this strxcpy() to remove the truncated
strings to avoid misinterpretation.

Cheers,
Alex

>=20
> Kind regards, Jonny

--=20
<https://www.alejandro-colomar.es/>

--2k4+IF0JIE/YlFLp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVMxL0ACgkQnowa+77/
2zJzpQ/+LW1SyyQU04ztOxEhJl7kcrAlRrh60oqnHXeS+E3UmT68D21o0S9HVr/n
KCiCC4N86d7YIWEi3jfcDIDGvXLd14rokoeQFkpa5C67fXriuVUv3SP5SeEu3Yhp
VqpQzw2EdTPqF5nRjqPo922Mgv0tFBV/C+pZ8dE65Q2ZFGiQ7zHJvaHCLojdndN3
grO/h2zuPKQzSBmSYWAOnhi+uPPzGElQCaSlOgTDes1862Wgm4gZSKg+euxfvPgl
LDaHiTx+mYt2B53VD4gIC5eyr5FAI8p6BbOtCzki2u2fKt5Bdk813my4+YUpB/b5
VJc/9Mm1xn3thSozncXpftcQjKT4HofXzZDQRYzrAK+MQ0tWGMrjo878ilf0BL+m
myjwjn9LLmRBIOcYVc53M5IdSPceUgbYobqY6VfKMki31aaJep51DwKa/wfuwX7b
1BegfABpIG7Np+V/9AADBe1N3S21iFhBaGtUvxx9TLLrr1rRnFHo4t5miV+7F9HD
6spGecu7DWFaoNsUp2+nfth704fmLPDlhBuquvJOo413qU9EBmtYUVW2YQ8xKYXI
JcB/pjSTDHDYaGN/Fw1F4Kv8eGg4P9VsnGcA9DQNui8f9QUwA6u1WK+XqYK5Nocc
SGHhtWTZSpqh6J4kiJLYgzI04iwFT0ypS+EasVjeH2FHNnNqZII=
=QXOb
-----END PGP SIGNATURE-----

--2k4+IF0JIE/YlFLp--
