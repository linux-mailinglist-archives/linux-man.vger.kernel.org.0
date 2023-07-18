Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D04CA757AC1
	for <lists+linux-man@lfdr.de>; Tue, 18 Jul 2023 13:44:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbjGRLoJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Jul 2023 07:44:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232147AbjGRLnq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Jul 2023 07:43:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8DB210FE
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 04:43:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 73BDB61509
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 11:43:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3160BC433C7;
        Tue, 18 Jul 2023 11:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689680603;
        bh=WhNzUZ+EVn0qSEIxxQ2JK02LoYn1mZn4HvHDiTs2iB8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=mQsUK9UI2tGw7JtL9ZaY4ust3bI0ZO7Y8R88GVbLv8D5gD0c1T52PufzKG5NmEmeN
         mvksfn7AZBtZey1hOe448DySvFuOS/YXL+wCd1AHjcf471oqjQVFB52klZNs/ptt/q
         UVzn/sk6XXRXdCbkHe72WZA095J5/H7M8dELB5GGU4BfYyTg0TVIpYkmihbmxWws09
         SAtgV0pgm6FiUPMtbWDu9/v9VOw4MzpY4I5IPkUJqhPI/SakpLX7alC2rpbOK47o40
         Ik7Tt7Ul6OdzHidNfYgzAYh2ZGhvyttjshYslKBxBVHyQPo+Lqu6f+fom/fCvHq9Hk
         J3G3qHHNPHS6w==
Message-ID: <cc5454bd-67f2-e151-345f-cafd62074477@kernel.org>
Date:   Tue, 18 Jul 2023 13:43:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 2/2] statvfs.3: note f_favail = f_ffree on Linux
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <3a449220b1a5b1d0be1749a98e5c284222072427.1687553930.git.nabijaczleweli@nabijaczleweli.xyz>
 <xve2ekfim2chw5s47wf76wtnan3khk5d4jdow4jkmlt7ifa2oy@uicda22mmppt>
 <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KKIKdaukckHMCwZhITLOCgdi"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------KKIKdaukckHMCwZhITLOCgdi
Content-Type: multipart/mixed; boundary="------------ukED2g2d4WirG0b0D9vWHY0M";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Tom Schwindl <schwindl@posteo.de>, =?UTF-8?B?0L3QsNCx?=
 <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <cc5454bd-67f2-e151-345f-cafd62074477@kernel.org>
Subject: Re: [PATCH v2 2/2] statvfs.3: note f_favail = f_ffree on Linux
References: <3a449220b1a5b1d0be1749a98e5c284222072427.1687553930.git.nabijaczleweli@nabijaczleweli.xyz>
 <xve2ekfim2chw5s47wf76wtnan3khk5d4jdow4jkmlt7ifa2oy@uicda22mmppt>
 <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>
In-Reply-To: <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>

--------------ukED2g2d4WirG0b0D9vWHY0M
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom, =D0=BD=D0=B0=D0=B1,

On 2023-07-05 15:57, Tom Schwindl wrote:
> On Sat Jun 24, 2023 at 2:39 AM CEST, =D0=BD=D0=B0=D0=B1 wrote:
>> Quoting myself from #musl:
>> 01:59:40 hm, I think this was just invented for symmetry with bfree/ba=
vail
>> 02:00:46 FFS has minfree for space but nothing equivalent for inodes
>> 02:32:31 (this is mirrored in ext4;
>> 	  a global grep over DragonFlyBSD and the illumos gate
>> 	  showed just NFSv3 forwarding from the server;
>> 	  OpenBSD always sets it to the same thing as f_ffree;
>> 	  oddly, NetBSD /does/ calculate it differently
>> 	  for LFS and FFS but due to queued writes or
>> 	  w/e not because of root reservation;
>> 	  and as expected a lot of "/* what to put in here? */"
>> 	                       and "// XXX same??")
>>
>> Link: https://lore.kernel.org/linux-man/f54kudgblgk643u32tb6at4cd3kkzh=
a6hslahv24szs4raroaz@ogivjbfdaqtb/t/#u
>> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli=
=2Exyz>
>> ---
>>  man3/statvfs.3 | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/man3/statvfs.3 b/man3/statvfs.3
>> index b1f0e7545..272ee5391 100644
>> --- a/man3/statvfs.3
>> +++ b/man3/statvfs.3
>> @@ -227,6 +227,14 @@ .SH NOTES
>>  .BR statvfs ()
>>  with the argument
>>  .IR path .
>> +.PP
>> +Under Linux,
>> +.I f_favail
>> +is always the same as
>> +.IR f_ffree ,
>> +and there's no way for a file-system to report otherwise.
>=20
> s/file-system/filesystem/ as that's what's used elsewhere.
>=20
>> +This is not an issue, since no filesystems with an i-node
>> +root reservation exist.
>=20
> s/i-node/inode/ for the same reason.

IIRC, I've already written this in the past, but I can't find it.
I'll write again, just in case.

man-pages(7) seems to confirm what Tom says:

   Preferred terms
       The following table lists some preferred terms to  use  in  man
       pages, mainly to ensure consistency across pages.
       Term                 Avoid using              Notes
       =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
       bit mask             bitmask
       built=E2=80=90in             builtin
       Epoch                epoch                    For the UNIX
                                                     Epoch
                                                     (00:00:00, 1
                                                     Jan 1970 UTC)
       filename             file name
       filesystem           file system
       hostname             host name
       inode                i=E2=80=90node

Cheers,
Alex

>=20
>>  .SH STANDARDS
>>  POSIX.1-2008.
>>  .SH HISTORY
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ukED2g2d4WirG0b0D9vWHY0M--

--------------KKIKdaukckHMCwZhITLOCgdi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS2etkACgkQnowa+77/
2zIjTw//dIrVbFzPOyRn//6xddOFIPEnY+Cz4ps60heRaJvSc4QQbcZU9c/lG9da
HNWeUDQCnypiuiqL2bMUZ12opzST/xuF1e6SqsAoklRlAI+jEUEh/OG5FZlyQ3p2
J4oBlwCxWX46zdQ87MvD78tFB57euoArWAzcumwmQ5sc+wjP2DXM4ZeB59xuT1LU
NMipJ2+wqG645UVDQtoWpR4aabtvpD+AgQOD+R7OJRt53+5vXb3Ivpy5b3wxWZz5
MaC6dI8U4V5tezHCvuOB1Cu36f4aVZhFvWtNaLGfzCZCnKpU6UNDPghZCksIaEsk
F5+gwtfag9bsUWVuGLPzLxK+2ztB0el+YPKY3GYJviupagnCumxXxo/khdR6Sh8e
nMrza3MnPgWt2//0dHMxg0TMYiE5VCK5yMQF6xvDdA0Id/LFwBYR+Ofyjy8Qt4z+
N4nuM5pUAAPrXXN5AFygPmEIMFxqjoNXNDexz5yaDNwdA6PKnld/NZDDLUHjl5Ol
FRyaXGraiWnAuYDLiCeCzufZo7dBZbugJLdFif9D04/i4zlO19R0Mj3WJmj57xBU
rsuqRjaOIqqgdwMA6BuCGjyw+qpNlkfCfsjcCnqSUifM8h4mGm9jJbMVtEumRqHT
4lWrsGaEjB3krOMKiQW17XIvbPvmQL171zh5CqeH5txZAlmeyxA=
=aRv9
-----END PGP SIGNATURE-----

--------------KKIKdaukckHMCwZhITLOCgdi--
