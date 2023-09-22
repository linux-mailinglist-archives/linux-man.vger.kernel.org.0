Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0291E7AB27F
	for <lists+linux-man@lfdr.de>; Fri, 22 Sep 2023 15:02:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229971AbjIVNDA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Sep 2023 09:03:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229947AbjIVNC7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Sep 2023 09:02:59 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA0EFC6
        for <linux-man@vger.kernel.org>; Fri, 22 Sep 2023 06:02:53 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 551F1C433C7;
        Fri, 22 Sep 2023 13:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695387773;
        bh=/m+fzMJ+SSHZB9PtGrA+hOr0fxZ2awxaTCEGnTwvN3Y=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=aEIUIpdLLnUB1q73EYMAEsnq6nbGxN0p0XI8zQ1sLQpvU7TXzWaW67GwoXVFbJUPn
         sey8qM0JF2OWkyujLC21t/Ps7fDc/E9NGDt54d1iFmCrW8gva58H+6KQPHiejYtq7o
         7EYZrt8xPA6wQTiNkHFosT5I8dBKZ6XsLzXbh3plRjmy/AF1Y8bt/NDgmuhycXjWbV
         ZWgIoRNplAehsDuU1fVc8qoknkyZRuZfjb87ykSVZ++bY2jWgxuYsMX8xP2tBo7bq2
         arMrW8QA4tEf4qa3U8ab9qK8iJlgKjyxHx+Y8++d+X2nOxZBtJQyabo8YVO99FeFbK
         GcIRblQ7wu/cw==
Message-ID: <05865807-7a10-43c1-927d-7f0b82848abb@kernel.org>
Date:   Fri, 22 Sep 2023 15:02:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: POSIX manual pages
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>, Brian.Inglis@Shaw.ca
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Eric Blake <eblake@redhat.com>,
        Geoff Clare <gwc@opengroup.org>,
        Andrew Josey <ajosey@opengroup.org>
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
 <b3f8edc2-aec4-e0e9-e5c9-785183e422ec@Shaw.ca>
 <faade241-51dd-4982-85a8-7729f860f07c@kernel.org>
 <6b7e39fe-9f78-ffd3-b19e-e85211c79b1f@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <6b7e39fe-9f78-ffd3-b19e-e85211c79b1f@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gVUcbkCK09Duy1hx6xtf9zwW"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------gVUcbkCK09Duy1hx6xtf9zwW
Content-Type: multipart/mixed; boundary="------------oHXcUYdW7SuHqVnZGMDoaLMR";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man <linux-man@vger.kernel.org>, Brian.Inglis@Shaw.ca
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Eric Blake <eblake@redhat.com>, Geoff Clare <gwc@opengroup.org>,
 Andrew Josey <ajosey@opengroup.org>
Message-ID: <05865807-7a10-43c1-927d-7f0b82848abb@kernel.org>
Subject: Re: POSIX manual pages
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
 <b3f8edc2-aec4-e0e9-e5c9-785183e422ec@Shaw.ca>
 <faade241-51dd-4982-85a8-7729f860f07c@kernel.org>
 <6b7e39fe-9f78-ffd3-b19e-e85211c79b1f@Shaw.ca>
In-Reply-To: <6b7e39fe-9f78-ffd3-b19e-e85211c79b1f@Shaw.ca>

--------------oHXcUYdW7SuHqVnZGMDoaLMR
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2023-09-15 19:17, Brian Inglis wrote:
>> This does exist: <https://git.kernel.org/pub/scm/docs/man-pages/man-pa=
ges-posix.git/>
>> Although it would be nice to have the terms be explicitly stated in th=
e repository.
>=20
> Already there in POSIX-COPYRIGHT?

Indeed.


>> -  Contribute directly to the POSIX source code.
>=20
> The Austin group has their own mailing list, bug tracker, process for t=
racking=20
> defect reports, handling their formatting and content issues, and a som=
etimes=20
> prolonged timeframe for doing so.

