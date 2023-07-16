Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D630E754CED
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 02:46:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjGPAqS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 20:46:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjGPAqS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 20:46:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 641F6101
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 17:46:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0369A60C4C
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 00:46:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D282DC433C8;
        Sun, 16 Jul 2023 00:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689468376;
        bh=aaZVdVGxR1ufW/9PNN3ufuUGiZ7XnYD4ltiBqsFHNTA=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=mEOB4lCeZ4cZi1n/zvxILjwpWuVng/Fy4qrQOjBM4TBl3LV/GR82UrgEIqwHrqdJe
         L27sy7CuHPs3Rn+EutXQW8MvCH6/1yVeV0y05YWJS6grwHLh8um/akzxnNJKokf0D7
         pJfHPd/Oo4+WiCKXw8FV3WeukfsD0QsS1HFxuB2o1iHtAbY23iabzAgjgI6ot4XNkI
         evKu4B2S8yUXPkMY2LA7y3FoeZ9hL5DoVAxwbNbWJ5q8iGIfnjpEGNecfG6G1tA8SY
         hj5pswnFs1P4ILwxoKM8kQCrgLPjrzcGYoZbYBfCtOOsYhmwn9xwB5xBP8pqVrR7/w
         Y9o8TuzZ4v/VQ==
Message-ID: <b32e42ef-244f-29b7-381b-3659036e4765@kernel.org>
Date:   Sun, 16 Jul 2023 02:46:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] ld.so.8: Correct linker option name
Content-Language: en-US
To:     Fangrui Song <maskray@google.com>
References: <20230714070043.275611-1-maskray@google.com>
 <3879502b-90f7-c445-cc68-30f53f1c86fe@kernel.org>
 <CAFP8O3LiBXNPELaoeVQgBCQshnxYMAMGBMGncJKPmMXnedqt8Q@mail.gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAFP8O3LiBXNPELaoeVQgBCQshnxYMAMGBMGncJKPmMXnedqt8Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VJ1Sr836F9RdnzCqlKl2Xwe4"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------VJ1Sr836F9RdnzCqlKl2Xwe4
Content-Type: multipart/mixed; boundary="------------IV0jnooRJYWNWTXVCnBfdaLL";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Fangrui Song <maskray@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <b32e42ef-244f-29b7-381b-3659036e4765@kernel.org>
Subject: Re: [PATCH] ld.so.8: Correct linker option name
References: <20230714070043.275611-1-maskray@google.com>
 <3879502b-90f7-c445-cc68-30f53f1c86fe@kernel.org>
 <CAFP8O3LiBXNPELaoeVQgBCQshnxYMAMGBMGncJKPmMXnedqt8Q@mail.gmail.com>
In-Reply-To: <CAFP8O3LiBXNPELaoeVQgBCQshnxYMAMGBMGncJKPmMXnedqt8Q@mail.gmail.com>

--------------IV0jnooRJYWNWTXVCnBfdaLL
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 2023-07-15 20:19, Fangrui Song wrote:
> On Sat, Jul 15, 2023 at 9:42=E2=80=AFAM Alejandro Colomar <alx@kernel.o=
rg> wrote:
>>
>> Hi Fangrui,
>>
>> On 2023-07-14 09:00, Fangrui Song wrote:
>>> The linker option that sets the DF_1_NODEFLIB flag is -z nodefaultlib=

>>> instead of -z nodeflib.
>>
>> Does -z nodeflib exist?  Please mention that in your commit message.
>>
>> Thanks,
>> Alex
>=20
> Hi Alex, -z nodeflib is not defined.
>=20
> % ld.bfd -m elf_x86_64 -e 0 /dev/null -z nodeflib
> ld.bfd: warning: -z nodeflib ignored
> % ld.lld -m elf_x86_64 -e 0 /dev/null -z nodeflib
> ld.lld: warning: unknown -z value: nodeflib
>=20
> I have double checked that my commit message is accurate.

