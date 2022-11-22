Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9638C634473
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 20:22:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233701AbiKVTWD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 14:22:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233443AbiKVTWB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 14:22:01 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D64FD748FF
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 11:21:59 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id i12so22351703wrb.0
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 11:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xOcDwUZOdeXrRUJhVbkFcmbeEkoJkRu1I2PwSPh2PRw=;
        b=dekt3vBixSKzQXzhGOxLwkSL6xQ4qheGsunBTSKIBjapECb542PCiZAmpka9C9WCp4
         yATj5Sakebv3GIaCd3KulW5iDP38BDPwHuITK9KHkgsUNMNPvwdRH+kHL9ELvubG3ZYS
         VxIQxLgGB9iI74qgRpZH/SLXnIrLU35ynpFvSTtBFEuAChEa0E9JSX2NXrebqbsfS1pc
         iMtkvuSH7URCZL2GB9UQaLpa+OuWeUjnuQtN7IC+RpfLTz4F3YHmpJ/fk7O4Pr/j/LXM
         TZcE9OLBuMKnobiUynSMbflu0tyrXrfV5rIfxsp87EnOupADmD8AzehCEETq5+a9m84p
         ydMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xOcDwUZOdeXrRUJhVbkFcmbeEkoJkRu1I2PwSPh2PRw=;
        b=nGipyuSIBen0sx4hiC6+BOjvEo6k4XgtHEGvsQJUrWWIGjbgPMf+fq1ThuG2ua9nxH
         fgkD/1eMAbxQa9PHihXvLJ1pB44w0IYTCub/1Dk0QhqXGBuv6Wdg8iySPsNhVdxkteUg
         fU4tx3fiH2IKDj+AHt03o1zFBWBLk8OD4DHTM0baWLfwqPBNRrTcXiu2SpdUXekZza/1
         rJAQvNk6eT60ypgOih6TdbDI0b54fhWCnSfeCm7hwPmkcu7TkOywodvTIDfo185oYwKy
         zZYQspJ5xkuKEJNYefJmkWFDC3P6ytqXhYTgQyLV/kMpdObfepjm+5UEbhjp98UjL44y
         Qapg==
X-Gm-Message-State: ANoB5plUtKl0B3eLRzUTGmHgPDeunKqE8sMfDn/LPlmgNA7WmnxT7siC
        ihya7cojXR7akKJ7LhT66z3etkoh2rQ=
X-Google-Smtp-Source: AA0mqf4iH7WjWv4XOKJqPmiPVzKU29jiQBT7Hj94dNsY1khash7+2YA8XpBZpmQYqpmJeYA0+3iUeQ==
X-Received: by 2002:adf:de0c:0:b0:236:501f:7a4b with SMTP id b12-20020adfde0c000000b00236501f7a4bmr9240158wrm.465.1669144918265;
        Tue, 22 Nov 2022 11:21:58 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h10-20020a05600c314a00b003cf71b1f66csm19822395wmo.0.2022.11.22.11.21.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 11:21:57 -0800 (PST)
Message-ID: <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
Date:   Tue, 22 Nov 2022 20:21:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Garbled text in zic(8) man page
Content-Language: en-US
To:     Jonathan Wakely <jwakely@redhat.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Rf01mLTmC3Oq0bGSVIttaBHE"
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
--------------Rf01mLTmC3Oq0bGSVIttaBHE
Content-Type: multipart/mixed; boundary="------------dvQpjJ13063VpbGxhMqVNYhp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <dfb539ad-4a72-00a0-c75d-ead317b9ed46@gmail.com>
Subject: Re: Garbled text in zic(8) man page
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
 <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
 <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>
In-Reply-To: <CACb0b4=LO+jcwwrirp3iVdu2k0Y8H0PEWwdzs+Jch+D4gJxiog@mail.gmail.com>

