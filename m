Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1541C679F33
	for <lists+linux-man@lfdr.de>; Tue, 24 Jan 2023 17:53:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233726AbjAXQxh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Jan 2023 11:53:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233101AbjAXQxg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Jan 2023 11:53:36 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F04961816C
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 08:53:34 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id d14so10822541wrr.9
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 08:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vjjUpdKPpcFWuwqREGt5B5pMUJt643WYVHQAokdg3As=;
        b=RH8xz0JXTQWE1Cv7h7OjHa6xQhKEgG6ljjm6ZZxREN2JuSCcr7QLOMST1o1DVY63xx
         o6UmW4oEuKfqmh4lDM5YAwc8gfA+d5SH7r31m0lOvxpVdasof62rAEpDKvWqMLTaI+JK
         YvUBE1XP9s3kazy7tkVF8qQe+/VTpzM4bDJUMxqWd9zVd9qu6wunYiAghoHPzIuvKr3V
         Z6fhF2QQn66SKu+nv7yNb1m09yeRG1w2aIgSQbVrsezgbQO2RjxNnrJswHbb/jYfNLWr
         jO7HfVYdrF4oZkIHqpYh9O+zyYfFg0ClwO8uuMlD62RnC1++uxgBQmJXk4I8MQT8sKyq
         4uWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vjjUpdKPpcFWuwqREGt5B5pMUJt643WYVHQAokdg3As=;
        b=oapP1tDGK2lJQKNkIOFmA5uOSfFoCZ7bHU8S282IGQJAyzWC5lUVXlf+EiuTTbflNZ
         TkIToMpv5ntl0PUIN+GtHnXaUHMST1zGzCeEOBDnQJNiYPumWM02Jn0V7fUrTHcRIwhR
         Kg/AmbkKL89hyI2HvkgNT5ISiw2x8gcLDQi3xBusPgpLoSi/XC6heAWeHDwBchw6IY46
         eiwHQ0CRN1GPzp5qpk1DvNGVhutELVKbx26B0XEfXaVyzs3I3FxH+13wbB/p0Eq6/1th
         o22raEZpEWGsvxHkwKdYADvERY7zZYzemVe728I7y1vLaLYtTzBvyYWBaSl0ZYQP0ngV
         uo9Q==
X-Gm-Message-State: AFqh2kr84hvqo0tF/b+4rYUG7JB8S+XI8tGg0yUtOhu32K9qVO1Rf90A
        hvBI8mK8F3c16XRXlgTMpUyQmUcfd6Y=
X-Google-Smtp-Source: AMrXdXsQiR0e2cEg23idVCjOq5buXgiePS+dcGKfnLb4sunai1Ni1r2n1XLaPfalenKCuiaw7sfAsw==
X-Received: by 2002:a5d:614d:0:b0:2bf:942b:ddc with SMTP id y13-20020a5d614d000000b002bf942b0ddcmr13699500wrt.55.1674579213491;
        Tue, 24 Jan 2023 08:53:33 -0800 (PST)
Received: from [192.168.43.80] ([46.222.154.138])
        by smtp.gmail.com with ESMTPSA id z18-20020a056000111200b002366dd0e030sm2245400wrw.68.2023.01.24.08.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 08:53:33 -0800 (PST)
Message-ID: <5378ac8a-00ec-6dab-9f79-3e5c25f4a51c@gmail.com>
Date:   Tue, 24 Jan 2023 17:53:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: struct sockaddr_storage
Content-Language: en-US
To:     Rich Felker <dalias@libc.org>, Stefan Puiu <stefan.puiu@gmail.com>
Cc:     GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <20230124111623.GD3298@brightrain.aerifal.cx>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230124111623.GD3298@brightrain.aerifal.cx>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------TDo94N5o7q4mwSQz0xlZYcn2"
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
--------------TDo94N5o7q4mwSQz0xlZYcn2
Content-Type: multipart/mixed; boundary="------------N1StW44CsyeK6J8GjdmKcFKp";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Rich Felker <dalias@libc.org>, Stefan Puiu <stefan.puiu@gmail.com>
Cc: GNU C Library <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
 Igor Sysoev <igor@sysoev.ru>
Message-ID: <5378ac8a-00ec-6dab-9f79-3e5c25f4a51c@gmail.com>
Subject: Re: struct sockaddr_storage
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <20230124111623.GD3298@brightrain.aerifal.cx>
In-Reply-To: <20230124111623.GD3298@brightrain.aerifal.cx>

