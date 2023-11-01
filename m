Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAB9E7DE4A0
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:33:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231345AbjKAQdm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:33:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjKAQdm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:33:42 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8670BFD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:33:36 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EE43C433C8;
        Wed,  1 Nov 2023 16:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698856416;
        bh=eNjt/F63vfEGD5KQlMgwTLoupTY9Zks5/tAFZ/zG3yQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nECdC3oQV/D7Vi1DF5ZiWI9purzY7NE5jBdQoxYuaXVe4JzWFuWKT+5P1gvxjeE8Y
         yUWYK8YjDz4mezTUfZ1HTrQGYmwS4tpCoc8lUPthCiQWGyRBWwYGagBUQV0Hvkw/HH
         tYQi2L7JpO1s1ZD7gc3fdnCQT2Fd7Bsp5HE241WBQwdv+a2MdZYDt/KudWOq7ESK4h
         +SvCFQwAwNnd7tSR6v4w+C4wvQP3M2Vktnx6LA9ym13Ckmlxo6oFl26T5s/LNFyQ0N
         26G2q6fqjOmo6vkYm2Pgsi3ixN0OcvzzEejG66rpxDXsB+i7cNaPeO7Gi0s5Q9WHHx
         foczggiaL9DMA==
Date:   Wed, 1 Nov 2023 17:33:32 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page readlink.2
Message-ID: <ZUJ93Bo1SOJR-83-@debian>
References: <ZUJaZIaqGk23UECp@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qXIDPt/D9FWMoIxb"
Content-Disposition: inline
In-Reply-To: <ZUJaZIaqGk23UECp@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qXIDPt/D9FWMoIxb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:33:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page readlink.2

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    the link target =E2=86=92 link target

Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D1a2af84e62456a6ae29f1a1e1f73d761189065be>

Thanks,
Alex

>=20
> "#include E<lt>limits.hE<gt>\n"
> "#include E<lt>stdio.hE<gt>\n"
> "#include E<lt>stdlib.hE<gt>\n"
> "#include E<lt>sys/stat.hE<gt>\n"
> "#include E<lt>unistd.hE<gt>\n"
> "\\&\n"
> "int\n"
> "main(int argc, char *argv[])\n"
> "{\n"
> "    char         *buf;\n"
> "    ssize_t      nbytes, bufsiz;\n"
> "    struct stat  sb;\n"
> "\\&\n"
> "    if (argc !=3D 2) {\n"
> "        fprintf(stderr, \"Usage: %s E<lt>pathnameE<gt>\\en\", argv[0]);\=
n"
> "        exit(EXIT_FAILURE);\n"
> "    }\n"
> "\\&\n"
> "    if (lstat(argv[1], &sb) =3D=3D -1) {\n"
> "        perror(\"lstat\");\n"
> "        exit(EXIT_FAILURE);\n"
> "    }\n"
> "\\&\n"
> "    /* Add one to the link size, so that we can determine whether\n"
> "       the buffer returned by readlink() was truncated. */\n"
> "\\&\n"
> "    bufsiz =3D sb.st_size + 1;\n"
> "\\&\n"
> "    /* Some magic symlinks under (for example) /proc and /sys\n"
> "       report \\[aq]st_size\\[aq] as zero. In that case, take PATH_MAX a=
s\n"
> "       a \"good enough\" estimate. */\n"
> "\\&\n"
> "    if (sb.st_size =3D=3D 0)\n"
> "        bufsiz =3D PATH_MAX;\n"
> "\\&\n"
> "    buf =3D malloc(bufsiz);\n"
> "    if (buf =3D=3D NULL) {\n"
> "        perror(\"malloc\");\n"
> "        exit(EXIT_FAILURE);\n"
> "    }\n"
> "\\&\n"
> "    nbytes =3D readlink(argv[1], buf, bufsiz);\n"
> "    if (nbytes =3D=3D -1) {\n"
> "        perror(\"readlink\");\n"
> "        exit(EXIT_FAILURE);\n"
> "    }\n"
> "\\&\n"
> "    /* Print only \\[aq]nbytes\\[aq] of \\[aq]buf\\[aq], as it doesn't c=
ontain a terminating\n"
> "       null byte (\\[aq]\\e0\\[aq]). */\n"
> "    printf(\"\\[aq]%s\\[aq] points to \\[aq]%.*s\\[aq]\\en\", argv[1], (=
int) nbytes, buf);\n"
> "\\&\n"
> "    /* If the return value was equal to the buffer size, then the\n"
> "       the link target was larger than expected (perhaps because the\n"
> "       target was changed between the call to lstat() and the call to\n"
> "       readlink()). Warn the user that the returned target may have\n"
> "       been truncated. */\n"
> "\\&\n"
> "    if (nbytes =3D=3D bufsiz)\n"
> "        printf(\"(Returned buffer may have been truncated)\\en\");\n"
> "\\&\n"
> "    free(buf);\n"
> "    exit(EXIT_SUCCESS);\n"
> "}\n"

--=20
<https://www.alejandro-colomar.es/>

--qXIDPt/D9FWMoIxb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCfdwACgkQnowa+77/
2zKNjw/9EbjXrRMoc0mzgeZoXPd96T5CrVHZufLXf8iXdX9cBjJ8JZHlGzWlg0R5
ntXtFJ/zZtA13eC7wKWIJOxwSDFAJCGRBOQiEIWvCZtRw6SOvzZ1MIFsOzy83k/2
+ce50O+wF9R6WdPZrz0kudxjH0jad90qd3ALNACHJiAthEmNILYhzBSRHTOOOLS1
bfWBmQ/2qs0+Bs6p8sRdOKD7QJd6cH5Xu5o77dOrfIHda0z4MkuZfBX420qMV98k
RfMFF3LIU1pljxwv5oE+nv2nizHo+kVwSp1XHENISMoZyE60rthV2uoELnOQzsPY
89/1AA/O6FrS65/kDkmd6ZhtMJXEOMubCoAZ7ONvIIvOddq5+C/AfLQenv6Zdi3k
x9M178MpfASSpxatE+z5PRx8U+amH2mwmPXC1U9h2nBE/qxrUQBFi/XTegt6ipMh
AXUZVBpw59kzLVvYLr+SsT+79MqP8wIErW6hpVLWJtmRxIRfcowvxWx/xPKyxOEq
UxncZdV9wCGrTufSYp/J4c/CIgkme22pYqkJUyLbiJLSz79aGabmNjcFqzmFCtHo
xhB2j7OrBkI31uJX142rhLS/rSQ4c8erHE7a3rVaDgBzDCeut3G3T+7sI3Xu6PVD
86AHNdcJcCXQqxNNyVHBHFA774WI3KaFUqlv9hgCC10vbedwgE4=
=SpbT
-----END PGP SIGNATURE-----

--qXIDPt/D9FWMoIxb--
