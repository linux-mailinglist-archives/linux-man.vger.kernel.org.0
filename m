Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48BCF79EB4D
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 16:42:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240038AbjIMOmZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 10:42:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232390AbjIMOmZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 10:42:25 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2357690
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 07:42:21 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07FF8C433C9;
        Wed, 13 Sep 2023 14:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694616140;
        bh=lA6nzruK+D9IygBxdRijoWpN3RrQVxU5euhdWXlD0as=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=HP0SJEETfxwcl0TjxdH8TIfYMxOSGo+yj5Hvwo75IVjU4zqY9YOKkNqSQJwixbq+8
         HNDxRDqVBOXEGFXnU8vULr+10l8eoT0eA7wL9Ch/ht9ybT78jhg0MS8+qhQx4QvpKi
         BKX+fTQ57HzQFkEUJ/h3dyTdVH2mv4fupVLaTLVj94+RwkF07yP53xylsHDVkTCH8W
         82b4hhXvyqrA7YOV5q0ySpVyyBhx409ZJMMKDiXFdInu967Z5P49zLjJJ/NfStTuky
         ltWlPKFBfnlMC2GuIH410OIB3oPMYn0fjSIPLmTXqBio4wPeAYIWPQfooXwqSv8uYI
         GzVNcVXJCpyzA==
Message-ID: <458ad865-2c59-44d4-9f1f-baedbfecfff3@kernel.org>
Date:   Wed, 13 Sep 2023 16:42:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [patch] sln.8: wfix
Content-Language: en-US
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>,
        Peter Lafreniere <peter@n8pjl.ca>
Cc:     linux-man@vger.kernel.org
References: <20230902230459.12115-1-peter@n8pjl.ca>
 <20230903130039+0200.513903-stepnem@smrk.net>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230903130039+0200.513903-stepnem@smrk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------D0btstE2wkHBXt4y0RuNdUsf"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------D0btstE2wkHBXt4y0RuNdUsf
Content-Type: multipart/mixed; boundary="------------P4DjghGc7klAGEjlrg1Te85Q";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>,
 Peter Lafreniere <peter@n8pjl.ca>
Cc: linux-man@vger.kernel.org
Message-ID: <458ad865-2c59-44d4-9f1f-baedbfecfff3@kernel.org>
Subject: Re: [patch] sln.8: wfix
References: <20230902230459.12115-1-peter@n8pjl.ca>
 <20230903130039+0200.513903-stepnem@smrk.net>
In-Reply-To: <20230903130039+0200.513903-stepnem@smrk.net>

--------------P4DjghGc7klAGEjlrg1Te85Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-09-03 13:00, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec wrote:
> On Sat,  2 Sep 2023 19:04:58 -0400
> Peter Lafreniere wrote:
>=20
>> The description for the second form of sln(8) can be taken at a first
>> reading as saying that `filelist' is a list of paths passed via the
>> command line, when it is really a path to a file containing that list.=

>>
>> Although the confusion can be resolved from the surrounding context, i=
t
>> is better to be explicit about filelist being a path.
>>
>> Signed-off-by: Peter Lafreniere <peter@n8pjl.ca>
>> ---
>>  man8/sln.8 | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man8/sln.8 b/man8/sln.8
>> index 448d0bf07..2a7ed13e5 100644
>> --- a/man8/sln.8
>> +++ b/man8/sln.8
>> @@ -29,7 +29,7 @@ as a new symbolic link to
>>  .PP
>>  In the second form,
>>  .I filelist
>> -is a list of space-separated pathname pairs,
>> +points to a list of space-separated pathname pairs,
>>  and the effect is as if
>>  .B sln
>>  was executed once for each line of the file,
>=20
> I find your version more confusing than the original (or rather, I
> didn't really find the original confusing).
>=20
> If you want to be explicit, why don't you say "names a file containing =
a
> list of..."?

+1

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------P4DjghGc7klAGEjlrg1Te85Q--

--------------D0btstE2wkHBXt4y0RuNdUsf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUBykoACgkQnowa+77/
2zK9pw/+JWJLFNGNwpu9CRxl6GYg+Uhg7VUN8CA2Ub0g1aI2r1UaLtYSAtyNfwHA
25h78hcSPOJynigy7Lmb3yRPLrTndtQjLaN6mbCJAZrgfJu7LjSC3ndL04UJeYor
YtbX6KnqmTF9RgBFiJlyl2WWiMB5l83y85PTBvkjkXTWHND9XxDrnfJdTyhOWmOx
1xEAc1FJL0bJueGELIypgFmNFbCxwb7MWb7Z2bbgE+e4v7l/MNhVVE5MbbRzWWMj
KB1jbJspPCGClq2SSaF6/u+F0btkK/wc/ZcLjIBLFovm0k+qV8nOkZ//YcQfYuuh
406VyLfiHc6yXeiNP5M5cpsdE76NDHEOaoT6Ct0lsfKxD1RVKGNXjGNF6ck4BTjf
wwQuR4IsMjUHfUvefS6eoEQnaYFs+VMqh2lCp+aV8Wf3uA//L/EsZjnAqtn5yiH+
Gl3I/cJisuwVqL6WnHV84vEk1xFIu9bQ+hxDAviP30uoib31Efwv3fmnimByPZ4Q
bLXAoFl0A09FIgK0kGUiXDldvoYtkJU0uhBIx3McJxiOQndnG9CyOnJBvLfiGPOQ
HndCmBV4ydG+KS8fOX6Q9+90AQ917YeP+6ki2HZ8mEB+ZCowQpN+VOcXbmCLSVCD
e3yM4yoRdZiJ30Ldn1eHLABWSUpCdVFu+pOCtphikJAloOl73w0=
=0ycq
-----END PGP SIGNATURE-----

--------------D0btstE2wkHBXt4y0RuNdUsf--