--------------N1StW44CsyeK6J8GjdmKcFKp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUmljaywNCg0KT24gMS8yNC8yMyAxMjoxNiwgUmljaCBGZWxrZXIgd3JvdGU6DQo+IE9u
IEZyaSwgSmFuIDIwLCAyMDIzIGF0IDEyOjA2OjUwUE0gKzAyMDAsIFN0ZWZhbiBQdWl1IHZp
YSBMaWJjLWFscGhhIHdyb3RlOg0KPj4gSGkgQWxleCwNCj4+DQo+PiBPbiBUaHUsIEphbiAx
OSwgMjAyMyBhdCA0OjE0IFBNIEFsZWphbmRybyBDb2xvbWFyDQo+PiA8YWx4Lm1hbnBhZ2Vz
QGdtYWlsLmNvbT4gd3JvdGU6DQo+Pj4NCj4+PiBIaSENCj4+Pg0KPj4+IEkganVzdCByZWNl
aXZlZCBhIHJlcG9ydCBhYm91dCBzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZSBpbiB0aGUgbWFu
IHBhZ2VzLiAgSXQNCj4+PiByZW1pbmRlZCBtZSBvZiBzb21lIGNvbmNlcm4gSSd2ZSBhbHdh
eXMgaGFkIGFib3V0IGl0OiBpdCBkb2Vzbid0IHNlZW0gdG8gYmUgYQ0KPj4+IHVzYWJsZSB0
eXBlLg0KPj4+DQo+Pj4gSXQgaGFzIHNvbWUgYWxpZ25tZW50IHByb21pc2VzIHRoYXQgbWFr
ZSBpdCAianVzdCB3b3JrIiBtb3N0IG9mIHRoZSB0aW1lLCBidXQNCj4+PiBpdCdzIHN0aWxs
IGEgVUIgbWluZSwgYWNjb3JkaW5nIHRvIElTTyBDLg0KPj4+DQo+Pj4gQWNjb3JkaW5nIHRv
IHN0cmljdCBhbGlhc2luZyBydWxlcywgaWYgeW91IGRlY2xhcmUgYSB2YXJpYWJsZSBvZiB0
eXBlICdzdHJ1Y3QNCj4+PiBzb2NrYWRkcl9zdG9yYWdlJywgdGhhdCdzIHdoYXQgeW91IGdl
dCwgYW5kIHRyeWluZyB0byBhY2Nlc3MgaXQgbGF0ZXIgYXMgc29tZQ0KPj4+IG90aGVyIHNv
Y2thZGRyXzggaXMgc2ltcGx5IG5vdCBsZWdhbC4gIFRoZSBjb21waWxlciBtYXkgYXNzdW1l
IHRob3NlIGFjY2Vzc2VzDQo+Pj4gY2FuJ3QgaGFwcGVuLCBhbmQgb3B0aW1pemUgYXMgaXQg
cGxlYXNlcy4NCj4+DQo+PiBDYW4geW91IGRldGFpbCB0aGUgImlzIG5vdCBsZWdhbCIgcGFy
dD8gSG93IGFib3V0IHRoZSBBUElzIGxpa2UNCj4+IGNvbm5lY3QoKSBldGMgdGhhdCB1c2Ug
cG9pbnRlcnMgdG8gc3RydWN0IHNvY2thZGRyLCB3aGVyZSB0aGUNCj4+IHVuZGVybHlpbmcg
dHlwZSBpcyBkaWZmZXJlbnQsIHdoeSB3b3VsZCB0aGF0IGJlIGxlZ2FsIHdoaWxlIHVzaW5n
DQo+PiBzb2NrYWRkcl9zdG9yYWdlIGlzbid0Pw0KPiANCj4gQmVjYXVzZSB0aGV5J3JlIHNw
ZWNpZmllZCB0byB0YWtlIGRpZmZlcmVudCB0eXBlcy4gSW4gQywgYW55IHN0cnVjdA0KPiBw
b2ludGVyIHR5cGUgY2FuIGxlZ2FsbHkgcG9pbnQgdG8gYW55IG90aGVyIHN0cnVjdCB0eXBl
LiBZb3UganVzdA0KPiBjYW4ndCBkZXJlZmVyZW5jZSB0aHJvdWdoIGl0IHdpdGggdGhlIHdy
b25nIHR5cGUuDQoNClllcC4gIFdoaWNoIGJhc2ljYWxseSBtZWFucyB0aGF0IHVzZXJzIG5l
ZWQgdG8gdHJlYXQgc29ja2FkZHIgc3RydWN0dXJlcyANCmFzIGJsYWNrIGJveGVzLiAgT3Ro
ZXJ3aXNlLCB0aGVyZSdzIGdvaW5nIHRvIGJlIHVuZGVmaW5lZCBiZWhhdmlvciBhdCANCnNv
bWUgcG9pbnQuICBCZWNhdXNlIG9mIGNvdXJzZSwgeW91IGNhbid0IGtub3cgdGhlIHJpZ2h0
IHR5cGUgYmVmb3JlIA0KcmVhZGluZyB0aGUgZmlyc3QgZmllbGQsIHdoaWNoIGlzIGFscmVh
ZHkgVUIuDQoNCj4gSG93IHRoZQ0KPiBpbXBsZW1lbnRhdGlvbiBvZiBjb25uZWN0IGV0Yy4g
aGFuZGxlIHRoaXMgaXMgYW4gaW1wbGVtZW50YXRpb24NCj4gZGV0YWlsLiBZb3UncmUgYWxs
b3dlZCB0byBwYXNzIHBvaW50ZXJzIHRvIHN0cnVjdCBzb2NrYWRkcl9pbiwgZXRjLiB0bw0K
PiBjb25uZWN0IGV0Yy4gc2ltcGx5IGJlY2F1c2UgdGhlIHNwZWNpZmljYXRpb24gc2F5cyB5
b3UgYXJlLg0KDQpXaGlsZSB0aGUgaW1wbGVtZW50YXRpb24gaGFzIHNvbWUgbW9yZSBmcmVl
ZG9tIHJlZ2FyZGluZyBVQiwgaW4gdGhpcyANCmNhc2UgaXQncyB3YWl0aW5nIGZvciBhIGNv
bXBpbGVyIG9wdGltaXphdGlvbiB0byBicmVhayB0aGlzIGNvZGUsIHNvIEknZCANCmdvIHRo
ZSBzYWZlIHdheSBhbmQgdXNlIHN0YW5kYXJkIEMgdGVjaG5pcXVlcyBpbiBsaWJjIHNvIHRo
YXQgdGhlcmUgYXJlIA0Kbm8gbG9uZy10ZXJtIFVCIGlzc3Vlcy4NCg0KQXMgYSBzaWRlIGVm
ZmVjdCwgdXNlciBjb2RlIHRoYXQgY3VycmVudGx5IGludm9rZXMgVUIgY291bGQgYmUgY2hh
bmdlZCANCnRvIGhhdmUgZGVmaW5lZCBiZWhhdmlvci4NCg0KPiANCj4gSW4gYW55IGNhc2Us
IHNvY2thZGRyX3N0b3JhZ2UgaXMgYSBsZWdhY3kgdGhpbmcgZGVzaWduZWQgYnkgZm9sa3Mg
d2hvDQo+IGRpZG4ndCB1bmRlcnN0YW5kIHRoZSBydWxlcyBvZiB0aGUgQyBsYW5ndWFnZS4g
SXQgc2hvdWxkIG5ldmVyIGFwcGVhcg0KPiBpbiBtb2Rlcm4gY29kZSBleGNlcHQgcGVyaGFw
cyB3aXRoIHNpemVvZiBmb3IgYWxsb2N0aW5nIGJ1ZmZlcnMuIFRoZXJlDQo+IGlzIG5vIGFj
dGlvbiB0aGF0IG5lZWRzIHRvIGJlIHRha2VuIGhlcmUgZXhjZXB0IGRvY3VtZW50aW5nIHRo
YXQgaXQNCj4gc2hvdWxkIG5vdCBiZSB1c2VkIChjYW5ub3QgYmUgdXNlZCBtZWFuaW5nZnVs
bHkgd2l0aG91dCBVQikuDQoNCkkgYWdyZWUgd2l0aCB5b3Ugb24gdGhpcy4gIHNvY2thZGRy
X3N0b3JhZ2UgaGFzIGJlZW4gYnJva2VuIHNpbmNlIGRheSAwLiANCiAgSG93ZXZlciwgZm9y
IGRlc2lnbmluZyBhIHNvbHV0aW9uIGZvciBsaWJjIHVzaW5nIHVuaW9ucywgaXQgY291bGQg
YmUgDQp1c2VmdWwuDQoNCj4gDQo+IFJpY2gNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQo=

