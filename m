Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0C0F60D165
	for <lists+linux-man@lfdr.de>; Tue, 25 Oct 2022 18:14:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233131AbiJYQOD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Oct 2022 12:14:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233146AbiJYQN6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Oct 2022 12:13:58 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27951F9731
        for <linux-man@vger.kernel.org>; Tue, 25 Oct 2022 09:13:57 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id bg9-20020a05600c3c8900b003bf249616b0so8614749wmb.3
        for <linux-man@vger.kernel.org>; Tue, 25 Oct 2022 09:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujPCV+Z75eiCT3aE7zlGroeWCO31wHkG6tbpHlKRFsw=;
        b=D07scDGfq5E38Hb3PM1kscs0yXXT2zuAkTC8067DKjF/MeKJoJLDp3vK3YmOTgCE3R
         +bhrO0n37XRVSjpDpj5c2yvZf+LUdCmh3PUgJfMW9v3ktJ+5fMnu6OpJX/1N9q5dLTIk
         b+/HsVxFAeT1Kj2xRH1q5jyv9ADWGudiz+OO86kEr2P/aQ25xkcNRMjB+7/5OufaFcYR
         ftlZF/kgHJ7PEo+Zqn0RiBifPOeB2/aUEOtiWdpKWzTMCPumaumHDxb4Oh2OzTBeGjJX
         8OZ076a9UPKKD9Q8GfzjzQnb8h/Ij+djAEU+/zn03Q+I37mg3I99Yu16ZYnzMki/K2hJ
         GWdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ujPCV+Z75eiCT3aE7zlGroeWCO31wHkG6tbpHlKRFsw=;
        b=33us6dA6KdlOPIiGQwGmt/Hs8KpCEodbiqPryqxpIYNoC2Jl0O2kTccjH4TphvcbKF
         bS4xMZCoL1tof/RgBzBAJJ0WM6ATVr5idTSO7tMLAnmgl37o+TyJsIAFvx1fLTg1Nemn
         VocZbUi0e1hQpRM7DeqLWXJzmGJP3qXbX+3yJ+YZe66kceePbfpOAOvHspXxwn/X/44J
         Ck3NPKKox7I2ro3TXNFML/rI0ZTKyD70O5dcd1EHnvogADZtGQQOieSo4j3jgAGbdK42
         kr4LkhmWBtPNaI8nUPAaa7/Fv0QhW+moJwlFEHY+0YhE/s79on5QiMWvlfa6MSpi9JlX
         DnHg==
X-Gm-Message-State: ACrzQf2iy4p4r7aTM2s1+/qtpJrw92L5QtFSHMk8fe6BMa6fq68wv1Wv
        7A49PLTyMeS1Y9PUBsoMaK8=
X-Google-Smtp-Source: AMsMyM4XoNBOIFnj6DmcRH6SXJHb17tpvnFA5c/iY/aHji/nJB7ZAQScdED9VZhHAEk6djLruKpdgA==
X-Received: by 2002:a05:600c:5388:b0:3c5:4c1:a1f6 with SMTP id hg8-20020a05600c538800b003c504c1a1f6mr26785507wmb.11.1666714435633;
        Tue, 25 Oct 2022 09:13:55 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i17-20020adfded1000000b002364835caacsm3102869wrn.112.2022.10.25.09.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 09:13:55 -0700 (PDT)
Message-ID: <a300820d-4370-4387-dbbf-b9a7a3f0e86b@gmail.com>
Date:   Tue, 25 Oct 2022 18:13:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] ascii.7: chase down History to earliest
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <2b229c8d-9456-654a-d6a9-8b2727d8af41@gmail.com>
 <20221017105621.i6mkseevfwydx5zl@tarta.nabijaczleweli.xyz>
 <0a38aa0b-5684-f217-4844-6c075de6d551@gmail.com>
 <20221025152129.emkeptsou3mcwldv@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221025152129.emkeptsou3mcwldv@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------d4tOE4D63uVoD7gAMXSewH5s"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------d4tOE4D63uVoD7gAMXSewH5s
Content-Type: multipart/mixed; boundary="------------t8LiDYv50Fx316pwhAwbHhXc";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <a300820d-4370-4387-dbbf-b9a7a3f0e86b@gmail.com>
Subject: Re: [PATCH] ascii.7: chase down History to earliest
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <2b229c8d-9456-654a-d6a9-8b2727d8af41@gmail.com>
 <20221017105621.i6mkseevfwydx5zl@tarta.nabijaczleweli.xyz>
 <0a38aa0b-5684-f217-4844-6c075de6d551@gmail.com>
 <20221025152129.emkeptsou3mcwldv@tarta.nabijaczleweli.xyz>
In-Reply-To: <20221025152129.emkeptsou3mcwldv@tarta.nabijaczleweli.xyz>

