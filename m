Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B62286B3524
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 05:06:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbjCJEGQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 23:06:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230142AbjCJEGB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 23:06:01 -0500
Received: from xry111.site (xry111.site [IPv6:2001:470:683e::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B624DF24BD
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 20:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
        s=default; t=1678421151;
        bh=BW61pZ42XdwIkOrXvJT9X+YFYjU0Z0Wtn4FqrnQqtow=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=VcOE35+bZIOWRLkXyz3ddRiUrrR2RJwEl4fYHc1WFxNgDwy0ECQSAp+0VuXR0qNTq
         vEQSqPO+3dx03kFKdcm5qEobLppKrnB9ywiiLrtq3Xpd34cIbHzfNlahsDW5O/cLc3
         urUr7jPSjGPU+2xnYps0nlJLmhu3G4TbaWBJdrlY=
Received: from [IPv6:240e:358:1159:9300:dc73:854d:832e:5] (unknown [IPv6:240e:358:1159:9300:dc73:854d:832e:5])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@xry111.site)
        by xry111.site (Postfix) with ESMTPSA id E9D7C66479;
        Thu,  9 Mar 2023 23:05:48 -0500 (EST)
Message-ID: <99154d24d07cfa550a1ec4f3c5e5f5d222c7fabb.camel@xry111.site>
Subject: Re: Issues in manpage memalign
From:   Xi Ruoyao <xry111@xry111.site>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Floyd, Paul" <pjfloyd@wanadoo.fr>,
        GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man@vger.kernel.org
Date:   Fri, 10 Mar 2023 12:05:43 +0800
In-Reply-To: <77cfc3d2-cd41-13a7-bdb9-ced179531f33@gmail.com>
References: <d79b505c-5b19-331c-5b25-d40adc9cc843@wanadoo.fr>
         <77cfc3d2-cd41-13a7-bdb9-ced179531f33@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 2023-03-10 at 01:35 +0100, Alejandro Colomar via Libc-alpha wrote:
> Hi Paul,
>=20
> On 3/7/23 23:24, Floyd, Paul wrote:
> > Hi
> >=20
> > Quick bit of background. I'm a Valgrind maintainer and recently I've
> > been working on getting Valgrind to work more like the underlying OS /=
=20
> > libc implementations of memalign, posix_memalign and aligned_alloc.
> >=20
> > There are several issues with the manpage for memalign and aligned allo=
c.
> >=20
> > quote:
> >=20
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The=C2=A0 obsolete=C2=A0 fun=
ction=C2=A0 memalign()=C2=A0 allocates size bytes and=20
> > returns a
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pointer to the allocated mem=
ory.=C2=A0 The memory address will be a=20
> > multiple
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of alignment, which must be =
a power of two.
> >=20
> > endquote:
> >=20
> > The power if two requirement is false for glibc which silently bumps up=
=20
> > the alignment to the next power of two.
> >=20
> > quote:
> >=20
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The=C2=A0 function aligned_a=
lloc() is the same as memalign(), except=20
> > for the
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 added restriction that size =
should be a multiple of alignment.
> >=20
> > endquote:
> >=20
> > This is also false for glibc. In the glibc implementation weak aliases=
=20
> > are used so memalign and aligned_alloc call the same function.

aligned_alloc is in C99, it says (7.22.3.1p2):

"The value of alignment shall be a valid alignment supported by the
implementation and the value of size shall be an integral multiple of
alignment."

In the context of the C standard, "shall" means (section 4 p2):

"If a "shall" or "shall not" requirement that appears outside of a
constraint or runtime-constraint is violated, the behavior is
undefined."

"It seems working" is one of the legal consequences of an undefined
behavior.  "shall" does NOT mean "if you don't obey, the implementation
is required to give some errno to you".

> > quote:
> >=20
> > ERRORS
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 EINVAL The alignment argumen=
t was not a power of two, or was not=20
> > a mul-
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 tiple of sizeof(void *).
> >=20
> > endquote:
> >=20
> > Both of the above only apply to posix_memalign and not to either=20
> > memalign or aligned_alloc.
> >=20
> > There is a missing EINVAL description. If the alignment is so large tha=
t=20
> > the allocation will not be possible to satisfy then the call will fail=
=20
> > and set errno to EINVAL.

POSIX says it should be ENOMEM:

[ENOMEM]
There is insufficient memory available with the requested alignment.

https://pubs.opengroup.org/onlinepubs/9699919799/functions/posix_memalign.h=
tml

And it seems also true with Glibc (at least Glibc-2.37):

$ cat t.c
#include <stdlib.h>
#include <stdio.h>

int main()
{
	void *p;
	if (posix_memalign(&p, sizeof(void *) << 55, 1) !=3D 0)
		perror("posix_memalign");
}
$ cc t.c
$ ./a.out
posix_memalign: Cannot allocate memory

I have no idea about memalign() (without posix_) though.


--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University