--------------N1StW44CsyeK6J8GjdmKcFKp--

--------------TDo94N5o7q4mwSQz0xlZYcn2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPQDP0ACgkQnowa+77/
2zKnghAAo3lDb4SMykR0VtZRnqhDeDKM7F49ZVAfMHiIuSZp9aQ4hb0q3ZPn+ks3
HMNScomfLnkpS3RqRkfkkFyHPHhiyp/esfjjIoAYwBwsO5UvJAySv7gndhO0ovfG
IS+hzCddJqTjoZngMw68mhfE/O6PycIjIorRlHHNNAGjROoZ2kstmGEeYZCL6Aza
zO8PVks5RV+YOA/WUuNxbVKHhWh7n5SghkfOnd++VF+jNR03Ob3RMMGPLv/ysXL/
GM1watBax2sGw5Wf9vw6s3MldSKbqjUIvKpCtAbjWhid0vw1d0ZadaF1FrGsCY12
I5CaU6dYaAd3Bdhm04NhBjnPd1BNECRqdR5JDWUD2o8BLRhlE2QAyqS7bJ3xgjKz
Xh0/KYl27fC7FcApMEJQJo2QqPg3xLLPoscMJv2lpL+FVLmTf1+i3ur5FGCKll8Y
Sk7qIBYuIn/vTpzm1ZM/vNIT8ohrnERyUII21DUYkVbiQQ8fBvu4vwteOulobC6E
h7qwhlHb1Grl5XgVjKaED1PUfIvA1/n3/h7L8bwV/UBwLIP4c9V1yU1N0Ypr+kg0
zltFKGGkaRZgmCAk71ytRYf4LjleGVI96YPh5LaVS8fWHeeuj5M8gdxuZsKdvFbk
cK4YvSMdBDc/di3gD7bUwI2fJWDKkts7SnfTdPVPuGwS65mmn08=
=OpDG
-----END PGP SIGNATURE-----

--------------TDo94N5o7q4mwSQz0xlZYcn2--
