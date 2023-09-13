Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 952B679F3BC
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 23:23:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjIMVX5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 17:23:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231998AbjIMVX4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 17:23:56 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A90C61724
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 14:23:52 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 700C1C433C8;
        Wed, 13 Sep 2023 21:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694640232;
        bh=2fpMgEIfzr46allOvZuKIGmv4ch3mpAac1VuLrbief0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=sRlUzObCKtEzobXKD1N6S9XqBOohQ6FHTsbBEkBWy+rNlY0E8/eNaTKUrf1bwBzSB
         vWav1sU2+tRUIHQsgAjuAFwbM6MP/3xYNL5Td10xjNEwwF3AGapp/2swK8/T62fREg
         8ghvmWpeCQ1jfpPtfRICWwMbOSzr0uNY8A3G+YlFKApq8GhzY2RrMBeGkPpBFMmiUV
         j1kKcXK/1Bi6KHqrH3Mg6hwmdbCniRGeDFWl41e3/ZbJFBlSV9+XSXInxLZv8+fr4R
         AJFkeOygQ8Dq2UfxPSZeEeIsBrW/VpGI9CCN4uKET2z6Pat/vkLsNlWj1+JFCfzSeX
         nRZELyyCBTp2g==
Message-ID: <3bfc4f53-acf0-44cc-b32f-3d068a1b388a@kernel.org>
Date:   Wed, 13 Sep 2023 23:23:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20230913174950.36crji6z3mzg3j7h@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230913174950.36crji6z3mzg3j7h@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------TfQDZln0I3pw0jUElmwdebHz"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------TfQDZln0I3pw0jUElmwdebHz
Content-Type: multipart/mixed; boundary="------------vKrINVwSoTfHTreJpoGvuggv";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <3bfc4f53-acf0-44cc-b32f-3d068a1b388a@kernel.org>
Subject: Re: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
References: <20230913174950.36crji6z3mzg3j7h@illithid>
In-Reply-To: <20230913174950.36crji6z3mzg3j7h@illithid>

--------------vKrINVwSoTfHTreJpoGvuggv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-09-13 19:49, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-09-13T17:24:53+0200, Alejandro Colomar wrote:
>>> diff --git a/man2/ioctl.2 b/man2/ioctl.2
>>> index 6b55d47c9..a658da354 100644
>>> --- a/man2/ioctl.2
>>> +++ b/man2/ioctl.2
>>> @@ -20,9 +20,8 @@ .SH SYNOPSIS
>>>  .nf
>>>  .B #include <sys/ioctl.h>
>>>  .PP
>>> -.BI "int ioctl(int " fd ", unsigned long " request ", ...);"
>>> -.\" POSIX says 'request' is int, but glibc has the above
>>> -.\" See https://bugzilla.kernel.org/show_bug.cgi?id=3D42705
>>> +.BI "int ioctl(int " fd ", unsigned long " request ", ...);" "\fR  /=
* glibc, BSD */\fP"
>>> +.BI "int ioctl(int " fd ", int " request ", ...);" "\fR            /=
* musl, other UNIX */\fP"
>>
>> LGTM.
> [...]
>> [while applying, changed to use the \f[...] form.]
>=20
> It's a shame the ellipsis is in italics.  This will underline it on
> terminals when the user hasn't gone out of their way to exercise the
> italic attribute.[1]

It's in bold.  :|

>  Also, it is idiomatic to write ellipses with `\|`
> escape sequences internally separating the dots; this looks better on
> typesetters.  (It wouldn't matter when a monospaced font is used, but
> the Linux man-pages don't do that for synopses.)

We could do that.  If you want to prepare a global patch for that :)

>=20
> Perhaps consider...
>=20
> +.BI "int ioctl(int " fd ", unsigned long " request ", \f[R].\|.\|.\f[]=
);" "\f[R]  /* glibc, BSD */\f[]"
> +.BI "int ioctl(int " fd ", int " request ", \f[R].\|.\|.\f[]);" "\f[R]=
            /* musl, other UNIX */\f[]"
