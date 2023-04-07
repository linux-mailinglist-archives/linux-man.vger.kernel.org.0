Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71AEC6DB56D
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 22:43:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbjDGUns (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 16:43:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbjDGUnp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 16:43:45 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20762B7
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 13:43:44 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id eo6-20020a05600c82c600b003ee5157346cso1367702wmb.1
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 13:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680900222; x=1683492222;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ASrEc++fiwyz9jhDyvh+Zv9XLaT0XLJRlyxZj8gE6o=;
        b=K/rWtCVMZHK7+56TINUe1E9L2hAYFP2gIcVPcNsiLIddPMkzw6uGyY8c5aIiHIpEag
         lZAQy9JKVRMUw8Ry4a3Hyjvr9CowKvquS+tiKJMfWRcdqA/lTam8m+PFvAhmu9iWCSMu
         2g97IkRR2uqB6SF1pS+XOzcKQXmQadvBAdUoBdutDl+u8vJUjopgnOpYMditYHPIONfq
         sXGQsOf7y0ST4ATEcIBYsxI4cS+TUxXdl840omK5PZNjguR6BSuv/zyHSHtP9VaBbjt0
         ZT9Vxf11Yh7+cTo8T23l2EPuJ8QsW1Uuj9aMvk5t3zDozs7pAFzer+CqyVVgFo3JcSyH
         bGHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680900222; x=1683492222;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2ASrEc++fiwyz9jhDyvh+Zv9XLaT0XLJRlyxZj8gE6o=;
        b=TWH3esJmsnhz1Dc5AGWjt7FvZ9IXbhx6ykVljY3ozh7gT9Es0VAXLswI/ZVwOc6QNP
         ymAtHaZek+Aikn6RGEMsF+6KIHXF/GPJZL7lycgTskeyAMOW/xkP0/gShiTBf2uTD5qU
         bn8R4UEolkxQe+JfOkafBFmImkfT/sNoiu8NlABAhM4RONd73O5rkjkp9RmoKMezKWhm
         K52ALzN6WFIIt19zRQpGiB0yu3SZAoIzCVJ2BmV0vmzB+LqMHRrEy93FUDS09R56mVf2
         tRCy+6SFKaUsdcgTlR3z05z+NfRbqp+D8I7WRKOhBEy0I/YERSNMD1cEHHsMzMuJYnbO
         yDkQ==
X-Gm-Message-State: AAQBX9cyqXkg4MQ+Jwu/n7ut6XEWG5+vqhjp04mjrirIVL+gRduNFSXP
        VYx3ToSrDkvu9bnt8Z9aHbI=
X-Google-Smtp-Source: AKy350ZqqUAoYUHlkMKvqK1yV+QWkxsDnhZGBY+mP247mX3y2iG9yrnM4AlhJwzSEaW0id8r5LOFSA==
X-Received: by 2002:a05:600c:214:b0:3ea:ecc2:daab with SMTP id 20-20020a05600c021400b003eaecc2daabmr2288064wmi.3.1680900222422;
        Fri, 07 Apr 2023 13:43:42 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id iv15-20020a05600c548f00b003ef5b285f65sm9582040wmb.46.2023.04.07.13.43.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 13:43:41 -0700 (PDT)
Message-ID: <c37bf6eb-3a40-3911-3852-607e5276abf2@gmail.com>
Date:   Fri, 7 Apr 2023 22:43:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: man page rendering speed (was: Playground pager lsp(1))
Content-Language: en-US
To:     Gavin Smith <gavinsmith0123@gmail.com>
Cc:     Eli Zaretskii <eliz@gnu.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        dirk@gouders.net, cjwatson@debian.org, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, groff@gnu.org,
        Ingo Schwarze <schwarze@usta.de>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid> <83fs9cp5b9.fsf@gnu.org>
 <20230407144319.iju3v3os2a7kngp2@illithid> <83fs9bohog.fsf@gnu.org>
 <f6ceff74-0c75-044c-6d12-756ac38c0738@gmail.com> <ZDBu3WaAFbieenFD@starmint>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZDBu3WaAFbieenFD@starmint>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Gi1rB4iool4PUpiOz9GBeDMP"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Gi1rB4iool4PUpiOz9GBeDMP
Content-Type: multipart/mixed; boundary="------------vt4nFrtJN2qMaEhwBc39MZ9F";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Gavin Smith <gavinsmith0123@gmail.com>
Cc: Eli Zaretskii <eliz@gnu.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, dirk@gouders.net,
 cjwatson@debian.org, linux-man@vger.kernel.org, help-texinfo@gnu.org,
 groff@gnu.org, Ingo Schwarze <schwarze@usta.de>
Message-ID: <c37bf6eb-3a40-3911-3852-607e5276abf2@gmail.com>
Subject: Re: man page rendering speed (was: Playground pager lsp(1))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid> <83fs9cp5b9.fsf@gnu.org>
 <20230407144319.iju3v3os2a7kngp2@illithid> <83fs9bohog.fsf@gnu.org>
 <f6ceff74-0c75-044c-6d12-756ac38c0738@gmail.com> <ZDBu3WaAFbieenFD@starmint>
In-Reply-To: <ZDBu3WaAFbieenFD@starmint>

--------------vt4nFrtJN2qMaEhwBc39MZ9F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Gavin,

On 4/7/23 21:28, Gavin Smith wrote:
> On Fri, Apr 07, 2023 at 09:04:03PM +0200, Alejandro Colomar wrote:
>> $ time man -w gcc | xargs zcat | groff -man -Tutf8 2>/dev/null >/dev/n=
ull
>>
>> real	0m0.406s
>> user	0m0.534s
>> sys	0m0.042s
>>
>> But as others said, I don't really care about the time it takes to for=
mat
>> the entire document, but rather the first 24 lines, which is more like=

>> instantaneous (per your own definition of ~0.5 s).
>=20
> Here's a sample comparison of "man" versus "info" on my system
> (relevant as help-texinfo@gnu.org is being copied into this
> discussion):
>=20
> $ time info gcc > temp
>=20
> real    0m0.112s
> user    0m0.085s
> sys     0m0.017s
> $ ls -l temp
> -rw-rw-r-- 1 g g 3.0M Apr  7 20:14 temp
> $ time man gcc > temp
> troff: <standard input>:11612: warning [p 111, 6.0i]: can't break line
> troff: <standard input>:11660: warning [p 111, 13.8i]: can't break line=

>=20
> real    0m0.620s
> user    0m1.004s
> sys     0m0.114s
> $ ls -l temp
> -rw-rw-r-- 1 g g 1.2M Apr  7 20:16 temp
>=20
> I find the startup of "info" to be instantaneous, whereas man pages oft=
en
> have a noticeable delay.

The times you showed are not _startup_ times, but rather the time for
formatting the _entire_ documents.  Remember that less(1) already shows y=
ou
the first lines when they are ready, without waiting for the rest of the
pipe.

I've optimized a moment ago the functions I had for listing all the
functions that appear in the Linux man-pages' SYNOPSIS sections, and got =
it
down from 55 s (calling man(1)) to just 14 s (calling groff(1)) and furth=
er
to 4 s (calling mandoc(1)).

That's parsing around a thousand pages, extracting the SYNOPSIS with sed(=
1),
formatting it, and parsing that to find function prototypes.

