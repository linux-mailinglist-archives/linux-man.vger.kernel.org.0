Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 902DC6E6606
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 15:33:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbjDRNd4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 09:33:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbjDRNdz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 09:33:55 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 393A810C0
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 06:33:54 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id n43-20020a05600c502b00b003f17466a9c1so3062492wmr.2
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 06:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681824832; x=1684416832;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rt9oYb0ioyRqhmn2UYwOgoETkfiEqh6aQqb4XshkOSQ=;
        b=EVv5WPZIIphGiLXVjl2v4546Vc2Ui25FZ0VKDDRZ95cuA127hrLU+2IHtMSPuDntSf
         hGwWIGgX0ra+vtnKxrzLhSoaCTejsG2PCD4YIAh+wwqCbH3kwMp3QL83QCB8O7+2u0jJ
         /d7ZKDmN5F1CGQyjQdDVjHDamX5x7+7hmwQKvzKy95e+X+WaFRCd4tU6P3nWppqdyUfw
         9PyBMYMpVuLQvVmwKQF3Ze9IQVQO9V6ggiJbGVtmg+WICV3Y5GQIvw1ZWNuamr9w/j/m
         JgauseK5CASE8mfnU1DSQduSOhxpu9mtqmjb9TV2dQj+uje4EoiW8hpU62lT9bF8BlVo
         5x4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681824832; x=1684416832;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rt9oYb0ioyRqhmn2UYwOgoETkfiEqh6aQqb4XshkOSQ=;
        b=R2/49/sw76udFYySdyfh3Uc3+HAV4hizfvwOIjmgEeXwVziEeLoKDTT6HA3PIQ0zKv
         YJHL2h7tJ8Ck7cviqJOuEqUeE4mIHsy7bzssUr9fxvFnVH1esGiJw5xzOtX/tFPAM31P
         KycMna/vKadbkN4QLd7ujfWh3EHoswSdRoApJjWpHYVcbsAhgj1WwhYcBPKvbo+tW8vK
         ZVu4ieJdBwYhu6uZ3RpxYju4gGn4B1tGckcEbKlxEZM9V015YdBI4QGRzF0FsUEhWaXw
         mOcJSZ5p/GVKULdHn+Ed3bjfzzOZcVL7jul7NiArlBCye+DHj/7yHgH+F71tj7eC5FEx
         u49w==
X-Gm-Message-State: AAQBX9edI72rsURQhmH7hQMuy6s02q91tsvGFvhgUEHp88uGwRaNi92/
        UG9jso05S/vgtsf8safR+XY=
X-Google-Smtp-Source: AKy350aCcpRq5iEEKu0w6pRdAw7jT6nXcy5cq61KIDtZuBPLV7TjM4/IOoibNfOqhdgOjbvqJAv9LA==
X-Received: by 2002:a1c:7c15:0:b0:3f0:b095:15d9 with SMTP id x21-20020a1c7c15000000b003f0b09515d9mr10398157wmc.40.1681824832544;
        Tue, 18 Apr 2023 06:33:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f24-20020a1cc918000000b003ee63fe5203sm14929633wmb.36.2023.04.18.06.33.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 06:33:51 -0700 (PDT)
Message-ID: <12c2889f-7f05-8338-b758-5d9b83af536c@gmail.com>
Date:   Tue, 18 Apr 2023 15:33:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] man*/: ffix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
References: <20230416231916.281037-1-guillem@hadrons.org>
 <20230416235126.vdbiab5p5jwty4ol@illithid>
 <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
 <20230417211030.tzxakddee7qehrcw@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230417211030.tzxakddee7qehrcw@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ZIdzqHrYSqQrH2QxTcsqw3mU"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ZIdzqHrYSqQrH2QxTcsqw3mU
Content-Type: multipart/mixed; boundary="------------Nv9gexZFvVDOwhbmoRt0AQL6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <12c2889f-7f05-8338-b758-5d9b83af536c@gmail.com>
Subject: Re: [PATCH] man*/: ffix
References: <20230416231916.281037-1-guillem@hadrons.org>
 <20230416235126.vdbiab5p5jwty4ol@illithid>
 <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
 <20230417211030.tzxakddee7qehrcw@illithid>
In-Reply-To: <20230417211030.tzxakddee7qehrcw@illithid>

