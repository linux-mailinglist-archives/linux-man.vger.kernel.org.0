Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC77E79F3E6
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 23:37:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232283AbjIMVhg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 17:37:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbjIMVhg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 17:37:36 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88ED81724
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 14:37:32 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A473CC433C7;
        Wed, 13 Sep 2023 21:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694641052;
        bh=BAaQh10NUErbT/KQF4kW8hnhHmBLH+l9fgdr1VE5FRE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=nDkSlsnzcoiHjnOaMTbRC1cg9cN3YMMWRjvjqw3gQp3SozltyN5WMtEVnaB6oZYVY
         C8JN96vCkY2Ra47/dkDxmtyfWpLL4B/TEFRbCdn8lE+VfIGA3NsG1gzva92Sh4tj6S
         49i+KPzI37S/BlASQa3/nZhXr09RkQPCz3Yeb89qA6l969HY1mPBVl/lYtF1feyzkA
         wQNj4G/pLcv8ZYWpKcaDyu3IVU5DLICOPVF7kXhsZ0SCK15HL05CJ7U7MbEygImflJ
         ow5sWMSzbNahjg/OZAGq9Wpkq3T/jKZcmrtmdtYK2ZbH0kAHTRLVQwCiEVNV4PCHgb
         zTUjxNAWtZsUQ==
Message-ID: <faade241-51dd-4982-85a8-7729f860f07c@kernel.org>
Date:   Wed, 13 Sep 2023 23:37:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: POSIX manual pages
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, linux-man <linux-man@vger.kernel.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Geoff Clare <gwc@opengroup.org>,
        Eric Blake <eblake@redhat.com>,
        Andrew Josey <ajosey@opengroup.org>
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
 <b3f8edc2-aec4-e0e9-e5c9-785183e422ec@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <b3f8edc2-aec4-e0e9-e5c9-785183e422ec@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------F0XgyGHmqdjpi2OxBVvvaaBJ"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------F0XgyGHmqdjpi2OxBVvvaaBJ
Content-Type: multipart/mixed; boundary="------------0YFMWvP9D1kGOlHIyrbikzIZ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man <linux-man@vger.kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Geoff Clare <gwc@opengroup.org>, Eric Blake <eblake@redhat.com>,
 Andrew Josey <ajosey@opengroup.org>
Message-ID: <faade241-51dd-4982-85a8-7729f860f07c@kernel.org>
Subject: Re: POSIX manual pages
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
 <b3f8edc2-aec4-e0e9-e5c9-785183e422ec@Shaw.ca>
In-Reply-To: <b3f8edc2-aec4-e0e9-e5c9-785183e422ec@Shaw.ca>

--------------0YFMWvP9D1kGOlHIyrbikzIZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2023-09-13 20:09, Brian Inglis wrote:
> On 2023-09-13 10:15, Alejandro Colomar wrote:
>> Hi Andrew,
>>
>> [I reordered your answer for my response.]
>>
>> On 2023-09-05 14:34, Andrew Josey wrote:
>>>
>>> hi Alejandro
>>>
>>> Apologies for the delay.
>>
>> NP
>>
>>>
>>> Are you in touch with Michael Kerrisk?
>>
>> Nope.
>>
>>> It also appeared in discussions with Michael in 2020, that he had a w=
ay to convert the source format to man page format.
>>
>> Yep, this is probably "the way":
>>
>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tre=
e/posix.py>
>>
>>> In the past we have worked with him and made a permissions grant - wh=
ich outlines the terms we are able to grant =E2=80=94 these are limited
>>> by the copyright holders.
>>
>> I understand.  Would it be possible to suggest the copyright holders o=
pening a
>> little bit more?  The C++ standard seems to be more open (it has a pub=
lic git
>> repository with the source of the drafts) [1].  Maybe POSIX could do s=
omething
>> similar?    It would make contributions to the man-pages-posix project=
 easier,
>> as contributors would be able to test the script with the original sou=
rces;
>> instead of just blindly trying something, and asking the maintainer to=
 try it
