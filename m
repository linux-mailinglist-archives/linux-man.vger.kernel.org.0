Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C50F64892F
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 20:49:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbiLITta (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 14:49:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229628AbiLITt3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 14:49:29 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22382AE1F
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 11:49:28 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id u12so6195044wrr.11
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 11:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4bkaJjG175Oke4BLoACgmaKOS0ZmiIdZE3uS07NqufA=;
        b=MkNlv7idZyNCX9W/VK2HKPTcaYWPmdakDoqCedtLGiXdn20xHjFnVc1697Hc6B0hRD
         dpes8vKdZwnNlzkRRfHrHeeNoG0ZcztA5P14wfvCStIvnlzZ8ulAoAknosGegwgECmCU
         htPf0Kw2+RO8O8IHy6QF09Jz0Y+VflFnvByLTLisAmERKzJydjkQN11IyUESjCJQKUKk
         ehR3PefhaJL1grrF5LhJAKhHxvtxkij1sUto/h6lm9P6vLNJPjSKKLIDj0NYGYE6SbCH
         +Kr3T6LTJh26jzzwqMJcWpQllk1QDOK1N8saYUOIyduJDoiSGNkq7Ydq4G85dmiXFZIS
         oX0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4bkaJjG175Oke4BLoACgmaKOS0ZmiIdZE3uS07NqufA=;
        b=cJQu0k2BcNRB8psnvwOYGBe4qRKGytei6LjI9+ShQ1eLjlGVF1Yc1aIwdfMUnjhYnw
         wFq1kpDKlIVuXyeuo2wLYHkrPdYcm5WPQIuPzeMGKQTMZsl0Iv+0f4M5tB9M4+9dPMis
         o1INB8lZnBjsgB7S51+KSsBHhjGbUGXSSuQPBhpYA0rSHQxMNupkJGPbKdRKp/BPfvG8
         ike7CA2Ydco5QtxTA7OT6a/zFrX+T+Us8mVLTnC6Eoloj05RR5sYsLULbr6L4w+PmMPV
         KiGyq8YawDOCMqHlGf/F4LMeOnA3hY7A/UdP6YFwiU9Vjc5xwwMbx+xirZyH63lT8pKN
         A+5Q==
X-Gm-Message-State: ANoB5pnUXsStzNCd1cC0YA99TG4/4LvC+TBMp3RZgC71RyEojBzxsvbh
        TSpeqfe/lACPEih7IyCLy60=
X-Google-Smtp-Source: AA0mqf5r6pE/bHQPUu6u1V6VIlgM5ddJeibc4M9UMGNTieeFa3WDMr3QEfLJsocRqkzUZ+QN+aFOQA==
X-Received: by 2002:a5d:45ce:0:b0:242:4383:7e80 with SMTP id b14-20020a5d45ce000000b0024243837e80mr5188879wrs.22.1670615367436;
        Fri, 09 Dec 2022 11:49:27 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w8-20020a5d5448000000b0022584c82c80sm2110789wrv.19.2022.12.09.11.49.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 11:49:26 -0800 (PST)
Message-ID: <606b744f-131d-15b5-3242-745b400b3fa9@gmail.com>
Date:   Fri, 9 Dec 2022 20:49:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
Content-Language: en-US
To:     Jack Pearson <jack@pearson.onl>,
        Carlos O'Donell <carlos@redhat.com>,
        "H.J. Lu" <hjl.tools@gmail.com>
References: <20221202224419.231717-1-jack@pearson.onl>
Cc:     linux-man@vger.kernel.org
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221202224419.231717-1-jack@pearson.onl>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0e6QG4ZGy0jWnRAS0Qf50WC5"
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
--------------0e6QG4ZGy0jWnRAS0Qf50WC5
Content-Type: multipart/mixed; boundary="------------f1zVUpnlIMX0045HSUOix0yP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jack Pearson <jack@pearson.onl>, Carlos O'Donell <carlos@redhat.com>,
 "H.J. Lu" <hjl.tools@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <606b744f-131d-15b5-3242-745b400b3fa9@gmail.com>
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
References: <20221202224419.231717-1-jack@pearson.onl>
In-Reply-To: <20221202224419.231717-1-jack@pearson.onl>

--------------f1zVUpnlIMX0045HSUOix0yP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFjaywNCg0KT24gMTIvMi8yMiAyMzo0NCwgSmFjayBQZWFyc29uIHdyb3RlOg0KPiBE
b2N1bWVudCB0aGF0IExpbnV4IHdpbGwgcmVwb3J0IEVJTlZBTCB3aGVuIGV4aXRfc2lnbmFs
IGlzIHNwZWNpZmllZCBhbmQNCj4gZWl0aGVyIENMT05FX1RIUkVBRCBvciBDTE9ORV9QQVJF
TlQgaXMgc3BlY2lmaWVkLg0KPiANCj4gIEZyb20gY2xvbmUzX2FyZ3NfdmFsaWQgaW4gTGlu
dXg6DQo+IGBgYA0KPiAJaWYgKChrYXJncy0+ZmxhZ3MgJiAoQ0xPTkVfVEhSRUFEIHwgQ0xP
TkVfUEFSRU5UKSkgJiYNCj4gCSAgICBrYXJncy0+ZXhpdF9zaWduYWwpDQo+IAkJcmV0dXJu
IGZhbHNlOw0KPiBgYGANCj4gDQo+IEkgaGF2ZSB2ZXJpZmllZCB0aGF0IHRoaXMgaGFwcGVu
cyBvbiBteSBrZXJuZWwgd2l0aCBhIHNtYWxsIHByb2dyYW0sIGFuZA0KPiB0aGF0IHRoaXMg
ZG9lc24ndCBoYXBwZW4gd2l0aCBub3JtYWwgYGNsb25lYCB0aHJvdWdoIHRoZSBnbGliYyBo
ZWxwZXIuDQoNCkNvdWxkIHlvdSBwbGVhc2UgYWxzbyBzZW5kIGEgdGVzdCBwcm9ncmFtIHdp
dGggdGhlIGdsaWJjIHdyYXBwZXI/DQoNCkJUVywgZ2xpYmMgaGFzIGEgY2xvbmUzKDIpIHdy
YXBwZXIgc2luY2UgbGFzdCB5ZWFyLiAgSXQgd291bGQgYmUgaW50ZXJlc3RpbmcgdG8gDQpk
b2N1bWVudCBpdCBpbnN0ZWFkIG9mIHRoZSByYXcgc3lzY2FsbC4NCg0KQ2hlZXJzLA0KDQpB
bGV4DQoNCj4gDQo+IFRoZSBwcm9ncmFtOg0KPiANCj4gYGBgDQo+ICNpbmNsdWRlIDxzdGRp
by5oPg0KPiAjaW5jbHVkZSA8bGludXgvc2NoZWQuaD4NCj4gI2luY2x1ZGUgPHNpZ25hbC5o
Pg0KPiAjaW5jbHVkZSA8c3lzL3N5c2NhbGwuaD4NCj4gI2luY2x1ZGUgPHVuaXN0ZC5oPg0K
PiANCj4gaW50IG1haW4oKSB7DQo+IAlzdHJ1Y3QgY2xvbmVfYXJncyBjYSA9IHsNCj4gCQku
ZmxhZ3MgPSBDTE9ORV9USFJFQUQgfCBDTE9ORV9TSUdIQU5EIHwgQ0xPTkVfVk0sDQo+IAkJ
LmV4aXRfc2lnbmFsID0gU0lHQ0hMRCwgLy8gY29tbWVudCBtZSBvdXQgdG8gZml4IGVycm9y
DQo+IAkJLnNldF90aWRfc2l6ZSA9IDAsDQo+IAl9Ow0KPiAJc3lzY2FsbChTWVNfY2xvbmUz
LCAmY2EsIHNpemVvZihzdHJ1Y3QgY2xvbmVfYXJncykpOw0KPiAJcGVycm9yKCIiKTsNCj4g
fQ0KPiBgYGANCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphY2sgUGVhcnNvbiA8amFja0BwZWFy
c29uLm9ubD4NCj4gLS0tDQo+ICAgbWFuMi9jbG9uZS4yIHwgMTAgKysrKysrKysrKw0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
bWFuMi9jbG9uZS4yIGIvbWFuMi9jbG9uZS4yDQo+IGluZGV4IDA5MzYzMDg1OS4uYTBmYTUw
ZDgzIDEwMDY0NA0KPiAtLS0gYS9tYW4yL2Nsb25lLjINCj4gKysrIGIvbWFuMi9jbG9uZS4y
DQo+IEBAIC0xNDMzLDYgKzE0MzMsMTYgQEAgT25lIG9mIHRoZSBQSURzIHNwZWNpZmllZCBp
bg0KPiAgIC5JIHNldF90aWQNCj4gICB3YXMgYW4gaW52YWxpZC4NCj4gICAuVFANCj4gKy5C
UiBFSU5WQUwgIiAoIiBjbG9uZTMgIigpIG9ubHkpIg0KPiArLlwiIGNvbW1pdCA3ZjE5MmUz
Y2QzMTZiYTU4Yzg4ZGZhMjY3OTZjZjc3Nzg5ZGQ5ODcyDQo+ICsuQiBDTE9ORV9USFJFQUQN
Cj4gK29yDQo+ICsuQiBDTE9ORV9QQVJFTlQNCj4gK3dhcyBzcGVjaWZpZWQgaW4gdGhlDQo+
ICsuSSBmbGFncw0KPiArbWFzaywgYnV0IGEgc2lnbmFsIHdhcyBzcGVjaWZpZWQgaW4NCj4g
Ky5JIGV4aXRfc2lnbmFsLg0KPiArLlRQDQo+ICAgLkJSIEVJTlZBTCAiIChBQXJjaDY0IG9u
bHksIExpbnV4IDQuNiBhbmQgZWFybGllcikiDQo+ICAgLkkgc3RhY2sNCj4gICB3YXMgbm90
IGFsaWduZWQgdG8gYSAxMjgtYml0IGJvdW5kYXJ5Lg0KPiAtLQ0KPiAyLjM1LjENCj4gDQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------f1zVUpnlIMX0045HSUOix0yP--

--------------0e6QG4ZGy0jWnRAS0Qf50WC5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOTkUUACgkQnowa+77/
2zJGHA//Rnq3xFiPStiop25kYOIIhdgVoGyuP/3hDjNApXRKmLAJ/yZUf0jjEYZI
P4ztBldm3twl8sGvE8J5DrWD4biDupBbv3ZNW6aivFAqoVGF8tfGycAf68Wk5Vbm
q/8AB6KSVvf0VIoiYzfr3Lkjo4P75NpOrcq+jLyuzbSTwxInGuSBteaoBBoZceBn
MQ0qJ9gpunFx4PKoLfrxf6LXlXMqnwFV+5YoLWurFaI+3l+y91Smt0x6LGDOmD06
nx1iCj/OxghsN+aKMeOMhQYE96cpQCTnIuzTMmDLvq5b1Oyp4cXKsGBpgcCirMCr
1EotfJ5aKj15pDPNq0kxT5dQ9eAK2YKvSI/keww9ZuwGv3ouwTj4pN9FHEp9u29z
dAmHooYCQOgRQGoVti1WGZjzrWfUvX4PGJiMreAQhR3eg+se0umxUbcNKVWk1ttS
OGNsJ0yuCAbZr5rJ62cAnQi+KxEp6PANOQZ1qT25aXtH2T2rfLl6fTp//WYDlMZ6
I/uae/xanxc++e2oSya4BjvZE6Fw4hXL805IADRo2e7RTcBtf22bGz+WkHuBPBrS
97kG0RIUBpKee1HaovSoBgf5YBSZCQz6km++9Yt+WnVKkB/Xma9nvNTFnq/hwoJZ
+6WtvdMOdOmgGHcCodpnpAUEjyAczHPuL0JIUj8gDntE3plI/Ek=
=keh3
-----END PGP SIGNATURE-----

--------------0e6QG4ZGy0jWnRAS0Qf50WC5--