--------------Nv9gexZFvVDOwhbmoRt0AQL6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 4/17/23 23:10, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-04-17T20:14:42+0200, Alejandro Colomar wrote:
>> What do standards say about formatting dates?
>=20
> Nothing that I know of.
>=20
>> Do they specify the character?
>=20
> Not that I know of.
>=20
>> I read some RFCs, but didn't see it specified, other than calling it
>> literally '"-"'.  No name of the character, or ASCII code.
>=20
> Most RFCs don't concern themselves with typography.  :)
>=20
>> However, date(1) only accepts hyphen-minus, so it would be nice to use=

>> a compatible format, even if standards didn't mandate it.
>=20
> Sure, and for an example you actually intend someone to copy and paste,=

> you should _typeset it as an example_.
>=20
> In my opinion, the cases at issue weren't examples of things to be
> copied and pasted, but _read_.  That is why I attempted to point out a
> much easier way of getting date(1) to format the Epoch.
>=20
> As another example, in the history section of a man page, I might say
> something like the following.
>=20
>   This system call appeared in First Edition Unix, 1971-11-03.
>=20
> It would be silly, in my opinion, to escape these hyphens.  They're not=

> intended as command parameters, but for the enlightenment of the reader=
=2E
>=20
> I concede that there are people who don't _ever_ want to see proper
> hyphens in UTF-8 man pages.  For them, _every_ hyphen should be a
> hyphen-minus.  I don't agree, but groff man(7) can accommodate their
> desires.  That is why groff has the following in its "PROBLEMS" file.

You know I'm not one of those ;)

>=20
> ---snip---
[...]
> ---end snip---
>=20
> By analogy, we don't compose man pages to write "don\[aq]t", even if fo=
r
> some reason a person might want to type "don't" as input to a Unix
> command.  (I hope they've prepared for its potential interaction with
> the shell's quoting mechanisms.)  People have gradually realized over
> the years that typing "don\[aq]t" is derpy and awkward.  Typesetting
> enthusiasts also note that it gives you a wrongly-shaped apostrophe in
> DVI, PostScript, and PDF output.

I'm not convinced, because dates are not prose.  Why should we use hyphen=
s
in dates formatted with standards-like formats?  I would agree in using
hyphens in dates if we spelled out dates unformatted, in plain English.
But if we use ISO-like or RFC-like formats, I think we should adhere to
them completely.

>=20
>> I'll hold the patch, to allow for some discussion, but I want to apply=

>> it.
>=20
> I unflinchingly agree with the remainder of the patch.  I simply want t=
o
> caution against a robotic process of demoting perfectly legitimate
> hyphens to the crudely compromised hyphen-minus character.

Please explain why they are reasonable there?  What's the use of a
hyphen in a date?  It's not a compound noun, or something like that.

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Nv9gexZFvVDOwhbmoRt0AQL6--

--------------ZIdzqHrYSqQrH2QxTcsqw3mU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ+nDcACgkQnowa+77/
2zJJOg//T1TBPUlbjJbgHWkKjU5hdG9DmkYbbqAXpuJOVMf2q4vCWO0zpATdY3vl
mPPZLUviF83e1yc6kN9eNI6FZBWYl89AfrjpMJ59DbVP2YWbusC1cJMro9JdauFb
q3G5pmGOV81NexOkjdg5Qzo4MNQ3fef5HPIEtUKe416pmQRLd9s/6+ZRLhO7AeUr
INcpsRyv1myqrgjSRegiaBAek/qMtASaDYVlhPZImWwK/sXXMGkFzBIkbGkHLpDg
JdgtVI4Ri1Wm3R8vlMa2FBt9iAk8O00qdAh4CNVfnUnmj52KT5u6rv2aDiH5QEF3
AN/hKZj4fyzlUftGcFJbiFp/5wWRuhfO+kayeWVe+tG4/S5tSK2HBY9lNr8ixrY5
j9vp5O2DIRXupzJAKvG1w1/kaP2qCwEHduxM02eT5BRb+Y5q9QUkqLIpshRzt5tg
I15niT4W7pvFe/sx0JGZpplNhCX5KF5VCRkAwGaXnZJtDC5GoSwVKPXaDB9AnuRa
MkQRJQpGRviYrmdHriJD8PGXm/O43UYp1qPxcdEfptLRKf66xtom9yVQ6ao8Vq1n
qQbtMZ3m8Fi9gPjEYl9MxiJgVR62+xQjIT0RPBc8E1P51sVd372TfcVW5Lc8pkqD
pvOEztLC6MIyH4pZni6LNGVoMslmvhmwUGgganm0oicHbxQ047A=
=Vkcb
-----END PGP SIGNATURE-----

--------------ZIdzqHrYSqQrH2QxTcsqw3mU--