>> with the secret sources.
>>
>> [1]:  <https://github.com/cplusplus/draft>
>=20
> Hi Alex,
>=20
> Perhaps you could request terms allowing you to maintain your own downs=
tream=20
> repo(s) of the *generated* man pages,

This does exist: <https://git.kernel.org/pub/scm/docs/man-pages/man-pages=
-posix.git/>

Although it would be nice to have the terms be explicitly stated in the r=
epository.

> as you do of the linux man pages @=20
> alejandro-colomar.es & git.kernel.org?

And I have a clone at <http://www.alejandro-colomar.es/src/alx/linux/man-=
pages/man-pages-posix.git/>

>=20
> There would need to be a COPYRIGHT/COLOPHON disclaimer about content is=
sues to=20
> be addressed to the Austin Group, and man page formatting issues to a p=
osix-man=20
> list, if they are or you want to keep them separate, and kernel.org is =
agreeable=20
> to hosting a vger./lore.kernel.org posix-man list and git.kernel.org re=
po?

This section also exists:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/m=
an-pages-posix-2017/man3p/printf.3p#n24>

>=20
> There are unlikely to be man page changes issued between releases (or r=
eleased=20
> between issues?).

But I don't want to maintain the generated man(7) pages.  I want to be ab=
le to:

-  Contribute directly to the POSIX source code.

-  Maintain the translation script.

   Alternatively, I'd like to make groff(1) be able to translate files wr=
itten
   in any macro package into roff(7), but that's either hard or impossibl=
e.
   Branden, do you regard it as hard or as impossible?  Is the same answe=
r true
   for a groff(1)-like program written from scratch with this in mind?  :=
)

-  Remove the man(7) generated pages from the repo.  One should build the=
 pages
   with make(1), but they should not be part of any repository.

   I'd like to include the POSIX source code as a git submodule, or somet=
hing
   similar.  Or maybe have the man-pages-posix repo be a fork of it.


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------0YFMWvP9D1kGOlHIyrbikzIZ--

--------------F0XgyGHmqdjpi2OxBVvvaaBJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUCK5IACgkQnowa+77/
2zKQKg//dCb8QbjynXLFvHdO8bhtMaRDSft7Aqdue/9o+CbomqYhIq7+qrjb1da9
goH18CrfvFpm7fS1FHoQDUUG2kslNwhRlCFImEkJ4XsuiJ4X0NR5K5m4A5nK0sbc
hxN3n7PTlryuEnBeqAo8L1wBonOXbr3+9zyb3gLyh8x4SUO4r6ROB/v2W7ocv5N7
qNbdWGd5WWBMa6Xz3COAINp8JfwaFuspOx6gO8zVf0zcqAQZExw3NduuA1GDNoIg
s/UesQgwZ3C5BrQ3SPGTb9NR+6dLLG2vb3cqPKxomEQkZyi21weEFrCle9K90ayh
SVV0bQyf3DRUQh2fJvbGcMA9CPQu1OCOiNL0adCuT8ssR4k0q9hBj4lUGpJmJBk3
+jIy0wyWo3HxiZynRh5I86FXSxs3L72qPa82u4jelXIDasLdtET4BK1TAkanxB6k
3chdUBoHXq7RIBdiN4GCFdzT2Gw4WIJtGcUMRTHSRM9vwNqiMLzcT9aoC0dnEdq6
Viu7wbDOlo67LxXu3L/OhZ9+6np03AdXjQgyNz9IMZy7wGsMQdmehETIU5i1Ni59
34Qtgw8NoNedfqzqWoKXwmYlvTU+O/mPvfhU/s79ePWm7P0HFgK+IUBmQXe0xM+Q
TxgMM9fF3hXHOez+q0EDs+D2J4p10u4+vxPYcXRdPLeuRpeaN70=
=XkMM
-----END PGP SIGNATURE-----

--------------F0XgyGHmqdjpi2OxBVvvaaBJ--
