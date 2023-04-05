Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBC4A6D7297
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 04:50:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235995AbjDECuT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 22:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235182AbjDECuT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 22:50:19 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E829D35BB
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 19:50:17 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id l27so34742547wrb.2
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 19:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680663016; x=1683255016;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EQyOqvmFFf19+L9iaZKITGa8KSmHBMxsiOGyXsZYlSI=;
        b=fqQSIX6zN+XIDveLPgh7+z4wTiUSiAh0nLIszhrVH13g7rAfIF6gwiRbZaTHsJ3km+
         RZyrwytTayRo8GAQAWRxicTqEfbWAz76hdBnBZdTn7CXGD0HALb3uaMqSKWuCnuciVpx
         trZr5Cy2yQVVNqOTWx3DkYMNyLU3OwERyAM0h/EjYyO0dxEo0lT8yKUwDhDYlPNIeMDk
         SuBLDQ8/Qt/dz6whcGtWhXftB8tbo0Q/qysvcN87R0DjkwfB06mIs+uTV40UcfVuHZBQ
         kZbqHe8ypMmCVeQLhvE6hvhIp3+vlCy43XPaFCLL4c7XHpA3YhcJjsxopVcQVsm9+Ceg
         wjmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680663016; x=1683255016;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EQyOqvmFFf19+L9iaZKITGa8KSmHBMxsiOGyXsZYlSI=;
        b=mQbTBKMVbCTBOF4O/VhlLI50cP8kqv7lUGjx3jcpD0x6xWO7UG/pPleybq7VJCTvQD
         orrycq+jZQxtGOPs9HTgRycjgsRIZhW4CMe05WP18W4Dn9bl2Dn3m+B+NOe4ZaYD6YKe
         TA64gyu+PKTJDxxabhA02OohHWHXMsbwclhJeprvFlG8mePkmLM8gQkdcQdImv5pI6VV
         qwn/Gnv4lBq0YYbzDQ3PlUzQBaYs+LtdoSBKMWRcHWV1D74bKWLeKsiArt/4pGYKoEB4
         /hpOO5FI0kv5hqgCMMq7kdSWKt7fuCpLF/zcnMzhqqhDJHygvsKOIuOWGpSBekTR8BG8
         Ktdg==
X-Gm-Message-State: AAQBX9dSlMtatBNaYhr5m1WmG4ycdanv1aKQMtKo9UPBmZOzYX/jKk4e
        KyRyaIM9AnQRNYXYPJhRWLSMvnpErj4=
X-Google-Smtp-Source: AKy350ajO9Y+4CuBvMtvCj6d9fnuZht04qm1ipSsM8EU2IpZRNa92lf91s6eoTtvIeqo1EPk7aSAww==
X-Received: by 2002:a5d:5310:0:b0:2e4:cbef:9f2a with SMTP id e16-20020a5d5310000000b002e4cbef9f2amr2452927wrv.2.1680663016357;
        Tue, 04 Apr 2023 19:50:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d9-20020adff849000000b002c56af32e8csm13688297wrq.35.2023.04.04.19.50.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 19:50:15 -0700 (PDT)
Message-ID: <70de076b-86bd-fd09-6f59-cc682c2412f7@gmail.com>
Date:   Wed, 5 Apr 2023 04:50:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
 <7eda6974-1f1f-66aa-f63c-f33daf2ab6e1@gmail.com>
 <20230404.16675e4d7765@gnoack.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230404.16675e4d7765@gnoack.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jzZyeLOyDdg0mwAK8GG0ukY8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jzZyeLOyDdg0mwAK8GG0ukY8
Content-Type: multipart/mixed; boundary="------------E92HJFntzWkDGyTbP0kJ7CGF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <70de076b-86bd-fd09-6f59-cc682c2412f7@gmail.com>
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
 <7eda6974-1f1f-66aa-f63c-f33daf2ab6e1@gmail.com>
 <20230404.16675e4d7765@gnoack.org>
In-Reply-To: <20230404.16675e4d7765@gnoack.org>

--------------E92HJFntzWkDGyTbP0kJ7CGF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello!

