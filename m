Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9042623F82
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 11:09:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbiKJKJt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 05:09:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbiKJKJs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 05:09:48 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 632DB110
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 02:09:47 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id bk15so1474821wrb.13
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 02:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=desumcIG4frrIcBwnIhwVuWAPAlP/EdM7uWr9BXaNCo=;
        b=pjrDFxlnzu5SBeYRNWtqWW9AAYDRNF/DfrRHntoxsjZlHtB8FHEF/PM7rVYfFia8zc
         7FHxsd2ak0vuzeqs8Xm66L4FfJl/0MCd/5C57wR6He3+Ac7lzKQlhkMpeOKNsVyXXcD8
         g4m5hUojMo5RLoJYFgEQMgUo2HaEuWnoKZiHTl/pm1zQBaKKmskeDQ4Srbi/eXv5CeQz
         xeMS/cxgtwLTsgho6m6+mULM4uH1FbDsEtd8G6MW++XJIeXPG/G2Y9tz3ttFZ4c4JroC
         r9s59WzxJm38rp4FZJS2uc6h58k62JivINBGqzGIyRnmMJOW4WJnqBf5vkONQAcyNopO
         6g5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=desumcIG4frrIcBwnIhwVuWAPAlP/EdM7uWr9BXaNCo=;
        b=JV2GJKEBMlRp0bproR8LVMMlTMBChKgHIxj+lg/lPgJ0bgqHpB2H1ny0SanNhKj8t9
         UHHeAul+S0lbHmyOThOGtewezyexIP7Hpe2Qo4VKa4ta8MYcLY20lI7ioPk3ek58JjU8
         DHqWthpZ91TMNHcq1qhntuLT6VW9T557JvoplOlwagVqhLLBiIjXh+H87r+nV85Fp4Gs
         rfMgThKpDlX6GZm0ZzrINXsy2QBi4RRkmMqs5ZavKug/lxikf4TQMZAPQhogDvfdfZj2
         qo2shPbiNm85VdTXXDbTROIgSlJzIBbwT8zvycidZTLME/4itvcK98NHzn/sV5umTTGq
         FhzQ==
X-Gm-Message-State: ACrzQf12QkAcbG5LZTumBAx43/ExfuLDrehBybYXiIoDUM04E7GNdv1S
        0ZIo4BtdYHD9fuTPHE7z62cXrp0sA6M=
X-Google-Smtp-Source: AMsMyM6x9FV7OvpAAt7xYprq2QWxV/pJaNUCGYd+SmbdxOkTvaTwrWeKFwiXaFrKvs93745eZ+GvFg==
X-Received: by 2002:a5d:6d89:0:b0:236:6e52:4fa with SMTP id l9-20020a5d6d89000000b002366e5204famr41106028wrs.395.1668074985724;
        Thu, 10 Nov 2022 02:09:45 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bs17-20020a056000071100b002364c77bcacsm15646271wrb.38.2022.11.10.02.09.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 02:09:45 -0800 (PST)
Message-ID: <2a059a84-91c6-450c-7f81-f5ca0a880457@gmail.com>
Date:   Thu, 10 Nov 2022 11:09:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
To:     Martin Uecker <uecker@tugraz.at>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------r39ShPutYBbtyyTlUN3XXK0I"
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
--------------r39ShPutYBbtyyTlUN3XXK0I
Content-Type: multipart/mixed; boundary="------------paWcJytp78r06MTxNWMTpfs0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <2a059a84-91c6-450c-7f81-f5ca0a880457@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
In-Reply-To: <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>

