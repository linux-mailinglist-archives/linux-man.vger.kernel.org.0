Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2714B78E348
	for <lists+linux-man@lfdr.de>; Thu, 31 Aug 2023 01:30:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237188AbjH3Xah (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Aug 2023 19:30:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232142AbjH3Xag (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Aug 2023 19:30:36 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E6CBC0
        for <linux-man@vger.kernel.org>; Wed, 30 Aug 2023 16:30:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 2ACDAB81EC5
        for <linux-man@vger.kernel.org>; Wed, 30 Aug 2023 23:30:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57A75C433C7;
        Wed, 30 Aug 2023 23:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693438230;
        bh=02SujSi3hF9sZ3cnswrhS5ungBi0sbx5gOlODEMk5bg=;
        h=Date:To:From:Subject:Cc:From;
        b=EBfI5UeeD81n1IjtXRn/bVdmcTXubOCVPA6TjxRPUV+oZFyOo6nseI98SXPkgKdff
         oWDiVCOxFwcFXrnoADgUk96WBrojlFtVNxLr6hgbc9OyTFY2qLL0kpgmlEdox945Pe
         TcZSmUrHacsLBJbbNYF9hEno8/9AWlE7ttJffewM4vDxx4nfLHtxavtrwO28oMVYCs
         FPn3DfklOjExWn6kqdByj5Fd0C58urM1pkMikAkpRc8ciwQaVKHy/bkJRfscAlJ68u
         SEmFPHkmo943OmzJfGwhpVbBgyYum8ncYV1F1yCNIBObhBLjpIkmg5GTodfvm8EFD4
         ims23m9tgsMrw==
Message-ID: <e13c74fb-e17a-ba14-f1fc-9c75f05090db@kernel.org>
Date:   Thu, 31 Aug 2023 01:30:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Content-Language: en-US
To:     =?UTF-8?Q?Daniel_Marjam=c3=a4ki?= <daniel.marjamaki@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Subject: [cppcheck]: [knownConditionTrueFalse]: false positive
Organization: Linux
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yeAaA30ELcDOisMyalc1TqQP"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yeAaA30ELcDOisMyalc1TqQP
Content-Type: multipart/mixed; boundary="------------Rn38B0pVdyWSD0l0VdqukVeQ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?Q?Daniel_Marjam=c3=a4ki?= <daniel.marjamaki@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <e13c74fb-e17a-ba14-f1fc-9c75f05090db@kernel.org>
Subject: [cppcheck]: [knownConditionTrueFalse]: false positive

--------------Rn38B0pVdyWSD0l0VdqukVeQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

I found a false positive in cppcheck, regarding knownConditionTrueFalse.
You can see by yourself.

Since I don't know of a mailing list for cppcheck(1), and I found this
in a program in the EXAMPLES of a Linux manual page, I'm CCing the
linux-man@ list.


$ cat neg.c=20
#include <stddef.h>
#include <stdlib.h>
#include <unistd.h>

int
main(int argc, char *argv[])
{
	int     opt;
	size_t  s;

	s =3D -1;

	while ((opt =3D getopt(argc, argv, "s:")) !=3D -1) {
		switch (opt) {
		case 's':   s =3D strtoul(optarg, NULL, 0);break;
		default:    break;
		}
	}
	if (s =3D=3D -1)
		return 1;
	return 0;
}


$ cc neg.c -Wall -Wextra
neg.c: In function =E2=80=98main=E2=80=99:
neg.c:19:15: warning: comparison of integer expressions of different sign=
edness: =E2=80=98size_t=E2=80=99 {aka =E2=80=98long unsigned int=E2=80=99=
} and =E2=80=98int=E2=80=99 [-Wsign-compare]
   20 |         if (s =3D=3D -1)
      |               ^~


$ cppcheck --enable=3Dall --error-exitcode=3D2 --inconclusive --quiet --s=
uppress=3DmissingIncludeSystem  ./neg.c=20
neg.c:20:8: style: Condition 's=3D=3D-1' is always false [knownConditionT=
rueFalse]
 if (s =3D=3D -1)
       ^


$ ./a.out; echo $?
1



While I agree that it's not the best style, that comparison is certainly
possibly true after integer promotions.

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Rn38B0pVdyWSD0l0VdqukVeQ--

--------------yeAaA30ELcDOisMyalc1TqQP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTv0Q0ACgkQnowa+77/
2zLqSw/3Y6XTDaR536PoNTURm7U5cFIyvfR1iCQRjaUkv3JhUHX8iqKxpN9mA+SG
NU2ZL1rrADDYbXZGxsmF+/qEPwiagRsQDgKBTqKvgEFNxkhMD3i67N08kTpycxLp
pL5zTISd0HqUdqEY1ygjynQ8VTv1AKs8wrVdTWIqKohUfHu2u0DrQfLRyK5xM+z7
v7cwv+JsmI2e7Q62vRPIZNfXTUjxEbl4WIE+U7qGTM0yi5iz3cTtWCoMVRZOGLqD
0F1DWifKYM87NV27jan6OkPEGcA2HQB/rHNxL9f9LBEmrX/gCbEdQ733gYA/MA53
+DrUS/FTwxrR/IUz+zCopvyR2yW8DkElhe8HCB8GGn3GrPl808dTCRsvhZo6gCCc
KBUTygzhsh+FwatO9GzoCsvQxcJncSh/52JPRDjZNA4OdCldIEBtXCGxiabhvcsT
kjisiZK2198aKPPzXm0LT9+YHsPFeuiVsvNUtKgIAa2cfBkTG6L/E2b3u3mxEJ/9
hClsOFlDtUbS4OjJhtrk6dxcV3f3gG5jpHVB1nQW5jMU9hOx2Zio5gYzIAA2ah5q
EfJexHbzkKOWPstzFgzhlueb8oQchAKabIaYaKHlA2FMTuQ0NfeIipjCoryaHxUR
o2WlMnkB3zWFOlN/HYEHYG4yH/Eu1jWVs9OmASIxveEJkN1ndA==
=2na2
-----END PGP SIGNATURE-----

--------------yeAaA30ELcDOisMyalc1TqQP--
