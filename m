Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13A0553F9F8
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 11:37:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239278AbiFGJhj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 05:37:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239791AbiFGJhg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 05:37:36 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C655E2A423
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 02:37:34 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id p5-20020a1c2905000000b003970dd5404dso9229376wmp.0
        for <linux-man@vger.kernel.org>; Tue, 07 Jun 2022 02:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=q1hEf82nN0ZYR7SDJGwh6oYjvNTcUD9AgdOLkF+2JZ0=;
        b=KlIXFGzpa0ULFP8MWj0LCdiWw0h31v3aJ7SG+/Zj28o4TTa0YWwstT47+2ZphKdYRx
         Z5VCOxznK3Uy/JuIJZEEpDB9pQsAPQRH3BpH19WfMvnr8T0WXDs3Hm7T9hkVQt31ha5N
         oCqnMEVX+IDigiJJ8IsEJ/7ASKISOMkUoToQCsYvbnd/al+IUXGnMQjGVMMzTOvGmz/C
         hyVDsoECPuwGcBvPPXhicmfGx08+fxeeowRIcdn/lAf5ciYBKE5VthTDQS0w7nkwMxa5
         ZY5MvV3JRE9DbCtqj/lxTk20oeSU1T/RtH0v31kzbt2vpwHOjHQ37YQy05bgPpGawAY7
         luxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=q1hEf82nN0ZYR7SDJGwh6oYjvNTcUD9AgdOLkF+2JZ0=;
        b=e0hgcvX3R8UOUyuwJNzcDJ4yrzaS46otV5Cw9cJDfZzfonKZxSanTH3LKfy44+zQJW
         SpSWYo0UnrsqKOcqKXX5BoLk7xtG3PgVtZy9bNNXYic14yARwqNG238Sefnj425fSZfM
         II8Hy0F2LxTLRmQfWroAYHu2S7pwcX99Da1DQ+0CYZxPnNRlEUZBmsE8qVgNwiM4GXYS
         n4C4triG1pkx0JT2WM2PLJdEBhvfAgP9NhLawg8H2EeXBJdfFq+ETOlBal7y5ejRRN9Q
         6hl1OBgLkJvqX5yHYrv55ql8Ic5JyGj7sXsmeiki4wtHkGomGLGqsOwHDrIbhY/Wh/rt
         5Mtw==
X-Gm-Message-State: AOAM532ZHnEltDOfZBCyq3pQXLDrvT/Vfl3rwaDpWh+TOlSXa98/MdHm
        2p+TPU2rwSLA7tqXfX1A2HE=
X-Google-Smtp-Source: ABdhPJxHfW87aDdEarjExxV0lCzwgmbZQ3xHHk8rqdbrBrDLm65ZIJT5f4YCpm3nCAwh+KLKhpSuYQ==
X-Received: by 2002:a1c:4604:0:b0:39c:4769:3bb7 with SMTP id t4-20020a1c4604000000b0039c47693bb7mr16696900wma.115.1654594652674;
        Tue, 07 Jun 2022 02:37:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q66-20020a1c4345000000b0039c463e909asm10451360wma.18.2022.06.07.02.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 02:37:31 -0700 (PDT)
Message-ID: <b961003a-0e32-cc6b-9f87-66ae21d37f35@gmail.com>
Date:   Tue, 7 Jun 2022 11:37:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: man-pages maintainership (was: Re: [PATCH v2] madvise.2: Clarify
 addr/length and update hugetlb support)
Content-Language: en-US
To:     David Hildenbrand <david@redhat.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>, linux-mm@kvack.org,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
        Mike Kravetz <mike.kravetz@oracle.com>
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
 <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
 <fef84382-8fd5-92f6-5625-60852c32ea72@gmail.com>
 <1257e092-79af-3624-2f6a-fb5fd69e5c18@gmail.com>
 <7eb14472-d269-ecc6-1ef4-6ea81949efb1@redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <7eb14472-d269-ecc6-1ef4-6ea81949efb1@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IDNWepDUwoTC53qVztl32Jjp"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------IDNWepDUwoTC53qVztl32Jjp
