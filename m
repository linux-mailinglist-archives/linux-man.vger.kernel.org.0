Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 705BC5A3D49
	for <lists+linux-man@lfdr.de>; Sun, 28 Aug 2022 13:20:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbiH1LU3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Aug 2022 07:20:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiH1LU2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Aug 2022 07:20:28 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7435026114
        for <linux-man@vger.kernel.org>; Sun, 28 Aug 2022 04:20:27 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id c7so227534wrp.11
        for <linux-man@vger.kernel.org>; Sun, 28 Aug 2022 04:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=on+BEE0SxOWad+YJ6d74/k5MRUI8xfrWx1a4tnppaDk=;
        b=ajMqL7cmE85DMZerL36612ZBcrcsFrh5bvroHb3cAw4HWsEqooiC3NmQQuiYzqj7tw
         0UsP0rbpVuvIxutVuufkW26BLUrlWBKp3CgRrufXE0vpmCBIJljSBfpdlkmTi0qvV2jL
         x5I6Esx/Xggq/las5eWMKWhorABVGbIOSeVw3LhYKoAbHiZ2j6y6fRYhjc1v5HgxpKHn
         K0rLK5r4LOhyZVjZoo63poBq4+96THmkndvx7udP3DV3kskNr4PYrSbEcAkGjKoF0i/v
         2ST/TlvCKkWx6AURavgsXcCKvHCdNySp7+FcqaHKn270K/SKas84ABFxtBFI7r/oGW6X
         xSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=on+BEE0SxOWad+YJ6d74/k5MRUI8xfrWx1a4tnppaDk=;
        b=Z/SFDzvb0PidoNGuM1r0lsbCY8kNWymyOJ+WV7yDjlWk1I7cPFFGVqfqqHMxc73wkS
         86h8UP0L9NEy0JqJM998zkvyoDKkRywB6L04bYXxScbY9rYU0VrZIJWPU+W13OO+2bqE
         Cas2P1MTceXjOHwTGYEbBORVBNJ0VBl8LDhU/+Jz6dQ70+b5UvvYtlfbG4PKehpM/LRW
         zEBRvGCABvdYhvXho2dARztq3fvnjtP27HG8CFZj7rZXRVstga7FX2CEwwCpA1dUMGQX
         maVXUc7uFPVltq8JRW6qF+M8dCZq90WugtzB8d5RRpQ9F2mRkbvB5CMd8EYD1vLjj8Ck
         cZuA==
X-Gm-Message-State: ACgBeo2zTrapF29A+TMgSEl55fXdEtL5JUds3o6G1g4cGxUYgka+GWdT
        NqtZpjvVKlsnkM+Ttce8rHu3el5p07c=
X-Google-Smtp-Source: AA6agR6u8xfoO803NGZ+ucb+wIo8RjaMYX5XVCONOV1nGcAyKCXK/GpMhwhrYZ/3FaSe8pBXqVecCA==
X-Received: by 2002:a05:6000:2a3:b0:225:7cb8:1a77 with SMTP id l3-20020a05600002a300b002257cb81a77mr4051438wry.412.1661685625924;
        Sun, 28 Aug 2022 04:20:25 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p6-20020a1c5446000000b003a83fda1dc5sm3080574wmi.44.2022.08.28.04.20.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Aug 2022 04:20:25 -0700 (PDT)
Message-ID: <0121d378-bf04-b2de-f1d5-c0f254a3f8ef@gmail.com>
Date:   Sun, 28 Aug 2022 13:20:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] lint-man.mk: Use a pipeline instead of the groff(1)
 wrapper
Content-Language: en-US
To:     Ralph Corderoy <ralph@inputplus.co.uk>, groff@gnu.org
Cc:     linux-man@vger.kernel.org
References: <20220827190946.10128-1-alx.manpages@gmail.com>
 <20220828083627.430A51FB49@orac.inputplus.co.uk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220828083627.430A51FB49@orac.inputplus.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EO2oRcTarZnmPAISHPzNRuYB"
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
--------------EO2oRcTarZnmPAISHPzNRuYB
Content-Type: multipart/mixed; boundary="------------SK0JywqqFx6oIh0BCCO2K18e";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ralph Corderoy <ralph@inputplus.co.uk>, groff@gnu.org
Cc: linux-man@vger.kernel.org
Message-ID: <0121d378-bf04-b2de-f1d5-c0f254a3f8ef@gmail.com>
Subject: Re: [PATCH] lint-man.mk: Use a pipeline instead of the groff(1)
 wrapper
