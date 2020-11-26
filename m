Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB4332C4BC0
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 01:02:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725776AbgKZAB4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Nov 2020 19:01:56 -0500
Received: from relay07.th.seeweb.it ([5.144.164.168]:52565 "EHLO
        relay07.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728283AbgKZABz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Nov 2020 19:01:55 -0500
X-Greylist: delayed 1890 seconds by postgrey-1.27 at vger.kernel.org; Wed, 25 Nov 2020 19:01:55 EST
Received: from [192.168.1.7] (net-47-53-183-87.cust.vodafonedsl.it [47.53.183.87])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 94F37404D3;
        Thu, 26 Nov 2020 01:01:53 +0100 (CET)
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   Davide Giorgio <davide@giorgiodavide.it>
Subject: pivot_root - wrong check on mount(2)
Autocrypt: addr=davide@giorgiodavide.it; keydata=
 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
Message-ID: <dafbcfa6-666e-d596-6481-f35802dc56f1@giorgiodavide.it>
Date:   Thu, 26 Nov 2020 01:01:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="efO0jb3EQEPft86L5yDhFemfQEzIDoj1H"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--efO0jb3EQEPft86L5yDhFemfQEzIDoj1H
Content-Type: multipart/mixed; boundary="U4H3YQTTJidCkunTlQ2ujvCHrs8ct6uZU"

--U4H3YQTTJidCkunTlQ2ujvCHrs8ct6uZU
Content-Type: multipart/mixed;
 boundary="------------97EB8FEAFD1CC33560244846"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------97EB8FEAFD1CC33560244846
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Good morning,

reading the pivot_root man page
(https://man7.org/linux/man-pages/man2/pivot_root.2.html)
there seems to be an error in the example source program
"pivot_root_demo.c".
In particular, there is a wrong check on the return value of mount(2).
https://man7.org/linux/man-pages/man2/mount.2.html#RETURN_VALUE

The error is in this line
if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) =3D=3D 1)

that should be
if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) =3D=3D -1)


Thank you for your work, kind regards
--=C2=A0
Davide Antonino Giorgio
http://giorgiodavide.it

--------------97EB8FEAFD1CC33560244846
Content-Type: application/pgp-keys;
 name="0x4BAA68CE23187566.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0x4BAA68CE23187566.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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3D
=3Df5NG
-----END PGP PUBLIC KEY BLOCK-----

--------------97EB8FEAFD1CC33560244846--

--U4H3YQTTJidCkunTlQ2ujvCHrs8ct6uZU--

--efO0jb3EQEPft86L5yDhFemfQEzIDoj1H
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEEUe9wS7uVW+1WrMYGS6poziMYdWYFAl++8GsACgkQS6poziMY
dWbDyQv9FWXwUhhFUrXtqwvqyLw8ntx70N6Wrn3yMEncDEJ4oL32kjzRFR4gvECG
7Jw83netJMg43UMYtSlq6Jfd5YWR8P3Kg/eM6hwlBYEc6RlHndI+jzgrK/qiDn+z
p3fYUdQ3clGak2sfIr74A6LxUHXiiqP1ES5x9cZ7xorP9s8ZilhEUI9bTpsHyyLZ
OaTXMpfmyhwecZHOH5617/2ip8YWGCWdOuGNiHFLsQgl7iHHwQnsxMnUGhFBQbtZ
qDi8w0rj/3B8duyd01hAXBG0pwSrI7V3ausXYTZJOkoGgewSASXPU8EbslAXOTE8
IIAZfjJM7VCe6SAGYJHJZ6Ib6Sx5h3eQf/jofbusOcmKNEa3Q1lNZysSqMaXu/L4
NmpMfYWsbL8fYJC43yHIgakctXi/WPF1pDXiKwdLumGr372hdaWBfAz2MFRnMra7
+OaB6eJRxF88/ohBNHXEoGtaPmsuWccMDu1Uxv2Dz492exEyCyOIXpWERLjKwBea
d24S+sfN
=KVor
-----END PGP SIGNATURE-----

--efO0jb3EQEPft86L5yDhFemfQEzIDoj1H--
