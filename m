Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA9757EA65
	for <lists+linux-man@lfdr.de>; Sat, 23 Jul 2022 01:47:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231478AbiGVXrx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 19:47:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiGVXrw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 19:47:52 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFF12BF9B6
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 16:47:50 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id l15so4376099wro.11
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 16:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=l7yfV0W8c+c/lvtw8msAnGWpaDUPxVjX1pZQpArXuVE=;
        b=cBGhxH6GDP3+IICqql8kbz7fQiM/MCbUxEsdIzsZ5daxPmVLfCvRKLgpHfVpMKy26L
         JjHW5aahr5aKg4D8V6OeWmlDQUfh2i9QQf+wTFdKj50dIHkS0MIvdQl6vZY3H+nAwWGN
         xQUs0APPEsnvw7mlKNkyulGdVNw8mHU50gdxXCHOqbJOOa6I1nVHRm2SIS4V76JaeEdP
         qmU2NWdC8NzES8sQFxG5W7FUgQWbstaNom8bxmdpEJq9bx0HZHRPkGOS8gKP9xv08h4V
         oxneNBug94lJD2r/gZuiRc5jbozGug0RebaKFD4B7KJUK8L2CnMb62lIsOFrhft6A4Nx
         tixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=l7yfV0W8c+c/lvtw8msAnGWpaDUPxVjX1pZQpArXuVE=;
        b=WmL3fRyqL3vg/0EH+k5shZ+D/dz+/8iR3Gqtw13vJlQmRKwfWh9hV/QEugO6GkfVDZ
         m9/9JEsYpd+/QODK5LgdwD/A1GEyRPEvwWq+NQNRnZa3ekyI1isMJFj4D0cs9eDfmmO0
         3jplbzRDOTu6U8MfphexlQjyfD7b2Dq8QVaB0AYH7Sem+SBC2qC5I0LM/ZJXARBPAn6H
         s9QCRusshin1RO+YOUq+TgnaNh8b2MEvk93bM/aqNDh7u7//gRWXwQyEOXkih+CzpVoK
         pHdneMLjIonrWI18Qy2mR3g9QdsYEzkNm6oOQnmEZvcH4dgKe2s0wRTtdB1b6y5R4f0F
         V5bQ==
X-Gm-Message-State: AJIora9+q6ZXCATriEc1i6p4V4O0JqOFKOU/dYkU240OHIqowkgTW6Qe
        3W99PFNmCgseQ93Mnvhm34swAa9lCGE=
X-Google-Smtp-Source: AGRyM1uh0fXg4Xyw0PNLU0OZbZzFiYTQIGcnNHvkal3QeCA61rZkW9osJ+T7URwIAIPe+zLjzvjnqw==
X-Received: by 2002:adf:ef0e:0:b0:21e:69c9:2db4 with SMTP id e14-20020adfef0e000000b0021e69c92db4mr1312974wro.697.1658533669095;
        Fri, 22 Jul 2022 16:47:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f8-20020a05600c4e8800b003a31673515bsm11839016wmq.7.2022.07.22.16.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 16:47:48 -0700 (PDT)
Message-ID: <1cae9a0e-823a-0e63-77f0-a80c308d804f@gmail.com>
Date:   Sat, 23 Jul 2022 01:47:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: man(7) DS and DE macros (was: [PATCH 4/5] tm.3type: describe
 tm_zone, tm_gmtoff)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
 <20220722033353.ap7aqxh6uhghdcxo@illithid>
 <c59d4741-7d12-7845-5112-9f16f9467596@gmail.com>
 <20220722222045.y7i3yc7d6agygien@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220722222045.y7i3yc7d6agygien@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fNvFUNxGfyy0XL8sYD7CeJhN"
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
--------------fNvFUNxGfyy0XL8sYD7CeJhN
Content-Type: multipart/mixed; boundary="------------F8krAOvBLnJAs077xAxUA4nF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Message-ID: <1cae9a0e-823a-0e63-77f0-a80c308d804f@gmail.com>
Subject: Re: man(7) DS and DE macros (was: [PATCH 4/5] tm.3type: describe
 tm_zone, tm_gmtoff)
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
 <20220722033353.ap7aqxh6uhghdcxo@illithid>
 <c59d4741-7d12-7845-5112-9f16f9467596@gmail.com>
 <20220722222045.y7i3yc7d6agygien@illithid>