References: <20220827190946.10128-1-alx.manpages@gmail.com>
 <20220828083627.430A51FB49@orac.inputplus.co.uk>
In-Reply-To: <20220828083627.430A51FB49@orac.inputplus.co.uk>

--------------SK0JywqqFx6oIh0BCCO2K18e
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUmFscGgsDQoNCk9uIDgvMjgvMjIgMTA6MzYsIFJhbHBoIENvcmRlcm95IHdyb3RlOg0K
PiBIaSBBbGVqYW5kcm8sDQo+IA0KPj4gK0RFRkFVTFRfRVFORkxBR1MgOj0gLVR1dGY4DQo+
IC4uLg0KPj4gK0RFRkFVTFRfVFJPRkZGTEFHUyAgICs9IC1UdXRmOA0KPiANCj4gSSdkIGhh
dmUgYSB2YXJpYWJsZSBzZXQgdG8g4oCYdXRmOOKAmSB0byBlYXNlIGNoYW5naW5nIHRvIGFu
b3RoZXIgb3V0cHV0DQo+IGRldmljZS4NCg0KRG9uZTsgdGhhbmtzISAgQW5kIGFzIEkgc2Fp
ZCBpbiBhbm90aGVyIHRocmVhZCwgSSBjaGFuZ2VkIGl0IGJhY2sgdG8gDQphc2NpaSwgc2lu
Y2UgSSBub3RpY2VkIGEgcHJvYmxlbSB3aXRoIGJveGVkIHRhYmxlcyAoYWN0dWFsbHkgc2V2
ZXJhbCkuDQoNCkkgbm90aWNlZCBhbm90aGVyIGlzc3VlOiBmb3Igc29tZSByZWFzb24sIHRo
ZSBib3hlZCB0YWJsZXMgYXJlIGJlaW5nIA0KZ2VuZXJhdGVkIHdpZGVyIHRoYW4gdGhlIHRl
cm1pbmFsLCBleGFjdGx5IGJ5IG9uZSBjaGFyLiAgSWYgSSBzcGVjaWZ5IA0KLXJMTD04MCwg
dGhlIHJpZ2h0IGVkZ2Ugb2YgdGhlIGJveCBpcyBwbGFjZWQgYXQgY29sdW1uIDgxOyBpZiBJ
IHNwZWNpZnkgDQpMTCB0byBiZSA3MiwgdGhlIHJpZ2h0IGVkZ2Ugb2YgdGhlIGJveCBpcyBh
dCBjb2wgNzMuDQoNClNlZSB0aGUgZXhhbXBsZSBiZWxvdyAoSSB0d2Vha2VkIGl0IHRvIHVz
ZSA2NCBjaGFycyB0byBvdmVyY29tZSANClRodW5kZXJiaXJkIGlzc3Vlcyk6DQoNCg0KJCB0
YmwgbWFuMy9lcnIuMyBcDQogICB8IGVxbiAtVGFzY2lpIFwNCiAgIHwgdHJvZmYgLW1hbiAt
dCAtTSAuL2V0Yy9ncm9mZi90bWFjIC1tIGNoZWNrc3R5bGUgLXJDSEVDS1NUWUxFPTMgXA0K
ICAgICAgICAgICAtd3cgLVRhc2NpaSAtckxMPTY0biBcDQogICB8IGdyb3R0eSAtYyBcDQog
ICB8IGNvbCAtYiAteCBcDQogICB8ICghIGdyZXAgLW4gJy5cezY0XH0uJykNCjIxOiAgICAg
ICBub3JldHVybiB2b2lkIHZlcnIoaW50IGV2YWwsIGNvbnN0IGNoYXIgKmZtdCwgdmFfbGlz
dCBhcmdzKTsNCjIyOiAgICAgICBub3JldHVybiB2b2lkIHZlcnJ4KGludCBldmFsLCBjb25z
dCBjaGFyICpmbXQsIHZhX2xpc3QgYXJncyk7DQo1MTogICAgICAgKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tKw0KNTI6ICAgICAg
IHxJbnRlcmZhY2UgICAgICAgICAgICAgIHwgQXR0cmlidXRlICAgICB8IFZhbHVlICAgICAg
ICAgIHwNCjUzOiAgICAgICArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0t
LS0tKy0tLS0tLS0tLS0tLS0tLS0rDQo1NDogICAgICAgfGVycigpLCBlcnJ4KCksIHdhcm4o
KSwgfCBUaHJlYWQgc2FmZXR5IHwgTVQtU2FmZSBsb2NhbGUgfA0KNTU6ICAgICAgIHx3YXJu
eCgpLCB2ZXJyKCksICAgICAgIHwgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgIHwN
CjU2OiAgICAgICB8dmVycngoKSwgdndhcm4oKSwgICAgICB8ICAgICAgICAgICAgICAgfCAg
ICAgICAgICAgICAgICB8DQo1NzogICAgICAgfHZ3YXJueCgpICAgICAgICAgICAgICAgfCAg
ICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgfA0KNTg6ICAgICAgICstLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLSsNCg0KDQpE
byB5b3Uga25vdyBob3cgSSBjYW4gZml4IHRoYXQ/DQoNCg0KPiANCj4+IC0JJChHUk9GRikg
JChHUk9GRkZMQUdTKSAkPCBcDQo+PiArCSQoVEJMKSA8JDwgXA0KPiANCj4gWW91J3ZlIGRp
dGNoZWQgcGFzc2luZyB0aGUgZmlsZW5hbWUsIGluc3RlYWQgdXNpbmcgc3RhbmRhcmQgaW5w
dXQuDQo+IFRoaXMgcHJldmVudHMgdGhlIGZpbGVuYW1lIGJlaW5nIHBhc3NlZCB0aHJvdWdo
IHRoZSBwaXBlbGluZSB3aGljaCB3aWxsDQo+IHByZXN1bWFibHkgcmVzdWx0IGluIHBvb3Jl
ciBtZXNzYWdlcy4NCj4gDQo+ICAgICAgJCB0YmwgL2V0Yy9wYXNzd2QgfCBncmVwICdeXC4n
DQo+ICAgICAgLmlmICFcbiguZyAuYWIgR05VIHRibCByZXF1aXJlcyBHTlUgdHJvZmYuDQo+
ICAgICAgLmlmICFkVFMgLmRzIFRTDQo+ICAgICAgLmlmICFkVEUgLmRzIFRFDQo+ICAg4oaS
ICAubGYgMSAvZXRjL3Bhc3N3ZA0KPiAgICAgICQNCj4gDQoNCkZpeGVkIHRvby4NCg0KQ2hl
ZXJzLA0KDQpBbGV4DQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------SK0JywqqFx6oIh0BCCO2K18e--

