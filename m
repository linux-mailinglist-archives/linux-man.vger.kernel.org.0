Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B91D36DFFAA
	for <lists+linux-man@lfdr.de>; Wed, 12 Apr 2023 22:24:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjDLUYK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 16:24:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjDLUYJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 16:24:09 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D1C77D85
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 13:23:50 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id o29so1044772wro.0
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 13:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681331029; x=1683923029;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/muAddgfVvsyYps5QY55p1X087CpJoaLXExA4GOb5NQ=;
        b=JZBxiCfNe5dmkN/eJcMz39ro/uj9kQ57CJbE9eLqg4w2JeJiJsi8x3iM/3pesPjBSP
         kAVCrkI2X7EcH0hC/7fAy3JvSYDHf3N1YTK6AfgMYbuy6Di4NOxIiTNYaNcdUjWqAwkq
         a7bkSztJVhXYVhWAUuie/CUm0iztj715Wc48PZuWjCvipgeNFq2kFIEE2pguJAYz8Nj9
         oGjBcB5gzSd998X1hzuVNoLrsNs5nf6OPqQV0MAICD/JcD6s6ZPvdFea/kAhHlGX1xo8
         4mNNuDMQgfEzA4rptX3FzKh/6AaXIevL2CnQ+E85GcVIQmXSmUT5IL4Xm5maQNZO6h7v
         KNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681331029; x=1683923029;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/muAddgfVvsyYps5QY55p1X087CpJoaLXExA4GOb5NQ=;
        b=l9DwJp95jeDF5Q5iMaOolZ14I4fxLllwfCbqLKBY3wMLBZCoh8OV4nTlFmMXugC2Sg
         3KARQWk2h0zQZIYLdeL4ExgJbN+6hmX10hmgrMG0Qx316TVWBp8gOwo0MdyzQ42meFhj
         wBdOos+0Jui3oyG523zBdoCsnAaYpIavAcibwD6x8rHV6xRxHaiUJqLzXfjfG8NcbK3r
         geeFdkYDd1hSF8CYg9klmUVInZTsusqp7pUq3BwPykTvn65n/dryFf7FX05EgVqSMjHU
         CNsliJFJcugk1eRYJQpQu8AY2iImlqjBu6rsK2Q7SwFmnfa0EXj5ywRcg5x7RI8f+XWI
         kYaQ==
X-Gm-Message-State: AAQBX9eBZ6xqbc2c55F9kfz00PCXrg4gsSBzeTAeuBFS36CiydFuYMTW
        cZS7nRZimeUkPj5RxaS8lK0=
X-Google-Smtp-Source: AKy350b5TIMgsTYas0nCnLOCae3cFB59R2SqcyLYx+K5wO07pMdiOJoPmUGrEhcwp0ktPUliRUNQEQ==
X-Received: by 2002:a5d:6885:0:b0:2ce:ada5:325d with SMTP id h5-20020a5d6885000000b002ceada5325dmr2998849wru.37.1681331028917;
        Wed, 12 Apr 2023 13:23:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id a16-20020adffad0000000b002efb2d861dasm14674581wrs.77.2023.04.12.13.23.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 13:23:48 -0700 (PDT)
Message-ID: <c8cf5be0-04e7-f0a1-179f-eada6182c33e@gmail.com>
Date:   Wed, 12 Apr 2023 22:23:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Compressed man pages
To:     Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Alexis <flexibeast@gmail.com>, groff@gnu.org,
        Ingo Schwarze <schwarze@usta.de>,
        Dirk Gouders <dirk@gouders.net>,
        Colin Watson <cjwatson@debian.org>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Kerin Millar <kfm@plushkava.net>, Sam James <sam@gentoo.org>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com> <875ya1ecq1.fsf@gentoo.org>
 <20230412140451.f03a6c19983694fe844bbb5a@plushkava.net>
 <44768e26-ed92-0562-2318-68fec781126b@gmail.com>
 <CAD66C+Z0Vi0LeXSdTsm_c_Nz8OPdOAVAEZov_s2=ELJTu+pKoQ@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAD66C+Z0Vi0LeXSdTsm_c_Nz8OPdOAVAEZov_s2=ELJTu+pKoQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HLjDXScbjAxFcsK2LlUq4i72"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------HLjDXScbjAxFcsK2LlUq4i72
Content-Type: multipart/mixed; boundary="------------A726Y2VuZxMih8zS36T03HoP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>, Alexis <flexibeast@gmail.com>,
 groff@gnu.org, Ingo Schwarze <schwarze@usta.de>,
 Dirk Gouders <dirk@gouders.net>, Colin Watson <cjwatson@debian.org>,
 Ralph Corderoy <ralph@inputplus.co.uk>, Kerin Millar <kfm@plushkava.net>,
 Sam James <sam@gentoo.org>
Message-ID: <c8cf5be0-04e7-f0a1-179f-eada6182c33e@gmail.com>
Subject: Re: Compressed man pages
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com> <875ya1ecq1.fsf@gentoo.org>
 <20230412140451.f03a6c19983694fe844bbb5a@plushkava.net>
 <44768e26-ed92-0562-2318-68fec781126b@gmail.com>
 <CAD66C+Z0Vi0LeXSdTsm_c_Nz8OPdOAVAEZov_s2=ELJTu+pKoQ@mail.gmail.com>
