Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DED2C77AE3C
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 00:18:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231862AbjHMWSc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 18:18:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231654AbjHMWSP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 18:18:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 216ADE54
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:18:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B475B635D9
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 22:18:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7F35C433C8;
        Sun, 13 Aug 2023 22:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691965088;
        bh=KekVbsn6wWmrTX0Doj83GRLP2AoiBFe3qnfrbDg1t6I=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=k3UujYN0vtNVRLHy4bRTZqOhcgk5qPhU6EfdsoYGGw0PAZMJptb46CEYPjO03hEIX
         frjkSIjhRNsPFvWIJOfQoFTOyBhbHKoDct1B9Pfh53oj6xuV/QDBwFc/0hmlIVUEwz
         c0O2Dp00358hXlbx2Z3ANvK9lRQ5TFmNbEF5V7xXnzGE7rtu9fPc6RfN5wzwG8Z+pu
         cnCGp+rPxOM+NvvLpGEU9tytkauB592C6nbzfCNl5kuuCQvjGnDjJPZxBvZ2wG0C3i
         3U81kDL3EXm54hE7GwkR+6ELDNigQ3aiimMz4nwlcl+zv3RriicICK8/lWUhbjHup/
         t0R9G97q66u/g==
Message-ID: <cd7f3f96-4571-22ac-c42a-6877f82b976e@kernel.org>
Date:   Mon, 14 Aug 2023 00:18:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip> <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
Organization: Linux
In-Reply-To: <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------p0YnTCx30CZwbcVQIG4PRmkp"
X-Spam-Status: No, score=-11.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------p0YnTCx30CZwbcVQIG4PRmkp
Content-Type: multipart/mixed; boundary="------------R1LUvJ55jj0dBCH3Zk2jGqlJ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, Ralph Corderoy
 <ralph@inputplus.co.uk>, "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <cd7f3f96-4571-22ac-c42a-6877f82b976e@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip> <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
In-Reply-To: <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>

--------------R1LUvJ55jj0dBCH3Zk2jGqlJ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2023-08-13 22:47, Alejandro Colomar wrote:
> Hi Brian,
>=20
> On 2023-08-13 22:30, Brian Inglis wrote:
> [...]
>=20
>> UI: I also noticed, while looking for tables to compare, that pages ar=
e ordered=20
>> by filename not like rpmvercmp/ls -v/RPM::VersionSort e.g ISO_8859-2 i=
s after=20
>> ISO_8859-16 which may not be as expected.
>> Used rpmvercmp in last line of perl sub sortman and works as expected.=

>=20
> Hmm, I'll update the scripts/sortman script in the man-pages repo to tu=
se sort -V.
> I intend that script (among Makefile code) to replace Deri's perl, as I=
 don't
> speak perl.
>=20

I didn't try your sort, but while implementing my own shell version of it=
, I
found that version sort wasn't good enough, as it makes some cases be wor=
se.  I
suggest you test it against my own script, and see if you get the same or=
dering.
If not, you'll need to tweak it.  The most important thing is that _exit(=
2)
should go next to exit(2).

Here's what I did:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
aab14503ef101d918046aeaa941f226685fe7bf5>

#!/bin/sh

# Copyright 2023, Alejandro Colomar <alx@kernel.org>
# SPDX-License-Identifier: GPL-3.0-or-later

sed   -E '/\/intro./  s/.*\.([[:digit:]])/\10\t&/' \
| sed -E '/\/intro./! s/.*\.([[:digit:]])\>/\11\t&/' \
| sed -E '/\/intro./! s/.*\.([[:digit:]])([[:alnum:]]+)/\12.\2\t&/' \
| sed -E '            s/\t(.*)/&\n\1/' \
| sed -E '/\t/        s/([^[:digit:]])[_-]([^[:digit:]])/\1\2/g' \
| sed -E '/\t/        s/[_-]/_/g' \
| sed -E '/\t/        {N;s/\n/\t/;}' \
| sort -fV \
| cut -f3;

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------R1LUvJ55jj0dBCH3Zk2jGqlJ--

--------------p0YnTCx30CZwbcVQIG4PRmkp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTZVpwACgkQnowa+77/
2zIriQ//Z4A8DFSp06nDakwO+DPzX40nyO9zEKMf5CStz2Mm9dmqEoiWJuytH9yD
BBjlEfxMSulPObqM29sA1LeR1vsNwv1Eo9RSfZxT+yq651CgearqvGpcnr4tNHAX
ODzeaZr6rljd4/Umf+fe8v+u9oU0YEhSYXalAdLdL7yv6iFZGQMB4q9n9ofCuYdC
ygicNZmW25yeUHC0EYI76Vm4P9tP+pTbkpY2EIs+oLtipm+bdv7s0B8EnMV2n62n
5t1xMNDonmufVb8ueu3YTKOXKfT6OtkxcDZ/Aqxl1L0RFzPv9RN6jOiW7HPIc7de
cc/zd6UaS4VsmUsp0x94KVwgGBzOYc+hwiAkLBGHejLqvp+MnhaCfalEmytx9RnI
m1vKQ22hyvrOvZr0Pfy6Rh5GevGPq8FaFVq9Y+xzB2qYSdSdRsgvDJ0S9OtDlGKj
SsmaiStfWm3X42FdShNxrL+iWXuSMxlCB09i2y8HVXWU09DXJDn/guXBwlj6eRyf
huvB0cvTHuDrhqWdTX/yKSJVnKNpRxFDv9LSBRiHbwTuoZMuOvXKBnaN9t37OIoe
Ji21HB2frb4S7SGpjStn4F8mS3t9yg6ZSvhQiXWyKGZmgIpUxn53JjF3ITwoSWpP
tf0VMiOs7G/QAk/QRu21oy9amf4OR80CMlKZfHZzIl2FvJg+v+E=
=mWup
-----END PGP SIGNATURE-----

--------------p0YnTCx30CZwbcVQIG4PRmkp--
