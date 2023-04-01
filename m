Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59A446D34E9
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 01:04:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbjDAXEn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 19:04:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjDAXEm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 19:04:42 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A9D749FC
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 16:04:41 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id d17so25783319wrb.11
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 16:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680390279; x=1682982279;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BwQH+YKUDNNExBmCQK7qHUojzBnkSxd9TqD0+kE/c7Q=;
        b=RGnNAKO7ZBj+rtmPCVF2hiv+ziNadCoQf4t00A0fTIt3yzGJwehwBzRWbj4E8TeUkm
         8AWmNF8BF30BkeLue7Tv2Feua3LZ1rEcuRk6pFZtxXLud+FTRFsXPtz/JVOaCffQRt6p
         IKAyUkLd+kaYPoqEkpRTA+T2cN7sZwux39s+yye/tvB6mqrrfoMxu758rhKZ8gCB24Hi
         jbKBR5P6wF3xyeCvzSgGqChgqmf6y+5aDX37nWufWQzUY3+tM3e0hgAqc3COPmg+TO68
         JGC8rU+Iu6ptg3SReb08zyKln+ozjaG4lovcvOZKldeQ+oxui9+fuwIc4upqg5orrFy+
         tujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680390279; x=1682982279;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BwQH+YKUDNNExBmCQK7qHUojzBnkSxd9TqD0+kE/c7Q=;
        b=qjnSZak1ZW4E7ya+eBlWX79PPX1skoWMVHCQZIQfDOwGd18DXtiDI7i3KDYS9Fet3H
         8YHHzhqk7KKUbiB2k+8bSJDXlCpts7Wu2hyqh+LxzobAqaHp6V/coHph4usd89a0Z+mA
         hqtuqc2zphXhcq9AIM02IakzSzEhYoOWq9nM3uFOEWR+ys1vFqigh/7RrDaIOQ0CtLa5
         fjtFOPt9BHpPuVl7YZQs6UIRDQ6smpzwrOWmkneXKHmO2TWWfvaHNUglVkuiCIk867YW
         AGCnhvKG8UFndr/FYpiNazhtadizEgLfmmAEqxFVvy/9cCboFOf8I7O3pZtSjY5dqKEU
         klng==
X-Gm-Message-State: AAQBX9ewYC8MQx7dKh4iEQmC1z5tcvz/uXVx2c3e7+p42QUXcWHM+koR
        LK0bFo1FDD0cwhrZ3G5WfNNkyQubEOo=
X-Google-Smtp-Source: AKy350Yws+Cr1zgKesUfhLXBFJ3gk3NrjFYaqLX4Ie5rf1DbnHh6EpN8MhWL0ozbJubfN8IeIZZT2w==
X-Received: by 2002:adf:e801:0:b0:2e5:6f44:a30a with SMTP id o1-20020adfe801000000b002e56f44a30amr5629101wrm.0.1680390278832;
        Sat, 01 Apr 2023 16:04:38 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id a15-20020a5d508f000000b002c707785da4sm5813223wrt.107.2023.04.01.16.04.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 16:04:38 -0700 (PDT)
Message-ID: <7818bd3c-0351-a738-fd69-14b59838cbeb@gmail.com>
Date:   Sun, 2 Apr 2023 01:04:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] sysctl.7: create as .so man5/proc.5
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2ghlghsiIajvo6qvurO0zrFQ"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------2ghlghsiIajvo6qvurO0zrFQ
Content-Type: multipart/mixed; boundary="------------eydE8PMZPpeqojsLRXdiIE5B";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <7818bd3c-0351-a738-fd69-14b59838cbeb@gmail.com>
Subject: Re: [PATCH 2/2] sysctl.7: create as .so man5/proc.5
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>

--------------eydE8PMZPpeqojsLRXdiIE5B
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1,

On 4/1/23 00:04, =D0=BD=D0=B0=D0=B1 wrote:
> This way "whatis sysctl" shows the list of sysctls and documentation,
> in addition to the syscall and program. Indeed, the latter two aren't
> all that useful without the former.
>=20
> Not a single concrete file, and it's more of an interface =3D> goes in =
7.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man7/sysctl.7 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man7/sysctl.7
>=20
> diff --git a/man7/sysctl.7 b/man7/sysctl.7
> new file mode 100644
> index 000000000..d8be74ac8
> --- /dev/null
> +++ b/man7/sysctl.7
> @@ -0,0 +1 @@
> +.so man5/proc.5

How about a SEE ALSO reference in the sysctl(8) page instead?  I had
a look at that page, and it hints that you should look at proc(5)
--it mentions /proc/sys/, although there's no explicit reference to
proc(5)--.

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------eydE8PMZPpeqojsLRXdiIE5B--

--------------2ghlghsiIajvo6qvurO0zrFQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQouIUACgkQnowa+77/
2zLu8hAAqgUUFRsJ8WZ+ZI3gD+fv4rjnYTo9cBPkDh0mVv4SNsPdJi6ZuvawMeRA
bAQaT1wYhhYnaAYdXaJkpGjHmM+N/NUZnF2RP4QUpEj9C6vXtoAa2xBDJrnbcT+U
0JDNDFZfcBzOUM9bzPuxoemglfXl7+QTImkj+6Z+Lg03VEdteHhI+hDBd71FHaE8
L0+OJ4HNwYAbXqjIub8NIoK656AJfc+v7Yzd6J7IRZa6+wvT9X5pyxJ2aM12LSYs
+thOMGMLGJ2GvifI+77WQSDL72i2rJN5SBwZUvf2p8yU9r6Bmqb8FHo+M5kTdLg8
WlsktmDnVoiJynGfGto9iAYJdIL2EzcgvUb/lsRwu8h+zpEXry5VT31vjH5+37Ng
y3G7cCreizieOOHLjjwUoSBysSoZZSIiadsDhWhj7mtJTendfyM/QmvRhRsny+2J
XLuvRgwA6VQwptEIwvcxzxGyLUPAZKMUyUU0b4RaNTY3YZ5HMTOSNKwQf95WalDL
fv1Duie4peOkPn/an2Zi//pHX53FqKFTcIKRwLGgKJYBQ4GebA9tIgXCMP7FpaL6
S+SnzoJlmwhU60DJbmfsRXyQku9yxXFEo0jrJoGH4ONkvw+zP5JJKrROrM0jm9WA
sL8SKomsAFzg0wQVgR6aknpBE0UiErGZtL+klj5cscTZPF+YVVs=
=ikL4
-----END PGP SIGNATURE-----

--------------2ghlghsiIajvo6qvurO0zrFQ--