Content-Type: multipart/mixed; boundary="------------DNgCP0jH0FOA8uzYAZCGCF9C";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: David Hildenbrand <david@redhat.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 Axel Rasmussen <axelrasmussen@google.com>, Peter Xu <peterx@redhat.com>,
 linux-mm@kvack.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <b961003a-0e32-cc6b-9f87-66ae21d37f35@gmail.com>
Subject: Re: man-pages maintainership (was: Re: [PATCH v2] madvise.2: Clarify
 addr/length and update hugetlb support)
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
 <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
 <fef84382-8fd5-92f6-5625-60852c32ea72@gmail.com>
 <1257e092-79af-3624-2f6a-fb5fd69e5c18@gmail.com>
 <7eb14472-d269-ecc6-1ef4-6ea81949efb1@redhat.com>
In-Reply-To: <7eb14472-d269-ecc6-1ef4-6ea81949efb1@redhat.com>

--------------DNgCP0jH0FOA8uzYAZCGCF9C
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGF2aWQsDQoNCk9uIDYvNy8yMiAwOTo0NCwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6
DQo+IEFoLCB0aGF0IGV4cGxhaW5zIHRoaW5ncy4gVGhlIG1hbi1wYWdlIGluZm8gcGFnZSBb
MV0gd2FzL2lzIHN0aWxsDQo+IHBvaW50aW5nIGF0IHRoYXQgZ2l0IHRyZWUsIHRoYXQncyB3
aHkgSSB3b25kZXJlZCB3aGF0IGhhcHBlbmVkLg0KDQpZdXAuICBCVFcsIHRoYXQgcmVtaW5k
cyBtZSBJIG5lZWQgdG8gYXNrIGhvdyB0byB1cGRhdGUgdGhhdCB3ZWJzaXRlLiANCk5vdyB0
aGF0IGV2ZXJ5dGhpbmcgZ29lcyBiYWNrIHRvIG5vcm1hbCwgSSBkb24ndCBuZWVkIHRvOyBi
dXQgc3RpbGwgDQpzaG91bGQga25vdyBob3cgdG8uDQoNCj4+PiBJJ20gbm90IHZlcnkgY29u
Y2VybmVkIGFib3V0IHRoaXMsIHNpbmNlIGluIGVzc2VuY2UsIGEgZm9yayBvZiB0aGUNCj4+
PiBtYW51YWwgcGFnZXMgaXMgc3RpbGwgdmVyeSB3ZWxsIG1haW50YWluZWQgb24gbXkgc2Vy
dmVyLCBhbmQgZnJlZSBmb3INCj4+PiBhbnlvbmUgaW50ZXJlc3RlZCBpbiByZWFkaW5nIHVw
LXRvLWRhdGUgcGFnZXMuwqAgQW5kIHNpbmNlIEkgZG8gdGhpcyBvbiBhDQo+Pj4gaG9iYnkg
YmFzaXMgKG15IGNvbXBhbnkgZG9lc24ndCBwYXkgbWUgdG8gZG8gdGhpcyBhdCBhbGwpLCBJ
IGRvbid0IGNhcmUNCj4+PiBhdCBhbGwgYWJvdXQgbm90IGhhdmluZyByZWxlYXNlZCBpbiBh
bG1vc3QgYSB5ZWFyIG5vdy7CoCBUaGF0J3MgbW9yZSBvZiBhDQo+Pj4gcHJvYmxlbSBmb3Ig
ZGlzdHJvcyBhbmQgY29tcGFuaWVzLCB3aGljaCBuZWVkIHJlbGVhc2VzLsKgIEZvcg0KPiAN
Cj4gSGVoLCBpbmNsdWRpbmcgbWUgOykNCg0KV2hpY2ggcGFydCBvZiB0aGF0IHRleHQgaW5j
bHVkZXMgeW91PyAgImludGVyZXN0ZWQgaW4gcmVhZGluZyB1cC10by1kYXRlIA0KcGFnZXMi
PyAgT3IgIm5lZWQgcmVsZWFzZXMiPyAgT3IgYm90aD8gIDotKQ0KDQo+IA0KPj4+IGluZGl2
aWR1YWxzLCBJIHJlY29tbWVuZCBnZXR0aW5nIGEgY29weSBvZiBteSBtYW51YWwgcGFnZXMn
IGdpdCByZXBvIGFuZA0KPj4+IGBtYWtlIGluc3RhbGxgLg0KPiANCj4gVGhlIHBvaW50IEkg
d2FzIG1pc3NpbmcgaXMgdGhhdCB0aGVyZSBpcyBhIGZvcmsoKS4gSSBoYXZlbid0IHNlZW4g
bm90aWNlDQo+IG9mIHRoYXQsIHRoYXQncyB3aHkgSSBhc2tlZC4NCj4gDQo+IEl0IG1pZ2h0
IGhhdmUgYmVlbiBoZWxwZnVsIHRvIHJlcGx5IHdpdGggc29tZXRoaW5nIGxpa2UgIlBhdGNo
IGFwcGxpZWQNCj4gdG8gbXkgbWFuLXBhZ2VzIGdpdCBmb3JrIi4sIGluY2x1ZGluZyBhbiBV
UkwuIEJ1dCB5b3Ugc2VlbSB0byBoYXZlDQo+IGFjY2VzcyB0byB0aGUgb2ZmaWNpYWwgbWFu
LXBhZ2VzIHByb2plY3Qgbm93LCB3aGljaCBpcyBnb29kIHRvIGtub3cuDQoNCll1cC4gIFNv
cnJ5LCBJIHdhcyBhIGJpdCBsYXp5IDopDQoNCj4gDQo+Pj4NCj4+PiBJIGFwcGxpZWQgcmVj
ZW50bHkgZm9yIGEga2VybmVsLm9yZyBhY2NvdW50LCBzbyBtYXliZSB0aGUgb2ZmaWNpYWwg
cmVwbw0KPj4+IGNhbiBiZSBtYWludGFpbmVkIGFnYWluIHNvb24uwqAgU3RpbGwsIEkgZG9u
J3QgZXhwZWN0IHJlbGVhc2luZyBzb29uIGV2ZW4NCj4+PiBpZiBJIGdldCBhY2Nlc3MgdG8g
a2VybmVsLm9yZyBhbmQgY2FuIHVwZGF0ZSB0aGUgZ2l0IHJlcG8uwqAgSSBuZWVkIHRvDQo+
Pj4gbGVhcm4gaG93IHRvIGRvIGEgcmVsZWFzZSBwcm9wZXJseSBiZWZvcmUgSSdsbCByZWxl
YXNlIGEgbmV3IHZlcnNpb24sDQo+Pj4gYW5kIHRoYXQgd2lsbCB0YWtlIGEgbG90IG1vcmUg
ZWZmb3J0IGFuZCB0aW1lIGZyb20gbXkgc2lkZSB0aGFuIHVwZGF0aW5nDQo+Pj4gdGhlIHJl
cG8uDQo+Pj4NCj4+PiBUaGFua3MgZm9yIHlvdXIgcGF0aWVuY2UhDQo+IA0KPiBUaGFua3Mg
Zm9yIHlvdXIgaGFyZCwgdm9sdW50YXJ5IHdvcmshDQoNCj0pDQoNCj4gDQo+Pg0KPj4gQlRX
LCBJIGp1c3QgcmVsZWFzZWQgYSBzaWduZWQgZ2l0IHRhZyBpbiBteSByZXBvLCB0byBtYWtl
IGl0IGEgYml0IG1vcmUNCj4+IHNlY3VyZSB0byBrbm93IHRoYXQgeW91J3JlIGdldHRpbmcg
bXkgbWFudWFsIHBhZ2VzLCBhbmQgbm90IHNvbWUgTUlUTQ0KPj4gZmFrZSBzdHVmZi4NCj4+
DQo+PiA8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy9zcmMvYWx4L2xpbnV4L21h
bi1wYWdlcy9tYW4tcGFnZXMuZ2l0L3RhZy8/aD1tYW4tcGFnZXMtNS4xOS1yYzE+DQo+Pg0K
Pj4gTXkgUEdQIGtleSBpcyBzaWduZWQgYnkgbXRrLiAgT25seSB0cnVzdCBpdCBpZiBpdCBo
YXMgaGlzIHNpZ25hdHVyZS4NCj4+IEknbSBhdHRhY2hpbmcgaXQgaW4gdGhpcyBlbWFpbCwg
c28gdGhhdCBpdCBjYW4gYmUgZm91bmQgaW4gdGhlIGxpc3QgKEknbQ0KPj4gaGF2aW5nIHNv
bWUgaXNzdWUgd2l0aCB0aGUga2V5c2VydmVyKS4NCj4gDQo+IEkgY2FuIHNwb3QgaXQgb24g
dGhlIG9mZmljaWFsIGdpdCB0cmVlIFsyXSBhcyB3ZWxsLCBlc3NlbnRpYWxseSB2aWENCj4g
YWx4L21haW4uIE5pY2UuDQoNClllcywgYW5kIHNvb24gaW4gbWFzdGVyLiA6KQ0KU3RpbGwg
ZmFyIGZyb20gYSByZWxlYXNlLCBob3dldmVyOyBJIG5lZWQgaGVscCB3aXRoIHRoYXQuDQoN
Cg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------DNgCP0jH0FOA8uzYAZCGCF9C--

