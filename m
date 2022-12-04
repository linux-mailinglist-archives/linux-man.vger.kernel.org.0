Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72A73641FB8
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 22:02:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230336AbiLDVCq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 16:02:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbiLDVCo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 16:02:44 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1D0255AA
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 13:02:42 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id u12so14953641wrr.11
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 13:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ketlaUgdLfdxTu1VYWB7eqwHz2YJgT9xQVclBUHBaQ=;
        b=DsneaEcfO3Vz/MzWXFRSe2zi7u5Z7DX1iMmEnFs3n3xLsZov8NfNfv0ymArrVM5B0C
         Z0gleI2LErDhg9UdsgzdvSSpVDYBapW0bBJNzNHFAwWiRyjcigOQkq/C3hrD4MCSnRC8
         wtHzUfPHrxgiMwVq8lYAnBcbVZfnpwJ7KK3dvCrsQYvxtcEstbrzaF8cafAr2jq436mB
         w2AnR61Z+PvI1WUVhoDYDJAQBpXl9+WwOm9AYggp12+irjqWnGbj2Ndn3zliYOQmCXnX
         jMqJWAzpK2dlQSaOcmR4RS+VlLwGz04/l1SmFEs2ctgmvk+XJw2ls+la9LHfb2WZFOYC
         SeFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6ketlaUgdLfdxTu1VYWB7eqwHz2YJgT9xQVclBUHBaQ=;
        b=1z+E9OvO3xdltkNF4WBqhE+9D24BIr5Cf0Q1edU0DMykzabwIyyRWJv9VUdYqsL9TU
         BDhAofR2T3/nui+jydp/fGgCSJ5KRroPwVv3ABGUBlXSgRn/i4WLNZZ3G2to3G/YMUL/
         c9EqZ6HMaMICOq76j6TfQKwxwS5qIHH/wIAKu/CT7AqcdrTBZSgDbImMlpQD6PwPr7kI
         T64LdH5tfXZ0mruCWPrvU8wgQj6Gi4Gvnnw5LUbhKlXpqaOLa+N9q1+RH79oJ1yoLXDS
         j3B34CT16z0rkIRbziZ1L6DjzUDgjFP1Hq+gDK9CLfGo8Cnx1Vbx7RcV+dgR9gQtI69v
         OPQQ==
X-Gm-Message-State: ANoB5plCIB+MRB5Sr+AM9fBcHZLYA8MzsufkI8zYuEurbjUlMEO8GDqs
        QHt/02hqy60TPml5YrI5qA4=
X-Google-Smtp-Source: AA0mqf6A6BWrgVS10BYymvHolsBS2wE6pr2fxp4ZAvMHp/gtj2qUc9OUNJgyYVCvkEUr17OFgAw2sw==
X-Received: by 2002:a5d:55c9:0:b0:242:1057:40b8 with SMTP id i9-20020a5d55c9000000b00242105740b8mr21966433wrw.182.1670187761481;
        Sun, 04 Dec 2022 13:02:41 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b13-20020a05600c4e0d00b003d01b84e9b2sm3288742wmq.27.2022.12.04.13.02.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 13:02:41 -0800 (PST)
Message-ID: <deb8a354-061d-830e-c30c-52a19377570f@gmail.com>
Date:   Sun, 4 Dec 2022 22:02:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page filesystems.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090709.GA32662@Debian-50-lenny-64-minimal>
 <bb033e53-d8d7-dc26-72cd-012066047d0a@gmail.com>
 <20221204135227.GB441@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204135227.GB441@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oM5bn09xLi8MzNCenx1n37Cp"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oM5bn09xLi8MzNCenx1n37Cp
Content-Type: multipart/mixed; boundary="------------EodEK9wDemvA1Om0BEwRmciM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <deb8a354-061d-830e-c30c-52a19377570f@gmail.com>
Subject: Re: Issue in man page filesystems.5
References: <20221204090709.GA32662@Debian-50-lenny-64-minimal>
 <bb033e53-d8d7-dc26-72cd-012066047d0a@gmail.com>
 <20221204135227.GB441@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204135227.GB441@Debian-50-lenny-64-minimal>