I say it because it is a bit ambiguous, in the sense that it's not clear
if nodeflib is a valid flag but which is not the one we're interested in,=

or if it's just an invalid flag.

It's not a problem for those who know, but it reduces the work for those
who don't know.  Anyway, that was my guess, but I was only 90% certain
without checking.  I suggest appending this at the end of your commit
message:

```
-z nodeflib is not defined.

% ld.bfd -m elf_x86_64 -e 0 /dev/null -z nodeflib
ld.bfd: warning: -z nodeflib ignored
% ld.lld -m elf_x86_64 -e 0 /dev/null -z nodeflib
ld.lld: warning: unknown -z value: nodeflib
```

What do you think?

Thanks,
Alex

>=20
>>>
>>> Signed-off-by: Fangrui Song <maskray@google.com>
>>> ---
>>>  man8/ld.so.8 | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/man8/ld.so.8 b/man8/ld.so.8
>>> index 1c9a13f56..351913bd8 100644
>>> --- a/man8/ld.so.8
>>> +++ b/man8/ld.so.8
>>> @@ -83,7 +83,7 @@ From the cache file
>>>  which contains a compiled list of candidate shared objects previousl=
y found
>>>  in the augmented library path.
>>>  If, however, the binary was linked with the
>>> -.B \-z nodeflib
>>> +.B \-z nodefaultlib
>>>  linker option, shared objects in the default paths are skipped.
>>>  Shared objects installed in hardware capability directories (see bel=
ow)
>>>  are preferred to other shared objects.
>>> @@ -97,7 +97,7 @@ and then
>>>  and then
>>>  .IR /usr/lib64 .)
>>>  If the binary was linked with the
>>> -.B \-z nodeflib
>>> +.B \-z nodefaultlib
>>>  linker option, this step is skipped.
>>>  .\"
>>>  .SS Dynamic string tokens
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------IV0jnooRJYWNWTXVCnBfdaLL--

--------------VJ1Sr836F9RdnzCqlKl2Xwe4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzPdYACgkQnowa+77/
2zIe+BAAqli9pQhL2yexnEuDFaLfWvUoNUWATj/I9gbK7cwkmxnJYzZfr7iLMjVO
BQV5l507loyM3TgLTMKnbCHOfYJI8SQhsyFyZ12KJC5aERXKdo2/iNmvI1DCLgMG
/7lkqXzAhr+kclwdn59N6IsCC4/0620hmsgqAPKBBds50/N31vwdS0Y83EV8pyHx
1hdkv5PY+ExKsUIPKFxXwSYEqysEbYAD1IcWy889PdrUYC66AOO4vgWWgOUWKI+u
y9eopapBoV0wYF48FXsHmdxynogfpCsZqJM6jPjghIQHwlPJj/B8JLJTbRFk47gw
hZGD39CquZVdzU6Gul8Yr14yiih6NYwlWEYnFx3jRa97jrCNcbIx0hgFcLi+MMjD
PqQOhxH7gZHNRm9YQzZKPyjoyWlBBQaehY3Rou/Iq39WcjY4YZ4U1xjEMTtRsFCm
EALbXxonhJySC2f7diE9eouby3r47gdvD2qBGMdKFi3L7KvuE49Xo6XBQVo2/IND
TWkfEHKTxjlb5ODej6G0/z+oeUphX9hPcU8RqEPEMBtDIhYZJugHgK8HCgjCiUD2
1q/Dv31LpYGHudGjW5fuEqwVfKEAva9FRhyb7U99xikHn3MxStfeJWlCUmGY8DzH
WgpG1d+52bEtDTleRMumYQhoGnRNwfmwq8l5mNa7QfR2rZ5+sOo=
=tRXI
-----END PGP SIGNATURE-----

--------------VJ1Sr836F9RdnzCqlKl2Xwe4--
