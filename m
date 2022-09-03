Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A009C5ABF74
	for <lists+linux-man@lfdr.de>; Sat,  3 Sep 2022 17:08:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229664AbiICPIU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Sep 2022 11:08:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229455AbiICPIT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Sep 2022 11:08:19 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11DA15A172
        for <linux-man@vger.kernel.org>; Sat,  3 Sep 2022 08:08:18 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id e13so5754633wrm.1
        for <linux-man@vger.kernel.org>; Sat, 03 Sep 2022 08:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=1eZPSXStmW2nnioq8xZKzCC3WPiZLGndlsDTW3+Trx4=;
        b=Rs5oSya2Yn2Y4s7rA7h+PSrx0Ux7dyh/IwgCecfjNn3qnm+bW1aUNpmaR+T7oHDiVR
         E4we+kuoIm46bgl9SE1UpVR2K5Y6JQ3QXYY5x14JDucOiBie/pM1G1tY+8t75qVSTJ3Y
         En58ZuRdsHq3NRkNRHO2XJksEWA6ZizYjeKDI5ygpUGWeA5xgVfZORWsknHCP2pby6ds
         lBhbzt2VfuB+2j0Inic6iprZQrJg5kKYaENlLi2IW7Kyz/5oX/bUI0YLsODEPHsF5FCZ
         aCrTDBHFR1bUf4ALhdH/skVKZxWo8IFAJeFfsYF3AOl5UMPtLWY8qdH3BSXSwOlG8dlC
         t8vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=1eZPSXStmW2nnioq8xZKzCC3WPiZLGndlsDTW3+Trx4=;
        b=37BelcYqvc5qnyHFa3xTXGPTVTgQ90YfO9UsZ/b9v00vV0YWNB+W7lzKiqengppbcG
         Q8BOrXPhSoLPixOforIhgjZwF3OfF2xQoHZLZYmn8Wa5ajMfpb8pImrpO+81ZXME5geg
         jadMnulPXQu4f9t/P/QLUHGRELzZ/AVbUKfakLgg+B7DrRc32TcWdm350rCL4sJaZB6S
         AUSaurzLH/grq6tWVKSgRw0CT2p3rJYiql+yG3pvecEe3I4yoFD3a9gxfDsFTjNl5wPj
         m5VMoZYT4CYMMganZXs3sd5YUhYclvAKWILpbyjx/e3JimXDkage6DrJ/DDWyorylvUN
         h8Dg==
X-Gm-Message-State: ACgBeo06yCaL5gIoBPQxnbKXIgtis4IdMxgqjdJHtKwOUxUIOSkmmy/5
        WDaxH3mtDrIjAOKGcnvy0Bs=
X-Google-Smtp-Source: AA6agR6NBe/opVC6DlY28UJ3z3z94ZdDJ69elNHoYRrr/fPaLib5VMYF1AjqtmS2ilJhsuJxycqNtQ==
X-Received: by 2002:a05:6000:1888:b0:222:c96d:862f with SMTP id a8-20020a056000188800b00222c96d862fmr19533636wri.706.1662217696514;
        Sat, 03 Sep 2022 08:08:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v64-20020a1cac43000000b003a844885f88sm5544171wme.22.2022.09.03.08.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Sep 2022 08:08:15 -0700 (PDT)
Message-ID: <674966f1-fea2-7a81-0615-a48374eb0914@gmail.com>
Date:   Sat, 3 Sep 2022 17:08:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     Martin Uecker <uecker@tugraz.at>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <YxNWqyQnLJDUBZjM@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YxNWqyQnLJDUBZjM@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mE2dS2jdQqlef3INYAaXQYQw"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mE2dS2jdQqlef3INYAaXQYQw
Content-Type: multipart/mixed; boundary="------------z0iuvVQyCAVOMPc0PopHbPiN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: Martin Uecker <uecker@tugraz.at>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <674966f1-fea2-7a81-0615-a48374eb0914@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <YxNWqyQnLJDUBZjM@asta-kit.de>
In-Reply-To: <YxNWqyQnLJDUBZjM@asta-kit.de>