>=20
> What do you think?

Not for this patch, but a global one after this one, yeah, could be.

>=20
> At 2023-09-13T18:44:53+0200, Alejandro Colomar wrote:
>> On 2023-09-13 18:02, =D0=BD=D0=B0=D0=B1 wrote:
>>> Bit me in https://github.com/thecoshman/http/issues/155:
>>
>> Be careful with URIs.  They _must_ be enclosed within <>.  See uri(7).=

>> Otherwise, the ':' can be understood as part of the URI.
>=20
> groff's `UR`/`UE` macros have been available since 2009 for this
> purpose.  mandoc(1) supports them, as does Heirloom Doctools troff (the=

> latter because it incorporates an old but usable copy of an-ext.tmac).
> With man.7 now (in Git) sourcing groff_man.7, I expect the quantity of
> submissions using `UR` and `UE` to increase.
>=20
> Also, I thought =D0=BD=D0=B0=D0=B1 was just mentioning the URL in the e=
mail, not adding
> it to the man(7) document per se.

Yep, it was in the commit message, and that's why it should be
properly written (and even if it was only an email, not in the
commit message, it would be nice to write proper URIs).  For
example, when I tried to open it, it opened the page ending in ':'.

Cheers,
Alex

>=20
> But for grins, if one wanted =D0=BD=D0=B0=D0=B1's exact words in a man =
page, despite
> their informal register, here's what you'd do.
>=20
> Bit me in
> .UR https://github.com/thecoshman/http/issues/155
> .UE :
>=20
> Regards,
> Branden
>=20
> [1] In groff 1.24, they may no longer have to go out of their way, but
>     might get italics automatically.
>=20
>     https://lists.gnu.org/archive/html/groff/2023-09/msg00027.html
>=20
>     (I still owe Lennart a review of v3.)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------vKrINVwSoTfHTreJpoGvuggv--

--------------TfQDZln0I3pw0jUElmwdebHz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUCKF0ACgkQnowa+77/
2zJvABAAgfAxEl4htcM7pH/ZwE/7bDn6eZNPO4AMdGjZGdIA9/T45Khd1o34aLmO
Fidf/5qATqsslin0TJErDb3UxqmQQ2KreB9D80YX3xLtEorbUt08IfAIdvDSaX8z
lZzq1HW4TzQhHCeGCWuA2kyOk0mQ/+/+nbXcAoj57PndjKxZ7wKm/fIvM3a2dYB+
OIpYeoYD7qpTBEHsqnQUXmPVGYBfAzjx5nvtgPcpnxE73HawJbuRDaKCr2WwZ0BH
2D/pfRgjnhwnr7M2S7UgkmRV/ZBKQZ4CFgxH5jW4zeCDwKODA75i1/7GpGwz/ZA1
R+1BVBR6QyJmxqQVHo8gZIucdGQnNf1yYASz6/k+ZTEitF5j/BXdAR0Rg8E6tVOZ
rahSsDw62+XUd9eFfZlNYnBANbu3bwnloj1xK+yoNXtK/UPgO7ifvvF/iYXYPTPt
sYUU0+TVqi9KHy4TYos+LmLlulG8GCOwygt/0xLvAj2v6FCsOYydCSLGnzo9y8/n
118x1MwdZyFuY0ySnYN7Py/7htrXq+LcC0NlXHvGaxOrxUJkRaDgOAkXEs7SoYNa
h9m0Sj2aOqUSjDpHOI38Iw0ERMWfy6REWYXZKM1oAqWc9ZY+/v6WbQUs0b1nEjq9
xm9a9EIMTKWVzA58yZJiWGOnLuLdpdu60gZf1cZnidzEPBGiv3o=
=K+Wp
-----END PGP SIGNATURE-----

--------------TfQDZln0I3pw0jUElmwdebHz--
