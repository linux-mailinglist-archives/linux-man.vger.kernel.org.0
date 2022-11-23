Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C7706362F9
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 16:12:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236495AbiKWPML (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 10:12:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238185AbiKWPMI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 10:12:08 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90E41DFC1
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 07:12:04 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id cl5so29858725wrb.9
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 07:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zQpdYQqtSsKtYUtRbAS2D9mjNDouvn+1R1r6tf3Owfk=;
        b=ewMqi3eAni2L1Rzq2uVBOF0vi7810gHsUIRzNG2cIePbLtwuKrlzgoUz1mupOqHGoG
         JdTTdCv4w5m0fjwOpZeoBpn57dO1IPzCl4NfQ10gkgzmpzNEPIhZOpkNBCNwIdO/5Mrt
         pJ94hFyjx5SrLDhfoLj3sot9bPY3Xen62KOA+hTN5i5R8e+IQszgeVTxYITYOl9133s1
         +iRlof91BKtAkOfHhGlHRg4oGQj7qR3gEzoMcaentccf63jOcvi3Mf5uCV+8tUZ2e0Wn
         7uF6C7rj20iCGx/1UdyP7Dz7/8zB3XrIu2gZQzLrJgVXUZ0PBGfZSbl/9yRvEiXZREKU
         Dy5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zQpdYQqtSsKtYUtRbAS2D9mjNDouvn+1R1r6tf3Owfk=;
        b=vMeeIY8xYeufjfosKGzRVPklrBAprvVFLVAL9ZfzjNZJfwhWQshSc29PyskzOPTDRu
         eYuH+86/ou9AI0HHfWKLYRDOwIGB4df+4GCIt0eedFJvG6F65LaJERzbV5udf7As4hfo
         lof07VZg3wbQPu8ouMAbBbrkwN8LZCwo1EePQi0NKek81e+1atTZs/2/OSt7RZP+INNZ
         ZfJZXm/5+ZPSJtrfVP8OXSzz+iLAPWJ/gLhjMRNLbB0OzreIPQY6JcApQBtH7zsBVeVV
         vYceZwKran4XHK1Oj2B71ZkVJzluUigCCbMzkBTVfjRS91O5beeYyG1JIUWZUkL/EpnO
         GDhw==
X-Gm-Message-State: ANoB5pkGNnkRF6byFLRfetAU8ugX8QLXVc4W7BZY3uBg9N/xDOkb8UJ+
        MyWAOvU0BXSUL+TnZFf02Dk=
X-Google-Smtp-Source: AA0mqf4ZADnELgpRDkklHq9uw4OPB2sWGPPXJuVn/nIL/zVmqwE/jEIgLc1f43w3HvJ/FE2W3OZcFg==
X-Received: by 2002:adf:e48e:0:b0:241:50fa:f724 with SMTP id i14-20020adfe48e000000b0024150faf724mr6524068wrm.146.1669216322993;
        Wed, 23 Nov 2022 07:12:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y3-20020adfee03000000b002365254ea42sm16927391wrn.1.2022.11.23.07.12.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 07:12:02 -0800 (PST)
Message-ID: <6f103241-3703-bffb-8671-225612891e19@gmail.com>
Date:   Wed, 23 Nov 2022 16:11:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [musl] Re: [PATCH] memmem.3: Added list of known systems where
 this is available
Content-Language: en-US
To:     noloader@gmail.com, musl@lists.openwall.com
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        Guillem Jover <guillem@hadrons.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>,
        Brian Inglis <Brian.Inglis@systematicsw.ab.ca>,
        Rich Felker <dalias@libc.org>
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
 <Y31XOPOsB932l0cd@thunder.hadrons.org>
 <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com>
 <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
 <CAH8yC8=TWk=umVZ-mt29wzQe7xGMXYQ7cZ0rgCG88Dn3x7QLNA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAH8yC8=TWk=umVZ-mt29wzQe7xGMXYQ7cZ0rgCG88Dn3x7QLNA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ex2BOT3D3lsSXmjkU3cVOsaj"
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
--------------Ex2BOT3D3lsSXmjkU3cVOsaj
Content-Type: multipart/mixed; boundary="------------0NTyWHLtcS20W0gfENcYBFEr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: noloader@gmail.com, musl@lists.openwall.com
Cc: Stefan Puiu <stefan.puiu@gmail.com>, Guillem Jover <guillem@hadrons.org>,
 Andrew Clayton <andrew@digital-domain.net>, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>, Alejandro Colomar
 <alx@kernel.org>, Brian Inglis <Brian.Inglis@systematicsw.ab.ca>,
 Rich Felker <dalias@libc.org>
Message-ID: <6f103241-3703-bffb-8671-225612891e19@gmail.com>
Subject: Re: [musl] Re: [PATCH] memmem.3: Added list of known systems where
 this is available
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
 <Y31XOPOsB932l0cd@thunder.hadrons.org>
 <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com>
 <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
 <CAH8yC8=TWk=umVZ-mt29wzQe7xGMXYQ7cZ0rgCG88Dn3x7QLNA@mail.gmail.com>
In-Reply-To: <CAH8yC8=TWk=umVZ-mt29wzQe7xGMXYQ7cZ0rgCG88Dn3x7QLNA@mail.gmail.com>

--------------0NTyWHLtcS20W0gfENcYBFEr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmVmZnJleSwNCg0KT24gMTEvMjMvMjIgMTU6NTUsIEplZmZyZXkgV2FsdG9uIHdyb3Rl
Og0KPiBPbiBXZWQsIE5vdiAyMywgMjAyMiBhdCA5OjI5IEFNIEFsZWphbmRybyBDb2xvbWFy
DQo+IDxhbHgubWFucGFnZXNAZ21haWwuY29tPiB3cm90ZToNCj4+ICAgLi4uDQo+Pj4+IElu
IGFueSBjYXNlIEkgYWxzbyBmaW5kIGl0IHVzZWZ1bCB0byBoYXZlIHRoaXMga2luZCBvZiBw
b3J0YWJpbGl0eQ0KPj4+PiBpbmZvcm1hdGlvbiB3aGVuIGRlY2lkaW5nIHdoYXQgdG8gdXNl
IGluIGNvZGUuDQo+Pg0KPj4gQW5kIEkgbXVzdCBhZG1pdCBpdCdzIGFsc28gdXNlZnVsIHRv
IG1lICh0aGlzIGFsbCBzdGFydGVkIGJlY2F1c2UgQW5kcmV3IGFuZCBJDQo+PiBoYWQgdG8g
dXNlIG1lbW1lbSgzKSBhdCBhIHByb2plY3Qgd2hlcmUgbWFjT1MgY29tcGF0aWJpbGl0eSBp
cyByZWxldmFudCAtLW5vdA0KPj4gY3JpdGljYWwsIGJ1dCByZWxldmFudC0tKS4NCj4gDQo+
IElmIHlvdSBhcmUgYSBkaWUtaGFyZCBmcmVlIHNvZnR3YXJlIHBlcnNvbiB1c2luZyBHTlUg
Z2VhciwgdGhlbiBHbnVsaWINCj4gcHJvdmlkZXMgbWVtbWVtLiBUaGVyZSdzIG5vIG5lZWQg
dG8gd29ycnkgYWJvdXQgYXZhaWxhYmlsaXR5IG9yDQo+IHBvcnRhYmlsaXR5IGNvdXJ0ZXN5
IG9mIEdudWxpYi4gU2VlDQo+IGh0dHBzOi8vd3d3LmdudS5vcmcvc29mdHdhcmUvZ251bGli
L21hbnVhbC9odG1sX25vZGUvbWVtbWVtLmh0bWwgLg0KDQpUaGFua3MhDQoNCkhvd2V2ZXIs
IGZvciB0aGlzIHByb2plY3QgSSB3YXMgdGFsa2luZyBhYm91dCwgaXQncyBub3QgYW4gb3B0
aW9uOyBzdWNoIGEgDQpkZXBlbmRlbmN5IHdvdWxkIG5vdCBiZSBhY2NlcHRlZC4NCg0KQlRX
LCBwZXJzb25hbGx5LCBJIGFsd2F5cyBmb3VuZCB2ZXJ5IGNvbmZ1c2luZyB0aGUgdXNhZ2Ug
b2YgR251bGliIGNvbXBhcmVkIHRvIA0Kbm9ybWFsIHBhY2thZ2VkIGxpYnJhcmllcy4gIE1h
eWJlIGl0J3MganVzdCBtZTsgZG9uJ3Qga25vdy4gIEl0IGFsc28gZm9yY2VzIHlvdSANCnRv
IHVzZSBHTlUgYXV0b3Rvb2xzLCB3aGljaCBJIGRvbid0IGxpa2UgYXQgYWxsLiAgSSBwcmVm
ZXIgdGhlIGFwcHJvYWNoIG9mIA0KbGliYnNkLCB3aGljaCBqdXN0IHByb3ZpZGVzIGEgY291
cGxlIG9mIHBjKDUpIGZpbGVzIHRvIGFsbG93IHVzaW5nIGFzIGEgbGlicmFyeSANCm9yIGFz
IGFuIG92ZXJsYXkgb3ZlciB0aGUgc3lzdGVtIGxpYmMsIGFuZCBhZnRlciB0aGF0IHlvdSdy
ZSBmaW5lIHdpdGggd2hhdGV2ZXIgDQpidWlsZCBzeXN0ZW0geW91IHByZWZlci4gIEkga25v
dyBpdCBoYXMgc29tZSBpc3N1ZXMsIHN1Y2ggYXMgDQo8aHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2xpYmJzZC9saWJic2QvLS9pc3N1ZXMvNT4sIHdoaWNoIG1heSBiZSB0aGUg
DQpyZWFzb24gR251bGliIHdvcmtzIHRoYXQgd2F5LCBJIGRvbid0IGtub3cuDQoNCkd1aWxs
ZW0sIGRvIHlvdSB0aGluayB0aGF0IGlzc3VlIHdpdGggbGliYnNkIGFuZCA8cXVldWUuaD4g
Y2FuIGJlIGZpeGVkPyAgT3IgaXMgDQppdCBhbiBpbmhlcmVudCBpc3N1ZSBvZiB0aGUgd2F5
IHRoZSBvdmVybGF5IHdvcmtzPyAgTWF5YmUgaXQgd291bGQgYmUgDQppbnRlcmVzdGluZyB0
byBmaXggaXQsIGFzIGEgcHJvb2Ygb2YgY29uY2VwdCB0aGF0IHNvbWV0aGluZyBsaWtlIEdu
dWxpYiBjb3VsZCBiZSANCmltcGxlbWVudGVkIGluIHRoYXQgd2F5Lg0KDQpDaGVlcnMsDQoN
CkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------0NTyWHLtcS20W0gfENcYBFEr--

--------------Ex2BOT3D3lsSXmjkU3cVOsaj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN+ODEACgkQnowa+77/
2zII1BAAozm24L8nCE2J3TBnKgYBc5ZZu23fETEoKhSN/Bf9bhVNCur/LiO0cAnh
V+ghD9FdbLZlfTOn2TqkhVbAp4tQeqrPxYrRJQ88tZjsqTT5MJWz/21MDnpBdDQv
1kJQUjGVnqaQ9ZRtfkYMTQoAbLAZaTsYrijFHv65ZjKyOsqis731v6cAE9UnZS5g
4Yk+1HjlBCdsF8tNgJyUom/6pE96iWCfLDeflFoDOTQvIePqOgPK0qGuLXfiOAac
Hh3TW5NvKBqIgLrJEEV9sQ+Z1M/WIkbLEocJXHIA7GCedyZTDK0LXi0ZRilx9Kvi
2v1x9nHhXL2jzxE5KYVLDCTTGAIuu10PBJ0UUPOmEgq7OSSeU7HaBi0ltk6PFqvT
W+FJsvyrAq55ZjEStSir0obdkKOuckdwt9q0k9LFnfhR5pNAyZge/0iHvVF7z82t
fu1/Esofr5njW1ys/H5SIW0/AabPqLXb+ZRTEWwDRSfQxOZDcEJNo2lLPWTjals4
ZC72pwooK/xiy+C+rZKl8bnNona4cfdys2x+CXeR+lvowz8U7IjqltpW9Ia9oAf/
LpprYU8oSCUjweBkU4uI4HvuQrqcV3JkMms/FS4Ok8064MR2w223nT0yYUbTvbDe
1dflIfBc4GVn0vSZ6MupKnYhm76lMU3j1EuhP1bbRECETLUvN34=
=NYAr
-----END PGP SIGNATURE-----

--------------Ex2BOT3D3lsSXmjkU3cVOsaj--
