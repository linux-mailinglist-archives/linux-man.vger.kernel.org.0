Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0708B6B38B4
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 09:32:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbjCJIcA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 03:32:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230309AbjCJIbx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 03:31:53 -0500
Received: from xry111.site (xry111.site [IPv6:2001:470:683e::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB0A1C3E19
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 00:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
        s=default; t=1678437094;
        bh=EmbAO+todPKo1nmmj6g1PCiloaDbN6T0wbKVKxWs0BU=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=l7S4BdLy6mCqU7WGxLCiSuZ9Kmy/yF5CU/Ti26iLtH+DmstB/h9BNZmMG0UxqoYUx
         yExwlnT8sdZjrtwTPxXma1DuD5a8TcPZ2lMY7ew7n/7WNQqK0wCcqBJel/0zf4vjoH
         LHB8k5+s3RyFhWe1ckh65tw2NsG2kONbhrVpmhGc=
Received: from [192.168.124.9] (unknown [113.140.11.5])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@xry111.site)
        by xry111.site (Postfix) with ESMTPSA id C78DA664F6;
        Fri, 10 Mar 2023 03:31:32 -0500 (EST)
Message-ID: <fa44d14af10807c397932e9d74b03ac36603b65e.camel@xry111.site>
Subject: Re: nextafter underflow and errno in Glibc
From:   Xi Ruoyao <xry111@xry111.site>
To:     Pascal Cuoq <cuoq@trust-in-soft.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Guillaume Cluzel <guillaume.cluzel@trust-in-soft.com>,
        GNU C Library <libc-alpha@sourceware.org>,
        Andreas Schwab <schwab@linux-m68k.org>
Date:   Fri, 10 Mar 2023 16:31:17 +0800
In-Reply-To: <PR0P264MB07941B6AF99182D1CE404018C0BA9@PR0P264MB0794.FRAP264.PROD.OUTLOOK.COM>
References: <PR0P264MB07941B6AF99182D1CE404018C0BA9@PR0P264MB0794.FRAP264.PROD.OUTLOOK.COM>
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

On Fri, 2023-03-10 at 07:34 +0000, Pascal Cuoq via Libc-alpha wrote:
> Hello,
>=20
> I do not feel confident sending a patch for the following reason:
>=20
> Glibc commit 85422c2acba83852396c9d9fd22ff0493e3606fe does contain a
> partial description of the specification that Glibc strives to
> implement:
>=20
> =C2=A0=C2=A0=C2=A0 This patch makes them do so in cases that should inclu=
de all the cases
> =C2=A0=C2=A0=C2=A0 where such errno setting is required by glibc's goals =
for when to set
> =C2=A0=C2=A0=C2=A0 errno (but not all cases of underflow where the result=
 is nonzero and
> =C2=A0=C2=A0=C2=A0 so glibc's goals do not require errno setting).
>=20
> However much remains unclear (for me!) about the specification that
> Glibc strives to implement. Does this mean that the specification is
> actually non-deterministic and that the manpage should contain a
> sentence saying =E2=80=9Cwhen the result of nextafter applied to distinct
> arguments x and y is subnormal, nextafter reserves the right to set
> errno to ERANGE but offers not guarantees of doing so; if the result
> is zero, errno is guaranteed to be set to ERANGE=E2=80=9D?

> This does not make sense to me: how does one choose one's own
> specification for nextafter, over which one has full control, for a
> basic function that does not need to allocate resources, and make this
> specification non-deterministic? Does the non-determinism apply to the
> floating-point underflow exception as well?

The C17 standard says:

The result underflows if the magnitude of the mathematical result is so
small that the mathematical result cannot be represented, without
extraordinary roundoff error, in an object of the specified type. If the
result underflows, the function returns an implementation-defined value
whose magnitude is no greater than the smallest normalized positive
number in the specified type; if the integer expression math_errhandling
& MATH_ERRNO is nonzero, whether errno acquires the value ERANGE is
implementation-defined; if the integer expression math_errhandling &
MATH_ERREXCEPT is nonzero, whether the "underflow" floating-point
exception is raised is implementation-defined.

"Implementation-defined" means the implementation (Glibc here) has the
freedom to decide what to do, but it has to be documented.  It's
documented in Glibc manual section 20.5.4:

When underflow occurs, the underflow exception is raised, and zero
(appropriately signed) or a subnormal value, as appropriate for the
mathematical result of the function and the rounding mode, is returned.
=E2=80=98errno=E2=80=99 may be set to =E2=80=98ERANGE=E2=80=99, but this is=
 not guaranteed; it is
intended that the GNU C Library should set it when the underflow is to
an appropriately signed zero, but not necessarily for other underflows.

> But then again, I notice that the current manpage description is
> already non-deterministic: a result that should be subnormal can be
> 0.0, confirming that I do not understand Glibc's goals. In these
> conditions I could not do a good job describing the specification that
> Glibc implements.

Just copy from Glibc manual.  But IMO man-page is not a Glibc manual (if
you need Glibc manual you can just read Glibc manual), so a vague "may"
clause like "the errno MAY be set to ERANGE" should be enough (and it's
always true regardless which libc implementation is used).=20

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University
