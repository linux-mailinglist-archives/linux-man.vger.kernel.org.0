Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9327277C270
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 23:34:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231475AbjHNVdg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 17:33:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231681AbjHNVdF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 17:33:05 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A6F127
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 14:33:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 515FF61873
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 21:33:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE185C433C8;
        Mon, 14 Aug 2023 21:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692048783;
        bh=R7dCI0TOTTD4RrsvqJrFcQgYYV7XGbQT7jqJO6ZIuyo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Yax8T5zboVRlvMzB8jto0XBJa50engBQpT+Mumy1aysEa9fKDIVUGSWSt6P7Wvx93
         gBB4Ds4t2ZN3M6VKwejCjDthkx1Wx4Xod7EwXfezvHeX9AYYqd1J67eupHGeDCFgMV
         rGi9I8jLt3C74jlROLsstaqdY8meHxNCcAyokfz/eDxWkmqLYKj2gBGWDYT/umxwH+
         MSEeDP8VaOL3pjGcVv5wQu5TkY+u6H6lap/YxBdmMT8z9SdqdRvnwe71Guj80ETttv
         KPfObeNW5Dpfp5I5oAyVMIHHbL+qPzPevB161FaSuEJwZByhAORjhDO7Ow7Qtl7w6B
         +HPEfmQ1so1Og==
Message-ID: <3a7c42dd-d631-0ea2-3b0b-55f24f26fe20@kernel.org>
Date:   Mon, 14 Aug 2023 23:32:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
 <8611cdd7-c2a1-1a19-52ec-0478f75d68a6@kernel.org> <4859011.31r3eYUQgx@pip>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <4859011.31r3eYUQgx@pip>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------c6wAaQxiQLoNTbWGPc07pkqP"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------c6wAaQxiQLoNTbWGPc07pkqP
Content-Type: multipart/mixed; boundary="------------pj2E5BLyurFUlSapd1rW3d9g";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
Message-ID: <3a7c42dd-d631-0ea2-3b0b-55f24f26fe20@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
 <8611cdd7-c2a1-1a19-52ec-0478f75d68a6@kernel.org> <4859011.31r3eYUQgx@pip>
In-Reply-To: <4859011.31r3eYUQgx@pip>

--------------pj2E5BLyurFUlSapd1rW3d9g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Deri,