--------------IDNWepDUwoTC53qVztl32Jjp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKfHFoACgkQnowa+77/
2zLc1w/+L9yW1jrJ3S9QLxFSxPtrcpVd2nbshvbdlHBKpzFv2njyoZAJDEHhYQ/t
onFpgqDsLRrHJqG+X/ljgNsWvPRxCbAn1ga3Tc22RcNVGy6RbdjCIDrS6i8NDggg
CS31uC9EL2bV2T+XClwgkPw8vR06OKk5gtZGrwbbys8ofpQOPxgw1G7dMiSkjI8f
qof8MwmYSyirfgwyu+E+kg1mw8ro86rYcP7pUJB5JoCCpZdnz8MEw8AUI61Gound
EeklEHWkJqnCH1vn26y/5wgD6eCnrcikix/iOI7GM5TTWBb7PiSsz8MDocf8DI7h
juGJ2+yP4PxdPyvw0BTzoopYyCsLbTN5ZnI8aOjp2eOk/+1HzzCSHDldXL9MlKLT
4mEczwET1tPHB6sD4pr+q1MQgXFj/XcEzw3fbfuZcTd1J0wG+DubhZhWdWaY+jft
57oQAVPv8U/9H8tL1zwTTWlQ9lUW7qepPPWA19FyrNgFGbLycUA4kbwQJuFaURzN
BMPDwQFp2KlHmaUJPlu8yU1TP/j2oWlFYI6VQm8F1DbQK6Hm4ZMbUgeH7ntBOjgi
/vJRC8m1fS3Mqa/EX3WuTgNztAGU5sTaS/bTGDsQDzlH3DssCedDrq8z/a/wyvBF
nVFxBqOvUEz+rV61i/ftUXCZTbEzvzssn8NCzbx6xljAJIU/QGI=
=EiTD
-----END PGP SIGNATURE-----

--------------IDNWepDUwoTC53qVztl32Jjp--
