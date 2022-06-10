Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD83F546500
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 13:02:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349262AbiFJLCq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 07:02:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345209AbiFJLCT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 07:02:19 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 135E023525C
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 04:01:56 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id n185so13720304wmn.4
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 04:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=34UOntnmUSQfZK1Ical7Bn9e4HAZZfgN+kjSQrVVJms=;
        b=CdoFx1JoC4IOoe3zY6sEhYoJu5E0yxcZcRd0hBqbLYqupiQ+DZ55aXeROEazTO2Ldg
         rXlTmCr9rXWxjNYPURpbb7BeJzIz+x0013fxSz6d7OGoHe4qWt/37Ii60tXDMxyGo0Yo
         Bai+CO8UIWC4us5epe8LyVoqxQ3n4/70b6wur8Z2oXJGBnRm58qrycIjdXH6sdunJK+p
         7HamYHDgwyUIym1oHZ86RNgZzKUlQbmJkEBKdfHg2deWIMuz0jrT9Wl66VLAk7j/JQkY
         GLOLHYG5XemRNKV3hLBIq/8aw1Dff4ibA9izMJezP0Nv6H3AiTDPr9OsZGdBI+Oq0Nf+
         Q3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=34UOntnmUSQfZK1Ical7Bn9e4HAZZfgN+kjSQrVVJms=;
        b=d9scbYTHACzvVQffGouLPTfgS68ei5BEK1d944+HpTAL0FKOHA1HkOfaMu49hkH3wq
         yq9fZPbstfBD7TIZhXdMtRNQ6iFpFMkqMXHFwtLODFelodlG9TYVlrad2IPZp23isQfE
         8QUjHB8VzIg+23seb5W1bQH42I7l5HDVi1Fw1MH8eODmjIhBce1Iu1y152OtKRaIlY7q
         BxC+41ioOQmoVN37PS5sKwTNCwcigBRzBc51zextbLkmgVtLBqZ/WJW9fRc2QjoHBlkq
         9/If5HHzVOeyKFqUWxKLysi+tLzszqszjz75aDLGJA3x9W916Pk1uiW5zx647MKyL+G3
         L/8Q==
X-Gm-Message-State: AOAM53195XYqALxO3cRRhwnvZHHcT7Z70z9rTYbunl6OFFjUnA8p947h
        qXLxZr1LZK+TWnjU/aFgj2cKv5izKutl+w==
X-Google-Smtp-Source: ABdhPJzkY7cEP/usq29T2OxAVxgB43vFVfPG9gXS2CP+Ezyy5m+pc1y87oOmGRa2JjE5DqHl/uxzaA==
X-Received: by 2002:a05:600c:2e48:b0:39c:55ba:e4e9 with SMTP id q8-20020a05600c2e4800b0039c55bae4e9mr8306019wmf.180.1654858914466;
        Fri, 10 Jun 2022 04:01:54 -0700 (PDT)
Received: from [192.168.42.187] ([77.107.214.69])
        by smtp.gmail.com with ESMTPSA id p16-20020a05600c205000b0039c5b9e9142sm2502539wmg.17.2022.06.10.04.01.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jun 2022 04:01:53 -0700 (PDT)
Message-ID: <2ee3b58b-58da-b627-65d1-c6a69d4a66ff@gmail.com>
Date:   Fri, 10 Jun 2022 13:04:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
To:     Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
        linux-mm@kvack.org
Cc:     David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>
References: <20220609185201.19932-1-mike.kravetz@oracle.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220609185201.19932-1-mike.kravetz@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fym3FfZnfLadMJMKx4HJM3g4"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fym3FfZnfLadMJMKx4HJM3g4
Content-Type: multipart/mixed; boundary="------------qSqvkU9lrQiAz0BsBbhuCLch";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org
Cc: David Hildenbrand <david@redhat.com>,
 Axel Rasmussen <axelrasmussen@google.com>, Peter Xu <peterx@redhat.com>
Message-ID: <2ee3b58b-58da-b627-65d1-c6a69d4a66ff@gmail.com>
Subject: Re: [PATCH v4] madvise.2: Clarify addr/length and update hugetlb
 support