--------------dvQpjJ13063VpbGxhMqVNYhp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9uYXRoYW4sDQoNCk9uIDExLzIyLzIyIDE0OjEzLCBKb25hdGhhbiBXYWtlbHkgd3Jv
dGU6DQo+IE9uIFR1ZSwgMjIgTm92IDIwMjIgYXQgMTM6MDAsIEpvbmF0aGFuIFdha2VseSB3
cm90ZToNCj4+DQo+PiBPbiBUdWUsIDIyIE5vdiAyMDIyIGF0IDEyOjU4LCBKb25hdGhhbiBX
YWtlbHkgd3JvdGU6DQo+Pj4NCj4+PiBIaSwNCj4+Pg0KPj4+IFRoZSBkZXNjcmlwdGlvbiBv
ZiB0aGUgUlVMRVMgZmllbGQgb2YgYSBab25lIGxpbmUgYXQ6DQo+Pj4gaHR0cHM6Ly9tYW43
Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuOC96aWMuOC5odG1sI0ZJTEVTDQo+Pj4gc2VlbXMg
Z2FyYmxlZDoNCj4+PiAiZ2l2aW5nIG9mIHRoZSBhbW91bnQgb2YgdGltZSB0byBiZSBhZGRl
ZCB0byBsb2NhbCBzdGFuZGFyZCB0aW1lIGVmZmVjdCINCj4+Pg0KPj4+IEl0IGxvb2tzIGxp
a2UgaXQgbWlnaHQgYmUgYSBjb3B5JnBhc3RlIGVycm9yIGZyb20gdGhlIHNpbWlsYXIgdGV4
dCBmb3INCj4+PiB0aGUgU0FWRSBmaWVsZCBvZiBhIFJ1bGUgbGluZS4gSSB0aGluayB0aGUg
Zmlyc3QgIm9mIiBhbmQgdGhlICJlZmZlY3QiDQo+Pj4gc2hvdWxkIGJlIHJlbW92ZWQsIGJ1
dCBJJ20gbm90IHN1cmUgaWYgdGhhdCdzIGNvcnJlY3QuDQo+Pg0KPj4gVGhpcyB3YXMgaW50
cm9kdWNlZCBieQ0KPj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2RvY3MvbWFu
LXBhZ2VzL21hbi1wYWdlcy5naXQvY29tbWl0L21hbjgvemljLjg/aWQ9NTM1NWUyMGY4MTZl
MWUwYWY5M2Q2YmI4MDQzOWU4NmYyZDFjN2JlNw0KPj4gc28gbWF5YmUgaXQgc2hvdWxkIGJl
IHJlcG9ydGVkIHRvIHR6ZGIgdXBzdHJlYW0gaW5zdGVhZC4NCj4gDQo+IEl0J3MgYWxyZWFk
eSBmaXhlZCB1cHN0cmVhbS4gVGhlIHZlcnNpb24gaW4gdGhlIHR6ZGItMjAyMmYgcGFja2Fn
ZSBzYXlzOg0KPiANCj4gICAgICAgICBSVUxFUyBUaGUgbmFtZSBvZiB0aGUgcnVsZXMgdGhh
dCBhcHBseSBpbiB0aGUgdGltZXpvbmUgb3IsDQo+ICAgICAgICAgICAgICAgYWx0ZXJuYXRp
dmVseSwgYSBmaWVsZCBpbiB0aGUgc2FtZSBmb3JtYXQgYXMgYSBydWxlLWxpbmUgU0FWRQ0K
PiAgICAgICAgICAgICAgIGNvbHVtbiwgZ2l2aW5nIHRoZSBhbW91bnQgb2YgdGltZSB0byBi
ZSBhZGRlZCB0byBsb2NhbCBzdGFuZGFyZA0KPiAgICAgICAgICAgICAgIHRpbWUgYW5kIHdo
ZXRoZXIgdGhlIHJlc3VsdGluZyB0aW1lIGlzIHN0YW5kYXJkIG9yIGRheWxpZ2h0DQo+ICAg
ICAgICAgICAgICAgc2F2aW5nLiAgSWYgdGhpcyBmaWVsZCBpcyAtIHRoZW4gc3RhbmRhcmQg
dGltZSBhbHdheXMgYXBwbGllcy4NCj4gICAgICAgICAgICAgICBXaGVuIGFuIGFtb3VudCBv
ZiB0aW1lIGlzIGdpdmVuLCBvbmx5IHRoZSBzdW0gb2Ygc3RhbmRhcmQgdGltZQ0KPiAgICAg
ICAgICAgICAgIGFuZCB0aGlzIGFtb3VudCBtYXR0ZXJzLg0KPiANCj4gU28gaGVyZSdzIGEg
cGF0Y2ggZm9yIHRoZSBtYW4gcGFnZS4gVGhlcmUgYXJlIGxvdHMgb2Ygb3RoZXIgY2hhbmdl
cyBpbg0KPiB0aGUgdXBzdHJlYW0gcGFnZSB0aG91Z2gsIHNvIGFub3RoZXIgc3luYyBtaWdo
dCBiZSB1c2VmdWwuDQoNCkFzIHlvdSBzYWlkLCBhIHN5bmMgd291bGQgYmUgYmV0dGVyLiAg
SG93ZXZlciwgSSBkb24ndCBrbm93IGhvdyBNaWNoYWVsIGRpZCANCnRoYXQuICBJZiB5b3Ug
a25vdyB3aGVyZSB0aGUgcGFnZSBjb21lcyBmcm9tLCBjb3VsZCB5b3UgcGxlYXNlIHByZXBh
cmUgYSBwYXRjaCANCnRoYXQgZG9lcyB0aGUgc3luYywgYW5kIGRvY3VtZW50IGl0IGluIHRo
ZSBjb21taXQgbWVzc2FnZSBzbyB0aGF0IGl0J3MgZWFzaWVyIHRvIA0KZG8gaXQgaW4gdGhl
IGZ1dHVyZT8NCg0KSWYgeW91IGRvIHRoYXQsIHBsZWFzZSBhbHNvIHN5bmMgdHpmaWxlKDUp
IGFuZCB6ZHVtcCg4KSBpbiB0aGUgY29tbWl0Lg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KDQot
LS0NCg0KJCBjYXQgTUFJTlRBSU5FUl9OT1RFUw0KRXh0ZXJuYWxseSBnZW5lcmF0ZWQgcGFn
ZXMNCj09PT09PT09PT09PT09PT09PT09PT09PT09DQoNCkEgZmV3IHBhZ2VzIGNvbWUgZnJv
bSBleHRlcm5hbCBzb3VyY2VzLiBGaXhlcyB0byB0aGUgcGFnZXMgc2hvdWxkIHJlYWxseQ0K
Z28gdG8gdGhlIHVwc3RyZWFtIHNvdXJjZS4NCg0KdHpmaWxlKDUpLCB6ZHVtcCg4KSwgYW5k
IHppYyg4KSBjb21lIGZyb20gdGhlIHR6IHByb2plY3QNCihodHRwczovL3d3dy5pYW5hLm9y
Zy90aW1lLXpvbmVzKS4NCg0KYnBmLWhlbHBlcnMoNykgaXMgYXV0b2dlbmVyYXRlZCBmcm9t
IHRoZSBrZXJuZWwgc291cmNlcyB1c2luZyBzY3JpcHRzLg0KU2VlIG1hbi1wYWdlcyBjb21t
aXRzIDUzNjY2ZjZjMyBhbmQgMTljN2Y3ODM5IGZvciBkZXRhaWxzLg0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------dvQpjJ13063VpbGxhMqVNYhp--

