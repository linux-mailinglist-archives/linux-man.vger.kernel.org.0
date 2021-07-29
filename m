Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE9753DA1A4
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 12:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231815AbhG2K6o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 06:58:44 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:43978 "EHLO
        galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234000AbhG2K6n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 06:58:43 -0400
From:   Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1627556320;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=4ozvwcTNBLC8tag6ijEDKD65Qy3Jf4VbRoPSgMMoOwI=;
        b=S/pKxqk32vEA9mxtcDAy3U4zqEt98TpmZ/eIpGChtZ37bYLl0rPfoZrgxUlO6mfTAIeRQb
        kD5r0wZMmNFi8EGOFDXsqtPXS5R6W5LBbLwkjcTsZhuQmruYKzjAisLvn0D/h2LBr/9PSY
        xeLlmRfsNWsYjN9cH83x0pWonPFVKaoVo8nGh4LyNXuC2llin2Wy5pb4f2TqvBuoICNQxT
        335XCCA39kV5opH4cueYv/5JseqD1s2A1m54kU5cxLqDS1HacSc+9RBlhQXhnQX3XRXAtT
        1x2KE28FdsdDmtgGe4aCI97FJ4iGM3uXHt+OhT9jZJpjnBajfWMWyDEd+ZzZCA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1627556320;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=4ozvwcTNBLC8tag6ijEDKD65Qy3Jf4VbRoPSgMMoOwI=;
        b=s/ctHv66vrIvsEC3qEBMYZbbYqqUpTesMSJYSsIUYn9jntzTdLxvAWK1y+qsvwGlPQVG0y
        I15BP/q8tGtaQ8CA==
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH v1] futex.2: Document FUTEX_LOCK_PI2
In-Reply-To: <0b8992e1-37ae-0b02-a9a6-df635d6fe9b9@gmail.com>
References: <20210625101051.1206558-1-kurt@linutronix.de>
 <8735rxjzxm.ffs@tglx> <0b8992e1-37ae-0b02-a9a6-df635d6fe9b9@gmail.com>
Date:   Thu, 29 Jul 2021 12:58:38 +0200
Message-ID: <878s1pqtcx.fsf@kurt>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Thu Jul 29 2021, Alejandro Colomar (man-pages) wrote:
> Hi Kurt, Thomas,
>
> On 7/29/21 10:18 AM, Thomas Gleixner wrote:
>> On Fri, Jun 25 2021 at 12:10, Kurt Kanzenbach wrote:
>>> FUTEX_LOCK_PI2 is a new futex operation which was recently introduced i=
nto the
>>> Linux kernel. It works exactly like FUTEX_LOCK_PI. However, it has supp=
ort for
>>> selectable clocks for timeouts. By default CLOCK_MONOTONIC is used. If
>>> FUTEX_CLOCK_REALTIME is specified then the timeout is measured against
>>> CLOCK_REALTIME.
>>>
>>> This new operation addresses an inconsistency in the futex interface:
>>> FUTEX_LOCK_PI only works with timeouts based on CLOCK_REALTIME in contr=
ast to
>>> all the other PI operations.
>>>
>>> Document the FUTEX_LOCK_PI2 command.
>>>
>>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>
> Sorry, I merged it and forgot to reply.  Patch applied (And a minor=20
> inconsistency fixed: s/5.14.0/5.14/ ; All references to kernel 5=20
> versions have 2 fields in the manual pages).  And some other minor fixes=
=20
> too.

Sounds good. Thanks for fixing it up.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmECid4THGt1cnRAbGlu
dXRyb25peC5kZQAKCRB5KluBy5jwpkusD/9N2YkbgNhJIWp5ciWWNovyR/YFJiah
cwcX+JJ6oiRexGP1Vaf3DJ7cyPhZfimmufd7UwAoNj1TzkMIgx7WEYRMgLg1RQi/
C+csBdbMMsvvQPQ2G7TY0C8EW0IU2QA7h2ByDcoiSEt4Eg5GQz5dgRV407Hb7DvG
kCJWYlWt1cex1/O2/nt3YITIF4exyec9BhvmJqztZc9L8XwqmwmLPRecHuxrapmS
dLDok+INv5tv4lAQ+SuQStpCuqoBne8Cp/hF9pp/aWulvpSbZpbSlDdHuBQdjxSI
VzCS3aaqpgjFCt9FrjK6PrTeQG5G2aswpN4PIULaAi7AfWQnWll4mhpOBvJXb4lR
wGRGstwFeMdw5JmEy1ReqBXFJ5aF5sxJNRlQenZIU/dZh2rhw76vPggtggDkQ4Q6
Qz3R/ruDOmdz8NNiQ/ipYu/1LTPAGJqUzw3o03mH/ywfFz3LYXNYLinkRuCnyC+t
pO1kbH8nnTd3KO+CLIOiQsxmI8ym5IlGVk0/hRtf8V/MYIUSRKKNlcGLg90cfIZs
0CM25FwqDvQgnK/vZ9nRvpQo84aQu5aMzbBvXC859apTnycDs1vlkCu88YjSblWw
FTpRC06O6s3TCZGHkxBaACU9IPtFeaqOz65kX2c60fLHfADYdsk4/D3i1L9yk6re
k4rrVcUQBSAi2g==
=3D0n
-----END PGP SIGNATURE-----
--=-=-=--