In-Reply-To: <20220722222045.y7i3yc7d6agygien@illithid>

--------------F8krAOvBLnJAs077xAxUA4nF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gNy8yMy8yMiAwMDoyMCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gW2Ryb3BwZWQg0L3QsNCxIGZyb20gQ0MgbGlzdDsgYWRkZWQgZ3JvZmZAXQ0K
PiANCj4gQXQgMjAyMi0wNy0yMlQxMjo1Nzo1MyswMjAwLCBBbGVqYW5kcm8gQ29sb21hciAo
bWFuLXBhZ2VzKSB3cm90ZToNCj4+IFlvdSBhbnN3ZXJlZCBhbGwgdGhhdCBJIHRob3VnaHQg
eW91IHdvdWxkLCBhbmQgZXZlbiBtb3JlLiAgQXMgYWx3YXlzLA0KPj4geW91IHN1cnByaXNl
IG1lIHdpdGggZ3JlYXQga25vd2xlZGdlIHRoYXQgSSBkaWRuJ3QgZXZlbiBrbm93IEkgY291
bGQNCj4+IGFzayBmb3IsIGFuZCB0aGF0J3MgdGhlIG1haW4gcmVhc29uIEkgdGVuZCB0byBu
b3QgdHJ5IHRvIGRpcmVjdCB5b3VyDQo+PiBhbnN3ZXJzLiAgVGhleSdyZSBhbHdheXMgd2Vs
Y29tZSAoYWx0aG91Z2ggc29tZXRpbWVzIHRoZSBrbm93bGVkZ2UgaXMNCj4+IHRvbyBtdWNo
IGZvciBtZSwgYSBub3ZpY2UgZ3JvZmYoNykgdXNlciwgdG8gdW5kZXJzdGFuZCBpdDsgYnV0
IEkgdHJ5DQo+PiB0bykuDQo+IA0KPiBBd3csIHNodWNrcy4gIFdlbGwsIG5ldmVyIGhlc2l0
YXRlIHRvIGNvcnJlY3Qgb3IgY2hhbGxlbmdlIG1lOyB0aGUgYmVzdA0KPiBrbm93bGVkZ2Ug
aXMgdGVzdGVkIGtub3dsZWRnZS4NCg0KOi19DQoNClN1cmUhDQoNCj4gDQo+PiBPbiA3LzIy
LzIyIDA1OjMzLCBHLiBCcmFuZGVuIFJvYmluc29uIHdyb3RlOg0KPj4+IE9oLCBib3RoZXIu
ICBCYXNoIGF1dG9jb21wbGV0aW9uIGZvciAibWFuIiBvbiBteSBEZWJpYW4gYnVsbHNleWUg
aXMNCj4+PiB0b28gZHVtYiB0byByZWNvZ25pemUgdGhpcyBuZXcgbWFuIHBhZ2Ugc3VmZml4
LiAgSSB0cnVzdCBzb21lb25lDQo+Pj4gcmVhZGluZyB0aGlzIGlzIGF3YXJlIG9mIHRoZSBw
cm9ibGVtIGFuZCBpcyBmaXhpbmcgaXQgZm9yIHRoZSBuZXh0DQo+Pj4gRGViaWFuIHJlbGVh
c2UuICAoSGFzIHNvbWVvbmUgZmlsZWQgdGhpcyBhcyBhIGJ1ZyB3aXRoIHRoZSBEZWJpYW4N
Cj4+PiBCVFM/KQ0KPj4NCj4+IEkgZG9uJ3QgdGhpbmsgaXQncyBiZWVuIHJlcG9ydGVkLiAg
SSd2ZSBkZXRlY3RlZCBzb21lIHVucGxlYXNhbnRuZXNzLA0KPj4gYnV0IHNpbmNlIEkgYWxz
byBoYWQgc29tZSB1bnBsZWFzYW50bmVzcyB3aXRoIHBhZ2VzIGluIHRoZSBtYWluDQo+PiBz
ZWN0aW9ucywgSSBkaWRuJ3Qga25vdyBpZiB0aGVyZSB3YXMgZXZlbiBtb3JlIG9mIGl0IHdp
dGggc3Vic2VjdGlvbnMuDQo+Pg0KPj4gV2FzIGl0IHRyeWluZyB0byByZWFkIGEgbWFudWFs
IHBhZ2UgZnJvbSBhIHJlbGF0aXZlIHBhdGg/DQo+IA0KPiBZdXAuICBJIHdhcyAibWFuIC1s
Ii1pbmcgaW5zaWRlIG15IEdpdCBjaGVja291dCBvZiBtYW4tcGFnZXMuDQoNClNpbmNlIEkg
ZG9uJ3Qgc2VlIGEgYmlnIGJlbmVmaXQgaW4gYmVpbmcgYWJsZSB0byBub3JtYWxseSByZWFk
IG9sZCANCnJlbGVhc2VzIG9mIHRoZSBtYW5wYWdlcywgSSByZWNvbW1lbmQgeW91IGluc3Rh
bGxpbmcgdGhlbSBpbnRvIA0KL3Vzci9sb2NhbC4gIElmIHlvdSBldmVuIG5lZWQgdG8gcmVh
ZCBhbiBvbGQgbWFuIHBhZ2UsIHlvdSBjYW4gZmluZCBpdCANCm1hbnVhbGx5Lg0KDQo+IE5v
IGluZGVlZC4gIE15IExvZ2l0ZWNoIHRodW1iLW9wZXJhdGVkIHRyYWNrYmFsbCBoYXRlcyBt
ZSwgYXMgZG9lcyB0aGUNCj4gY29tcGFueS0tdGhleSBkb24ndCBldmVuIHNlbGwgYSBjb3Jk
ZWQgdmVyc2lvbiBhbnltb3JlLiAgRHVlIHRvIHNvbWUNCj4gZGlhYm9saWNhbCBjb2xsdXNp
b24gd2l0aCB0aGUgYWxrYWxpbmUgY2FydGVsLCB0aGVpciBkZXZpY2VzIHJlZnVzZSB0bw0K
PiBvcGVyYXRlIHJlbGlhYmx5IGFmdGVyIGEgZnJlc2ggYmF0dGVyeSBoYXMgYmVlbiBpbnN0
YWxsZWQgZm9yIG1vcmUgdGhhbg0KPiBhYm91dCA3MSBzZWNvbmRzLg0KDQpEbyB5b3UgcmVj
b21tZW5kIHRob3NlIHRoaW5ncz8gIEkgaGFkIGNvbnRhY3Qgd2l0aCBvbmUgd2hlbiBJIHdh
cyB2ZXJ5IA0KbGl0dGxlIChsaWtlIDEwIHlyIG9sZD8pIGluIGEgbGlicmFyeSwgYW5kIGhh
dmUgbmV2ZXIgc2VlbiBvbmUgb2YgdGhvc2UgDQphZ2Fpbi4gIEkgZGlkbid0IGxpa2UgaXQg
YXQgdGhlIHRpbWUsIGJ1dCBJIG1pZ2h0IGNoYW5nZSBteSBvcGluaW9uIG5vdyANCnRoYXQg
SSBoYXRlIG1vcmUgYW5kIG1vcmUgdGhlIG1vdXNlIGV2ZXJ5IGRheS4NCg0KPiANCj4+IEFu
eXdheSwgSSB1c2VkIHBkZm1hbigpWzFdIHRvIHJlYWQgdGhlIHBhZ2UgaW4gUERGLCBhbmQg
SSBnZXQgeW91cg0KPj4gcG9pbnQuDQo+IA0KPiBJJ20gdHJ5aW5nIHRoZSBhdHRhY2htZW50
IGFnYWluIGZvciB0aGUgYmVuZWZpdCBvZiBsaXN0IHJlYWRlcnMuDQoNCkkgZ3Vlc3MgeW91
IGZvcmdvdCBpdCwgJ2NhdXNlIEkgY2FuJ3Qgc2VlIGl0IDovLg0KDQoNCj4gDQo+IEkgdGhp
bmsgZ29pbmcgYWhlYWQgYW5kIHVzaW5nIHRhYnMgYXMgYSBmaXJzdCBjdXQgaXMgYSBnb29k
IGlkZWEuICBJDQo+IHdvdWxkIHJlY29tbWVuZCBfYWdhaW5zdF8gYWRkaW5nIHN1cHBsZW1l
bnRhbCBhZGphY2VudCB0YWJzIHRvIG1hbnVhbGx5DQo+IGNvcnJlY3QgY2FzZXMgb2YgbWlz
YWxpZ25tZW50LiAgQSB0YWIgY2hhcmFjdGVyIGFsd2F5cyBjYXVzZXMgbW90aW9uIHRvDQo+
IHRoZSBuZXh0IHRhYiBzdG9wIHRvIHRoZSByaWdodCBvZiB0aGUgY3VycmVudCBkcmF3aW5n
IHBvc2l0aW9uLCBzbyBpdA0KPiBzaG91bGQgbmV2ZXIgaGFwcGVuIHRoYXQgdGV4dCBvdmVy
cnVubmluZyBhIHRhYiBzdG9wIHdpbGwgZ2V0DQo+IG92ZXJwcmludGVkLg0KDQpUaGF0J3Mg
d2h5IEkgZG9uJ3QgdXNlIChJIGRpZCwgYnV0IG5vdCBhbnltb3JlKSB0YWJzIGZvciBhbGln
bm1lbnQgaW4gQy4gDQogIHRhYnMgZm9yIGluZGVudGF0aW9uLCBzcGFjZXMgZm9yIGFsaWdu
bWVudC4NCg0KU2luY2Ugd2UncmUgZG9pbmcgYWxpZ25tZW50IGhlcmUsIHlvdSdyZSByaWdo
dCwgYW5kIEkgc2hvdWxkbid0IHVzZSANCm11bHRpcGxlIHRhYnMuICBCdXQgSSBkb24ndCB3
YW50IHRvIGdvIHNvIGZhciBhcyB0byBjb25maWd1cmluZyB0aGUgdGFiIA0Kd2lkdGgsIG5v
dCBldmVuIHdpdGggYSBtYWNyby4gIFRoYXQncyB0b28gY29tcGxleC4NCg0KU28gaW4gdGhl
IGVuZCwgSSBkZWNpZGVkIHRibCgxKSBpcyB0aGUgb25seSBzYW5lIHdheSB0byBkbyBpdCAo
eW91IGRvbid0IA0KbmVlZCB0byB0aGluazsgYXQgbGVhc3Qgbm90IGFueSBtb3JlIHRoYW4g
dGhlIGxlYXJuaW5nIGN1cnZlIG9mIHRibCgxKSkuIA0KICBXaGVuIG1hbnkgcGFnZXMgdXNl
IHRibCgxKSBmb3IgdGhlIFNZTk9QU0lTIG9mIHR5cGVzLCBldmVuIG5ldyANCmNvbnRyaWJ1
dG9ycyBzaG91bGQgZmluZCBpdCBlYXN5IHRvIHdyaXRlIGEgbmV3IHN0cnVjdHVyZSBmb2xs
b3dpbmcgdGhlIA0KZXhhbXBsZXMuDQoNCj4+PiBDMy4gVGhlIGFib3ZlIGhhcyB0aGUgcHJv
YmxlbSB0aGF0IGl0IHJlbGllcyB1cG9uIHRoZSB3cml0ZXIgdG8ga25vdw0KPj4+ICAgICAg
IHdoaWNoIHBpZWNlcyBvZiB0ZXh0IGJldHdlZW4gdGhlIHRhYiBzdG9wcyBhcmUgdGhlIGxv
bmdlc3QuDQo+Pj4gICAgICAgVGhpcyBzb3VuZHMgbGlrZSBhbiBvYnZpb3VzIHRoaW5nIHRo
YXQgbm8gb25lIHdvdWxkIGV2ZXIgc2NyZXcNCj4+PiAgICAgICB1cC4gIEkgdGhpbmsgdGhh
dCBhc3N1bXB0aW9uIHdvdWxkIGJlIHN3aWZ0bHkgb3ZlcnR1cm5lZC4NCj4+DQo+PiBNYXli
ZSB5b3UgY2FuIHNldCB1cCAuVEEgc28gdGhhdCBpdCB0YWtlcyB0aGUgbG9uZ2VzdCBvZiBh
IHNldCBvZg0KPj4gY29uc2VjdXRpdmUgLlRBPyAgVGhhdCdzIGFscmVhZHkga2luZCBvZiB0
YmwoMSkuICBNYXliZSB3ZSBzaG91bGQgdXNlDQo+PiB0YmwoMSkgZm9yIHRoYXQgOlAuDQo+
IA0KPiBZZXMsIHRoYXQgc2VlbXMgYSBicmlkZ2UgdG9vIGZhciB0byBtZS4gIElmIGl0cyBm
ZWF0dXJlcyBhcmUgbmVlZGVkLA0KPiB0aGVyZSBpcyBubyBzaGFtZSBpbiByZWFjaGluZyBm
b3IgdGJsKDEpLg0KDQpJIHZlcnkgbXVjaCB3YW50IHRob3NlIGZlYXR1cmVzIChubyBuZWVk
IHRvIHRoaW5rIGFib3V0IHdoaWNoIGZpZWxkIHdpbGwgDQpiZSB0aGUgd2lkZXN0KS4gIFNv
LCB0aGF0IGxlYXZlcyBtZSB3aXRoIGdvb2Qgb2wnIHRibCgxKS4NCg0KPiANCj4+IFdvdWxk
IHlvdSByZWNvbW1lbmQgbWUgdXNpbmcgdGJsKDEpLCBvciAuRVgsIG9yIHRhYnMgKGluIHRo
ZSBzaW1wbGUNCj4+IHdheSk/DQoNCldlIGFncmVlIHRoYXQgd2Ugd291bGQgbGlrZSB0byBh
dm9pZCAuRVguDQp0YWJzIHdvdWxkIGJlIGVpdGhlciBpbXBlcmZlY3QsIG9yIHRvbyBjb21w
bGljYXRlZCwgb3Igd2Ugd291bGQgYmUgDQpyZWludmVudGluZyB0YmwoMSksIHNvIGxldCBp
dCBiZS4NCj4gDQo+Pj4gRC4gQ29uZ3JhdHVsYXRpb25zLCB5b3UndmUgZGlzY292ZXJlZCB0
YmwoMSkuWzFdDQo+Pg0KPj4gU28gaXQgc2VlbXMuDQoNClNvIGl0IHNlZW1zLi4uDQoNCj4g
DQo+IEkgZmFuY3kgdGhhdCBJIHJlY29uc3RydWN0ZWQgdGhlIHNlcXVlbmNlIG9mIGV2ZW50
cyB0aGF0IGxlZCBNaWtlIExlc2sNCj4gdG8gd3JpdGUgaXQuICBUaGlzIGNvdWxkIG9mIGNv
dXJzZSBiZSBjb21wbGV0ZWx5IHdyb25nLiAgOy0pDQoNCkkgZ3Vlc3MsIHllcyA6RA0KDQo+
IA0KPj4gU28gbm8gc2luZ2xlLXNpZGVkIHNwYWNlIGZvciBlbSBkYXNoZXMgLS1zdWNoIGFz
IHRoaXMgb25lLS0sIHJpZ2h0Pw0KPj4gTWF5YmUgdGhhdCdzIGEgY29uc3RydWN0aW9uIG9m
IG15IGJyYWluLCB0cnlpbmcgdG8gbWFrZSB0aGVtIGEgYml0DQo+PiBtb3JlIGxvZ2ljLi4u
DQo+IA0KPiBJIGhhdmVuJ3Qgc2VlbiB0aGF0IG91dHNpZGUgb2YgdGhpbmdzIGxpa2UgbW9y
ZSgxKSBwcm9tcHRzOyBteSBmZXcNCj4gbWVtb3JpZXMgb2Ygc3VjaCBmZWVsIGRlY2FkZXMg
b2xkLCBwcm9iYWJseSBvZiBiZXNwb2tlIGltcGxlbWVudGF0aW9ucw0KPiBmb3IgMTk4MHMg
bWljcm9zLg0KDQpJIHRoaW5rIGJvb2tzIGluIFNwYW5pc2ggdGVuZCB0byB1c2Ugc2luZ2xl
LXNwYWNlZCBlbSBkYXNoZXMuICBJJ2xsIHRyeSANCnRvIHJlbWVtYmVyIHRvIGNoZWNrIHdo
ZW4gcmVhZGluZy4NCg0KPiANCj4gT3IgbWF5YmUgSSdtIHRoaW5raW5nIG9mIE5ldEhhY2su
WzFdDQoNCk9oLCB5ZXMsIHRoZSBvdGhlciBwYWdlIGluIG1hbjYgOkQNCg0KPiANCj4gU28g
aGVyZSdzIHRoZSBjcmF6eSBpZGVhLg0KPiANCg0KWy4uLl0NCg0KU29ycnkgdG8gY29tcGxl
dGVseSBkcm9wIGl0IGZyb20gdGhlIGVtYWlsLCBidXQgSSB0aGluayBpdCB3b3VsZCBiZSAN
CmhhcmRlciB0byB1c2UgdGhhbiB0YmwoMSksIGZvciBsZXNzIGZ1bmN0aW9uYWxpdHkuICBJ
J20gYWxyZWFkeSB0cnlpbmcgDQp0YmwoMSkuICBHb29kIG5ld3MgaXMgSSdsbCByZXZpZXcg
eW91ciBwYWdlISAgSSdsbCB0cnkgdG8gbWFrZSBpdCB3b3JrIA0Kd2l0aG91dCByZWFkaW5n
IGFueXRoaW5nIG90aGVyIHRoYW4gdGhhdCBwYWdlLg0KDQogPiBTbyBpdCBjYW4ndCBiZSB3
cm9uZywgYW5kIHdpbGwgbmV2ZXIgYmUgaXNzdWVkIHNwdXJpb3VzbHkuWzJdDQoNCg0KQ2hl
ZXJzLA0KDQpBbGV4DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCj4gDQo+IFsxXSBo
dHRwczovL2dpdGh1Yi5jb20vTmV0SGFjay9OZXRIYWNrL2Jsb2IvTmV0SGFjay0zLjcvZG9j
L0d1aWRlYm9vay5tbiNMNDI4DQo+IFsyXSBmYW1vdXMgbGFzdCB3b3Jkcw0KDQpPaCwgdGhh
dCBtYWRlIG1lIHJlbWVtYmVyIG9mIHNvbWVvbmUgdGhhdCBJIGtub3csIHRoYXQgc2FpZCB0
aGUgZGF5IG9mIGEgDQpyZWxlYXNlOiAiSXQgbXVzdCB3b3JrLCBJIHRlc3RlZCBpdCBvbiBt
eSBjb21wdXRlciIuIExPTCENCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------F8krAOvBLnJAs077xAxUA4nF--

