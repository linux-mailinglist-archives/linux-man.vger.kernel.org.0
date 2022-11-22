Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D5E36348A9
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 21:44:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234383AbiKVUoE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 15:44:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235177AbiKVUnb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 15:43:31 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C76FEC695F
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 12:41:04 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5so11675678wmo.1
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 12:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NVJCKrbXDTmlhV2hFPg5r+7pYFTzX9N2KsXW77H2Mfo=;
        b=gpX65Ja8p2Eq58PbM2h9wMi1jrhfpsV+hwGS8e8zeD4IY1DR46llNHWMJ1HdJTPWC4
         ldcMi16JG7UZoK4dpSgW55ENUC8n18liDGP6O6RSuSw+1g/xCup2Wcl7aIess7+KWkso
         so/SDOBLZQIAj/NzV9PnE5EME4VHMJK25JVO1iHh3ws3d0LrZnrxssvw3ehhs9pSN5Gm
         TApBZHqKkm4MM2kMWcsl14kl1uxoHiWEO+Ain9sNE1vJfY8GoYqy6njmKiMRtf5AGi7w
         qlJ9hKTtvIkVmRqDtmGr4SOvw4rDG/DfLCgVbcKdnZtICsdyNEt8fj0TT0iKXfT91scM
         n97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NVJCKrbXDTmlhV2hFPg5r+7pYFTzX9N2KsXW77H2Mfo=;
        b=eYfTOxhlvN3g9PCI9FsT7Pv7HYW0oMKUelzohyv0qUnaBq+X663WFfO+Hhz2Efqr5Z
         HjltBIsKZ+6slBXaZuC/a9Z5sSKeDp0m3Uh6jpNG/KOZN93fT3UuyyaYNb2pv2uEdNjX
         hY+SU819yf2ZXKfq8150RNbCfNFZx2oZQ7g3hs3S7bL+TZpgJrCFggouR5jDZ3G1hoXb
         a4UyE3Eb+f5RkX7/o2XNl788A29ZHfG1H5MWYDpw83OBjyRYX6jZAQLbj+RKYI0+eaQk
         zxae+UpWG3c0PjupA4gylm+OCQhbGmDz/VFihaQn6LNkvMs4yI152NiI8ZPIZnlP8G99
         L1tA==
X-Gm-Message-State: ANoB5pmN4AgViMUMEAWwtP2eftTVYYoIuIOV/quO69Byge49UaxMCs94
        DSkSNrhl/SP1eRbmfykUIOdCKRVHpDw=
X-Google-Smtp-Source: AA0mqf7aFSa8vKHy0NRuqpcSoHNBXJ2/mxjnGj8guTeSm1rLT4P1Tm5s3qCer6HjsyhacvokB5zD0w==
X-Received: by 2002:a05:600c:3421:b0:3cf:ac8a:d43e with SMTP id y33-20020a05600c342100b003cfac8ad43emr6701613wmp.65.1669149663332;
        Tue, 22 Nov 2022 12:41:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p2-20020a1c7402000000b003cfe6fd7c60sm18005831wmc.8.2022.11.22.12.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 12:41:02 -0800 (PST)
Message-ID: <708c2489-4f10-db52-bd49-dba0d3a79238@gmail.com>
Date:   Tue, 22 Nov 2022 21:41:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Garbled text in zic(8) man page
Content-Language: en-US
To:     Jonathan Wakely <jwakely@redhat.com>
Cc:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
 <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
 <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
 <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
 <CACb0b4kUmseTdKE-xLRy8KGgtHU011qdYnEWEBfXwsySLJYFWA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACb0b4kUmseTdKE-xLRy8KGgtHU011qdYnEWEBfXwsySLJYFWA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Kacax18coWTr2fpOYa38qVIm"
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
--------------Kacax18coWTr2fpOYa38qVIm
Content-Type: multipart/mixed; boundary="------------S06ChKXObu2NtMldLnNQT3xq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <708c2489-4f10-db52-bd49-dba0d3a79238@gmail.com>
Subject: Re: Garbled text in zic(8) man page
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
 <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
 <CACb0b4kD50c35XYZVX9OKgJ6n6-fPk2_Jo+-yvOOeiE1XVpVBQ@mail.gmail.com>
 <9bd0af40-a7b3-cb16-27e8-c39c620acda3@gmail.com>
 <CACb0b4kUmseTdKE-xLRy8KGgtHU011qdYnEWEBfXwsySLJYFWA@mail.gmail.com>
In-Reply-To: <CACb0b4kUmseTdKE-xLRy8KGgtHU011qdYnEWEBfXwsySLJYFWA@mail.gmail.com>

