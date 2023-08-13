Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D0CB77AB45
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 22:47:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230384AbjHMUrm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 16:47:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230299AbjHMUrm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 16:47:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F4ACE6D
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 13:47:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 12E2B6118F
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 20:47:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60628C433C8;
        Sun, 13 Aug 2023 20:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691959663;
        bh=1+641+nt3u1UBh7sZi7vIVXHyo4HPFUhHAQV+9mlEBk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=RUmwT3chPoAHhx2exkNjvWkIZW39nxz/1K/kQBTBehssBghnoqhrBfKQgEPnSnDjv
         9H6tU4EMIdhBYq3pvj9iQXlQ2aQelLk3QxIS90ENGtgQy8F8ZXMq2aXV0Bdcbga2MY
         tiNzE1a8lOIBWTO6udlOcjLt+AO4SnwV4DKHRCPate2ufjfTEaplQmCcdt7SdgtsqF
         VnmF6vD26WdpogN0svE0HqtJU8Nwi1Eow2G7bWlu4R6Oxu9m+TEg8skzRoInklz8iR
         8pHGPeGOlBRpVKygqbc8CS3W06hen2Gzdl9Aahn9z0ckPBbogTkQfqDRib4R6qA0ir
         WZ27nq4SRLwjw==
Message-ID: <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
Date:   Sun, 13 Aug 2023 22:47:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip> <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jcPc0TBt2YA3LYRxP5Il6YE5"
X-Spam-Status: No, score=-6.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jcPc0TBt2YA3LYRxP5Il6YE5
Content-Type: multipart/mixed; boundary="------------CyuCiOlzUJQLBUAuUezNhFUQ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, Ralph Corderoy
 <ralph@inputplus.co.uk>, "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip> <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
In-Reply-To: <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>

--------------CyuCiOlzUJQLBUAuUezNhFUQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2023-08-13 22:30, Brian Inglis wrote:
[...]

> UI: I also noticed, while looking for tables to compare, that pages are=
 ordered=20
> by filename not like rpmvercmp/ls -v/RPM::VersionSort e.g ISO_8859-2 is=
 after=20
> ISO_8859-16 which may not be as expected.
> Used rpmvercmp in last line of perl sub sortman and works as expected.

Hmm, I'll update the scripts/sortman script in the man-pages repo to tuse=
 sort -V.
I intend that script (among Makefile code) to replace Deri's perl, as I d=
on't
speak perl.

>=20
> Tech nitpick: .Z is still recognized by GUIs as compress output (UNIX-c=
ompressed=20
> file)

Yep, I don't like that .Z either.

> - is there no other file type suffix used for ditroff intermediate outp=
ut?
> Aha - Alex says .set:

That would be Ralph's honor.  ;)

>=20
> 	https://lists.gnu.org/archive/html/groff/2023-04/msg00213.html

We might as well make it official in suffixes(7).

	.set	troff(1) typeset output

Hmm?

Which made me realize .roff is not documented.  Branden, as the maintaine=
r
of groff(1), would you mind checking that page and adding all the
groff(1)-related suffixes you find (or actually, that you don't find)? =20

>=20
> Added variables and changed those also in BLM-letter.pl: copy attached.=

>=20
>> Thanks for your help.
>=20
> Happy to help in any way.

Cheers,
Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------CyuCiOlzUJQLBUAuUezNhFUQ--

--------------jcPc0TBt2YA3LYRxP5Il6YE5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTZQWYACgkQnowa+77/
2zLAiA//crQd9WII8gOe9D4kmozIUQGqKXKM8HzhH4r/Ffojc1tMvW7Yke8zRsFh
AQSxt/Kz3uS+aJc/ZvJpQId7EGZwGp4wkBIznmHRLjuh05eTAf+eIkut+DyMurKx
rHZldk33eLQDS2pcZzTpxCAKBnfYLmFNMsAOOtfE92B1pdnfG1M4ZLhYRpKT+rZO
5ZcUYjVZLOMQfub5N2TzaL17aII1oAkQgCyZc/IL35zaYONLRPsQB9JK35YqbrvY
cZJDne3NxQL+g3PZh4TGnYAhsh18UDZi5z+jYpnUAoNMKkCaDr2n90piejhgbw3N
9+Euzv9YhkNqCjAltdqscR+GqgoIyDWxuHpDyYp7Lh5RsB/LvaEuCicUzPUgSK8Y
IK+JGNQJRuy1zBu00Gh2JNgIdWaljgy5qSnbGuU4s5HH1Nx/sX4rM7EgSUwNGyps
FYkLUl/D7CV0/TXpwYpkbL7E0RoKzS70B8ZRffbV1qzPYJtP4bnFldQGhuED6Xw+
xK2W0pq3Lw02wWpUVRigBw4bl9zHwTtR+xbTOtlMPgeU5Nw7rUHOiWviEVwa7KwV
OfohvYMHKU/qiXcjuMGl9sP9Cwz/Zq1zWlR7cXQKqUXAKkMf3aDY+iWd+5WKFwSY
/aXo6coUyOVxqkPveGXwlMbb1UqjlftQwUOzpKNT682NRWCQgjc=
=kmV1
-----END PGP SIGNATURE-----

--------------jcPc0TBt2YA3LYRxP5Il6YE5--
