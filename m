Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 071186570EE
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 00:14:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232301AbiL0XOq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 18:14:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232413AbiL0XN5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 18:13:57 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE77F10555
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 15:11:29 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so7688629wmb.2
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 15:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yUdkwvT3UaKf45RVAK+/YxkDIAszc89+JI2+QfDG86A=;
        b=CxEGp/0BrMf794TiuY18fkLaUww8pJupV3z6ui9dk3zH6GDSHSU5z7OOeoSCqU2uVD
         LxteWpDFB5VEY4vD3GsSk0vBiRPvqSYRqoIW0LsEBCHz/egztypPEdb/6mkSzkwu+hqz
         wdrHadmtmM+xZhVNWaVWD5Ik7epRfOhqm1ht8WSmWB9Dd5RCDZyECkieuvv9zjnXyd2u
         6PMtMRigdftAgJ37Q7VB6/BMh/9DHxvqC2rOI4O6YGVCM5WxjYrwR6E6ec2XkfVmLP80
         gDic3lAkpBI41fYRI51jbGoQEnBsJIdSuNxeNSf6y/cHcQD08cCtlCTuIWz95Q+VlhiN
         zVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yUdkwvT3UaKf45RVAK+/YxkDIAszc89+JI2+QfDG86A=;
        b=VCc1YK0u5lZZtjG76vZKvKr0RHGlVsGrbkEnZGPMymw7i88OYd0NJ3+h/4992UXYJ2
         c76oBL8IjxSo3jsiiL5M+PaE43EiOsRagJuBr3bszr3gXX8WRSNOVIINFAlLkhJ1CwHI
         8I87iUw+9zqte0D8DaLm3qfDmB2smeg4DtLLfBV/zkNY9huUYL7gYFe+SIZZeAoMUYsE
         /a+dsRCX2+RhLEs8azAsddNG7iiaIeYtfVEVh1/dH9PeK7FfWO4oA77k0VcXhNOoptDo
         Qq0Z7gytdlF1a8Pa8WLXGRoZorqvEvV6yy/Zm5rVYnghghB2pwdwaLWLbZzBvmXigNpA
         Y9iw==
X-Gm-Message-State: AFqh2kq0UgIs1ZQlNzNEqCKFYKq47Aw62O4/T6cqYIEXrkjXot82Hd/d
        IYbIFD2R7JD7vuNf8rXjLew=
X-Google-Smtp-Source: AMrXdXttbpPNHZDOX7htAXT4jiy2R70M1PBRYmdVgHpN5bM/f2K8338sUYsFSxBe/KubarpQCKdRiQ==
X-Received: by 2002:a05:600c:4e13:b0:3c6:e63d:fcfc with SMTP id b19-20020a05600c4e1300b003c6e63dfcfcmr16346827wmq.35.1672182688375;
        Tue, 27 Dec 2022 15:11:28 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k31-20020a05600c1c9f00b003d22528decesm25404081wms.43.2022.12.27.15.11.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 15:11:27 -0800 (PST)
Message-ID: <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
Date:   Wed, 28 Dec 2022 00:11:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
To:     Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------c2fCs2BVzgDh633ioBaqO1Iy"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------c2fCs2BVzgDh633ioBaqO1Iy
Content-Type: multipart/mixed; boundary="------------ljrP6L0P7fn8cWqoISMQQWiD";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
In-Reply-To: <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>