--------------EO2oRcTarZnmPAISHPzNRuYB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMLT3EACgkQnowa+77/
2zK72g/+NPE4oqG/RO0flhj9pt3n9Jwgo1ajPxXkGQD6e15VmbtFGo2j8G/j4WRQ
sMHa5xGqIEEnaZtasArR2iSb1NN0Kg8cS0en3pgGIPruU+CJxyhaKs7kTc9ekpJh
uDImIzDs2JcqN2NxcjOZrgXtj9Exr8Ug4aNGvfnWu15bmPyooJxZFzJWru9AWmCt
I+Wz8Xq0PGVYpXXcOeetRDBzqsO9fNeGmkpaVzf726ShaP9IuFdrR9LeVhqALUsx
L8mNEoc3qPok6/ma6zj63eTaIRSgFQBjOZc8rUiwYavo7NNFkToZ55RVNMZ07GHd
IZCR3qNzTTsO2piM7OxZDeeH1W+VTDeUV+XEvByAUYt6Eco0THy0jXe9Drwu6ju3
fVGZ/g//Belp+n0U0//hyMfJ7dZLXmgF9SlCmo1tKWN7GevHBXAlw8y6REcKlRbQ
PAjgwFDCq1yNCHrU14+GTN6ZGv3NQNJAi8yxucC0S8Lg9SSlkDxB/RD7qDCDeX0i
CW3yiTEcBQBXyaOXy2DQNebpdWDZ+mrXD/+xTLm7P4gVAoymai6xXODoX9vu3J/1
xp2hyK7A95mmNEPs6TScx7CZ0j1A510GbGLaw5ZGkexBHE/zoMdNsZnugfq3ayZb
fr1O660bCIASuAVaPuZdmP/vc6kCRetkCMjbmQPAxL3ZpcPXfJ0=
=omv0
-----END PGP SIGNATURE-----

--------------EO2oRcTarZnmPAISHPzNRuYB--
