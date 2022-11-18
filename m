Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24B4962F3A7
	for <lists+linux-man@lfdr.de>; Fri, 18 Nov 2022 12:25:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235204AbiKRLZR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Nov 2022 06:25:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234724AbiKRLY6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Nov 2022 06:24:58 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 331A18C7AF
        for <linux-man@vger.kernel.org>; Fri, 18 Nov 2022 03:24:32 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id l14so8844431wrw.2
        for <linux-man@vger.kernel.org>; Fri, 18 Nov 2022 03:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=59tS4/ooa9GWFV3HycrWFhJU0OcHPruwoXa26Nxrqm8=;
        b=EWhKVo3Hw9Np6qHor0SW8VLeOx2cHemMbXie1fUkgI4QSzSdQ7hFT7z3/g5yEqpfx7
         SxPHL3nIyj/fPd4ecgL5WBOzrJ0jV4/hlv0hLYYExjYR20bf6vATvXT60E20jeHXr/9B
         XMp1huxoxMIP7EF1VTJq7Dv2sGwjBTh+JHlZDyxzB1BCnh3+CqdvwH1G1bl4eEn2IfrZ
         D0LmWFgxE/aHRa8U5ijfUCNmpMCZ9LivQSMxb0c2f0zqEfBV/yQGoW6/2eExMLBX08kG
         vY+6au29bJumYPf2SxGfz5VLc+sLWrNl/pWiWSUyNQZzA7C+xRU72yp1UtnjdBjsMDtX
         GaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=59tS4/ooa9GWFV3HycrWFhJU0OcHPruwoXa26Nxrqm8=;
        b=pz1Verx//SQd3i6Ft2USDEG7GTjp/lH8DgUjQUioDvjN7b1SWQSK6N5/C6ED7rb1pX
         a32r7kjwMBlhN1v1QoTp5EUNxvypub5fYI4/NZ1uGIWae06M/uDYpnsLPPAsGA0YpVMZ
         i3REzvgBe3SFoupV0VsjFar2K/oPuR74AYxxnprDd49mXyyRx9NRyC6m+2dQ6/U/p7aA
         deMRBuUnAa6eA0qavBZPkicB3I0jdcUDFK9XYXXXykMs8zq7i5o/0gKGsp7Nv19HQuOv
         s0PDGQ/AQTTC6jUuU7EZ8/LesuU91NykybPpMJBeg+SE0SG4ovkLNJYYAiJ8TEefixfR
         B+qA==
X-Gm-Message-State: ANoB5plVockz/ivqSLSnftb9/uGIK7K/kQgwXFNvviI9tMe03jhZY4Os
        lgHxWjiWF9bYDPatgArMWEQ=
X-Google-Smtp-Source: AA0mqf4jwxGU93DtBpm8et1Qc6843rimtSFugjfzHh1DhDDLPilrmlq5MT67PNMMouotJaSYs6joxQ==
X-Received: by 2002:a05:6000:1103:b0:236:6fb9:9cf5 with SMTP id z3-20020a056000110300b002366fb99cf5mr3841443wrw.709.1668770671325;
        Fri, 18 Nov 2022 03:24:31 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t65-20020a1c4644000000b003cfa622a18asm8530977wma.3.2022.11.18.03.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 03:24:30 -0800 (PST)
Message-ID: <7369d132-409e-34b7-1b44-4bdb795dcd17@gmail.com>
Date:   Fri, 18 Nov 2022 12:24:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] CONTRIBUTING: tfix
To:     Thomas Voss <mail@thomasvoss.com>, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221118091727.26874-1-mail@thomasvoss.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221118091727.26874-1-mail@thomasvoss.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VYYKeLJpa0xRG7r0U0SMdJ52"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------VYYKeLJpa0xRG7r0U0SMdJ52
Content-Type: multipart/mixed; boundary="------------YpoOhUmT0V6Z3Bb90lGhS3uO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Thomas Voss <mail@thomasvoss.com>, linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <7369d132-409e-34b7-1b44-4bdb795dcd17@gmail.com>
Subject: Re: [PATCH] CONTRIBUTING: tfix
References: <20221118091727.26874-1-mail@thomasvoss.com>
In-Reply-To: <20221118091727.26874-1-mail@thomasvoss.com>

