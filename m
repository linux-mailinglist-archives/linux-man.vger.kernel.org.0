Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53B77779BB9
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 02:05:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237335AbjHLADZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 20:03:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237256AbjHLADZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 20:03:25 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2F5718F
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 17:03:23 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 38765641EA
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 00:02:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E195DC433C7;
        Sat, 12 Aug 2023 00:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691798572;
        bh=sDGmvh3crNgN9mirmgqQbVb/hOiovIjiJc85xYmLu30=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=WchpI4bo5eDsS4qJijqArHZg3PU2q1EK35rFXpQDs8nEjj5w8qEFFAcnLtt+MkZw0
         RftDd2ACgqyPl1zyYTaPjPrZ0j+qigYThceF77EKvSU9hINxdLt7AfjHjfoGxwp7OK
         G4+ZDTgpJ/IAmBorXUjwYhqsgh7RJM0/m1WH0kF3MXZaahumuNN9JCcgBXdeKWn/Oy
         dc8+M7qsXbPzq6sIoN8stH513LaTUD0qXuKOIQB4Or6lTLHXYLAAFN5Mno0IMhm52N
         6H4PM7IA8A1HzNmT3RQcbViNzYYh2cXO6brdkCYpS8I6kAQs+j4HUcs2gh1W5aYV8J
         nGbyHHyfakdtw==
Message-ID: <ac4a6675-f96a-cf39-f2c9-381d6ce0733b@kernel.org>
Date:   Sat, 12 Aug 2023 02:02:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
 <ab67aa6d-712a-47f0-e694-01592bb72cd1@kernel.org>
 <01d3855b-65dc-8b99-83cf-ebe1f97a2d83@Shaw.ca>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <01d3855b-65dc-8b99-83cf-ebe1f97a2d83@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rkwm41fwKbeNQCsKftf8UXkA"
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------rkwm41fwKbeNQCsKftf8UXkA
Content-Type: multipart/mixed; boundary="------------BW5muehaC3OCgXN9FJt9bTMH";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc: Deri <deri@chuzzlewit.myzen.co.uk>
Message-ID: <ac4a6675-f96a-cf39-f2c9-381d6ce0733b@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
 <ab67aa6d-712a-47f0-e694-01592bb72cd1@kernel.org>
 <01d3855b-65dc-8b99-83cf-ebe1f97a2d83@Shaw.ca>
In-Reply-To: <01d3855b-65dc-8b99-83cf-ebe1f97a2d83@Shaw.ca>

--------------BW5muehaC3OCgXN9FJt9bTMH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2023-08-07 18:21, Brian Inglis wrote:
[...]

>>> $ pwd
>>> /home/alx/src/linux/man-pages/man-pages/6.04/scripts/LinuxManBook
>>> $ ./BuildLinuxMan.pl  ../../
>>> [...]
>>> Failed to open 'DESC'
>=20
> That annoyingly minimal message provoked the patch submitted.

Yeah; it took me some time to find the cause.  The error message doesn't
even tell who failed --was it the shell, was it gropdf, was it troff?--.

:)

>=20
>>>> When I run the script/LinuxManBook/BuildLinuxMan.pl, after applying =
the gropdf
>>>> patch, manually in the build dir, I get a pdf, but without any man p=
age footers.
>=20
>>> Hmm, that's weird.  After applying your patch, It works fine for me.
>>> I do see the page footers.  However, I have old builds of groff in my=

>>> system, which I haven't cleaned up, so maybe they interfere positivel=
y
>>> to that outcome.  Maybe from a clean installation of Debian Sid I
>>> wouldn't be able to reproduce that.
>=20
>> I have uploaded the 6.05.01 book now.
>=20
> Nice - with current page footers!

Can you confirm if you can build the book correctly after I pushed Deri's=

change?  I'm worried that I couldn't reproduce your problem, and would
like to know if it has gone away or persists for you.

>=20
>>> Nevertheless, now I remember Deri told me he hardcoded a lot of stuff=

>>> for 1.22.4 which should be removed after the release of 1.23.0, so it=

>>> seems that the time has come to chop a lot of stuff from there.
>>>
>>> Deri, would you mind simplifying the scripts assuming a Build-dep of
>>> groff(>=3D1.23.0)?
>=20
> Resent the patch cc Deri.
>=20
> Would it make sense to merge changes into/from groff 1.23 grodpf, which=
 I also=20
> tried, and also did not produce page footers, but did produce lots of=20
> *different* messages.
> It seems likely that changes made to build the huge man book might also=
 benefit=20
> other projects with large docs.

We don't have a gropdf(1) copy anymore.  :)

>=20
>>>> Are there any other scripts which need to be run and/or groff comman=
ds or data
>>>> which need to be supplied?
>=20
>>> No.  It's just:
>>>
>>> $ cd scripts/LinuxManBook/
>>> $ ./BuildLinuxMan.pl ../../
>=20
>>>> It would be nice to see this eventually added to your RELEASE doc, a=
nd maybe
>>>> also to the make scripts.
>=20
>>> Yes.  I first want to put it in the Makefiles, and then add it to
>>> INSTALL.  Then something to RELEASE.  But I first want to simplify
>>> the script so I can understand it.
>=20
> See below ;^>

Sooo true.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------BW5muehaC3OCgXN9FJt9bTMH--

--------------rkwm41fwKbeNQCsKftf8UXkA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTWzCoACgkQnowa+77/
2zJvfg//Zlj+A15SPl3nIJbQmFISDKtlRgvtCFj1Sdzh1JQ/bmqrcbENIJykiqCe
7x8eNLGiU3tjFmUfiL9OOIjX3+bGOHtEoGqHo5wpOu2FMgUPmXvbl5WwVdwiHcWi
eq+hE0tdLVGPCearpRGCPiN9UUkYkIS+RuGdZhW+nE5SEz/4yzaSoE76895mCpc8
moxSlG3mvjBCRKliYx1oD7LbZP9STXsJEiog3fShMiTOgWCvghOxQjRvMC7n+aHA
BWs9u7sOSw1NgzMOmYiQLhrLQ9P1qdvS7VyQxw+7izCJCYU/VS202xU8g9lhiHwt
6QT8NIibtweK6ltVLRY5bxCBGqbwqVjOikxDaV4/MiXNwjCRsIufocw/IuLTD9Gs
J2UgHShiISCae2JGpWytZ8XNO9emmxWkoLNJl4GzPTFjebAdgeINeFi0nDSPjM1E
I5hYxOjeo2wAoPSHbLA3iJFRXAMdbhlA08qRjxx46UhboLyejJg+bf+LkVdus6Hm
SpGoCeo74p31IOZjQKEMxAts2n1iqr9XI1sbVW/oh3gOK8rvLhsiiC3K2YusVCSu
E9YzgNcO/76/fTyOuTrqMIsS6OqTeW8qCi7cVxJ/mwEVhNXsaSKb9yskr19WylE/
mhZkgqH5yx8kj7ihITcqrYFyINFlAEv4OdSPIbivjqjryftrEeU=
=k78R
-----END PGP SIGNATURE-----

--------------rkwm41fwKbeNQCsKftf8UXkA--