--------------ljrP6L0P7fn8cWqoISMQQWiD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9ubnksDQoNCk9uIDEyLzI3LzIyIDIyOjM3LCBKb25ueSBHcmFudCB3cm90ZToNCj4g
SGkgQWxleA0KPiANCj4gT24gMjYvMTIvMjAyMiAyMjoyOSwgQWxlamFuZHJvIENvbG9tYXIg
d3JvdGU6DQo+PiBIaSBKb25ueSwNCj4+DQo+PiBPbiAxMi8yNi8yMiAyMjo1MCwgSm9ubnkg
R3JhbnQgd3JvdGU6DQo+Pj4gSGkgQWxlamFuZHJvDQo+Pg0KPj4gUGxlYXNlIHNlbmQgYWxz
byB0byBteSBlbWFpbC4NCj4+DQo+Pj4gUGxlYXNlIGZpbmQgYmVsb3cgYSBwYXRjaC4NCj4+
Pg0KPj4+IDIwMjItMTItMjbCoCBKb25hdGhhbiBHcmFudCA8amdAamd1ay5vcmc+DQo+Pj4g
IMKgwqDCoMKgKiBtYW4zL3JhbmQuMzogQWRkIGV4YW1wbGUgdG8gcmFuZC4zIHNlZWQgd2l0
aCB0aW1lKE5VTEwpDQo+Pj4NCj4+Pg0KPj4+ICDCoEZyb20gMmQ0NTAxMzU0ZWE2YzQ2NTE3
M2ZlNmMwODlkZmJjYzgwMzkzYTY0NCBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDENCj4+PiBG
cm9tOiBKb25hdGhhbiBHcmFudCA8amdAamd1ay5vcmc+DQo+Pj4gRGF0ZTogTW9uLCAyNiBE
ZWMgMjAyMiAyMTo0ODoxNyArMDAwMA0KPj4+IFN1YmplY3Q6IFtQQVRDSF0gYWRkIHJhbmQu
MyBleGFtcGxlDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBHcmFudCA8amdA
amd1ay5vcmc+DQo+Pg0KPj4gdGltZShOVUxMKSBpcyBub3QgdG9vIGdvb2QuwqAgSWYgeW91
IGNhbGwgaXQgc2V2ZXJhbCB0aW1lcyBwZXIgc2Vjb25kLCB5b3UnbGwgZmluZCB0aGF0IGl0
IG9ubHkgY2hhbmdlcyB0aGUgc2VlZCBldmVyeSBzZWNvbmQuwqAgVGhlcmUgYXJlIGJldHRl
ciB3YXlzIHRvIHByb2R1Y2UgYSBnb29kIHNlZWQuDQo+Pg0KPj4gSG93ZXZlciwgSSBwcmVm
ZXIgc3VnZ2VzdGluZyBhcmM0cmFuZG9tKCkgcmF0aGVyIHRoYW4gd29ya2Fyb3VuZGluZyBy
YW5kKDMpIHRvIGdldCBnb29kIHJlc3VsdHMuDQo+Pg0KPj4gRmxvcmlhbiwgZGlkIHlvdSBh
bHJlYWR5IG1lcmdlIGFyYzRyYW5kb20oKSB0byBnbGliYz8NCj4gDQo+IEhvcGVmdWxseSBh
cmM0cmFuZG9tIHdpbGwgY29tZSBzb29uLiBNYXliZSByYW5kLjMgY291bGQgdGhlbiBiZSB1
cGRhdGVkIHRvIFNFRSBBTFNPIHRoYXQuID4NCj4gSSB3b3VsZCBvbmx5IG1lbnRpb24gdG8g
Y2FsbCBzcmFuZCBvbmNlIHRvIHNlZWQsIGJ1dCB5b3UncmUgcmlnaHQgdGhlcmUgYXJlIGxv
dHMgb2Ygb3RoZXIgd2F5cyB0byBnZXQgYSBzZWVkLg0KPiBKb25ueQ0KDQpCdXQgY29uc2lk
ZXIgdGhlIGZvbGxvd2luZyBjYXNlOg0KDQpZb3UncmUgdGVzdGluZyBzb21lIHByb2dyYW0g
d2l0aCByYW5kb20gZGF0YSBpbiBhIGxvb3AuICBBbmQgdGhlIHByb2dyYW0gDQpleGVjdXRl
cyBpbiBsZXNzIHRoYW4gYSBzZWNvbmQuICBUaGVuIHNyYW5kKDMpIHdpbGwgYmUgY2FsbGVk
IHNldmVyYWwgdGltZXMgcGVyIA0Kc2Vjb25kIHdpdGggdGhlIHNhbWUgc2VlZCwgYW5kIHlv
dSdsbCBnZXQgdXNlbGVzcyByZXN1bHRzLiAgSSBmYWNlZCB0aGF0IGV4YWN0IA0Kc2l0dWF0
aW9uIGEgZmV3IHllYXJzIGFnbyA6KQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KDQotLSANCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------ljrP6L0P7fn8cWqoISMQQWiD--

--------------c2fCs2BVzgDh633ioBaqO1Iy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOre5cACgkQnowa+77/
2zLXDBAAhlC6HLYDu0DF1uxw2Y3wIKzL6b+MfDS8QRs+evyeB0UyXCG0J+FxjJh4
NvbBhr8tg4YOUv4HYg7BZKu6WoF091OEbbNmBTch8vkscHQKiluH/2ppiqfKN90J
K0gQWBP/TWi6y/umgGQ5dHeacdIlL+KqYJzVVyHf9FSEhU9Xbfz5WQ0J5R4KZHsf
otaHV8cxdF3Ir20rp+OFFE9n+wJ3MOoyiC0QzfebUHu/zaTX264N0EWlwzL23wfy
7IBRxHuR3+hahwefJBSinX74ereThj4sbU0T1sabbBrD1hXf676QAlG2Ppjj9+jL
jecOoxYUlX5jAYylblGWhvHzQhllnHR6kN+4BVawkm/sYRMvZPlO8AmEnkJTBdDL
QrHTq69Xhr0d7461pVz4wBXmYUxswKkzQZWyeGo/tD61P3M3X8AkACtBk6hJwl7s
iPx4TbF+HpwhIeSrhlNqClnmAZHx65Dy9fZc38j9ya8szYNw8ohveIKgSG3Tq7+Y
Mjf/guFIUAtYSGiap1Mh0tRKDgPysrbgg2Bvo9CD65ERddNbzMH72XIJLyvlooGI
/qIHQop0tZTcI7HtrtqZ0epLvgLBEiOQ4irmHbwTbzkL0SObdehD606ffi4obBL0
pSuTYWGkwFB2MSKM70R34ZtzV/clXGBVx0PAcVZDViqvMwcwR88=
=DYp6
-----END PGP SIGNATURE-----

--------------c2fCs2BVzgDh633ioBaqO1Iy--