--------------paWcJytp78r06MTxNWMTpfs0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoIGFuZCBNYXJ0aW4hDQoNCk9uIDExLzEwLzIyIDA3OjIxLCBNYXJ0aW4gVWVj
a2VyIHdyb3RlOg0KPiBBbSBEb25uZXJzdGFnLCBkZW4gMTAuMTEuMjAyMiwgMDE6MzkgKzAw
MDAgc2NocmllYiBKb3NlcGggTXllcnM6DQo+PiBPbiBUaHUsIDEwIE5vdiAyMDIyLCBKb3Nl
cGggTXllcnMgd3JvdGU6DQo+Pg0KPj4+IE9uIFRodSwgMTAgTm92IDIwMjIsIEFsZWphbmRy
byBDb2xvbWFyIHZpYSBHY2Mgd3JvdGU6DQo+Pj4NCj4+Pj4gSSd2ZSBzaG93biB0aGUgdGhy
ZWUga2luZHMgb2YgcHJvdG90eXBlcyB0aGF0IGhhdmUgYmVlbiBjaGFuZ2VkOg0KPj4+Pg0K
Pj4+PiAtICBOb3JtYWwgVkxBOyBub3RoaW5nIGZhbmN5IGV4Y2VwdCBmb3IgdGhlICcuJy4N
Cj4+Pj4gLSAgQ29tcGxleCBzaXplIGV4cHJlc3Npb25zLg0KPj4+PiAtICAndm9pZCAqJyBW
TEFzIChhc3N1bWluZyBHTlUgY29udmVudGlvbnM6IHNpemVvZih2b2lkICopPT0xKS4NCj4+
Pg0KPj4+IFRoYXQgZG9lc24ndCBjb3ZlciBhbnkgb2YgdGhlIHRyaWNreSBpc3N1ZXMgd2l0
aCBzdWNoIHByb3Bvc2Fscywgc3VjaCBhcw0KPj4+IHRoZSBjaG9pY2Ugb2Ygd2hpY2ggZW50
aXR5IGlzIHJlZmVycmVkIHRvIGJ5IHRoZSBwYXJhbWV0ZXIgbmFtZSB3aGVuIHRoZXJlDQo+
Pj4gYXJlIG11bHRpcGxlIG5lc3RlZCBwYXJhbWV0ZXIgbGlzdHMgdGhhdCB1c2UgdGhlIHNh
bWUgcGFyYW1ldGVyIG5hbWUsIG9yDQo+Pj4gd2hlbiB0aGUgaWRlbnRpZmllciBpcyB2aXNp
YmxlIGZyb20gYW4gb3V0ZXIgc2NvcGUgKGluY2x1ZGluZyBpbg0KPj4+IHBhcnRpY3VsYXIg
dGhlIGNhc2Ugd2hlcmUgaXQncyBkZWNsYXJlZCBhcyBhIHR5cGVkZWYgbmFtZSBpbiBhbiBv
dXRlcg0KPj4+IHNjb3BlKS4NCj4+DQo+PiBJbiBmYWN0IEkgY2FuJ3QgdGVsbCBmcm9tIHRo
ZXNlIGV4YW1wbGVzIHdoZXRoZXIgeW91IG1lYW4gZm9yIGEgJy4nIHRva2VuDQo+PiBhZnRl
ciAnWycgdG8gaGF2ZSBzcGVjaWFsIHNlbWFudGljcywgb3Igd2hldGhlciB5b3UgbWVhbiB0
byBoYXZlIGEgc3BlY2lhbA0KPj4gJy4gaWRlbnRpZmllcicgZm9ybSBvZiBleHByZXNzaW9u
IHZhbGlkIGluIGNlcnRhaW4gY29udGV4dCAoZWFjaCBvZiB3aGljaA0KPj4gaW50cm9kdWNl
cyBpdHMgb3duIGNvbXBsaWNhdGlvbnM7IGZvciB0aGUgZm9ybWVyLCB0eXBlZGVmIG5hbWVz
IGZyb20gb3V0ZXINCj4+IHNjb3BlcyBhcmUgcHJvYmxlbWF0aWM7IGZvciB0aGUgbGF0dGVy
LCBpdCdzIGRlc2lnbmF0ZWQgaW5pdGlhbGl6ZXJzIHdoZXJlDQo+PiB5b3UgZ2V0IGNvbXBs
aWNhdGlvbnMsIGZvciBleGFtcGxlKS4gIERlc2lnbmluZyBuZXcgc3ludGF4IHRoYXQgZG9l
c24ndA0KPj4gY2F1c2UgYW1iaWd1aXR5IGlzIGdlbmVyYWxseSB0cmlja3ksIGFuZCB0aGlz
IHNvcnQgb2YgbGFuZ3VhZ2UgZXh0ZW5zaW9uDQo+PiBpcyB0aGUga2luZCBvZiB0aGluZyB3
aGVyZSB5b3UnZCBleHBlY3QgdG8gc28gdGhyb3VnaCBhdCBsZWFzdCBmaXZlDQo+PiBpdGVy
YXRpb25zIG9mIGEgV0cxNCBwYXBlciBiZWZvcmUgeW91IGhhdmUgc29tZXRoaW5nIGxpa2Ug
YSBzb3VuZA0KPj4gc3BlY2lmaWNhdGlvbi4NCj4gDQo+IEkgYW0gbm90IHN1cmUgd2hhdCBB
bGVqYW5kcm8gaGFzIGluIG1pbmQgZXhhY3RseSwgYnV0IG15IGlkZWEgb2YgdXNpbmcNCj4g
YSBuZXcgbm90YXRpb24gWy5pZGVudGlmaWVyXSB3b3VsZCBiZSB0byBsaW1pdCBpdCB0byBh
Y2Nlc3Npbmcgb3RoZXINCj4gcGFyYW1ldGVyIG5hbWVzIGluIHRoZSBzYW1lIHBhcmFtZXRl
ciBsaXN0IG9ubHksIHNvIHRoYXQgdGhlcmUgaXMNCj4gDQo+IDEpIG5vIGFtYmlndWl0eSB3
aGF0IGlzIHJlZmVycmVkIHRvICBhbmQNCj4gMikgb25lIGNhbiBhY2Nlc3MgcGFyYW1ldGVy
cyB3aGljaCBjb21lIGxhdGVyDQoNClllcywgSSBpbXBsZW1lbnRlZCB5b3VyIGlkZWEuICBB
cyBhbHdheXMsIEkgdGhvdWdodCBJIGhhZCBsaW5rZWQgdG8gaXQgaW4gdGhlIA0KY29tbWl0
IG1lc3NhZ2UsIGJ1dCBJIGRpZG4ndC4gIFF1aXRlIGEgYmFkIHRoaW5nIGZvciB0aGUgY29t
bWl0IHRoYXQgaW1wbGVtZW50cyANCmEgY29tcGxldGVseSBuZXcgZmVhdHVyZSB0byBub3Qg
cG9pbnQgdG8gdGhlIGRvY3VtZW50YXRpb24vaWRlYSBhdCBhbGwuDQoNClNvLCB0aGUgZG9j
dW1lbnRhdGlvbiBmb2xsb3dlZCBieSB0aGVzZSAzIHBhdGNoZXMgaXMgTWFydGluJ3MgZW1h
aWw6DQo8aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWFuLzYwMTY4MGFlLTMwZDct
MTQ4MS1lMTUyLTAzNDA4M2Y2ZGRlMUBnbWFpbC5jb20vVC8jbWVkMmJkZmNjMzFhM2QwYjNi
YzZjNDhiMjI5YzhkOGRkNTA4ODkzNWU+DQoNCkl0IHdhcyBzb3VuZCBpbiBteSBoZWFkLCBh
bmQgSSBjb3VsZG4ndCBzZWUgYW55IGluY29uc2lzdGVuY2llcy4NCg0KLSAgSSBpbXBsZW1l
bnRlZCBpdCB3aXRoICcuJyBhcyBiZWluZyByZXN0cmljdGVkIHRvIHJlZmVyIHRvIHBhcmFt
ZXRlcnMgb2YgdGhlIA0KZnVuY3Rpb24gYmVpbmcgcHJvdG90eXBlcyAoY29tbWl0IDEpLg0K
DQotICBJIGFsc28gYWxsb3dlZCBjb21wbGV4IGV4cHJlc3Npb25zIGluIHRoZSBwcm90b3R5
cGVzIChjb21taXQgMiksIHNpbmNlIGl0J3MgDQpzb21ldGhpbmcgdGhhdCBjYW4gYmUgcXVp
dGUgdXNlZnVsICh0aGF0IHdhcyBhbHJlYWR5IGZvcmVzZWVuIGJ5IE1hcnRpbidzIGlkZWEs
IA0KSUlSQykuICBUaGUgbW9zdCB1c2VmdWwgZXhhbXBsZSB0aGF0IEkgaGF2ZSBpbiBteSBt
aW5kIGlzIGEgcGF0Y2ggdGhhdCBJJ20gDQpkZXZlbG9waW5nIGZvciBzaGFkb3ctdXRpbHM6
DQogDQo8aHR0cHM6Ly9naXRodWIuY29tL3NoYWRvdy1tYWludC9zaGFkb3cvcHVsbC81Njkv
ZmlsZXMjZGlmZi0xMmI1NjBiYWI2YjRmYjhmN2YzYTE2ZjAxYWFhOTk0ZGU1MzlhOGJlZDMw
NThjOTc2YmUwZGFlYmUxNjQwNWMxPg0KDQogICAgVGhlIGdpc3Qgb2YgaXQgaXMgYSBmdW5j
dGlvbiB0aGF0IGdldHMgYSBmaXhlZC13aWR0aCBub24tTlVMLXRlcm1pbmF0ZWQgDQpzdHJp
bmcsIGFuZCBjb3BpZXMgaXQgaW50byBhIE5VTC10ZXJtaW5hdGVkIHN0cmluZyBpbiBhIGJ1
ZmZlciB0aGFuIGhhcyB0byBiZSBvZiANCmNvdXJzZSArMSB0aGUgc2l6ZSBvZiB0aGUgaW5w
dXQgc3RyaW5nOg0KDQoJdm9pZCBidWYyc3RyKGNoYXIgZHN0W3Jlc3RyaWN0IC5uKzFdLCBj
b25zdCBjaGFyIHNyY1tyZXN0cmljdCAubl0sDQoJICAgICAgICAgICAgIHNpemVfdCBuKTsN
Cg0KLSAgSSBleHRlbmRlZCB0aGUgaWRlYSB0byBhcHBseSB0byB2b2lkW10gKGNvbW1pdCAz
KS4gIFNvbWV0aGluZyBub3QgeWV0IGFsbG93ZWQgDQpieSBHQ0MsIGJ1dCB2ZXJ5IHVzZWZ1
bCBJTU8sIGVzcGVjaWFsbHkgZm9yIHRoZSBtZW0uLi4oMykgZnVuY3Rpb25zLiAgU2luY2Ug
R05VIA0KQyBjb25zaXN0ZW50bHkgdHJlYXRzIHNpemVvZih2b2lkKT09MSwgaXQgbWFrZXMg
c2Vuc2UgdG8gYWxsb3cgVkxBIHN5bnRheCBpbiANCnRoYXQgd2F5LiAgVGhpcyBpcyBub3Qg
YXQgYWxsIGFib3V0IGFsbG93aW5nIHRydWUgVkxBcyBvZiB0eXBlIHZvaWRbXTsgdGhhdCdz
IA0KZm9yYmlkZGVuLCBhbmQgc2hvdWxkIGNvbnRpbnVlIHRvIGJlIGZvcmJpZGRlbi4gIEJ1
dCBzaW5jZSBwYXJhbWV0ZXJzIGFyZSBqdXN0IA0KcG9pbnRlcnMsIEkgZG9uJ3Qgc2VlIGFu
eSBpc3N1ZSB3aXRoIGFsbG93aW5nIGZhbHNlIHZvaWRbXSBWTEFzIGluIHBhcmFtZXRlcnMg
DQp0aGF0IHJlYWxseSBhcmUgdm9pZCogaW4gZGlzZ3Vpc2UuDQoNCg0KVGhlIDMgY29tbWl0
cyBhcmUgaGVyZSAobGFzdCAzIGNvbW1pdHMgaW4gdGhhdCBsb2cpOg0KPGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L2xvZy8/
aWQ9YzY0Y2QxM2UwMDI1NjFjNjgwMmM2YTFhMWE4YTY0MGYwMzRmZWE3MD4NCg0KDQpNYXJ0
aW4sIHBsZWFzZSBjaGVjayBpZiBJIGltcGxlbWVudGVkIHlvdXIgaWRlYSBmYWl0aGZ1bGx5
LiAgVGhlIDMgZXhhbXBsZSANCnByb3RvdHlwZXMgSSBzaG93ZWQgYXJlIGdvb2QgcmVwcmVz
ZW50YXRpdmVzIG9mIHdoYXQgSSBhZGRlZCwgc28gaWYgeW91IGRvbid0IA0KdW5kZXJzdGFu
ZCBtYW4oNykgc291cmNlIHlvdSBjb3VsZCBqdXN0IHJlYWQgdGhlbSBhbmQgc2VlIGlmIHRo
ZXkgbWFrZSBzZW5zZSB0byANCnlvdTsgdGhlIHJlc3Qgb2YgdGhlIGNoYW5nZXMgYXJlIG9m
IHRoZSBzYW1lIGtpbmQuICBPciB5b3UgY291bGQgaW5zdGFsbCB0aGUgbWFuIA0KcGFnZXMg
ZnJvbSB0aGUgcmVwbyA6KQ0KDQoNCg0KPiANCj4gSWYgd2Ugd2FudCB0byBzcGVjaWZ5IHNv
bWV0aGluZyBsaWtlIHRoaXMsIEkgdGhpbmsgd2Ugc2hvdWxkIGFsc28NCj4gcmVzdHJpY3Qg
d2hhdCBraW5kIG9mIGV4cHJlc3Npb25zIG9uZSBhbGxvd3MsIGUuZy4gaXQgaGFzIHRvDQo+
IGJlIHNpZGUtZWZmZWN0IGZyZWUuDQoNCldlbGwsIHllcywgdGhlcmUgc2hvdWxkIGJlIG5v
IHNpZGUgZWZmZWN0czsgaXQgd291bGQgbm90IG1ha2Ugc2Vuc2UgaW4gYSANCnByb3RvdHlw
ZS4gIEknZCBwdXQgaXQgYXMgc2ltcGx5IGFzIHdpdGggX0dlbmVyaWMoMykgYW5kIHNpbWls
YXIgc3R1ZmYsIHdoZXJlIA0KdGhlIGNvbnRyb2xsaW5nIGV4cHJlc3Npb24gaXMgbm90IGV2
YWx1YXRlZCBmb3Igc2lkZSBlZmZlY3RzLiAgSSBuZXZlciByZW1lbWJlciANCmFib3V0IHNp
emVvZigpIG9yIHR5cGVvZigpOiBJIGFsd2F5cyBuZWVkIHRvIGNvbnN1bHQgaWYgdGhleSBo
YXZlIHNpZGUgZWZmZWN0cyANCm9yIG5vdC4gIEknbGwgYmUgZG9jdW1lbnRpbmcgdGhhdCBp
biB0aGUgbWFuLXBhZ2VzIHNvb24uDQoNCj4gIEJ1dCBtYXliZSB3ZSB3YW50IHRvIG1ha2Ug
dGhpcyBldmVuIG1vcmUNCj4gcmVzdHJpY3RpdmUgKGF0IGxlYXN0IGluaXRpYWxseSkuDQoN
ClllYWgsIHlvdSBjb3VsZCBnbyBmb3IgYW4gaW5pdGlhbCBpbXBsZW1lbnRhdGlvbiB0aGF0
IG9ubHkgc3VwcG9ydHMgbXkgY29tbWl0IDE7IA0KdGhhdCB3b3VsZCBiZSB0aGUgc2ltcGxl
c3QuICBUaGF0IHdvdWxkIGNvdmVyIGFscmVhZHkgdGhlIHZhc3QgbWFqb3JpdHkgb2YgDQpj
YXNlcy4gIEJ1dCBwbGVhc2UgY29uc2lkZXIgY29tbWl0cyAyIGFuZCAzIGFmdGVyd2FyZHMs
IHNpbmNlIEkgYmVsaWV2ZSB0aGV5IGFyZSANCmFsc28gb2YgZ3JlYXQgaW1wb3J0YW5jZS4N
Cg0KPiANCj4gT25lIHByb2JsZW0gd2l0aCBXRzE0IHBhcGVycyBpcyB0aGF0IHBlb3BsZSBw
dXQgaW4gdG9vIG11Y2gsDQo+IGJlY2F1c2UgdGhlIG92ZXJoZWFkIGlzIHNvIGhpZ2ggYW5k
IHRoZSBzdGFuZGFyZCBpcyBub3QgdXBkYXRlZA0KPiB2ZXJ5IG9mdGVuLiAgSXQgd291bGQg
YmUgYmV0dGVyIHRvIGJ1aWxkIHN1Y2ggZmVhdHVyZSBtb3JlDQo+IGluY3JlbWVudGFsbHks
IHdoaWNoIGNvdWxkIGJlIGRvbmUgbW9yZSBlYXNpbHkgd2l0aCBhIGNvbXBpbGVyDQo+IGV4
dGVuc2lvbi4gIE9uZSBjb3VsZCBzdGFydCBzdXBwb3J0aW5nIGp1c3QgWy54XSBidXQgbm90
IG1vcmUNCj4gY29tcGxpY2F0ZWQgZXhwcmVzc2lvbnMuDQo+IA0KPiBMYXRlciBXRzE0IGNh
biBzdGlsbCBhY2NlcHQgb3IgcmVqZWN0IG9yIG1vZGlmeSB0aGlzIHByb3Bvc2FsDQo+IGJh
c2VkIG9uIHRoZSBleHBlcmllbmNlIHdlIGdldC4NCg0KWWVhaCwgYW5kIEkgYWxzbyB0aGlu
ayBhbnkgV0cxNCBwYXBlcnMgd2l0aCBmZWF0dXJlcyBhcyBpbXBvcnRhbnQgYXMgdGhpcyBv
bmUgDQp3aXRob3V0IHByaW9yIGV4cGVyaWVuY2UgaW4gYSByZWFsIGNvbXBpbGVyIHNob3Vs
ZCBiZSByZWplY3RlZC4gIEkgZG9uJ3QgdGhpbmsgDQppdCBtYWtlcyBzZW5zZSB0byBzdGFu
ZGFyZGl6ZSBzb21ldGhpbmcganVzdCBmcm9tIHRoZW9yZXRpY2FsIGRpc2N1c3Npb25zLCBh
bmQgDQpmb3JjZSBldmVyeW9uZSB0byBpbXBsZW1lbnQgaXQgYWZ0ZXJ3YXJkcy4gIE5vIG1h
dHRlciBob3cgZ29vZCB0aGUgcmV2aWV3ZXJzIGFyZS4NCg0KPiANCj4gKEkgd291bGQgYWxz
byBiZSBoYXBweSB3aXRoIHVzaW5nIEdOVSBmb3J3YXJkIGRlY2xhcmF0aW9ucywgYW5kDQo+
IEkgYW0gbm90IHN1cmUgd2h5IHBlb3BsZSBkaXNsaWtlIHRoZW0gc28gbXVjaC4pDQoNCkZv
ciBtZSwgaXQncyBob3cgZWFzeSBpdCBpcyB0byBjb25mdXNlIGEgY29tbWEgd2l0aCBhIHNl
bWljb2xvbi4gIEFsc28sIA0KdW5uZWNlc3NhcmlseSBsb25nIGxpbmVzLg0KDQo+IA0KPiBN
YXJ0aW4NCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------paWcJytp78r06MTxNWMTpfs0--

