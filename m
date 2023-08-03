Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56AC876E5CD
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 12:35:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235343AbjHCKfb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 06:35:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234667AbjHCKfa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 06:35:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4314A11B
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 03:35:29 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BCFF461D07
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 10:35:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A76AEC433C8;
        Thu,  3 Aug 2023 10:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691058928;
        bh=/LiAfb02KTYXq+nGbxfRLy5Ae9//6Zrn5dvrTYpoMnU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=JRd9kouDa9jrf6d8TGYchTpaEB5r0FDLAng3gf7OMcxpZFyzVq+irDNsLVEm7zuqf
         HUVQUHwvcmK1YfDMg0TvvLtkdhsB1CkY99py/EAIBLxnzWoqOEAK/MYcnY1GdOlZ6G
         PWjJsVOb/kCH95lfr/jPLoFVNQCoGGEfkmxqYzHacEBFH3EuFAbKMK4VDpBuuiDDZ9
         OUgx9B69J9vG0LbtN0jylEHRgTz0omc5a4MWxqUof38O8rsz+dQ7QfPvJww4uTmUpC
         xgY+Rq/eSnwTlMBfIoKzT+TvzlCVbh+CWm4jc1S57IAgQRPCxzEjf/x9ShXJT/oNCc
         sZwK4IB1TAKKA==
Message-ID: <bb64eb67-293d-f294-ef56-355c8118caca@kernel.org>
Date:   Thu, 3 Aug 2023 12:34:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: Copyright for erofs.5
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <13248286-9e34-ceca-8e37-2166a9d39c8d@kernel.org>
 <ups5demx3inur4cudbh44smelpfmsuc2j7alegk2jjcavoyhnd@4rkmms4ugjcf>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ups5demx3inur4cudbh44smelpfmsuc2j7alegk2jjcavoyhnd@4rkmms4ugjcf>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cfMA2xTrRGfp80R0OMeMMn2A"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cfMA2xTrRGfp80R0OMeMMn2A
Content-Type: multipart/mixed; boundary="------------QwgiUIPWPsfurAq9GnE3J2GM";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <bb64eb67-293d-f294-ef56-355c8118caca@kernel.org>
Subject: Re: Copyright for erofs.5
References: <13248286-9e34-ceca-8e37-2166a9d39c8d@kernel.org>
 <ups5demx3inur4cudbh44smelpfmsuc2j7alegk2jjcavoyhnd@4rkmms4ugjcf>
In-Reply-To: <ups5demx3inur4cudbh44smelpfmsuc2j7alegk2jjcavoyhnd@4rkmms4ugjcf>

--------------QwgiUIPWPsfurAq9GnE3J2GM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-03 03:44, =D0=BD=D0=B0=D0=B1 wrote:
> On Thu, Aug 03, 2023 at 02:06:08AM +0200, Alejandro Colomar wrote:
>> I'm packaging manpages 6.05.01 for Debian, and while updating the
>> d/copyright file, I noticed some glitch.  You attributed erofs.5 to
>> mtk.
> I copied it from another file (probably tmpfs.5) then edited it,
> so I left the header as-is.
>=20
>> I guess that was a copy&paste error, isn't it?
> Above my pay-grade to categorise this,
> or to touch the header on a file I copied.

Yeah, but you could have appended yourself.  I bet you wrote something
that deserves a copyright, didn't you?  =3D)

Cheers,
Alex

>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------QwgiUIPWPsfurAq9GnE3J2GM--

--------------cfMA2xTrRGfp80R0OMeMMn2A
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTLgsQACgkQnowa+77/
2zL/XhAAl2kOdkiF1CLUew6QFfwkA+wRXOO8pYJ2EgeKGBTzdqLkt9qmCrjDtqU8
txkZsQ/2YPjFsw37meOvCUj4Fw2qRFN9Mzy+jjrRqvecFMLnURpf16N2meFUTNCU
lXTWKps0bHCry12oDMiEzdcZTdFGybtqPlOZiwaMxfnoKEDXkB523YAJn+XeQidn
TwPZqrsVMbOAjJYAZc1+pg/vntuunLU+hKEDR88nGHN30iPow1ha9MC6p9TJjVOr
x9tbeIpY/dA0ovB7SLEHmRTuXXSy2tiZpdfubeUD99+THr/hMv5Fm3NTeZpAyTc1
wVWFiYUDu9OaEJcoqLG6/X1VxTw4Vs9Rs0QSJUZ3HB2t7tHr2mbnJpR6ZR0SHzw6
7lrImbgS1PEfhrt6usuSv9oZqAlnh0xkJFXAz6JIYvspcjy/+oEeIgdQ0c9c/Q0G
R5e3eOjrseBQpR6LH+5yqV8CYnJqUxczhNk6I9mFNm/bn0xfjWEXj6MOg+26Vxfs
AnuIwgu0QsfZZBd5knKohY5Y2XINw03Ra9Ew2sgnyTXIlVwgBb9V8BE2O7iqZjLc
xp6DisTrtT+zLdijwh6SqoIgEKSbnCR6P2+bBteX+rT5ifrihykihHg2z6D0f7gY
ww6MH0Er0ugJfYYCpnTYQJBjMOHhUEhqBvB7myR+PxiOqBizBcM=
=tZIK
-----END PGP SIGNATURE-----

--------------cfMA2xTrRGfp80R0OMeMMn2A--
