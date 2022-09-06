Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B50D85AE6C5
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 13:43:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231537AbiIFLm4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 07:42:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232625AbiIFLmz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 07:42:55 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 782AD3F33A
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 04:42:50 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id e13so15038024wrm.1
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 04:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=vIeeHZwG1hAqpea77YjWwUl/JS9+KuHN207IlnsbeAo=;
        b=WVEq/sEibFKA6QfFUsaTFK96qFB2JYVfYGGUkYBShJwfPa8XZ20IGJkpD1q+dMBD6m
         F0XPGrUhZisZFwzqSGQir3R8uw/j0r6dmgQAnx/GvdadSuygquvCT4xTcg5RaGHH8E5d
         YiyMX4s1FsXhzukKvxrLBVCg9NQqSofCFTbCiN9bwPlNnmeFTukbVw7CrwV2CO6iNjC0
         D/0Xrk5ZFwXIedA5elqopsBF4+juvyfgnOBQbOfKmaygx5uVP/VfGPqia7uUAdlGqXWr
         my47kFwbjA5diFg3U4oJKG4EwApiYHLB0IvW18SQtEMi0oN87e+/CKC/9nCcp2tLEs3/
         NS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=vIeeHZwG1hAqpea77YjWwUl/JS9+KuHN207IlnsbeAo=;
        b=j8zNcTFH+G98zDCy0iTWQUpPOhFdita9ya8uaelrdCtKj7dKM/CMs98+8/hesvIKmf
         APEnnKcWJuqBaalYYZU3+8WqiXyc1LC5+8gvotWKKqQLVA/EIXAVHuSaRX8r5rtGUdC5
         RNPAOyRVgx4PMh76B2ayKH3oqyCJH4eNb2jFXtyPbqlmdal3CO8Zm7AiZECUKfdzXTXF
         bxqc2YKNhwP0NKf5Cf9lHKPxMZhBi0QE3jVSNxY9muo7OtV77CKh9dMpZCH9V8GoZe+B
         gjTXpXSC8Pr+4TcWV6iOwHZCfTWNibPmlTSC55Ui0cm2EVvdsTgNQJcf4tPy94Ro2NVI
         wUdg==
X-Gm-Message-State: ACgBeo2lYcw8ZMfBw/VhVDnHSuNmrWjP+1oHhxnLcirngONgyP62pNgs
        aBnG9SxPqN4hrik5MYL1U3c=
X-Google-Smtp-Source: AA6agR74veB8a3aGtYDD2ogU8SVGzOKw58P4FaV/9k7iaL8ZhxJpmXQmzTmz5JNu1n7LieDRMPTzFw==
X-Received: by 2002:a5d:47ce:0:b0:228:5769:489e with SMTP id o14-20020a5d47ce000000b002285769489emr8287747wrc.188.1662464569043;
        Tue, 06 Sep 2022 04:42:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e27-20020adf9bdb000000b0021f0ff1bc6csm6228676wrc.41.2022.09.06.04.42.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 04:42:48 -0700 (PDT)
Message-ID: <b09b6ee4-f719-e609-1198-271a5a689779@gmail.com>
Date:   Tue, 6 Sep 2022 13:42:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v2] fanotify_mark.2: Document FAN_MARK_EVICTABLE
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
References: <20220906101827.2760615-1-amir73il@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220906101827.2760615-1-amir73il@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XrOhIaJC0xpSB4EFi5Gb0nzW"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XrOhIaJC0xpSB4EFi5Gb0nzW
Content-Type: multipart/mixed; boundary="------------IqEF9AwzISywIrCr0tGG2WHg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
 linux-man@vger.kernel.org
Message-ID: <b09b6ee4-f719-e609-1198-271a5a689779@gmail.com>
Subject: Re: [PATCH v2] fanotify_mark.2: Document FAN_MARK_EVICTABLE
References: <20220906101827.2760615-1-amir73il@gmail.com>
In-Reply-To: <20220906101827.2760615-1-amir73il@gmail.com>