--------------EodEK9wDemvA1Om0BEwRmciM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTQ6NTIsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IEhlbGxv
IEFsZWphbmRybywNCj4gT24gU3VuLCBEZWMgMDQsIDIwMjIgYXQgMTI6Mzk6MTZQTSArMDEw
MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi80LzIyIDEwOjA3LCBIZWxn
ZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xs
b3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6ICAgIFdpbmRvd3MgZm9yIFdvcmtn
cm91cHMgb3V0ZGF0ZWQ/IDE4IFllYXJzIGFnbyENCj4+Pg0KPj4+ICJpcyBhIG5ldHdvcmsg
ZmlsZXN5c3RlbSB0aGF0IHN1cHBvcnRzIHRoZSBTTUIgcHJvdG9jb2wsIHVzZWQgYnkgV2lu
ZG93cyBmb3IiDQo+Pj4gIldvcmtncm91cHMsIFdpbmRvd3MgTlQsIGFuZCBMYW4gTWFuYWdl
ci4gIFNlZSBFPC5VUiBodHRwczovL3d3dy5zYW1iYS5vcmdcXDovIg0KPj4+ICJzYW1iYVxc
Oi9zbWJmcy8+IEU8LlVFIC4+Ig0KPj4NCj4+IEkgbmV2ZXIgdXNlZCAnc21iJyBzbyBwbGVh
c2Ugc3VnZ2VzdCB3aGF0IGFyZSBub3dhZGF5cyB1c2VzIG9mIHRoZSBmaWxlDQo+PiBzeXN0
ZW0gdG8gcmVwbGFjZSB0aGUgb2xkIHRleHQuDQo+IA0KPiBQZXJzb25hbGx5LCBJIHRoaW5r
IHRoZSB0ZXh0IGlzIGZpbmUsIEkgZG9uJ3Qga25vdyB3aHkgdGhlIHRyYW5zbGF0b3INCj4g
bWFya2VkIHRoaXMuIFlvdSBqdXN0IG1pZ2h0IHVzZSB0aGUgcGFzdCBmb3JtOg0KPiANCj4g
dXNlZCBieSDihpIgd2hpY2ggd2FzIHVzZWQgYnkNCg0KSSdsbCBsZWF2ZSBpdCBpbiBwcmVz
ZW50LCBzbyB0aGF0IGFueW9uZSB0aGF0IHNlZXMgaXQgZmVlbHMgdGhlIG5lZWQgdG8gd3Jp
dGUgDQpzb21lIG1vcmUgdXAtdG8tZGF0ZSB1c2VzLiA6KQ0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KPiANCj4gR3JlZXRpbmdzDQo+IA0KPiAgICAgICAgICAgIEhlbGdlDQo+IA0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------EodEK9wDemvA1Om0BEwRmciM--

--------------oM5bn09xLi8MzNCenx1n37Cp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONCu8ACgkQnowa+77/
2zKsYw/+Mcbt9LsydElUJDlkRgxlsubW2KYqGUZdywpAMhZ4TsO+mHpJaEO7z1n5
s2xLpvlWf6pMoiuOkDl1a5/QZK74Orwr8Vrehf+J1fk20iYIGF8+h2G9XFWtVDq4
G7WT1So/xasenVnAqRK+3aC1vRnZ1xo1qWNxOKo7Q5C2fXAXhLArRLUwJ3d6+5y7
iAsbyyu8i9mizp/Cf40ae9MK0M+6BCLL8jFTenSNBKKznwsiQD9Zjw/5MuwknZY0
IuGnFkHnKlmsLXRjtGZM1sgs6cORfBLvI44IjPDO0VJ0RZCLj68CUjEeYHF3MLs8
rAaJzpUmo1cv3nWNSTgY98V/bVuYTG62V8Pap4seADptC2yLdAjjEH2Byh/vWI2K
QVOoJuyLgwWzKDQBtXV8jKsDmV+8PyaIFZ1DlN99n5Tk7SxJv0q/lrmN0Nao+rOm
UfesFKsYzhITMG5EwUBnQ7sM5UcTWeMNnoY0lNorSac6tyQ8xxK6uYxa6LZkBi+D
zp1+yBzqgERLei9AXBBEeq5iredzPVmLe2VolSwUGy1wad8uKJK8XDIQPtCvbJcP
OqVEmD3pgGNpN1U9grd6YwezMazxPTpSfNJekh3ES/JLxJL16hFbtCLxao9fQlyU
p+v5Cgq+EBduZa8ClfTht+anZ1Ih08OfRn/SDWgC7Ut4xN/xBTo=
=LWZ9
-----END PGP SIGNATURE-----

--------------oM5bn09xLi8MzNCenx1n37Cp--
