Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 732B057BFD0
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 23:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbiGTVrj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jul 2022 17:47:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229631AbiGTVri (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jul 2022 17:47:38 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4B533B963
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 14:47:37 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id h8so5206289wrw.1
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 14:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=ZM3Xa+ZwJp4547Hx68rmZSt1LUzGxnMibLFJQKriRG8=;
        b=e/LLqu25NBrx1kPG1xWlGkN+4BVoPsUq/TA8V+vfj+ghB4umeyVNUHPiJJoSn2ruSI
         ytIuDup/8q7+mHWMTF9n5Eci75WZ5IeI7wC65seHVS5XfVhnXojbMNSRYR6hLwDwedHV
         GlzNkPz+sdEq8cmaJnXyFTpVUZaBcQhlaptf/ePFLsATT55pblKxqkjJPoHI8OxN3r/V
         m4xOLdbQ7xJUuG/R1/WMIY70kT6FdBcrfFGeFNxcjSw7XQnoXIhJ5WdCX2SiFxLt2PQK
         tHNzgkuxWBIgZ6Uc0OlebgxeiigsdxHj7X5S0UH8UBtSh+pvyvvMrWqfORvIzkOip4Jq
         JbdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=ZM3Xa+ZwJp4547Hx68rmZSt1LUzGxnMibLFJQKriRG8=;
        b=CbgWMelaOBJ7lBY3nRouoWjHGNaMD9aR+2cOEw6ZQKnBMRLlXjDKaAp2r5qMCfKFws
         X9JldP8rC57E3wBTkZcs/31INTXeYVDmBj7mUSe+Ik7c65Ifm5Xx4tzY4SvoGucZJhhI
         MkI2Ddjfq94dfkOXkNgWbrhDGtRK9fuGLbBYViC7WFPCyzM5oeu73CNmvjYtkKv8qBpa
         44/hBXRgyLuPJSTjGefmk+AjP9+JUTozcmPM6POz6ynhC9MczLXuzZUPOEMrd7g6teEP
         ai8Cx9osBkJHI0a3nS47WWV1bgfBn3CsWpqR0EzuE4WkVLySuUYSJiq3N2gMePwGBFjx
         wSNQ==
X-Gm-Message-State: AJIora/vfhF2lH5vgd0TT+1tRL9yE0+gB38ApZqOCDr7bQMErkPqieg5
        NFJCpGIWcTMD8pZ6EFZfp0oyWyt9smA=
X-Google-Smtp-Source: AGRyM1vFcQwX4UU80cDQ/BLDAJALHNOx7VbUf8YFFeGIELq/AsbMZCEwiidYiiCxhQuNlMpe+7w6Kg==
X-Received: by 2002:a05:6000:178e:b0:21d:a21a:ccab with SMTP id e14-20020a056000178e00b0021da21accabmr31526695wrg.559.1658353656340;
        Wed, 20 Jul 2022 14:47:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j6-20020a5d4486000000b0021e47fb24a2sm44435wrq.19.2022.07.20.14.47.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 14:47:35 -0700 (PDT)
Message-ID: <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
Date:   Wed, 20 Jul 2022 23:47:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: Update bpf-helpers(7) man page
Content-Language: en-US
To:     Quentin Monnet <quentin@isovalent.com>
Cc:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        linux-man <linux-man@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
 <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5Gl7Als2bpj3p7coVCGXs8Uq"
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
--------------5Gl7Als2bpj3p7coVCGXs8Uq
Content-Type: multipart/mixed; boundary="------------3KPPapeg6CXZ9m5rccmdxVVG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Quentin Monnet <quentin@isovalent.com>
Cc: Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
 linux-man <linux-man@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
Subject: Re: Update bpf-helpers(7) man page
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
 <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
In-Reply-To: <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>

--------------3KPPapeg6CXZ9m5rccmdxVVG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUXVlbnRpbiwNCg0KT24gNy8yMC8yMiAyMzo0NCwgUXVlbnRpbiBNb25uZXQgd3JvdGU6
DQo+IFNpbmNlIHlvdSdyZSBvZmZlcmluZywgSSB3b3VsZG4ndCBtaW5kIGxlYXZpbmcgaXQg
dG8geW91IHRvIHJ1biB0aGUNCj4gc2NyaXB0IGJlZm9yZSBlYWNoIHJlbGVhc2UuIEknbSB3
aWxsaW5nIHRvIGhlbHAsIGJ1dCBJIGRvbid0IHJlYWxseQ0KPiB0cnVzdCBteXNlbGYgd2l0
aCByZW1lbWJlcmluZyB0aGlzIGV2ZXJ5IHRpbWUsIHNvIGhhdmluZyBpdCB3cml0dGVuDQo+
IGRvd24gYXMgb25lIG9mIHRoZSBzdGVwcyBpbiB5b3VyIFJFTEVBU0UgZmlsZSBpcyBwcm9i
YWJseSB0aGUgYmVzdCB3YXkNCj4gdG8gbWFrZSBzdXJlIHRoZSB1cGRhdGUgaGFwcGVucy4N
Cg0KWWVwLg0KDQo+IA0KPiBQbGVhc2UgZG8gcmVhY2ggb3V0IGlmIHRoZSBzY3JpcHQgZGlk
bid0IGJlaGF2ZSBhcyBleHBlY3RlZCwgdGhvdWdoLg0KPiBJJ2xsIGJlIGhhcHB5IHRvIGFz
c2lzdC4NCg0KT2theSwgSSdsbCB0cnkgaXQgYW5kIHdpbGwgY29tZSBiYWNrIGlmIEkgbmVl
ZCBoZWxwLg0KDQpUaGFua3MhDQoNCj4gDQo+PiBidXQgaWYgc29tZXRoaW5nIGNoYW5nZXMg
aW4gdGhhdCBzY3JpcHQsIGl0IHdvdWxkIGJlIG5pY2UgdG8gbm90aWZ5IHVzLA0KPj4gaWYg
d2UncmUgdXNpbmcgdGhlbS4NCj4gDQo+IEkgZG8gcmVhbGlzZSB3ZSBmYWlsZWQgdG8gc2Vu
ZCBhIG5vdGljZSB3aGVuIHdlIHJlbmFtZWQgdGhlIHNjcmlwdCwNCj4gcGxlYXNlIGFjY2Vw
dCBteSBhcG9sb2dpZXMgZm9yIHRoYXQuIEknbGwgYmUgbW9yZSBjYXJlZnVsIGluIHRoZQ0K
PiBmdXR1cmUuDQoNCkkgd2Fzbid0IHlldCBpbnZvbHZlZCBpbiBtYWludGFpbmluZyB0aGUg
bWFuLXBhZ2VzIGF0IHRoZSB0aW1lIHRoZSANCnNjcmlwdCBjaGFuZ2VkLCBzbyBubyBuZWVk
IHRvIGFwb2xvZ2l6ZSB0byBtZSA6cA0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gVGhh
bmtzLA0KPiBRdWVudGluDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3
LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------3KPPapeg6CXZ9m5rccmdxVVG--

--------------5Gl7Als2bpj3p7coVCGXs8Uq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLYd+8ACgkQnowa+77/
2zKEhxAAoD4Lsnq7QGYVlA0cqYQaiV1QRbhI4oO3J5C1noF+3Mx638Tr1JSgroA7
I/DVNYmHQTOg5xbPxnHlK2F8aZ2n6YXocyJuljAWb7FCVIKwxWp0FBASb/ImYu26
i+FeiNDge2UV6+D4IBcPbTgpXt6z2UsvrtsRrhQWaGRBgzHM+JUlY9byafrRSUTo
DyaFMQtSXrbWAL3MXOVluLmodAWbDoSIZgj0vKLPdbD2+oNwpgYgOh1eEX5V4zbA
6Cly+EEOh81qtVUQ37khUB1wpl2mgtwy2SJev25O2EebtT1ur9jLZT8W0W4D9KPa
yDIMugmpJkm+XvyUMB0uwspghVPt2+pJRe4hK9NTiwN3HBaQiNrlDzeNBMinlZ9r
9yi1VeieF7nbPLlxC2rnCDVtpLz5YybG2kBEaCfAwJ8PfZId9ata3Uq1OZ4+X0YJ
nR0zIBv+fTr5SXWAnO0r2v7+RoVqKiHIYI8aktoqupG0WJRZQi+o2ocIZVxQ3YmA
lzrNOtp1kaG1ZFydk9j7LXA4l1pQuQHNf6AHAVfPHkb+IwDOU3rZOnizy1UyXYwS
wfy3uQTSzRVUrdxY220Z4jbJnRFnLpj+Dv7eNWieAnx0k8czrNKqLXpTvP4zGaFX
17ZbRAabvgtlro6lnoMw0kwx73QTkgAFG8C3aJTNc2+SE761jzA=
=azMm
-----END PGP SIGNATURE-----

--------------5Gl7Als2bpj3p7coVCGXs8Uq--
