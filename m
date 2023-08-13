Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A847F77A695
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 15:40:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230452AbjHMNkq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 09:40:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230325AbjHMNkq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 09:40:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EF9D1713
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 06:40:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0444D6204E
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 13:40:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7153BC433C7;
        Sun, 13 Aug 2023 13:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691934047;
        bh=GJuGezHi9ewMj3iZa1hiUjepcX8AApWazQDUFl0KA0s=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Ka78GJzbQwxHAOCH+t1UNBcX4aIq79I7KKLHR4u6+13mXpLl1do6bapqXCAr5LAsa
         TnBsdtbHr5G/orYV8cPspcWAKCHBWEtSDrVxUWu39jx8xUWXS3gqB9jJ3cB8HR/6sT
         HOJTPVHSboZPv0+5nqYE3SrGKB1QViFi9f29xAtu5XrWnfOR3peBjoHyVfXO+ameMQ
         lBJDPKBt2n/GDLeGez0gzxLuiyoKkcdO3depzh+WqZVwftPi0HBv5dEdJDucGxvCvJ
         EO5L46esaq6acV+x5AuU5zr/I7BhgSO+Jlui/K2BL81RVDubFvzNxTtTGCGXHhKDGR
         VYraRj2OLU/lg==
Message-ID: <915f236b-499d-a9c1-0d60-c8edd0eba962@kernel.org>
Date:   Sun, 13 Aug 2023 15:40:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] clone.2: Fix outdated statement about CLONE_NEWPID
To:     "Serge E. Hallyn" <serge@hallyn.com>
Cc:     linux-man@vger.kernel.org, Sargun Dhillon <sargun@sargun.me>,
        John Watts <contact@jookia.org>
References: <CAMp4zn-BHvCAKWTiVTWb6oEzkFRzd0jHXWHBE1h-BQ+mGUD=WQ@mail.gmail.com>
 <20230813131727.35849-1-alx@kernel.org>
 <20230813133527.GA1148081@mail.hallyn.com>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230813133527.GA1148081@mail.hallyn.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DfhgMxx0WRPpsGSAg1BRCHSD"
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
--------------DfhgMxx0WRPpsGSAg1BRCHSD
Content-Type: multipart/mixed; boundary="------------bW9s3GSTQ66sRpkIpR0xzXQs";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "Serge E. Hallyn" <serge@hallyn.com>
Cc: linux-man@vger.kernel.org, Sargun Dhillon <sargun@sargun.me>,
 John Watts <contact@jookia.org>
Message-ID: <915f236b-499d-a9c1-0d60-c8edd0eba962@kernel.org>
Subject: Re: [PATCH v2] clone.2: Fix outdated statement about CLONE_NEWPID
References: <CAMp4zn-BHvCAKWTiVTWb6oEzkFRzd0jHXWHBE1h-BQ+mGUD=WQ@mail.gmail.com>
 <20230813131727.35849-1-alx@kernel.org>
 <20230813133527.GA1148081@mail.hallyn.com>
In-Reply-To: <20230813133527.GA1148081@mail.hallyn.com>

--------------bW9s3GSTQ66sRpkIpR0xzXQs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Serge,

On 2023-08-13 15:35, Serge E. Hallyn wrote:
[...]

>=20
> Well no, I don't think that's right.  That implies that the
> CLONE_PARENT check was a long standing one.  In fact, the
> point was that it was a regression introduced in
>=20
> 40a0d32d1 (Wed Sep 11 14:19:41 2013 -0700)
>=20
> and then fixed in 1f7f4dde5 two months later.

Thanks!  I'll rewrite the commit accordingly (more like Sargun's v1)
and include this info.

Cheers,
Alex

>=20
>> +either.
>>  .TP
>>  .B CLONE_NEWUSER
>>  (This flag first became meaningful for
>> --=20
>> 2.40.1

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------bW9s3GSTQ66sRpkIpR0xzXQs--

--------------DfhgMxx0WRPpsGSAg1BRCHSD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTY3VUACgkQnowa+77/
2zKvNBAAnxmaqNal2otvdbKwo71fsMro7c46CDXLS2lycbSuDLSLXDAJniB2/nX4
mSedmKni/osIkaFoVDudga4vtNQQZNM7ft+ekDDex4FKDqViBG/aK2tiQrQh98kV
OqPfc8xss9Pizd9OclUeol2v8SxMnlIjbIZXc2iJCFxwoYvsJr/NOaVoX7XA/8rr
Q6HwORMBJVyZVbXG+J63rVIXq3nPVmK5T1HrrY59RmPmaztIorPvIxkgkeVreor+
AfGw6DUmov6AnZBaLEYxGPadstVoxyiutT58A3bhHpZC/enlQgwtkSQP8XO6fIcj
8NZkIlI/seV7Q8yF155pX+l4gTlNunRPGsVaWXcWB9z4DSaLti43jKtyaAEM8ndZ
XqJ3z3Ekyl8BAQNlLkc3KNdI6zSvUh0Poyr2e0JKBLt/vaJ+ZL5uq5KdQDigCxno
nfLYNjv233qNFsPyvCOAgascL5oHfBlQP7VPSEKFJuZjFiIFdH5rNHCr3yrzzyqW
AGXBboX6vRNbQCPihj7jFC8zAsW3RbEMaIBQtaXIstlypxxd8MvXiQLPWJD8l/lK
2bLcLbfJqow/gaVMtoeGMuaiM4uKBsaooNJF/zl0Iuul8ec5ZhvgYcafVqm21DOZ
pdZJnWBYvF0s9gKDi8NKpQHyeltWIqkR4BHeMXlEmSZW4bh30U0=
=g3PH
-----END PGP SIGNATURE-----

--------------DfhgMxx0WRPpsGSAg1BRCHSD--