In-Reply-To: <CAD66C+Z0Vi0LeXSdTsm_c_Nz8OPdOAVAEZov_s2=ELJTu+pKoQ@mail.gmail.com>

--------------A726Y2VuZxMih8zS36T03HoP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mingye,

On 4/12/23 20:52, Mingye Wang wrote:
> On Wed, Apr 12, 2023 at 10:24=E2=80=AFPM Alejandro Colomar
> <alx.manpages@gmail.com> wrote:
>> $ sudo make install-man prefix=3D/opt/local/man/xz___ -j LINK_PAGES=3D=
symlink Z=3D.xz  XZFLAGS=3D      | wc -l
>=20
> Small nitpick here as Kerin's recommended pb=3D0 isn't actually used.
> https://bugs.gentoo.org/169260#c19 (from Kerin) suggests that we might
> get one-third more.

Hmm, might be interesting to try at some point,  but for now, since
man(1) is very unoptimized for non-gz, as we saw, I don't thinks it's
worth trying now.

>=20
> I'm having trouble getting the Makefile to behave on MSYS2, but it
> does shrink a manual copy of man*/ totalling 7.2 M (probably because
> `exit` and `nan` didn't get checked out by git -- case-insensitivity
> issues) down to 2.8 M (both `du --apparent-size -sh`).

I didn't push the changes needed to use .lz and .xz.  Maybe that was
the issue?


* bc15c1d7b - Wed, 12 Apr 2023 16:54:01 +0200 (5 hours ago) (tar)
|           Makefile: tfix - Alejandro Colomar
* db5795531 - Wed, 12 Apr 2023 16:53:32 +0200 (5 hours ago)
|           *.mk: $Z: Support installing xz(1) compressed pages - Alejand=
ro Colomar
* c2fffefba - Wed, 12 Apr 2023 16:46:16 +0200 (6 hours ago)
|           *.mk: Add *FLAGS variables for compression commands - Alejand=
ro Colomar
* b220bc5b0 - Wed, 12 Apr 2023 14:43:00 +0200 (8 hours ago)
|           *.mk: $Z: Support installing lzip(1) compressed pages - Aleja=
ndro Colomar
* 69ad95988 - Wed, 12 Apr 2023 14:37:08 +0200 (8 hours ago)
|           *.mk: dist, dist-lz: Create tarballs compressed with lzip(1) =
- Alejandro Colomar
* 254fe38b2 - Tue, 11 Apr 2023 22:33:44 +0200 (24 hours ago) (tag: man-pa=
ges-6.05-a1)
|           dist.mk, version.mk: Create reproducible tarballs - Alejandro=
 Colomar
| * c7e9f0ffe - Tue, 11 Apr 2023 22:13:00 +0200 (24 hours ago) (set)
|/            build-catman.mk: Use .set suffix for troff(1) output - Alej=
andro Colomar
* 121c8de01 - Tue, 11 Apr 2023 16:55:17 +0200 (29 hours ago) (HEAD -> mas=
ter, korg/master)
|           fts.3: SYNOPSIS: Fix nullability - Alejandro Colomar


I'll push in a moment so you can try that (already done at the time of
sending this email).  Or did you see different issues about the Makefile?=

Please report anything uncomfortable about it.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------A726Y2VuZxMih8zS36T03HoP--

--------------HLjDXScbjAxFcsK2LlUq4i72
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ3E0sACgkQnowa+77/
2zKw/xAAj/4X1oCAoEq9IoB/c2Z1MCLLWJPnHfvunwEtyL5cBaaRuQ7y9gPDJ9VP
yyBhnGXmk39cOKb1fhQyATQZxrtF3oev2WMQ1t0P5uJ4S71vcsTUhxCbMqI+BHbK
kDQQeXodBca+REiIU93pkDIDzgdhsG502151UW+yLc1gfXhfCGRrE1l7OO5UhKxC
P+MyoMlifW+7Zfe1cLYZltI1zW/XKcAiRAvqrkOv0wHybOQNs6YruG7LIIxAbrLx
ibjyAUeGHUBRVXIizeHqPF2kpk7ozWoPtUO1NihOW3H7WEEKkTpQZkElLM96WJtk
Q2O0zhkYU7RxRALJTU34WQ1HNO6gKuVydw8603WS/1zm14xJ18kA/2yBxJ6jcZly
hX0mijFu7FcnuzqNYt+VIVBVtCdu9o+q7nHrEcBOQLcnKSB+6LtLtEpzf6ia1WAr
O1CndtXRk0Za2HTzbsEMmzUTb+MllOIKFMS2mi0aHo2UMNXv3lS4S+EfHQQqa70h
w/1wqZF9cUiULyiPL7kJqU+BUzvTMv3eL9y26tUV/Bd7Knfv9aaKwnBWGpd119hX
9B+RwWpFDR6pVfdbcipM8jdhW1OoQGBsW8QXMphLFthEYAw+Uj8U8q/uzoviJpaj
cLCliO6Ic4bpWgXRBa0zYODhyOdXUX7twweu/jk2PkVav+n5Id4=
=vsFU
-----END PGP SIGNATURE-----

--------------HLjDXScbjAxFcsK2LlUq4i72--
