Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B16CA767653
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 21:29:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233721AbjG1T3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 15:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjG1T3s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 15:29:48 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F125E268B
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 12:29:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8CCC1621DA
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 19:29:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19D02C433C7;
        Fri, 28 Jul 2023 19:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690572586;
        bh=XyypDeVtwHuHubZa/v9l+m23kvOzU2HA1whT5/JkS9E=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=g6hno8cJBNNWidBYwNjhfQR/5foh6+/GYRSOryow4PysR4UWVWw6LuYpQ5ylcz0X2
         YcEMV/HnF18lSqzdIoD/Zd2a0cxdN1aSq0fDRbjOK7yOaiAAGvwI05SLkRzDbsxk4C
         6YtuHY7qFRNAIMvdF+NaDatKphOv2FhxQ3JD54ArOhJOH3jzD0yj8VEs8oSF5l1j27
         D6kZHc+dkFuqrbfyuc5yEgSi1pb6H9QT908QLVluavAW0MQTIsjM4CuQlHbS0SyJRC
         WhRWjCRiF7KaEFSbpVOrqZzAAa56RjNHNXc5bzkQr68cp0/T+6pTwEVD4opKt4KxqI
         1H037EVJLMhNA==
Message-ID: <56783164-31c5-c6fa-9e5d-b554404116f5@kernel.org>
Date:   Fri, 28 Jul 2023 21:29:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v5] abort.3: clarify consequences of calling abort
Content-Language: en-US
To:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
References: <0a518bec28b5aa0b17e6a4aaf13afadea30d81d8.1690376284.git.tgolembi@redhat.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <0a518bec28b5aa0b17e6a4aaf13afadea30d81d8.1690376284.git.tgolembi@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yg0m2Fjv9sD40TKS5orVJlfd"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yg0m2Fjv9sD40TKS5orVJlfd
Content-Type: multipart/mixed; boundary="------------0KL4tiWEca48mB4msJXo0RFq";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Stefan Puiu <stefan.puiu@gmail.com>
Message-ID: <56783164-31c5-c6fa-9e5d-b554404116f5@kernel.org>
Subject: Re: [PATCH v5] abort.3: clarify consequences of calling abort
References: <0a518bec28b5aa0b17e6a4aaf13afadea30d81d8.1690376284.git.tgolembi@redhat.com>
In-Reply-To: <0a518bec28b5aa0b17e6a4aaf13afadea30d81d8.1690376284.git.tgolembi@redhat.com>

--------------0KL4tiWEca48mB4msJXo0RFq
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom=C3=A1=C5=A1,

On 2023-07-26 14:59, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
> Clarify that atexit/on_exit are not called because those are called onl=
y
> on normal process termination (as documented on their respective manual=

> pages).
>=20
> Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Cc: Stefan Puiu <stefan.puiu@gmail.com>
> Signed-off-by: Tom=C3=A1=C5=A1 Golembiovsk=C3=BD <tgolembi@redhat.com>
> ---
>=20
> v5 changes:
> * split .BR items to separate lines as sugested by G. Branden Robinson
> * changed "abort" to "abort.3" in commit message title

Patch applied.  Thanks!

I've included your test program in the commit message.
It was very useful!

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
80e3024bde68ee3fa55cfd87728b81f94ec931df>

Cheers,
Alex

>=20
>  man3/abort.3 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man3/abort.3 b/man3/abort.3
> index c63eace5e..3e1fbbbf5 100644
> --- a/man3/abort.3
> +++ b/man3/abort.3
> @@ -47,6 +47,12 @@ function will still terminate the process.
>  It does this by restoring the default disposition for
>  .B SIGABRT
>  and then raising the signal for a second time.
> +.PP
> +As with other cases of abnormal termination the functions registered w=
ith
> +.BR atexit (3)
> +and
> +.BR on_exit (3)
> +are not called.
>  .SH RETURN VALUE
>  The
>  .BR abort ()

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------0KL4tiWEca48mB4msJXo0RFq--

--------------yg0m2Fjv9sD40TKS5orVJlfd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEFycACgkQnowa+77/
2zIa7hAAmYs/K3Y396/yZO3ESW6a8pYcCfnY6tySJblOj7R9Y9YSY8uaE/XlQNaf
LOxeV5VT70bH7wBkL/FEpI1+GHSntMmQJypTRAOMcTntJHfpy9m6ZQtbkCA1O2yd
/8a0KomsDNCPKMINXQuNGZ84uOjif3zo0xax52Bzz/6LSJcAm6MnaO2/UoyPu1o3
s0+JnCpJei+ydWqkDLbyz9h+K9+6OIwaLAXPcCdC6DFG/eK1hh2SLx7His1SGAW0
f0549kj3NlzQXGcZpEORZ2Pbw5ZtVFtwGVxf2r2gzKwmZOrDf3VCPHNirJ4wRFFu
8eRmuqB9ldaewhe6Smh/vuhvlzK3zCg+sef8CbRAoC6LVoyhqIS2nU7puM/NabDS
23MacogxZzRNMwJ+/livozdYqv/tvCzJiFdflAOFPQzWY5/Rwz0g8O9pNJFAk38/
Tq8Z3HBJgV18MgqCHY4BqvkvYv5Ib3zwLJQFzfRUhTIDu4xFracuIG5zMyhHGumr
F0B+OMLldKr+PmyR+CGm2mS5lHFmv//l8fAU2wqNBScw8w6S82/AXAJy7FdEXMlV
GFck3AI4UjrfN2CS8Dnl+BIYmRytzBIRlCfjMr0Rm1CrWHR54qdYK2LK0NVhL9ml
yHInGALa7rvemB++n6zQsDTCLgu7PVPmvkscFlc4cZs19lLR21c=
=X7ge
-----END PGP SIGNATURE-----

--------------yg0m2Fjv9sD40TKS5orVJlfd--