--------------fNvFUNxGfyy0XL8sYD7CeJhN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLbNxwACgkQnowa+77/
2zIQFg//Zjo2cbZLvRPeHbdhwBuqr0oVXVlaWrdIhP/W5ek00kigs5SZ2OkVvUyU
D+06xwjle/t47z+H7Q1UbURcwc1WH/G9x9Swg0VzKkYkemsJf+RtOxPv315zowxg
PWvJNe0TGAB4TJVMkvtYrcY0FmhWfKRG7o+KnjmwR8lW/T9V7OBf8kgx8a1I1tJw
2VqkIt8m9oK5ldGg6Q0t42RXm+tedttcSmaarMeMjIwJW1ugs4agXeal3Xxc7acC
cL894OkZRFy0RNwyPj9YA45wTgDvTYpgay013TOP3vqqU11UgnQIYIr7kQ1E3FCI
RHhU2JfXhyMoX2ZxH0i1/0tCWPTHyMCGUFC2epJnYppCrv3ZDJsk/eLMrTxD9nep
VTNHgyCsVybfcn3/nlHlk4a9c76LcIFiq32xCMElB8KOzsbOzORmE6U/Mu4PyML+
FMI8kMFGbjSuiw1YYBHQbHMTCCqqQr1wNxgNrZ9jJA5sbweFcThjKEcszfnXUU/c
sl4rGshG9BPGlbzd+VowTIX45ufGxHBIELl83prXob4Kv7A840NnQTdALwLzhY2a
F+0hYFlr6yOEhaCJRiqFkfijpsvLMI1m6C8ymG8IU2Med3iVc5Z9wKJqsfe4Ykaf
bkLqn7toweM6rjVH0S+FWVHfF43QDlTta25NOW5/FKIGrLbYQHs=
=kf31
-----END PGP SIGNATURE-----

--------------fNvFUNxGfyy0XL8sYD7CeJhN--