--------------r39ShPutYBbtyyTlUN3XXK0I
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNszeAACgkQnowa+77/
2zJ5EBAApwkA8m2FVyCyriy9RjLJXtFQfuvQk/i6ASxI2J4kGOvq0hm6wM44kfvP
wDOCiuLj1r7KbXBDf4FE0vkUzog4Tq3DuzRXwytSygRpIusftS6A7ro/bCu99aGm
9/WgLzzWOCURQ6beGL75FlpSUwIYP0j/4si16c6ttVle5QJrjONC2uLDB9DtB9u/
oMXyqD0vwdZn42UQT5BhWTZQjymZxOqGZanAuTJXgyzj5tB7qNzfCJXf/WbyV9nV
Z/jsARiVKt1ZNUnyka6n4/R+GOEQDjKEJa8kFShikXoYF+93965Uehe7VHywegwZ
7jc90RNvpOh0r0CQ1Wy267okEoI64VqdvBfOgpLCWrULGgx2cVLa3ssSJ0E8/NtD
2wRdZp4eW3WfB30GtcW19kJJhpmiUdYNRyG2GfxG568iaegqUSzeaGG/qmeGRJ1R
zBYZYxTAjsEu7L7ukkPlEhjC5TCNEGPdguW3EA4K0XbGHm+7kZb59HyM/ANvpo/o
dCJJmmBZHa0227ggwj2MoSujxBnpYR5RjrogqdQC8o7APH4DoMUnC/w3XqG9bLae
CjUlZbR6vALqsSvO9UaTGXsRUuRZHrIZ8lRF+5gBDpUXpkham2UatuFS2IS3Kb1l
vTDwxaDwBnIt8AsezjHyN04mpcKnkxEuj62KGzLDeZ9wnYZEfeY=
=KUCI
-----END PGP SIGNATURE-----

--------------r39ShPutYBbtyyTlUN3XXK0I--