I guess that's one of the worst cases of when one would care about the ti=
me
it takes to format a man page, and it's a very reasonable one.


>=20
> Doubtless man would have more comparable runtimes were cat pages being =
used.

The startup times don't really change.  It's around 0.5 s.  However, the
time to show the entire page is the same (i.e., virtually all the time is=

spent in finding and opening the page)

>=20
> Being able to reformat the text for arbitrary widths is of limited use,=

> in my opinion, as text becomes more unreadable at long line lengths.

I often want it for the opposite reason: I want to make the terminal
narrower (e.g., for pasting contents into an email, at 72 or 66 columns).=


>  I
> suppose cat pages could be provided in a series of sensible widths.  (T=
he
> same is true in theory for Info, but I've never heard of anybody using
> widths for Info output other than the default 72 columns.)

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------vt4nFrtJN2qMaEhwBc39MZ9F--

--------------Gi1rB4iool4PUpiOz9GBeDMP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwgHUACgkQnowa+77/
2zKDMhAAlTrAM692Xn4waI2I+9GQRm95/lI2fkMe3ITAjvTt/W+eGM0ena/tm/6L
QBMcUFM8LKafPBw9GFmMZ2l4fNZCsj2+Zy/8VXcZAvHHwuzB3kkUgkKuU9xsJgwg
hFvtrX7sQMQoSmTb2cL6fZfqBdJ45nen3GivZJe4F88ocfIXBEfYzfcMjH+QHQgl
txRvfsyPxnsVVtevK2OE14s9fi4wQHLoQLwrGfDkBBg4D2vmVWVJmE88Gvu+f+XN
YeU9AGkV7TCDuaxz/LEids3e4FqDUj5McvePH75+j+n3IEnqWdfuYCIMZWFjsIHG
oy67DUYn3xa6n/WpfDGGs3M/wW1febF5UzOCFfFIn9cd8GzyfDrAmfIwTIpMFgnv
iwoHC/OVBNHJi4R+ccyiDFYw9nvY1bNShgTIYsQoARF7+NixYVl0nUp21K6zIyLR
i/Fyv0YAJySlXkQTENAnivhfvXUChtA6Mvp3HanlcyabYYn1+bgVzLO3pMyEkOyy
CprbtAMHxnE8XiwzRHMRMDfDfIjqXluUOeiipSmr/dfitu5JKBF7hNRe8bf1PSgP
wkULXxbzW/H4AiES5Twi/7PEAIGdKwbtu/hSNw5RzM8xe7oIkA3XcnpqXHoIUUVD
nwQ+1FGvsz8T1qxe7NcyLpsLBVu+8XfHnB01jy1m7Gh+v9bjwlI=
=1mQY
-----END PGP SIGNATURE-----

--------------Gi1rB4iool4PUpiOz9GBeDMP--
