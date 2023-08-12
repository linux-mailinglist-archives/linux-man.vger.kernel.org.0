Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D165F77A148
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 19:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbjHLROh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 13:14:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjHLROg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 13:14:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5DFBE6C
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 10:14:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7457A615AE
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 17:14:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44FC0C433C8;
        Sat, 12 Aug 2023 17:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691860478;
        bh=koQNMVvJJFjGv+hUKYtnrPKAf2XF5zSaCpqGbe9yx8Q=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=i6jkArUIkERk4VBniSBQSYte51VYHXqNapJvMksd7QAaBJZML+y2jhk24r+jGpeGI
         haWq9QkNfQh0Z3J4AD1TPwbK2gAEajQyONLfcPR08xmXvjO23n4mNKnLJ70iNZkTkl
         0RZAn6kgUJiYB5Wz3cWTDt1DjmXUv15QVwO1N288Vte9lX+pMUI62hrE2ovgb1gBZ2
         3gjCLoBuezPg5aT1pnuEPdMuvkJaploEC7PX4WF4repHbmm1hZq+YPJqZS6Df7CRAA
         8QUwm2KH0YsUxAyaNNfGvzm6Ose59YuDD0GJqgettCNLOIhNrsKR4vbyZ+BIJk8jLo
         tqcDy6KRjqnjQ==
Message-ID: <ab1dd03a-9f81-662e-a4fb-714dcae8da35@kernel.org>
Date:   Sat, 12 Aug 2023 19:14:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] clone.2: Clarify the behaviour of exit_signal with
 CLONE_PARENT
Content-Language: en-US
To:     Sargun Dhillon <sargun@sargun.me>
Cc:     linux-man@vger.kernel.org
References: <20230810013432.396272-1-sargun@sargun.me>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230810013432.396272-1-sargun@sargun.me>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JEyMUT0RHVT08aBXjEBDmwgR"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------JEyMUT0RHVT08aBXjEBDmwgR
Content-Type: multipart/mixed; boundary="------------DCZz8HIYRhLwnO8OcDZVG9Vg";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Sargun Dhillon <sargun@sargun.me>
Cc: linux-man@vger.kernel.org
Message-ID: <ab1dd03a-9f81-662e-a4fb-714dcae8da35@kernel.org>
Subject: Re: [PATCH] clone.2: Clarify the behaviour of exit_signal with
 CLONE_PARENT
References: <20230810013432.396272-1-sargun@sargun.me>
In-Reply-To: <20230810013432.396272-1-sargun@sargun.me>

--------------DCZz8HIYRhLwnO8OcDZVG9Vg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Sargun,

On 2023-08-10 03:34, Sargun Dhillon wrote:
> It's documented under ERRORS that specifying a exit_signal with CLONE_P=
ARENT
> is not allowed, but it is not specified how the exit_signal is to be se=
t
> (or is set) when using the CLONE_PARENT flag.

Would you mind providing a small C program that demonstrates this?

>=20
> Signed-off-by: Sargun Dhillon <sargun@sargun.me>
> ---
>  man2/clone.2 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/clone.2 b/man2/clone.2
> index 4c5b4ac6b..0b2a60482 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -290,7 +290,13 @@ The termination signal is specified in the low byt=
e of
>  .RB ( clone ())
>  or in
>  .I cl_args.exit_signal
> -.RB ( clone3 ()).
> +.RB ( clone3 ()),
> +unless
> +.BR CLONE_PARENT
> +flag is set. If the

Please use semantic newlines.  See man-pages(7).

$ MANWIDTH=3D72 man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p';=

   Use semantic newlines
     In the source of a manual page, new sentences should  be  started
     on new lines, long sentences should be split into lines at clause
     breaks  (commas, semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention, sometimes
     known as "semantic newlines", makes it easier to see  the  effect
     of  patches,  which often operate at the level of individual sen=E2=80=
=90
     tences, clauses, or phrases.


Thanks,
Alex


> +.BR CLONE_PARENT
> +flag is set, then the exit_signal is copied from the calling process's=
 process
> +group leader.
>  If this signal is specified as anything other than
>  .BR SIGCHLD ,
>  then the parent process must specify the

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------DCZz8HIYRhLwnO8OcDZVG9Vg--

--------------JEyMUT0RHVT08aBXjEBDmwgR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTXvfYACgkQnowa+77/
2zKLKQ/9FxF8hPxGnUJ9LWVT4fRXrFounSOK4awP/dkz5wu4YwxPfmI1EPYoxiy8
5e/y/eGSbKVmowqXXHHgQprsGxgOuB8ojMIg2Hnyy+pB2qk2t5WLCYXdHwr9dwZt
ZhIth3lCbxMrtc3biNktpOZ3YPT2BRZB8vE9lQb/CIpIp9MvlW+xBK4t0XKo6L06
tmIibNe4WiSD95yN1SYAa4JfC0az318YEgwG0Wb2X+I6V3IfMIybq3xVDnuoWnEk
jP2mR8r2xj/5sg9jDpVP0fodYi1c5LEahuT3BLvoe7e/5BWnxs5S9CLHeQtDh7Ts
/h/ezGIyzlf+wwQ95KbuZ2VlQloulAwjcFIaDICbRaNUHKYIdVdcHfpYJy6rzHOB
upRPyeDrheIN3ieAtkjxzlYzLUZX70WJrgkkMdh+iXcH83SJz0jLLfubGF1ssKc4
AgxFeX9GE2J8MgyELWh2Newgd+5+sQTrsPleqHdaMI3vUR3WV6xmCRQZJzxYwRhi
uAfofMNTwimmejvdJXHLUW+17aTqyDpSjN0+l7FJhyVMT9L87q/WgWMXbmfAYZ72
mSbFtf5279sHJBVtzYD7JaxHR4E5w7QdkytIDUJJlncFDOu1YVZlQkQqvzw//lxk
glTsAR5yphInpcDP523BIqferv7kbmHA5lD6RoJ2pq5cE/V7Ttg=
=A09N
-----END PGP SIGNATURE-----

--------------JEyMUT0RHVT08aBXjEBDmwgR--