On 2023-08-14 23:22, Deri wrote:
> On Monday, 14 August 2023 21:01:46 BST Alejandro Colomar wrote:
>> On 2023-08-14 19:37, Alejandro Colomar wrote:
>>>> Another change which would need to be accepted is
>>>> to allow a fourth parameter to .MR which is the destination name.
>>>> Normally the name of the destination is derived from the first two
>>>> parameters concatenated with "_", but if the name part of the .MR ca=
ll
>>>> to the man page includes non- ascii characters (such as ".MR
>>>> my\-lovely\-page 7 ,") then it needs to provide a "clean" destinatio=
n
>>>> name.
>>
>> I just re-read this, and am confused.  '\-' is an ASCII character, isn=
't it?
>> In fact, all of the Linux man-pages pathnames are composed exclusively=
 of
>> ASCII characters, aren't they?
>=20
> Hi Alex,
>=20
> You are correct, but it is not relevent since we are talking about the =

> LinuxManBook. In this context .MR is a pointer to another page in the p=
df,=20
> this is termed an internal reference, it could be forward or backwards =
within=20
> the pdf. If you look at the keyrings(7) man page you see examples such =
as:-
>=20
> .SH SEE
> .ad l
> .nh
> .BR keyctl (1),
> .BR add_key (2),
> .BR keyctl (2),
> .BR request_key (2),
> .BR keyctl (3),
> .BR keyutils (7),
> .BR persistent\-keyring (7),
> .BR process\-keyring (7),
> .BR session\-keyring (7),
> .BR thread\-keyring (7),
> .BR user\-keyring (7),
> .BR user\-session\-keyring (7),
> .BR pam_keyinit (8),
> .BR request\-key (8)
> .PP
>=20
> Which when converted to .MR calls looks like:-
>=20
> .SH SEE ALSO
> .ad l
> .nh
> .MR "keyctl" "1" "," "keyctl"
> .MR "add_key" "2" "," "add_key"
> .MR "keyctl" "2" "," "keyctl"
> .MR "request_key" "2" "," "request_key"
> .MR "keyctl" "3" "," "keyctl"
> .MR "keyutils" "7" "," "keyutils"
> .MR "persistent\-keyring" "7" "," "persistent-keyring"
> .MR "process\-keyring" "7" "," "process-keyring"
> .MR "session\-keyring" "7" "," "session-keyring"
> .MR "thread\-keyring" "7" "," "thread-keyring"
> .MR "user\-keyring" "7" "," "user-keyring"
> .MR "user\-session\-keyring" "7" "," "user-session-keyring"
> .MR "pam_keyinit" "8" "," "pam_keyinit"
> .MR "request\-key" "8" "" "request-key"
> .PP
>=20
> On the keyrings(7) page in the pdf you should be able to see the differ=
ence=20
> between HYPHEN (U+2010), which is what \- becomes, and HYPHEN-MINUS (U+=
002D)=20
> which is the ascii character.

It shouldn't be that way.  We use '\-' precisely to make it a HYPHEN-MINU=
S,
as it's the name of the file.  There shouldn't be any pages using '-', an=
d
if there are, those are bugs.  All of our MR calls that have something
resembling a dash should be using '\-', which I expect to produce an ASCI=
I
'-' (i.e., 45, 0x0D).

Am I missing something?

Cheers,
Alex

> The problem is that the MR request is a bit=20
> naughty in that it uses the first two parameters for two purposes, firs=
t it is=20
> used as a destination, but it is also output as text. So as text it may=
=20
> contain escapes to enhance the typography, for example using \- for a b=
etter=20
> looking hyphen. It is not my job to impose artificial restrictions on h=
ow a=20
> man page author wants his creation to look, better to separate the two =

> purposes, so there is no restriction.
>=20
>>> Is this really needed?  Can't gropdf just translate them internally? =
 Say,
>>> do unconditionally the equivalent of `| tr - _ |` or something like t=
hat.
>>>
>>> [...]
>=20
> This is all happening in groff macros way before it gets to gropdf.
>=20
> Cheers=20
>=20
> Deri
>=20
>=20
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------pj2E5BLyurFUlSapd1rW3d9g--

--------------c6wAaQxiQLoNTbWGPc07pkqP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTanYEACgkQnowa+77/
2zKwZBAAhxw/IbcUBRo5TMWQTRXqTOBFNl2JaWgLySABV4nEzFX5IitvatLeRe1B
/CHPpnlwScX1CB5HpFEVNLOEd3cK5wS66k4VTGsA0iHmCSUN+Va7MaKcVmeTUcCX
9yeKGis9ti9cZ7R1sMqaX6h8mdIQem12szfEBrJC8AxdkWBO9McpP28Tqy9WXIiA
eUY4WX7G+h2wyL5gNJD00KwG3fGX+GflUdOMMJ0eOn4SsfVnD3NZYb2SrG0CgRo2
RYN8QJtaJjADqft+QL564hIU7a7U60+t/rAcuSLv9pqeLk7FyGyeMcLsvDBdmG6B
tLgJO+VNHt0yqTN8cTzxy3iXvURL0GoU00uhaQK6TAo7Ag3G9UbyeMi5mQkk1v+K
J06QqappxCxf+VjC2LAyLVqwd71wfh6C9V5zTR3HbVeX9uNuvMdl/5pl0+D4Sr/q
xoYlizRAbIBtIO7pmROwmVvUfM+QIsNpZwK7XVlREg5lALAbbS+3aTDTmhSVHpR8
9YMpIf1rALaeM3I1+1kkZisLTqZlrXlxTrDsZnAyHGHB6SarrRQuOCdrzKQthq+8
TqNxs4sc/JheX279tDfWO7ulfzftrJR/6uPQD76zEL3sC60ZAA3RgQfT7BxE0DIA
RDqXWAdg/S2JyQMYAdOhpceKn+++tm8V4vIxBENA7ZBSlygTmp8=
=lLhX
-----END PGP SIGNATURE-----

--------------c6wAaQxiQLoNTbWGPc07pkqP--