References: <20220609185201.19932-1-mike.kravetz@oracle.com>
In-Reply-To: <20220609185201.19932-1-mike.kravetz@oracle.com>

--------------qSqvkU9lrQiAz0BsBbhuCLch
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksIE1pa2UgYW5kIFBldGVyIQ0KDQpPbiA2LzkvMjIgMjA6NTIsIE1pa2UgS3JhdmV0eiB3
cm90ZToNCj4gQ2xhcmlmeSB0aGF0IG1hZHZpc2Ugb25seSB3b3JrcyBvbiBmdWxsIHBhZ2Vz
LCBhbmQgcmVtb3ZlIHJlZmVyZW5jZXMNCj4gdG8gJ2J5dGVzJy4NCj4gDQo+IFVwZGF0ZSBN
QURWX0RPTlRORUVEIGFuZCBNQURWX1JFTU9WRSBzZWN0aW9ucyB0byByZW1vdmUgbm90ZXMg
dGhhdA0KPiBIdWdlVExCIG1hcHBpbmdzIGFyZSBub3Qgc3VwcG9ydGVkLiAgSW5kaWNhdGUg
dGhlIHJlbGVhc2VzIHdoZW4gdGhleQ0KPiB3ZXJlIGZpcnN0IHN1cHBvcnRlZCBhcyB3ZWxs
IGFzIGFsaWdubWVudCByZXN0cmljdGlvbnMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWtl
IEtyYXZldHogPG1pa2Uua3JhdmV0ekBvcmFjbGUuY29tPg0KPiBBY2tlZC1ieTogUGV0ZXIg
WHUgPHBldGVyeEByZWRoYXQuY29tPg0KDQpUaGFua3MgZm9yIHRoZSBwYXRjaC4gIEFwcGxp
ZWQuDQpBbmQgdGhhbmtzLCBQZXRlciwgZm9yIHJldmlld2luZyBpdCENCg0KQ2hlZXJzLA0K
DQpBbGV4DQoNCj4gLS0tDQo+IHYzIC0+IHY0IEZvcm1hdHRpbmcgdXBkYXRlcyAoQWxleCkN
Cj4gdjIgLT4gdjMgUmViYXNlZCBvbiBtYW4tcGFnZXMtNS4xOS1yYzEuICBNaW5vciBjaGFu
Z2UgdG8gd29yZGluZyBmb3INCj4gICAgICAgICAgc3Vuc2VxdWVudCBhY2Nlc3Mgb2YgZGF0
YSBhZnRlciBNQURWX1JFTU9WRS4NCj4gdjEgLT4gdjIgQWRkZWQgcmVsZWFzZXMgd2hlbiBI
dWdlIFRMQiBzdXBwb3J0IHdhcyBhZGRlZCBhbmQgbW92ZWQNCj4gICAgICAgICAgYWxpZ25t
ZW50IHJlcXVpcmVtZW50cyB0byBjb3JyZXNwb25kaW5nIHNlY3Rpb24uICAoUGV0ZXIpDQo+
ICAgbWFuMi9tYWR2aXNlLjIgfCAzMyArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9tYWR2aXNlLjIgYi9tYW4yL21hZHZpc2Uu
Mg0KPiBpbmRleCAyYThmMWNkMGEuLjdmYzE4NGUyMCAxMDA2NDQNCj4gLS0tIGEvbWFuMi9t
YWR2aXNlLjINCj4gKysrIGIvbWFuMi9tYWR2aXNlLjINCj4gQEAgLTQ0LDkgKzQ0LDE0IEBA
IHN5c3RlbSBjYWxsIGlzIHVzZWQgdG8gZ2l2ZSBhZHZpY2Ugb3IgZGlyZWN0aW9ucyB0byB0
aGUga2VybmVsDQo+ICAgYWJvdXQgdGhlIGFkZHJlc3MgcmFuZ2UgYmVnaW5uaW5nIGF0IGFk
ZHJlc3MNCj4gICAuSSBhZGRyDQo+ICAgYW5kIHdpdGggc2l6ZQ0KPiArLklSIGxlbmd0aCAu
DQo+ICsuQlIgbWFkdmlzZSAoKQ0KPiArb25seSBvcGVyYXRlcyBvbiB3aG9sZSBwYWdlcywg
dGhlcmVmb3JlDQo+ICsuSSBhZGRyDQo+ICttdXN0IGJlIHBhZ2UtYWxpZ25lZC4NCj4gK1Ro
ZSB2YWx1ZSBvZg0KPiAgIC5JIGxlbmd0aA0KPiAtYnl0ZXMuDQo+IC1JbiBtb3N0IGNhc2Vz
LA0KPiAraXMgcm91bmRlZCB1cCB0byBhIG11bHRpcGxlIG9mIHBhZ2Ugc2l6ZS4gIEluIG1v
c3QgY2FzZXMsDQoNCnMvLiAgLy5cbi8NCg0KQnV0IEkgZml4ZWQgJiBhbWVuZGVkLg0KDQo+
ICAgdGhlIGdvYWwgb2Ygc3VjaCBhZHZpY2UgaXMgdG8gaW1wcm92ZSBzeXN0ZW0gb3IgYXBw
bGljYXRpb24gcGVyZm9ybWFuY2UuDQo+ICAgLlBQDQo+ICAgSW5pdGlhbGx5LCB0aGUgc3lz
dGVtIGNhbGwgc3VwcG9ydGVkIGEgc2V0IG9mICJjb252ZW50aW9uYWwiDQo+IEBAIC0xMjYs
NyArMTMxLDcgQEAgVGhlIHJlc2lkZW50IHNldCBzaXplIChSU1MpIG9mIHRoZSBjYWxsaW5n
IHByb2Nlc3Mgd2lsbCBiZSBpbW1lZGlhdGVseQ0KPiAgIHJlZHVjZWQgaG93ZXZlci4NCj4g
ICAuSVANCj4gICAuQiBNQURWX0RPTlRORUVEDQo+IC1jYW5ub3QgYmUgYXBwbGllZCB0byBs
b2NrZWQgcGFnZXMsIEh1Z2UgVExCIHBhZ2VzLCBvcg0KPiArY2Fubm90IGJlIGFwcGxpZWQg
dG8gbG9ja2VkIHBhZ2VzLCBvcg0KPiAgIC5CIFZNX1BGTk1BUA0KPiAgIHBhZ2VzLg0KPiAg
IChQYWdlcyBtYXJrZWQgd2l0aCB0aGUga2VybmVsLWludGVybmFsDQo+IEBAIC0xMzYsNiAr
MTQxLDEyIEBAIGZsYWcgYXJlIHNwZWNpYWwgbWVtb3J5IGFyZWFzIHRoYXQgYXJlIG5vdCBt
YW5hZ2VkDQo+ICAgYnkgdGhlIHZpcnR1YWwgbWVtb3J5IHN1YnN5c3RlbS4NCj4gICBTdWNo
IHBhZ2VzIGFyZSB0eXBpY2FsbHkgY3JlYXRlZCBieSBkZXZpY2UgZHJpdmVycyB0aGF0DQo+
ICAgbWFwIHRoZSBwYWdlcyBpbnRvIHVzZXIgc3BhY2UuKQ0KPiArLklQDQo+ICtTdXBwb3J0
IGZvciBIdWdlIFRMQiBwYWdlcyB3YXMgYWRkZWQgaW4gTGludXggdjUuMTguDQo+ICtBZGRy
ZXNzZXMgd2l0aGluIGEgbWFwcGluZyBiYWNrZWQgYnkgSHVnZSBUTEIgcGFnZXMgbXVzdCBi
ZSBhbGlnbmVkDQo+ICt0byB0aGUgdW5kZXJseWluZyBIdWdlIFRMQiBwYWdlIHNpemUsDQo+
ICthbmQgdGhlIHJhbmdlIGxlbmd0aCBpcyByb3VuZGVkIHVwDQo+ICt0byBhIG11bHRpcGxl
IG9mIHRoZSB1bmRlcmx5aW5nIEh1Z2UgVExCIHBhZ2Ugc2l6ZS4NCj4gICAuXCINCj4gICAu
XCIgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQ0KPiAgIC5cIg0KPiBAQCAtMTUzLDI0ICsxNjQsMjQgQEAg
Tm90ZSB0aGF0IHNvbWUgb2YgdGhlc2Ugb3BlcmF0aW9ucyBjaGFuZ2UgdGhlIHNlbWFudGlj
cyBvZiBtZW1vcnkgYWNjZXNzZXMuDQo+ICAgLlwiIGNvbW1pdCBmNmIzZWMyMzhkMTJjOGNj
NmNjNzE0OTBjNmUzMTI3OTg4NDYwMzQ5DQo+ICAgRnJlZSB1cCBhIGdpdmVuIHJhbmdlIG9m
IHBhZ2VzDQo+ICAgYW5kIGl0cyBhc3NvY2lhdGVkIGJhY2tpbmcgc3RvcmUuDQo+IC1UaGlz
IGlzIGVxdWl2YWxlbnQgdG8gcHVuY2hpbmcgYSBob2xlIGluIHRoZSBjb3JyZXNwb25kaW5n
IGJ5dGUNCj4gK1RoaXMgaXMgZXF1aXZhbGVudCB0byBwdW5jaGluZyBhIGhvbGUgaW4gdGhl
IGNvcnJlc3BvbmRpbmcNCj4gICByYW5nZSBvZiB0aGUgYmFja2luZyBzdG9yZSAoc2VlDQo+
ICAgLkJSIGZhbGxvY2F0ZSAoMikpLg0KPiAgIFN1YnNlcXVlbnQgYWNjZXNzZXMgaW4gdGhl
IHNwZWNpZmllZCBhZGRyZXNzIHJhbmdlIHdpbGwgc2VlDQo+IC1ieXRlcyBjb250YWluaW5n
IHplcm8uDQo+ICtkYXRhIHdpdGggYSB2YWx1ZSBvZiB6ZXJvLg0KPiAgIC5cIiBEYXRhYmFz
ZXMgd2FudCB0byB1c2UgdGhpcyBmZWF0dXJlIHRvIGRyb3AgYSBzZWN0aW9uIG9mIHRoZWly
DQo+ICAgLlwiIGJ1ZmZlcnBvb2wgKHNoYXJlZCBtZW1vcnkgc2VnbWVudHMpIC0gd2l0aG91
dCB3cml0aW5nIGJhY2sgdG8NCj4gICAuXCIgZGlzay9zd2FwIHNwYWNlLiAgVGhpcyBmZWF0
dXJlIGlzIGFsc28gdXNlZnVsIGZvciBzdXBwb3J0aW5nDQo+ICAgLlwiIGhvdC1wbHVnIG1l
bW9yeSBvbiBVTUwuDQo+ICAgLklQDQo+ICAgVGhlIHNwZWNpZmllZCBhZGRyZXNzIHJhbmdl
IG11c3QgYmUgbWFwcGVkIHNoYXJlZCBhbmQgd3JpdGFibGUuDQo+IC1UaGlzIGZsYWcgY2Fu
bm90IGJlIGFwcGxpZWQgdG8gbG9ja2VkIHBhZ2VzLCBIdWdlIFRMQiBwYWdlcywgb3INCj4g
K1RoaXMgZmxhZyBjYW5ub3QgYmUgYXBwbGllZCB0byBsb2NrZWQgcGFnZXMsIG9yDQo+ICAg
LkIgVk1fUEZOTUFQDQo+ICAgcGFnZXMuDQo+ICAgLklQDQo+ICAgSW4gdGhlIGluaXRpYWwg
aW1wbGVtZW50YXRpb24sIG9ubHkNCj4gICAuQlIgdG1wZnMgKDUpDQo+IC13YXMgc3VwcG9y
dGVkDQo+ICtzdXBwb3J0ZWQNCj4gICAuQlIgTUFEVl9SRU1PVkUgOw0KPiAgIGJ1dCBzaW5j
ZSBMaW51eCAzLjUsDQo+ICAgLlwiIGNvbW1pdCAzZjMxZDA3NTcxZWVlYTE4YTdkMzRkYjlh
ZjIxZDIyODViODA3YTE3DQo+IEBAIC0xNzksMTAgKzE5MCwxMiBAQCBhbnkgZmlsZXN5c3Rl
bSB3aGljaCBzdXBwb3J0cyB0aGUNCj4gICAuQiBGQUxMT0NfRkxfUFVOQ0hfSE9MRQ0KPiAg
IG1vZGUgYWxzbyBzdXBwb3J0cw0KPiAgIC5CUiBNQURWX1JFTU9WRSAuDQo+IC1IdWdldGxi
ZnMgZmFpbHMgd2l0aCB0aGUgZXJyb3INCj4gLS5CIEVJTlZBTA0KPiAtYW5kIG90aGVyIGZp
bGVzeXN0ZW1zIGZhaWwgd2l0aCB0aGUgZXJyb3INCj4gK0ZpbGVzeXN0ZW1zIHdoaWNoIGRv
IG5vdCBzdXBwb3J0DQo+ICsuQiBNQURWX1JFTU9WRQ0KPiArZmFpbCB3aXRoIHRoZSBlcnJv
cg0KPiAgIC5CUiBFT1BOT1RTVVBQIC4NCj4gKy5JUA0KPiArU3VwcG9ydCBmb3IgdGhlIEh1
Z2UgVExCIGZpbGVzeXN0ZW0gd2FzIGFkZGVkIGluIExpbnV4IHY0LjMuDQo+ICAgLlRQDQo+
ICAgLkJSIE1BRFZfRE9OVEZPUksgIiAoc2luY2UgTGludXggMi42LjE2KSINCj4gICAuXCIg
Y29tbWl0IGY4MjI1NjYxNjVkZDQ2ZmY1ZGU5YmY4OTVjZmE2YzUxZjUzYmIwYzQNCg0KDQot
LSANCkFsZWphbmRybyBDb2xvbWFyDQpMaW51eCBtYW4tcGFnZXMgY29tYWludGFpbmVyOyBo
dHRwOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL21hbi1wYWdlcy8NCmh0dHA6Ly93d3cuYWxlamFu
ZHJvLWNvbG9tYXIuZXMvDQo=