--------------Rf01mLTmC3Oq0bGSVIttaBHE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN9IU0ACgkQnowa+77/
2zKjyQ/9EZpOIgha8QzomMtgvTPPANJKZqhN2G1XTLdcVyruFR9K5L7oTG46psoP
RY/xxNfoRYTGYzh4730sz1Zzq+lstH5SZNGak3V7/pQGX707VA514YhaBTOMZCz6
c8fV1nKZEa7Fp0m1iWwF7ShciBYUAqVojbCRjbZTv2pJPmPYuGISwL8XgtmXdEoI
zR35x21iwXiRD6V78WbGoDKRZRKaS+e7m6gtMcKjaA4gyWQWLG2BQHkpXr9bDstA
tS5QTVU7dXngYF6zE7uhwvIsoluqVPtRL5BChle5jlphtDo7cHGuiI7pkdxUFg2a
9m/GFhPjRLd47Ogwsu17jZXbyHFKsLqdcJxa0HNcaFSwK8OHx1rbQNbMsmQTthCj
IACGAJ86YvkhJd+65Yg7c6D5zYYvCBnWHdelP5oYty4nVSWJrHAH0RDE3pg6Vndn
PooaP+LWE7kVSPHnRLTHyiSAKnHQ7DDxGudlHe0bTP2EjIHVeEN+lnLQ8Tcs8jUu
riZz8Jlny4H2AN2/3r51rRnYIZL1srZWRaGnouk0nkA6d4D33/r5VJTsp8uftw8m
E+F2LEIGnl5tSTQMcwtYDUpFnFgKD2DPdvjvOPNzZyMBxvbpQmUoR+KYpQK72kUO
IYWKDzCbK/YSI5JsCb1pH/gwl+3GfJanIrL5XS4nU2Ko4pBGheo=
=dKV8
-----END PGP SIGNATURE-----

--------------Rf01mLTmC3Oq0bGSVIttaBHE--