--------------S06ChKXObu2NtMldLnNQT3xq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9uYXRoYW4sIFBhdWwsDQoNCk9uIDExLzIyLzIyIDIxOjM5LCBKb25hdGhhbiBXYWtl
bHkgd3JvdGU6DQo+Pj4gVXBzdHJlYW0gaXMgaHR0cHM6Ly93d3cuaWFuYS5vcmcvdGltZS16
b25lcw0KPj4NCj4+IEFoaCwgSSByZW1lbWJlciBsYXN0IHRpbWUgSSB3YW50ZWQgdG8gY2hl
Y2sgdGhlIHNvdXJjZSBjb2RlIEkgZGVzaXN0ZWQgYmVjYXVzZQ0KPj4gdGhlcmUncyBubyBn
aXQgcmVwb3NpdG9yeSwgYW5kIEkgZGlkbid0IHdhbnQgdG8gYmUgbWVzc2luZyB3aXRoIHRh
cmJhbGxzLiAgQnV0DQo+PiBnZXR0aW5nIHRoZSBwYWdlcyBmcm9tIHRoZSB0YXJiYWxsIHNl
ZW1zIGVhc3ksIHNvIEknbGwgZG8gdGhhdC4NCj4+DQo+PiBQYXVsLCBkbyB5b3UgaGF2ZSBh
IHB1YmxpYyBnaXQgKG9yIHdoYXRldmVyKSByZXBvc2l0b3J5IHRoYXQgSSBjYW4gY2hlY2sg
b3V0Pw0KPiANCj4gDQo+IEl0IGxvb2tzIGxpa2UgdGhlcmUgYXJlIGEgZmV3IGxvY2FsIGNo
YW5nZXMgc3VjaCBhcyByZXBsYWNpbmcNCj4gImRlZ3JlZXMiIHdpdGggdGhlIGRlZ3JlZXMg
c3ltYm9sLCB3aGljaCBzaG91bGQgcHJvYmFibHkgYmUgcHJlc2VydmVkDQo+IHJhdGhlciB0
aGFuIG92ZXJ3cml0dGVuIGJ5IGEgc3luYy4gU28gaXQncyBub3QganVzdCBhcyBzaW1wbGUg
YXMNCj4gb3ZlcndyaXRpbmcgd2l0aCB0aGUgdXBzdHJlYW0gY29weS4gSSBjYW4gdHJ5IHRv
IGxvb2sgaW50byBpdCwgYnV0IGl0DQo+IHdvbid0IGJlIHZlcnkgc29vbi4NCg0KWWVzLCB0
aGF0J3Mgd2h5IEkgd2FudGVkIHRvIGdldCB0aGUgdXBzdHJlYW0gZ2l0IHJlcG8gdGhlIG90
aGVyIHRpbWUuICBQYXVsLCBJIA0KaGF2ZSBhIGZldyBmaXhlcyBmb3IgdGhlIHVwc3RyZWFt
IHBhZ2VzIHRoYXQgSSdtIGludGVyZXN0ZWQgaW4gc2VuZGluZyB5b3UuICBBIA0KZ2l0IHJl
cG8gd291bGQgYmUgbmljZSA6KQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------S06ChKXObu2NtMldLnNQT3xq--

--------------Kacax18coWTr2fpOYa38qVIm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN9M90ACgkQnowa+77/
2zIllxAAiGGjupFewFqLD3XQoXEcYeFcla3lGj1YBzEd7b7MZ8zwf6+xpqfPZ2LW
P7s1BCDbpaXHqKwV0eJ4sY3pkHROhAELT9I4Zisx0/I4PJwhaQLnrIK92Tq4UGhS
NoFr6ivY7wb4FPNmzfF1tME/uhO9Uz3Qgmyf8Yo1DYC4UdFnPuNLCnM89lvPbGtI
ns6uUIFfsSd7lIXMero0cRKYjLxYro66j7MHzjZEaE9AMlfh2BmoeOgIRYBozlal
/AQ2XcZsRdfWo/OFcL+OHIAYlyePOj5MqJ5q70ZE9oIRVNylAQMbIlI8cCiyZoui
zIavPc61XRM32WnN/B3eiQUUsqcqT3CyK3BjJQllt7CCBvizf8Ss/gntwIV8HwpL
OJ70FyvXXx/SPjhslrMEKGFiQJy7qk4Z/K55WlKxi5UteeiqEz+H2OTeXGOcP9mQ
iiPm1PNnB/xmNI/BeGptvpPAJrdJzMRMYhOJ65jzxVBxiLD6lP5U25/K9YAjEyMW
lGxLoW9PjKp6+nA4EjT2LjPS8SziGIvhqnPCSeQBjQkC9dlANeqtqlfQUsFZgBGi
fr8zNiP0dE/N3gFJVnSwZPoCvzKBN00l9je/DQLvwGcS2H9lQXfuCYlaRsUp/5Dn
kDlUXd6h/DSZ4m8ChhjFHeVby3sKiaN2g8ihzugnjfBtIDczLNc=
=POIG
-----END PGP SIGNATURE-----

--------------Kacax18coWTr2fpOYa38qVIm--