--------------qSqvkU9lrQiAz0BsBbhuCLch--

--------------fym3FfZnfLadMJMKx4HJM3g4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKjJUwACgkQnowa+77/
2zIRRw/+JjhyjSc1bUed9t0phTh7CeORkWA11jv3l5i12N/JEHeOcyfE7ndYKNn/
k7IKQaVlPmDBLZ9tkLoPmbG/BErDYlQO042P4A0pBH5Loy6CYkEj3+we073SZNld
cjSb++Y8GGza0X+R0t37+pcbRdFOQbR84rFfeyEXnGvqM54dbQyrkUwq2sX3PEd/
tNbg02iRNolKdTMZR4aR1c0JKpW01bbFL5HusFP3ubMQhAlOnCmy/F1ihtzsdoOf
UL6rLtVVW+SkVCfwOB0cDQXbrneVjEfaOxRTUmhCf3OWqSahMTJbM4GWSZ3BwXAK
2fSuisRg+ODViWGUVnb2oZOMEZXu0OPIkiaSALAUlJUQmkc/Um0KyqH4gV0kDFYg
A/NwJCy9eKdlLJ4+ZTEaaLg3RTjwDO+02ZrqBNNssoW0TuX88S1FSBAjvNzzoEro
qf3P2r3RdjmDFIn5j2Uy9pCy6vH/55oIvTF6bWsCA058avLxhmaaBAqECUOMdmez
znKlvzmHWIlfPSlcCslgeVyIWG2qfjrDKOAeVXr7QYD+ZEieo/95PAHqgfJAZ8sw
vbca/qEMC1ottx1s11UQuQ+VftRqCdaYCn7HQZ8/mImuaPy8NwZy9RLbGLCZAw5X
xIRMVs0f8lwtX/rqCNocsAu0ho33OBBhAXe6TCbm90/Xu5WRwwo=
=0inv
-----END PGP SIGNATURE-----

--------------fym3FfZnfLadMJMKx4HJM3g4--