--------------YpoOhUmT0V6Z3Bb90lGhS3uO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KDQpPbiAxMS8xOC8yMiAxMDoxNywgVGhvbWFzIFZvc3Mgd3JvdGU6DQo+
IC0tLQ0KPiAgIENPTlRSSUJVVElORyB8IDIgKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9DT05UUklC
VVRJTkcgYi9DT05UUklCVVRJTkcNCj4gaW5kZXggODQwNWY2NzBkLi41OWQ5ODAyNzEgMTAw
NjQ0DQo+IC0tLSBhL0NPTlRSSUJVVElORw0KPiArKysgYi9DT05UUklCVVRJTkcNCj4gQEAg
LTcxLDcgKzcxLDcgQEAgRGVzY3JpcHRpb24NCj4gICANCj4gICAgICAgICAgICAgICAgW3Bh
dGNoXSBzaG1vcC4yOiBBZGQgIih2b2lkICopIiBjYXN0IHRvIFJFVFVSTiBWQUxVRQ0KPiAg
IA0KPiAtICAgICAgIC0gIFNpZ24geW91ciBwYXRjaCB3aXRoICJTaWduZWQtb3BmZi1ieToi
LiAgUmVhZCBhYm91dCB0aGUgIkRldmVsb3BlcidzDQo+ICsgICAgICAgLSAgU2lnbiB5b3Vy
IHBhdGNoIHdpdGggIlNpZ25lZC1vZmYtYnk6Ii4gIFJlYWQgYWJvdXQgdGhlICJEZXZlbG9w
ZXIncw0KDQpPb3BzLiAgUGF0Y2ggYXBwbGllZC4gIDopDQoNClRoYW5rcywNCg0KQWxleA0K
DQo+ICAgICAgICAgICAgIENlcnRpZmljYXRlIG9mIE9yaWdpbiIgYXQNCj4gICAgICAgICAg
ICAgPGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9z
dWJtaXR0aW5nLXBhdGNoZXMucnN0Pi4NCj4gICAgICAgICAgICAgV2hlbiBhcHByb3ByaWF0
ZSwgb3RoZXIgdGFncyBkb2N1bWVudGVkIGluIHRoYXQgZmlsZSwgc3VjaCBhcw0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------YpoOhUmT0V6Z3Bb90lGhS3uO--

--------------VYYKeLJpa0xRG7r0U0SMdJ52
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN3a2AACgkQnowa+77/
2zJq9w//SHApCGOi1tB4UOsxI/jhT3yHSL2IiRI+SmPNZPN6qy2GhwdiQLo5yyZz
OfzdEB8d9AOAV0SYQEVxfIu8Il8I6zS8Zj/P6rQ4GM24zo9H1bLUECfBXf/2lvv6
Is93aGgFwktNOM5ph5f8FQYJ3ghQXY1kfiiP4x0h+J4+g6ADIp/QSBHEHjIJTky5
vwtnZSlQWj+AO5Qn7F+4HjxGoZnNotIV8nuBTZJlW+gZAGR9jeM4mntRCQBLKuQp
qipP46zlyPUUXzu8ETzCHiozbbBLpTD0BWbtmQhP4bEWHqA3/kbeEoPB0aLtQyjg
1lPb3EPXPuv4YthX5YU4syJ567lYglhpKB8RrAUb7wmp62h9/orJ3V+MAs+dp1Rg
l9HISj20GAubmpqJhBfZUdyzjRLUkO6sVXe+8OvC+IyHQ6AsTlOW1zBnhaaKOu2C
6/x56N3MjDMUAnJxhvymhwHnobVH2EYv4i5ZgM7YQvvlpa3G2WWX+yUCTlavqgVr
ClfsEDuK8EMRG9DWftPOWLoN8PBWEJvD1AUT8kFBxm+Jf/L6GgS31jFAqzC6BCae
JyFiOw+HOk7Ytgy2ykRk3KpEp8J1oe427O7Le56E0n58QohdP3vxd1rcNXvCxwLH
eVuF3ihQM7Py1DklE3Q5kZam/60DDQlvubmuALnrCPt4Hjq/U60=
=/you
-----END PGP SIGNATURE-----

--------------VYYKeLJpa0xRG7r0U0SMdJ52--
