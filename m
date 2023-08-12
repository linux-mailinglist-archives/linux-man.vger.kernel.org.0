Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28BDF77A17B
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 19:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229596AbjHLRsj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 13:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjHLRsi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 13:48:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8CDA1709
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 10:48:41 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 666B661C58
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 17:48:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B14FC433C7;
        Sat, 12 Aug 2023 17:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691862520;
        bh=a78eZ/Q3fWz2Tgd7yEJb2nFVr2t2DOI/awS5W0LNH6k=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=YHAtC/61/HZwEDbB1FN+3e0iVrlVBKjUkAtgJKVJIrwIYyUQZoEFZ0J6t7l+a/GJT
         FVy3Bmj74nq5ND4KQhpFAUoIIp6UmlT4llqvCNWLafn5iEfKC5vZB1gZFFpnrpgIAo
         6sWPUnfUcA6AwsNMiL5MUao06NCKRZpXXUujMdwTLMiraN/NVD3hZN8tm/SYGvZHx+
         tmTfUH8SbwQNBCnuRIg6ArNYLXx4YXZUMY8Enteata4jiDA1XPzyGr8oMFvDusBJY0
         3lRA5P9Rph/1m/9Mzm/dg3XbKk0b45UGbJM8fqhcryZ0LLU84R+ge4cAADaPfmJCz2
         zTO7GV9uz1/2A==
Message-ID: <69c6a263-3578-2d1e-23c0-6a8e9c35602f@kernel.org>
Date:   Sat, 12 Aug 2023 19:48:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] clone.2: Fix the erroneous statement about CLONE_NEWPID
Content-Language: en-US
To:     Sargun Dhillon <sargun@sargun.me>
Cc:     linux-man@vger.kernel.org
References: <20230810022603.947583-1-sargun@sargun.me>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230810022603.947583-1-sargun@sargun.me>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gMbjm0blx6z55pFVLhaLJGNm"
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
--------------gMbjm0blx6z55pFVLhaLJGNm
Content-Type: multipart/mixed; boundary="------------e9axtsi0g4ogg07ICpn0WDea";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Sargun Dhillon <sargun@sargun.me>
Cc: linux-man@vger.kernel.org
Message-ID: <69c6a263-3578-2d1e-23c0-6a8e9c35602f@kernel.org>
Subject: Re: [PATCH] clone.2: Fix the erroneous statement about CLONE_NEWPID
References: <20230810022603.947583-1-sargun@sargun.me>
In-Reply-To: <20230810022603.947583-1-sargun@sargun.me>

--------------e9axtsi0g4ogg07ICpn0WDea
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Sargun,

On 2023-08-10 04:26, Sargun Dhillon wrote:
> It appears like the documentation is based on out of date information i=
n
> regards to using CLONE_NEWPID and CLONE_PARENT together.
>=20
> For example, in this test program, one can see that it works:
>=20
> static pid_t sys_clone3(struct clone_args *args)
> {
> 	fflush(stdout);
> 	fflush(stderr);
> 	return syscall(__NR_clone3, args, sizeof(*args));
> }
>=20
> int main() {
> 	struct clone_args args =3D {
> 		.flags =3D CLONE_PARENT | CLONE_NEWPID,
> 	};
> 	int ret;
>=20
> 	printf("The main program is running with pid: %d, and ppid: %d\n", get=
pid(), getppid());
> 	ret =3D sys_clone3(&args);
> 	assert(ret !=3D -1);
> 	if (ret =3D=3D 0) {
> 		printf("This is the child, running with pid: %d, and ppid: %d\n", get=
pid(), getppid());
> 		_exit(0);

Do we really need _exit(3)?  Why not exit(3)?  There are no atexit(3)
or on_exit(3) handlers registered, so the only difference I expect is
the flushing of stdio(3) streams, which _exit(3) doesn't perform but
exit(3) does.  So exit(3) seems more appropriate, isn't it?

> 	}
>=20
> 	return 0;
> }

Thanks for the example program!  It helps a lot with the review.  :)

>=20
> This test program (successfully) outputs:
> The main program is running with pid: 648411, and ppid: 648397
> This is the child, running with pid: 1, and ppid: 0
>=20
> Signed-off-by: Sargun Dhillon <sargun@sargun.me>
> ---
>  man2/clone.2 | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/man2/clone.2 b/man2/clone.2
> index 4c5b4ac6b..96ad24b95 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -736,9 +736,7 @@ Only a privileged process
>  can employ
>  .BR CLONE_NEWPID .
>  This flag can't be specified in conjunction with
> -.B CLONE_THREAD
> -or
> -.BR CLONE_PARENT .
> +.B CLONE_THREAD.

You'll need BR here, and the space before the period; otherwise,
the period will be in bold, which we don't want (as it's not part
of the identifier).

Thanks,
Alex

>  .TP
>  .B CLONE_NEWUSER
>  (This flag first became meaningful for

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------e9axtsi0g4ogg07ICpn0WDea--

--------------gMbjm0blx6z55pFVLhaLJGNm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTXxfYACgkQnowa+77/
2zJ+zBAAlpzLhLkggKTka6K2zrANqVj6HpOE7U8kaPPZOwBPB/CXfwsJGGRw9Juz
xvdp+36uRCf6n4xV1r42s1WI4MPWroFoKpWfKDhggnz722XtRmDXpeuEDjSLgbyK
+5ZeeXMnh++bC1vpIT/QM/x/9tEB22zi03AVag5tGcSu07og5ehNapiO9r7gsw6j
LsYQzbpxIKiDhiTiHmcfE/RNg+BH+pXaqm7pUDo3Z5BFGdUIluU4uMj5UBES5ekp
RAblwK/HB0fFVSPp4MqoOaXiTTpD0GfvTvHBEra4sIkddSa/FbKBhlyhEWfpQ1n8
BtGCMQmRmlAZngPbs8WAUvHSFd0F+cT3sa2hoDQf5f55XQwXrkusZcdcWh/xjMUR
uuwSa7msH87UsLEOArlvY3L/qpk9nfUzLgmcm9/VoZH58ea1xWuBARQlg/mnTNKE
GkHz/XX636OsDh4JjvTbcLqiMVx+W3tbJGh+NYsTF2VKWPJr8mTJCG+eXI9aI/Mb
s9t2DfZfAF9S9st7mHUOnBt4LsFFfMVf02y1YAKPZ2HE2AWyVztynIEIEC360B+Y
+wbCscsdNUebtjqsAoZd7YpwZ23KnPrDwSwYdDGS5Lw/Kbo90+UUt/Ap/9VZRGnT
CQ1T7hCRBU4H6ZKycDFbbdbyGtU4bkoRKKfcz4T6riDOGI4Fsq4=
=UhLz
-----END PGP SIGNATURE-----

--------------gMbjm0blx6z55pFVLhaLJGNm--