--------------z0iuvVQyCAVOMPc0PopHbPiN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gOS8zLzIyIDE1OjI5LCBJbmdvIFNjaHdhcnplIHdyb3RlOg0KPiB0
aGUgb25seSBwb2ludCBpIHN0cm9uZ2x5IGNhcmUgYWJvdXQgaXMgdGhpcyBvbmU6DQo+IA0K
PiBNYW51YWwgcGFnZXMgc2hvdWxkIG5vdCB1c2UNCj4gICAqIG5vbi1zdGFuZGFyZCBzeW50
YXgNCj4gICAqIG5vbi1wb3J0YWJsZSBzeW50YXgNCj4gICAqIGFtYmlndW91cyBzeW50YXgg
KGkuZS4gc3ludGF4IHRoYXQgbWlnaHQgaGF2ZSBkaWZmZXJlbnQgbWVhbmluZ3MNCj4gICAg
IHdpdGggZGlmZmVyZW50IGNvbXBpbGVycyBvciBpbiBkaWZmZXJlbnQgY29udGV4dHMpDQo+
ICAgKiBzeW50YXggdGhhdCBtaWdodCBiZSBpbnZhbGlkIG9yIGRhbmdlcm91cyB3aXRoIHNv
bWUgd2lkZWx5DQo+ICAgICB1c2VkIGNvbXBpbGVyIGNvbGxlY3Rpb25zIGxpa2UgR0NDIG9y
IExMVk0NCg0KVGhlIGZpcnN0IHR3byBhcmUgZ29vZCBndWlkZWxpbmVzLCBidXQgbm90IHN0
cmljdCBJTUhPIGlmIHRoZXJlJ3MgYSBnb29kIA0KcmVhc29uLg0KDQpUaGUgdGhpcmQgYW5k
IGZvdXJ0aCBhcmUgYSBzdHJvbmcgcmVxdWlyZW1lbnRzLg0KDQpGb3Igbm93IEkgd29uJ3Qg
YmUgYXBwbHlpbmcgdGhpcyBwYXRjaC4NCg0KPiANCj4gUmVnYXJkaW5nIHRoZSBkaXNjdXNz
aW9ucyBhYm91dCBzdGFuZGFyZGl6YXRpb24gYW5kIGV4dGVuc2lvbnMsDQo+IGFsbCBwcm9w
b3NhbHMgaSBoYXZlIHNlZW4gbG9vayBzZXJpb3VzbHkgdWdseSBhbmQgYXdrd2FyZCB0byBt
ZSwNCj4gYW5kIGknbSBub3QgeWV0IGNvbnZpbmNlZCBzdWNoIHVnbGluZXNzIGlzIHN1ZmZp
Y2llbnRseSBvZmZzZXQgYnkNCj4gdGhlIHJlbGF0aXZlbHkgbWlub3IgYmVuZWZpdCB0aGF0
IGlzIGFwcGFyZW50IHRvIG1lIHJpZ2h0IG5vdy4NCg0KSSBob3BlIHdlIGNvbWUgdXAgd2l0
aCBzb21ldGhpbmcgbm90IHVnbHkgZnJvbSB0aGF0IGRpc2N1c3Npb24uDQoNClRoZSBzdGF0
aWMgYW5hbHlzaXMgLyBjb21waWxlciB3YXJuaW5nIGNhcGFiaWxpdGllcyBvZiB1c2luZyBW
TEEgc3ludGF4IA0Kc2VlbSBzdHJvbmcgcmVhc29ucyB0byBtZS4gIFRoZXkgaGVscCBhdm9p
ZCBzdHVwaWQgYnVncywgZXZlbiBmb3IgDQpjYXJlbGVzcyBwcm9ncmFtbWVycyAod2VsbCwg
b25seSBpZiB0aG9zZSBjYXJlbGVzcyBwcm9ncmFtbWVycyBjYXJlIGp1c3QgDQplbm91Z2gg
dG8gZW5hYmxlIC1XYWxsLCBhbmQgdGhlbiB0byByZWFkIHRoZSB3YXJuaW5ncykuICBOb3Qg
c29tZXRoaW5nIA0KdGhhdCB3aWxsIGZpeCBhbiBpbmNvcnJlY3QgYWxnb3JpdGhtLCBidXQg
Y2FuIHN0b3Agc29tZSB0eXBvcywgb3Igb3RoZXIgDQpzdHVwaWQgbWlzdGFrZXMgdGhhdCB3
ZSBhbGwgZG8gZnJvbSB0aW1lIHRvIHRpbWUuDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSAN
CkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+
DQo=

--------------z0iuvVQyCAVOMPc0PopHbPiN--

--------------mE2dS2jdQqlef3INYAaXQYQw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMTbd4ACgkQnowa+77/
2zJcnA/9HUOou2Kk1CRo0nRwKLgYBuavEfq1IhkiZyeaWIZOM8lZRrhjMVTxWGbR
UVEobOl9Km1GDRQM687dNfdNP5++UfqfzUIvMiDBvMzA//OUazHY7SbTbt5+QJxi
VG6QNwzmZq4VeSo7d4cTQfn6rdCNXIxg2heheG+uiWfe888TYRXD07m7DfIYAJbj
KOn6oywsuyYsPXqgxzioWO1giK8e7xri501IZZj6bRs5XSHBkQDdR8UeR3BYa7JO
kqss7R+mveI09yyXTttvQyEL6lSwMRjD5Utys7rGKEIxV4v/aRFoeDyQp4O81Kyt
qw8Vz3rjgAZm3SgLGViWQE7/vTLGqdTG9EXC3oNaiFAcIIGhqzdj2f696K2rxDzJ
4r5gS2qh/XLRCy5dWF7/eSzxnSYayIuNv4q3oVF7rzEHRyHVwJVwVMg/baMo3R06
gSSvye4t6J+GPL825H9qoBiV4bU8HSjZGbJ0Dmlg3UKs3RLvWgfRZP/IsoOYgm1p
1UA0aSwHiOkT87p+pYCTWfO8YmjBIymK+9pw7Ri9SVQbtu3aZb7SFfzIrWZMg3yG
o2Vdqmrd2WTafvzl6bo1XmSREpMTqrEbik1z2z6fAMvSWDSdSWcsVXefyu8ZJXhp
1fC6J868QI+/jkutkHPHXZd4f4JlHwYEqRm72E/1kjfKmbhM3Cs=
=pKhW
-----END PGP SIGNATURE-----

--------------mE2dS2jdQqlef3INYAaXQYQw--