--------------t8LiDYv50Fx316pwhAwbHhXc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDEwLzI1LzIyIDE3OjIxLCDQvdCw0LEgd3JvdGU6DQo+IEhpIQ0KPiANCj4g
T24gTW9uLCBPY3QgMTcsIDIwMjIgYXQgMDE6MDI6MDFQTSArMDIwMCwgQWxleCBDb2xvbWFy
IHdyb3RlOg0KPj4gT24gMTAvMTcvMjIgMTI6NTYsINC90LDQsSB3cm90ZToNCj4+PiBTbyBu
bywgKDcpIGlzIHdyb25nIGJlY2F1c2UgaXQncyAoVklJKQ0KPj4+IChpbmRlZWQsIGFyYWJp
YyBudW1iZXJzIHN0YXJ0ZWQgaW4gVjcpLg0KPj4+IEl0J3Mgbm90IGJvbGQgYmVjYXVzZSB5
b3UgY2FuJ3QgZG8gdGhhdCBvbiBhIHR5cGV3cml0ZXIuDQo+Pj4gWW91IGNvdWxkIG1ha2Ug
dGhlIGFyZ3VtZW50IGZvciBpdCBiZWluZyB0b2dldGhlciwNCj4+PiBidXQgdGhlIHByZXZh
aWxpbmcgY29udmVudGlvbiBpcyBlaXRoZXIgbm8gc2VjdGlvbiBhdCBhbGwgb3INCj4+PiBz
cGFjZS1iZWZvcmUtc2VjdGlvbiwgYW5kIHRoZSBwYWdlIG51bWJlciBoYXMgdGhlIHNwYWNl
Lg0KPj4NCj4+IEkgZ3Vlc3MgeW91J3JlIHJlZmVycmluZyB0byB0aGUgb2xkIGNvbnZlbnRp
b24gKGZyb20gVFVQTSk/ICBJbiB0aGlzIGNhc2UNCj4+IGl0J3MgYSBiaXQgd2VpcmQgYmVj
YXVzZSB3ZSdyZSByZWZlcnJpbmcgdG8gYW4gb2xkIG1hbnVhbCBwYWdlIGZyb20gYSBuZXcN
Cj4+IG1hbnVhbCBwYWdlLCBzbyBJIGRvbid0IGtub3cgaWYgd2Ugc2hvdWxkIHVzZSB0aGUg
b2xkIHN5bnRheCBvciB0aGUgbmV3DQo+PiBvbmUuLi4gIFdlIG5vdyBoYXZlIGJldHRlciAo
b3IgZGlmZmVyZW50KSBjYXBhYmlsaXRpZXMgKGJvbGQpLCBhbmQgYXJhYmljDQo+PiBudW1i
ZXJzLCBzbyB3ZSBjb3VsZCB0YWtlIGFkdmFudGFnZSBvZiB0aGVtLi4uICBCdXQgbWF5YmUg
dGhhdCBjb3VsZA0KPj4gY29uZnVzZS4uLiAgSSBndWVzcyBJJ2xsIGdvIHdpdGggd2hhdCB5
b3UgcHJlZmVyLCBzaW5jZSB5b3UncmUgd3JpdGluZyBpdCwNCj4+IGFuZCBJJ20gbm90IHN1
cmUuDQo+IA0KPiBZZXMsIEkgdGhpbmsgcmVzcGVjdGluZyB0aGUgb3JpZ2luYWwgcGFnZSBu
dW1iZXINCj4gKHdoaWNoLCB3aGlsZSB2ZXJ5IGZ1bm55IHNwZWxsaW5nLXdpc2UsIGlzIHZl
cnkgbXVjaCB3aGF0IGl0IGlzOw0KPiAgIGNmLiB0aGUgZmlyc3QgaXNzdWUgb2YgdGhlIFgv
T3BlbiBQb3J0YWJpbGl0eSBHdWlkZSwNCj4gICB3aGljaCBudW1iZXJzIHBhZ2VzIGFzICJC
U0VBUkNIKDNDKS4zIiBpbiBQYXJ0IElJLCBmb3IgZXhhbXBsZSkNCj4gYXMgaXQgd2FzIHdy
aXR0ZW4g4oCSICIvZXRjL2FzY2lpIChWSUkpIiDigJINCj4gaXMgYmlibGlvZ3JhcGhpY2Fs
bHkgdGhlIG1vc3QgY29ycmVjdCB0aGluZyB0byBkbyBoZXJlLg0KDQpNYWtlcyBzZW5zZS4g
IFBhdGNoIGFwcGxpZWQuDQoNCkNoZWVycywNCkFsZXgNCg0KPiANCj4g0L3QsNCxDQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------t8LiDYv50Fx316pwhAwbHhXc--

--------------d4tOE4D63uVoD7gAMXSewH5s
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNYCzoACgkQnowa+77/
2zL0bA//dBVEpsbWeljqmEz2+bBv2efH+9Bbftig/WNqoF9hYWyx7Gx5nGTsLJm3
w0WF6E0c1W0hMk2JmuBtRxswahZohofE6lUZkmbKiUuYr+DFXLKX/zwqU8mh9iB4
DvhXfNd6wBjP3rV2ZUsPGr+LJ0se4/d98S9BJsecNga3BmzbZB4YUcScSmZS5ds2
tP6SY5LmZI3H2IIRaHjRaQe8SqX7w6D8Du6xrO1kYgFA/z+sVs+k2UMyxR/GLp3E
DQ00S+VnN6ItSNgzfl///s8zaoTj+UAc1eJqpzyla9QaZgkHsxf/fCBdoqOtsEx8
sU5Pm7xVtF9RHOAV4tihaUFQKXGiOKy8jpc5WXxMvvt2gwRijIYCmHEjmXd1mFli
DZ45Wnt3cwsFFRGM2f8pY5Jm0ttqlt9xCLwjfCU/bRY5mgZ9yaPWtkoIIgXqqjmK
H1h+RMlsYf+aFxsfnuia5Tk30SQ+wH1LfmBxwrRZn1euqxghC+0iDapPCc4yzhWn
mN595quw04PchwuzCCWcjnuzm/Y9ceBrYUW6y76wolSFrm1rK58K/e3wqK557ycJ
K6jrMuNRqoNBUDi2z4xoFrrJwzuX5sqKuWrPktk5vKPlpRUXp3wEa7rMLbRNyiuE
arpHHjlNqnWGFHEXp3Oz56fnEhBLpPA+/aNfFU1P/wP+0GEQjl8=
=FgYc
-----END PGP SIGNATURE-----

--------------d4tOE4D63uVoD7gAMXSewH5s--