--------------IqEF9AwzISywIrCr0tGG2WHg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gOS82LzIyIDEyOjE4LCBBbWlyIEdvbGRzdGVpbiB3cm90ZToNCj4g
QWRkIHNlY3Rpb24gYWJvdXQgZXZpY3RhYmxlIGlub2RlIG1hcmtzIGFuZCBleGFtcGxlIHVz
ZSBjYXNlLg0KPiBBZGQgcG9zc2libGUgZXJyb3IgY2FzZSBFRVhJU1QgcmVsYXRlZCB0byBl
dmljdGFibGUgbWFya3MuDQo+IA0KPiBSZXZpZXdlZC1ieTogTWF0dGhldyBCb2Jyb3dza2kg
PHJlcG5vcEBnb29nbGUuY29tPg0KPiBSZXZpZXdlZC1ieTogSmFuIEthcmEgPGphY2tAc3Vz
ZS5jej4NCj4gU2lnbmVkLW9mZi1ieTogQW1pciBHb2xkc3RlaW4gPGFtaXI3M2lsQGdtYWls
LmNvbT4NCg0KSSBhcHBsaWVkIHRoZSBwYXRjaC4NCg0KVGhhbmtzLA0KQWxleA0KDQo+IC0t
LQ0KPiANCj4gSGkgQWxleCwNCj4gDQo+IEhlcmUgaXMgdjIgd2l0aCBmaXhlcyB0byB5b3Vy
IHJldmlldyBjb21tZW50cw0KPiBhbmQgSmFuJ3MgUmV2aWV3ZWQtYnkuDQo+IA0KPiBUaGFu
a3MsDQo+IEFtaXIuDQo+IA0KPiAgIG1hbjIvZmFub3RpZnlfbWFyay4yIHwgNTMgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gICAxIGZpbGUgY2hh
bmdlZCwgNTMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvZmFub3Rp
ZnlfbWFyay4yIGIvbWFuMi9mYW5vdGlmeV9tYXJrLjINCj4gaW5kZXggMjY5NmE4MDNhLi5i
OWIzMzU3ZTIgMTAwNjQ0DQo+IC0tLSBhL21hbjIvZmFub3RpZnlfbWFyay4yDQo+ICsrKyBi
L21hbjIvZmFub3RpZnlfbWFyay4yDQo+IEBAIC0xNTIsNiArMTUyLDQ3IEBAIFRoZSBpZ25v
cmUgbWFzayBzaGFsbCBzdXJ2aXZlIG1vZGlmeSBldmVudHMuDQo+ICAgSWYgdGhpcyBmbGFn
IGlzIG5vdCBzZXQsDQo+ICAgdGhlIGlnbm9yZSBtYXNrIGlzIGNsZWFyZWQgd2hlbiBhIG1v
ZGlmeSBldmVudCBvY2N1cnMNCj4gICBmb3IgdGhlIGlnbm9yZWQgZmlsZSBvciBkaXJlY3Rv
cnkuDQo+ICsuVFANCj4gKy5CUiBGQU5fTUFSS19FVklDVEFCTEUgIiAoc2luY2UgTGludXgg
NS4xOSkiDQo+ICsuXCIgY29tbWl0IDVmOWQzYmQ1MjAyNjFmZDdhODUwODE4YzcxODA5ZmQ1
ODBlMGYzMGMNCj4gK1doZW4gYW4gaW5vZGUgbWFyayBpcyBjcmVhdGVkIHdpdGggdGhpcyBm
bGFnLA0KPiArdGhlIGlub2RlIG9iamVjdCB3aWxsIG5vdCBiZSBwaW5uZWQgdG8gdGhlIGlu
b2RlIGNhY2hlLA0KPiArdGhlcmVmb3JlLA0KPiArYWxsb3dpbmcgdGhlIGlub2RlIG9iamVj
dCB0byBiZSBldmljdGVkIGZyb20gdGhlIGlub2RlIGNhY2hlDQo+ICt3aGVuIHRoZSBtZW1v
cnkgcHJlc3N1cmUgb24gdGhlIHN5c3RlbSBpcyBoaWdoLg0KPiArVGhlIGV2aWN0aW9uIG9m
IHRoZSBpbm9kZSBvYmplY3QNCj4gK3Jlc3VsdHMgaW4gdGhlIGV2aWN0YWJsZSBtYXJrIGFs
c28gYmVpbmcgbG9zdC4NCj4gK1doZW4gdGhlIG1hc2sgb2YgYW4gZXZpY3RhYmxlIGlub2Rl
IG1hcmsgaXMgdXBkYXRlZA0KPiArd2l0aG91dCB1c2luZyB0aGUNCj4gKy5CIEZBTl9NQVJL
X0VWSUNBVEJMRQ0KPiArZmxhZywNCj4gK3RoZSBtYXJrZWQgaW5vZGUgaXMgcGlubmVkIHRv
IGlub2RlIGNhY2hlDQo+ICthbmQgdGhlIG1hcmsgaXMgbm8gbG9uZ2VyIGV2aWN0YWJsZS4N
Cj4gK1doZW4gdGhlIG1hc2sgb2YgYSBub24tZXZpY3RhYmxlIGlub2RlIG1hcmsgaXMgdXBk
YXRlZA0KPiArd2l0aCB0aGUNCj4gKy5CIEZBTl9NQVJLX0VWSUNUQUJMRQ0KPiArZmxhZywN
Cj4gK3RoZSBpbm9kZSBtYXJrIHJlbWFpbnMgbm9uLWV2aWN0YWJsZQ0KPiArYW5kIHRoZSB1
cGRhdGUgZmFpbHMgd2l0aA0KPiArLkIgRUVYSVNUDQo+ICtlcnJvci4NCj4gK01vdW50cyBh
bmQgZmlsZXN5c3RlbXMgYXJlIG5vdCBldmljdGFibGUgb2JqZWN0cywNCj4gK3RoZXJlZm9y
ZSwNCj4gK2FuIGF0dGVtcHQgdG8gY3JlYXRlIGEgbW91bnQgbWFyayBvciBhIGZpbGVzeXN0
ZW0gbWFyaw0KPiArd2l0aCB0aGUNCj4gKy5CIEZBTl9NQVJLX0VWSUNUQUJMRQ0KPiArZmxh
ZywNCj4gK3dpbGwgcmVzdWx0IGluIHRoZSBlcnJvcg0KPiArLkJSIEVJTlZBTCAuDQo+ICtG
b3IgZXhhbXBsZSwNCj4gK2lub2RlIG1hcmtzIGNhbiBiZSB1c2VkIGluIGNvbWJpbmF0aW9u
IHdpdGggbW91bnQgbWFya3MNCj4gK3RvIHJlZHVjZSB0aGUgYW1vdW50IG9mIGV2ZW50cyBm
cm9tIG5vbmludGVyZXN0aW5nIHBhdGhzLg0KPiArVGhlIGV2ZW50IGxpc3RlbmVyIHJlYWRz
IGV2ZW50cywNCj4gK2NoZWNrcyBpZiB0aGUgcGF0aCByZXBvcnRlZCBpbiB0aGUgZXZlbnQg
aXMgb2YgaW50ZXJlc3QsDQo+ICthbmQgaWYgaXQgaXMgbm90LA0KPiArdGhlIGxpc3RlbmVy
IHNldHMgYSBtYXJrIHdpdGggYW4gaWdub3JlIG1hc2sgb24gdGhlIGRpcmVjdG9yeS4NCj4g
K0V2aWN0YWJsZSBpbm9kZSBtYXJrcyBhbGxvdyB1c2luZyB0aGlzIG1ldGhvZCBmb3IgYSBs
YXJnZSBudW1iZXIgb2YgZGlyZWN0b3JpZXMNCj4gK3dpdGhvdXQgdGhlIGNvbmNlcm4gb2Yg
cGlubmluZyBhbGwgaW5vZGVzIGFuZCBleGhhdXN0aW5nIHRoZSBzeXN0ZW0ncyBtZW1vcnku
DQo+ICAgLlBQDQo+ICAgLkkgbWFzaw0KPiAgIGRlZmluZXMgd2hpY2ggZXZlbnRzIHNoYWxs
IGJlIGxpc3RlbmVkIGZvciAob3Igd2hpY2ggc2hhbGwgYmUgaWdub3JlZCkuDQo+IEBAIC00
MDksNiArNDUwLDE4IEBAIGlzIG5laXRoZXINCj4gICAuQiBBVF9GRENXRA0KPiAgIG5vciBh
IHZhbGlkIGZpbGUgZGVzY3JpcHRvci4NCj4gICAuVFANCj4gKy5CIEVFWElTVA0KPiArVGhl
IGZpbGVzeXN0ZW0gb2JqZWN0IGluZGljYXRlZCBieQ0KPiArLkkgZGlyZmQNCj4gK2FuZA0K
PiArLkkgcGF0aG5hbWUNCj4gK2hhcyBhIG1hcmsgdGhhdCB3YXMgdXBkYXRlZCB3aXRob3V0
IHRoZQ0KPiArLkIgRkFOX01BUktfRVZJQ1RBQkxFDQo+ICtmbGFnLA0KPiArYW5kIHRoZSB1
c2VyIGF0dGVtcHRlZCB0byB1cGRhdGUgdGhlIG1hcmsgd2l0aA0KPiArLkIgRkFOX01BUktf
RVZJQ1RBQkxFDQo+ICtmbGFnLg0KPiArLlRQDQo+ICAgLkIgRUlOVkFMDQo+ICAgQW4gaW52
YWxpZCB2YWx1ZSB3YXMgcGFzc2VkIGluDQo+ICAgLkkgZmxhZ3MNCg0KLS0gDQpBbGVqYW5k
cm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------IqEF9AwzISywIrCr0tGG2WHg--