On 4/4/23 09:33, G=C3=BCnther Noack wrote:
> Hello!
>=20
> On Sun, Apr 02, 2023 at 12:01:43AM +0200, Alejandro Colomar wrote:
>> On 4/1/23 19:19, G=C3=BCnther Noack wrote:
>>> (It feels out of scope for this documentation patch, but do you think=

>>> these bitmasks should be defined in the uapi/linux/landlock.h header?=

>>> You have looked at so many man pages already -- Do you happen to know=

>>> other places in the kernel API where such a problem has come up?)
>>
>> I don't remember having seen something similar in other pages.
>>
>> I think defining a macro in uapi headers could be the right thing to
>> do.  Something like LANDLOCK_ACCESS_FS_RIGHTS_MASK_ABI_{1,2,3} or
>> other similar name?
>=20
> Noted it on my TODO list - it's probably best discussed on the kernel
> list whether this is the right approach.

Sure!  Feel free to CC me there.

>=20
>=20
>>> 1) Make assumptions about the numbers, for brevity
>>>    (as done in the patch I sent).
>>>
>>>    [...]
>>>
>>> 2) Use the constants from the header and OR them.
>>>
>>>    [...]
>>>
>>> 3) Third option is the middle way,
>>>    naming the "highest" known access right for each ABI version:
>>>
>>> __u64 landlock_fs_access_rights[] =3D {
>>>     (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) - 1,  /* ABI v1               =
  */
>>>     (LANDLOCK_ACCESS_FS_REFER << 1) - 1,     /* ABI v2: add "refer"  =
  */
>>>     (LANDLOCK_ACCESS_FS_TRUNCATE << 1) - 1,  /* ABI v3: add "truncate=
" */
>>> }
>>
>> I'm not sure if I like this one.  I'll leave it up to you to decide
>> the one you like.  :)
>=20
> I'll ponder it a bit and send a new patch soon.

Ok.  No hurries.

>=20
> Micka=C3=ABl, do you have any opinions/preferences on this?
>=20
> =E2=80=93G=C3=BCnther

On 4/4/23 09:17, G=C3=BCnther Noack wrote:
>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONT=
RIBUTING#n132>
>> ...
> Thank you for pointing this out (and for reworking this
> documentation)!

:-)

>  I had indeed missed the CONTRIBUTING doc.
> The "make -t" trick is also new to me.

Heh, I've fine-tuned makefiles too much to come up with this
workflow. :p

I met that feature long ago reading make(1)'s man page, but didn't
know what it would be useful for, until I recently realized it could
help in this use case.

Cheers,
Alex



--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------E92HJFntzWkDGyTbP0kJ7CGF--

--------------jzZyeLOyDdg0mwAK8GG0ukY8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQs4eYACgkQnowa+77/
2zKS2hAAhAlvZhfs6OKtekw9O3dgIAbkvI31BgVrVhlUq58zc64DPXrWVtWJtmEy
FC+KQznlLrdVs8RIWmu/F/6OmXGfzIJXSjQOHQ6owHLp96O4CxHuY5IG5/iIfE6p
xzukMHspLJQB9RupxCMxnqCk+tSY2Lh0CNbGSK6Yi3PVjHRGsTM2s6wWHlERRsTk
UI+7Djf6o/zsZIlRar1DoGuY+Xp3o87qD3Rqu7gWhkPf30QjusLQD9GGpOv4A6rn
ATt1SAvRWf5CUgcPvyY1319mkgFCD5BWo+7RpeuCmp7Lj9w8TjOae5gxsI4uKheb
EpG/lPUIGxE3p3yExjLB6Ta5vtHm2iPJLcorN3fNQnFJrh/QghSIuCe2/fvptZ+u
qbeL4BJDHxpbnwr3zQX03gFZrqMYiutTlo0vnWMyWx0SeghwM7yA5mLLsrL1BfD8
Oj5DtaFpTn2IdGOQZc8VrQ98hKjSqFkKLO/IyVDMFrND3gED5l3tdqla+kG1HCQT
i0dCksK8mqjq8V18quzTSpB/CbIXpy5xtGjTomvVo8YFNuVMayp1KrQ3S/GUk5LT
lFt8rDTl7+aqN4lLx9XetfDZ1DD/CwnBRiTWtvCTrHKjq4Lus663HuaUyFEw3Ij6
5ODuxPeHWUCe1Q6xtts643CtMPqcPzHAmYr09Gu4+qvROgJNWVc=
=4Aci
-----END PGP SIGNATURE-----

--------------jzZyeLOyDdg0mwAK8GG0ukY8--