You have to go through many hoops to do that.  They could be more open in=
 that
regard.  And it would certainly be much better if I could propose a patch=

against the source code.

>=20
> You can only be responsible for formatting POSIX/SUS/Open Group content=
 in a=20
> compatible manner.
>=20
>> -  Maintain the translation script.
>>
>>     Alternatively, I'd like to make groff(1) be able to translate file=
s written
>>     in any macro package into roff(7), but that's either hard or impos=
sible.
>>     Branden, do you regard it as hard or as impossible?  Is the same a=
nswer true
>>     for a groff(1)-like program written from scratch with this in mind=
?  :)
>>
>> -  Remove the man(7) generated pages from the repo.  One should build =
the pages
>>     with make(1), but they should not be part of any repository.
>=20
> If there are any formatting issues, that is what you have to maintain.

If there are formatting issues, they could fix them upstream.  Of course,=
 if
upstream doesn't patch, then I'll have to do that, but I'd like to minimi=
ze it.

>=20
>>     I'd like to include the POSIX source code as a git submodule, or s=
omething
>>     similar.  Or maybe have the man-pages-posix repo be a fork of it.
>=20
> That may be a good way to access the upstream, but the file names look =
to me=20
> like SCCS edit temp files, so perhaps a strictly POSIX system using onl=
y=20
> strictly POSIX tools, on which they can "eat their own dog food"?
>=20
> As your upstream content appears from the sample shown by Eric and the =

> conversion in posix.py to possibly be a mix of mm and mdoc macros and v=
ariants,=20
> it might be easier to generate POSIX pages in mandoc/groff_mdoc format,=
 if you=20
> could live with that, and maintain those.

Yes, although we'd need to generate a script for that.  But yeah, I'm com=
pletely
open to mdoc(7) for this.

>=20
> [That is how the other main genre of (BSD) distros do man pages, and mo=
st=20
> systems have a mix from BSD derived packages (and those who prefer mand=
oc to=20
> man) e.g. dash(1), dejagnu(1), etc.]
>=20

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------oHXcUYdW7SuHqVnZGMDoaLMR--

--------------gVUcbkCK09Duy1hx6xtf9zwW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUNkHQACgkQnowa+77/
2zISyBAAq3B6JHUy/MTd6qxftt1jAPuwlJglNUebnWf27tv2HUIMuWk1st1a3Uti
2IGRlXp6x4teskhSrm7xwdiM6G9ToCzNsJbuSMwN9uHJKlTBfQ0HYhNbxbBEyF+C
vZX6F02rcedqZ9cIIRBmjYednU0ZnpDLYDvVOu531cuPSHLq67KLWRnc0+7QOuVM
r6E66Rp9Ju9kb94qdJ9jQAxA/09OWESIQM/E8j6gHWjp+FeV14/9u0iD9xMOq/v7
Rg/h1BLDvUjj26eTZGSohy5owkZTY3ds8LRfqAzwJZWHgqyk8BORAPJjr3ED4jtB
v6zldToiocyc/g0KY95vphMBP4Xd5VIWmIipB5qtEx00m87+7tesyqHkv7d9fFJF
DjrLMoD6Tz1+PI9ZQriO0ZiqFVYAUo/N5CX3YWDtIev71VC5OqWFvFfxixegxCoD
bUzsK3M6TpNQDXb4Bka2fmezL1PuKaKc+/VAEx7dAgI0P8VEWbMkWDHyDa4fLHjc
BDwJVZFmPt4H+lc1LSs4KMp9wL3oznTHeRJA1SqkAC6rqL/mClxnc1sG++kCsbSi
F/jRb5ApASj8o/l52fMPsXxYFBGETzbs5Ww9Xi9jIus6wUsQCKBLY9KeKPESH+Jm
ZurXTMLNP1JRA8bwKgT5JRTBGtEzYBYg/8uLSleMGGq521S9n/U=
=7t25
-----END PGP SIGNATURE-----

--------------gVUcbkCK09Duy1hx6xtf9zwW--
