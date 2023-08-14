Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFC2A77B706
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 12:47:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231309AbjHNKqd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 06:46:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233584AbjHNKqb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 06:46:31 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74EA9D2
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 03:46:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 12BAB6124C
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 10:46:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A3ADC433C8;
        Mon, 14 Aug 2023 10:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692009989;
        bh=uMxTCxeyXyVINTgF2ddszQo6YnhA8oeNzEv7EaOrNTk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=fogYj+9nYDCUFn6EFscpHY+tZaoZsqtEuBKQRaLTM1vLEVZi0CYC76H9kh91qi44J
         PFy8Mwnaxle6sbPXkXgLfTTEREF9fS2HdKgkY7FWqlYJ0B9a6SnzbfVRd0hoH5fKd6
         lNyLmPk56OBRyB+qRwKFOzI3yS2gjxL1sV0xqOYi6WZohTrrzUSqwupYgN67rsrfg7
         rLvD+V4OTdnnWCcMiH/plS0kpSOyJszSgqg+Vd3TwyZWUXnh3BoX2YGIc/EjJjnQzL
         pRdZ4AigCmbFe7P27FCMdTXSa/WP/29Htxqppo03o4eqR00Pm9IdbMjaUqIC8QtDDQ
         Tuw/hkbOUdBdQ==
Message-ID: <d50e5b60-abd7-52fd-f54b-6a4ffaf5e763@kernel.org>
Date:   Mon, 14 Aug 2023 12:46:26 +0200
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
 <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
 <cd7f3f96-4571-22ac-c42a-6877f82b976e@kernel.org>
 <44a758c5-5f8d-ba1b-2ed2-31aff6aedfa8@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <44a758c5-5f8d-ba1b-2ed2-31aff6aedfa8@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Vq47mf9ENEuwlroJKysjfNa3"
X-Spam-Status: No, score=-9.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Vq47mf9ENEuwlroJKysjfNa3
Content-Type: multipart/mixed; boundary="------------salO0tFIiDKVTKCIyDTV1bQf";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, Ralph Corderoy
 <ralph@inputplus.co.uk>, "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <d50e5b60-abd7-52fd-f54b-6a4ffaf5e763@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip> <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
 <cd7f3f96-4571-22ac-c42a-6877f82b976e@kernel.org>
 <44a758c5-5f8d-ba1b-2ed2-31aff6aedfa8@Shaw.ca>
In-Reply-To: <44a758c5-5f8d-ba1b-2ed2-31aff6aedfa8@Shaw.ca>

--------------salO0tFIiDKVTKCIyDTV1bQf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-14 08:49, Brian Inglis wrote:
>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?i=
d=3Daab14503ef101d918046aeaa941f226685fe7bf5>
>>
>> #!/bin/sh
>>
>> # Copyright 2023, Alejandro Colomar <alx@kernel.org>
>> # SPDX-License-Identifier: GPL-3.0-or-later
>>
>> sed   -E '/\/intro./  s/.*\.([[:digit:]])/\10\t&/' \
>> | sed -E '/\/intro./! s/.*\.([[:digit:]])\>/\11\t&/' \
>> | sed -E '/\/intro./! s/.*\.([[:digit:]])([[:alnum:]]+)/\12.\2\t&/' \
>> | sed -E '            s/\t(.*)/&\n\1/' \
>> | sed -E '/\t/        s/([^[:digit:]])[_-]([^[:digit:]])/\1\2/g' \
>> | sed -E '/\t/        s/[_-]/_/g' \
>> | sed -E '/\t/        {N;s/\n/\t/;}' \
>> | sort -fV \
>> | cut -f3;
>=20
> Perl RPM::VersionSort rpmvercmp produces the desired order, ignoring le=
ading=20
> non-alphanumerics, treating all non-alphanumerics as field delimiters, =
treating=20
> alphabetic and numeric strings as separate fields; see attached log.

Nice, it seems they implement a differen version sorting than GNU coreuti=
ls' sort(1).

Cheers,
Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------salO0tFIiDKVTKCIyDTV1bQf--

--------------Vq47mf9ENEuwlroJKysjfNa3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTaBgIACgkQnowa+77/
2zIrBw//fOXHRm/2uXEzZv6xAYBEKa3nMcwgDWujpaF22hpmLkwlRBxJYTjrl9wW
B/aKCGj8AXmTiPwzJtsWWJVL4icyWTXN+00ch9SapgvcZxzPatERP0fqAxnmvPTX
WfYpWFP9cripV1Lf+wnKKyoj19NowSEsiQ+SWfQQwmuJeKOX5RgA/6xtJ5UfM0QX
sZbOjNEQMgcPh26aqQU6fYuzOpr1H0CzmK5XKHo8+LP4nCAjofDpZKGDxyex7F/T
P+TMhQurNeVWT2qF+j9QfmpA9DcVcu71xybyG1LtbizGHLKoHqsvFrgy5QjwIp8N
XQKRkf5EFrSlX6woIFdHWd7yVdhGS6MghGZQDMocvZXQGm4+FyzLMmoVQYwcjvuG
pDYwwMZsMK9Rti/FAjIJvt0MCZyLzgV5XQ9qG2/Z9Ngeqgd2jRhRBU21i5VC34fL
cGV0xURhfPZSVKd9QXZtXuuGoGjJQqCSU5+v3mLe4BGwM3a3PUQDDagV1zw3x6jU
LZMwpm9kK19CxEF/MiUb1ehulWFm97+k2PUaiD2FxixQV38h7k45TGTfKlfGbyBW
gpGQU3uTxyV3PzfiHvEYZ/U2eswfr0wL9PuzqQ4jmdRuD3MqUKzAJi+jTMW+HEKt
KyBVPKuFoef9BNIG7ai2eRFSbKBbkwhNkaCZQbnCZGFeHMA3MtA=
=DGw+
-----END PGP SIGNATURE-----

--------------Vq47mf9ENEuwlroJKysjfNa3--