--------------XrOhIaJC0xpSB4EFi5Gb0nzW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMXMjcACgkQnowa+77/
2zIbjA/+LMLghVWOxc8WDYQpOugsyg/ZaRg9sKZ6Oi4L4g4Y6+mkWa21rqwN5rGz
0AzQbOAhqiB0wh02CqfgD2Spuhz9XpImtSqO6mitOZz408AANhAn9j8ieVCcmPAQ
RJKF0SYvurlfak1SCehuTIkvPB9zHl9eTVeOAFgRKhBWN+G2wjuaTVXcqWEJbDud
3D0Ov3AvWVu0K27/tUkAQUjrhnDbFUybM1EivJ1Wzimw/o6LP6YBFLZoKU47xO0I
v8BsWetz4h1YNE0yWeJ5ovnjEbNWxLnxKHEX00p/HPyMHUYCcgEhcX/HSu5yjCqa
jDhHuR37C/KOSPwTsPCL7rXc4R0xulfKqhEw80Jo+DPCosTZiGJoJNSRyTsfYy7x
oBpelETvnvfPKXRaS+WPKHF8oNxZc27Oiim0Nq77XD4nNxLytU29fId09XJmpCNW
w7hA56nQkzgT7Ho53UppyIuzs8iLL6Fj76X9yDt07vyM+LZPcjuC9de4d9lclKCE
ROOlte/OczJuyH47za56+r3hLcrhX4OTo5RCsCpHYrSmoHl6t+Enl59kOC7gMrP+
aSDE2p/qJzNuC3Y52SVcLNjgD2fj5ZndIX8yXApVClER6OPev+S5VoiJMxd+AOOT
LTTG/iipLAEPbuyhRoK5urI0cFj3NVD824VyNkADeb24nMf6NY4=
=aFaa
-----END PGP SIGNATURE-----

--------------XrOhIaJC0xpSB4EFi5Gb0nzW--
