Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A70D2788E25
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 19:59:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbjHYR6s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 13:58:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234898AbjHYR6m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 13:58:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB87A213A
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 10:58:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5939C62257
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 17:58:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 397AAC433C7;
        Fri, 25 Aug 2023 17:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692986316;
        bh=UHLTmelhl24rsojkbuHkGvx0GZNkYqOxgXxNIjV7YkA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=uLxEwq1bJL4sDomHYG1gP+MvolxDKzKN/mHKqAcRnIDKL7/qSbUD/PEFtt545WoF5
         g4Hx/NFa4/EFIkEVREmtF9088VSzbijmEUCgdQxX8OYY46f/RE765RBls549a0cYeB
         ieURA3nhWSAqqfiC58qJzmwQcAytSC2lTKhw8VD12ULS+Gw6CXDs/nOWyi283QJpYo
         yw1cotQf1AbaVI0LrGBp1ynTZZRbsaZA35gH+fPwxp7uw7GQ6aapGtmEeZqZL0Qqri
         UhhfOMPR1nWy/Ba4uVWXa7F44cyDAa83e6bmbPJjH1+0gjvcFl0zxMfJV3/n5RY/O8
         GLGGPbo8o24og==
Message-ID: <6e7c44a4-18b3-89d8-709e-5d01dbc9b3d7@kernel.org>
Date:   Fri, 25 Aug 2023 19:58:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [man-pages] pidfd_send_signal(2) innacurately describes how to
 get a pidfd
Content-Language: en-US
To:     Emanuele Torre <torreemanuele6@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <ZOfm0VZha-CLDYgX@t420>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZOfm0VZha-CLDYgX@t420>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0eTelj1VfH02aCp0WBt5a7ry"
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0eTelj1VfH02aCp0WBt5a7ry
Content-Type: multipart/mixed; boundary="------------4HmQzTOUxZ0b5GaVTKvRJRye";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <6e7c44a4-18b3-89d8-709e-5d01dbc9b3d7@kernel.org>
Subject: Re: [man-pages] pidfd_send_signal(2) innacurately describes how to
 get a pidfd
References: <ZOfm0VZha-CLDYgX@t420>
In-Reply-To: <ZOfm0VZha-CLDYgX@t420>

--------------4HmQzTOUxZ0b5GaVTKvRJRye
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Emanuele,

On 2023-08-25 01:25, Emanuele Torre wrote:
> Hi.
>=20
> Today, I was reading pidfd_send_signal(2), and I was suprised to see it=

> mentioning that you can get a PID file descriptor by opening a /proc/pi=
d
> directory.
>=20
>   NOTES
>     PID file descriptors
>       The pidfd argument is a PID file descriptor, a file descriptor
>       that refers to  process.  Such a file descriptor can be obtained
>       in any of the following ways:
>        .  by opening a /proc/pid directory;
>        .  using pidfd_open(2); or
>        .  via the PID file descriptor that is returned by a call to
>           clone(2) or clone3(2) that specifies the CLONE_PIDFD flag.
>=20
> Unfortunately, if you open /proc/123, you don't get a pidfd for the
> process with pid 123; as expected, you will just get a directory file
> descriptor for /proc/123.
>=20
> And that directory file descriptor won't be usable as a PID file
> descriptor either.
> (openpidfd, and pidfdgetfd are just simple wrappers for pidfd_open, and=

> pidfd_getfd)
>=20
>   $ pidfdgetfd 9 0 0 echo hello 9</proc/1584616
>   pidfd_getfd: Bad file descriptor
>   $ # you must use pidfd_open
>   $ openpidfd 9 1584616 pidfdgetfd 9 0 0 echo hello
>   hello
>=20
> I also wrote a test program that uses a /proc/pid directory file
> descriptor as pidfd for  waitid(P_PID)  and that also didnd't work
> (waitid fails with EINVAL).
>=20
> But those directory file descriptors do work as alternative to actual
> pidfds for  pidfd_send_signal(2)  specifically.
>=20
> I think the documentation should be changed to say that
> pidfd_send_signal accepts either a PID file descriptor (obtainable usin=
g
> pidfd_open or CLONE_PIDFD), or, alternatively, a file descriptor for a
> /proc/pid directory to avoid confusions.

Would you mind sending a patch?  If you do, please include in the commit
message the source code _and_ the execution of all of the programs you
mentioned above.

Thanks,
Alex

>=20
> Thank you.
>=20
> o/
>  emanuele6

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------4HmQzTOUxZ0b5GaVTKvRJRye--

--------------0eTelj1VfH02aCp0WBt5a7ry
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTo68oACgkQnowa+77/
2zLljhAAkOP+cQsfdBqic2YfUGMglXXYpxvusgnz3MxvWHNLDz6m2yzHDtBMS9no
VUFhzBAtifiOQPC31viqZzhk+Ph1C4N5DVPNy0G+C/FSowFj5qcxh0Gq4+uEsBDA
vSx5Jb7DfKpSOeSWg0FS++atVsZL6eaF4sJ+OWaWiKhFD/YcA0U6Y0nKTqNYRmw/
ZQgsl3XnJiU24FdXp2FEgO6K+iAe3UxzB9YgrAYybPbImQE4nZRQrLRiNHzBwciJ
K47859oaHM86DkkGk8SEIP4EeVFZ24ujSLwmilfo7Vg2UZg+OgcuFqw9ilP4jdCm
tGWuiZUPf0Y1f74ZCpoN3KRem/lgQx6M45ZVSWI9Osgy3DfyYHfqAjLI6USUT4KK
CUbUTigxu0LA4ldsmDhDjFdvHWzk3M3F89XybGXqr7ZlBGGs5wWmfj/Ml0rnL5Xw
UX/4sI4YXqc7c+bbsFumd2XpdW+cQdlFpFWNpWtAnEdk11cQlUXXlpmQR0WN84c8
8THPymGriaolwaBVQ638fVeyqm9maiNgVsXrLAk7IXqusB8NZPdBEcLgdNnGV/XA
UBwdiYpXVMT7DOLR0vnYttpVGGIhUZmgzLhHBoJ16fSVQX22xiRhL67vg4SxozZp
8QNiEFyiTFzqKP/ywKOzagiVuwFNENe64tNbBOeG2g+HY6qm2LU=
=I3W8
-----END PGP SIGNATURE-----

--------------0eTelj1VfH02aCp0WBt5a7ry--
