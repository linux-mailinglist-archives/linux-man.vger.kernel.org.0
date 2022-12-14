Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F163064C762
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 11:47:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237778AbiLNKrS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 05:47:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237750AbiLNKrR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 05:47:17 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C35B233B6
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 02:47:16 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id ja17so8003019wmb.3
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 02:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3oJPCsVBD+vcbZZJDtB+YcnE9yaKswbPjGDbDVES+JI=;
        b=YW7Dd3BkBKxNfp65ne6RXZiNRD+EqLVmwjjRkiuJpMQwvrH3GsdKQvVcuoHEVOU/lT
         +zejcoBTOGCh5ujDp+cUE5JuH0LLhEE60+xJeM7TX08kCZfqKh1ln0CwT/1JCxHYb2mN
         HFs+jTlVwcCHHaYQ2K0a/KapXUVXbKV8MinGI35SzIUQSs2dulB4mfzx4zBFxPYyB8Rq
         Ntz/U/eN9MpLN4FFsZqT/bHz52I4I+iPkXzBIW3669xlm+bZwMr/uApQYoOUQhjvxtk1
         Fcmk+9h+gtXfb48W4BvZfY4hSOts5ElvH63v+bd/J2/2XlczIBtQ4bgaXfgc4300fMhs
         FBWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3oJPCsVBD+vcbZZJDtB+YcnE9yaKswbPjGDbDVES+JI=;
        b=ghDObKq81//pWxlIZ7wJzNI4sPdeIGMqabWmnYao20hHzK/14e6UJVYeHcFrRRhLfj
         vqnyDiq58KSLcIE6ZRKWMqGdRj0WTIDLbsohErnA2kpCEiDzpcNt+6uhJF6B1csud1wK
         XrAZaSwvA3yFRdT/V4BT5TdvsUh8UFoKXTlUWjE3snSPKqe+59GGCQfZQ+tTYfCv+Poa
         kxHr9D75+bPz/aq8hcbWvVZBXf/CRbc2b8fq22vKHxiZRNB3FoDjUQG65kuINynmJBxK
         6hvQxgsInytioE4sw1bu7lDdVy+g4p6hPjvDf2XYcszOH048hzEokf0i7Td0GldDp+zJ
         jMRg==
X-Gm-Message-State: ANoB5pkNkdKj7qGAuwjjtIlCIupr98/G9M6LuHTM4SrDEa09OSBl4F51
        UKpTW62s7/RYxm0d3BRAjFk=
X-Google-Smtp-Source: AA0mqf4EKik5Ow2+Hwxpp6TMlYbSNEHqZo3bsGynR/FulshLI4opqktpFqh4J1af0ZO38OAb8yLDZA==
X-Received: by 2002:a1c:5404:0:b0:3d0:a531:5413 with SMTP id i4-20020a1c5404000000b003d0a5315413mr17782495wmb.34.1671014834552;
        Wed, 14 Dec 2022 02:47:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m11-20020a7bce0b000000b003d070e45574sm2029219wmc.11.2022.12.14.02.47.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 02:47:13 -0800 (PST)
Message-ID: <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
Date:   Wed, 14 Dec 2022 11:47:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     Zack Weinberg <zack@owlfolio.org>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
        Ian Abbott <abbotti@mev.co.uk>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
 <ypikwn6uag11.fsf@owlfolio.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ypikwn6uag11.fsf@owlfolio.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Kzycun3ttw2zHxdb9l9Hxpbz"
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
--------------Kzycun3ttw2zHxdb9l9Hxpbz
Content-Type: multipart/mixed; boundary="------------k5aO7onqsWNkCeBjfCmbTKKR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zack Weinberg <zack@owlfolio.org>
Cc: libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
 Ian Abbott <abbotti@mev.co.uk>
Message-ID: <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
 <ypikwn6uag11.fsf@owlfolio.org>
In-Reply-To: <ypikwn6uag11.fsf@owlfolio.org>

--------------k5aO7onqsWNkCeBjfCmbTKKR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaywNCg0KT24gMTIvMTQvMjIgMDM6MTMsIFphY2sgV2VpbmJlcmcgd3JvdGU6DQo+
IEFsZWphbmRybyBDb2xvbWFyIDxhbHgubWFucGFnZXNAZ21haWwuY29tPiB3cml0ZXM6DQo+
PiBPa2F5LCBzbyAlcyBhbmQgJFsgYXJlIGF0IGxlYXN0IHVzYWJsZS4gIFVzZWZ1bD8gIEkg
ZG9uJ3Qga25vdy4gIFByb2JhYmx5DQo+PiBmZ2V0cygzKSBhbmQgdGhlbiBlaXRoZXIgPHN0
cmluZy5oPiBvciA8cmVnZXguaD4gZnVuY3Rpb25zIG9yIHRha2luZw0KPj4gdW50ZXJtaW5h
dGVkIHN0cmluZ3MgKHBvaW50ZXIgcGx1cyBsZW5ndGgpIGlzIGEgbXVjaCBiZXR0ZXIgaWRl
YS4NCj4gDQo+IFllYWgsIGFncmVlZC4NCj4gDQo+Pj4gVGhlIG90aGVyIGRlc2lnbi1sZXZl
bCBpc3N1ZSBhZmZlY3RzIGFsbCBvZiB0aGUgbnVtZXJpYyBjb252ZXJzaW9uczoNCj4+PiBp
ZiB0aGUgcmVzdWx0IG9mIChhYnN0cmFjdCwgaW5maW5pdGUtcHJlY2lzaW9uKSBudW1lcmlj
IGlucHV0IGNvbnZlcnNpb24NCj4+PiBkb2VzIG5vdCBmaXQgaW4gdGhlIHZhcmlhYmxlIHN1
cHBsaWVkIHRvIGhvbGQgdGhlIHJlc3VsdCBvZiB0aGF0IGNvbnZlcnNpb24sDQo+Pj4gdGhl
IGJlaGF2aW9yIGlzIHVuZGVmaW5lZC4gIFRoZSBtYW5wYWdlIHNheXMgdGhhdCB5b3UgZ2V0
IGFuIEVSQU5HRSBlcnJvcg0KPj4+IGluIHRoaXMgY2FzZSwgYW5kIHRoYXQgbWF5IGJlIHRo
ZSBiZWhhdmlvciBfZ2xpYmNfIGd1YXJhbnRlZXMgKEkgZG9u4oCZdA0KPj4+IGFjdHVhbGx5
IGtub3cgZm9yIHN1cmUpLCBidXQgaW4gdGhlIG1vZGVybiBlcmEgb2YgY29tcGlsZXJzIGRy
YXdpbmcNCj4+PiBpbmZlcmVuY2VzIGZyb20gdW5kZWZpbmVkIGJlaGF2aW9yLCBhIGd1YXJh
bnRlZSBieSBvbmUgQyBsaWJyYXJ5IGlzDQo+Pj4gbm90IGdvb2QgZW5vdWdoLg0KPj4NCj4+
IFRoaXMsIHRvIG1lLCBpcyBlbm91Z2ggdG8gbWFyayB0aGVtIGFzIGRlcHJlY2F0ZWQgaW4g
dGhlIG1hbnVhbCBwYWdlLiAgQW55d2F5LA0KPj4gZGVwcmVjYXRpbmcgc29tZXRoaW5nIGlz
IG5vdCByZW1vdmluZyBpdC4gIEl0J3MganVzdCBzYXlpbmcgImhleSwgeW91IHNob3VsZG4n
dA0KPj4gYmUgdXNpbmcgdGhhdDsgaXQncyBiYWQsIGFuZCBkb24ndCBleHBlY3QgdGhhdCBJ
U08gQyB3aWxsIGtlZXAgaXQgYXJvdW5kIG5leHQNCj4+IGNlbnR1cnkiLg0KPiANCj4gSW4g
bXkgbGV4aWNvbiDigJxkZXByZWNhdGVk4oCdIGlzIGEgdmVyeSBzdHJvbmcgc3RhdGVtZW50
LCBwb3NzaWJseSBiZWNhdXNlDQo+IEnigJltIHVzZWQgdG8gc2VlaW5nIGl0IGluIHRoZSBj
b250ZXh0IG9mIHN0YW5kYXJkcyB3aGVyZSBpdCBtZWFucyDigJx3ZQ0KPiB0aGluayB3ZSBz
aG91bGQgbmV2ZXIgaGF2ZSBhZGRlZCB0aGlzIGluIHRoZSBmaXJzdCBwbGFjZSwgdGhlcmXi
gJlzIG5vDQo+IHBsYXVzaWJsZSB3YXkgdG8gZml4IGl0LCBidXQgd2UgaGF2ZSB0byBrZWVw
IGl0IGFyb3VuZCBmb3IgYmFja3dhcmQNCj4gY29tcGF0aWJpbGl0eS7igJ0NCj4gDQo+IFRo
ZSBzY2FuZiBudW1lcmljIGNvbnZlcnNpb25zIGNvdWxkIGJlIGZpeGVkIHdpdGggYSBvbmUt
c2VudGVuY2UgZWRpdCB0bw0KPiB0aGUgQyBzdGFuZGFyZDogY2hhbmdlIHRoZSBsYXN0IHNl
bnRlbmNlIG9mIGh0dHA6Ly9wb3J0NzAubmV0L35uc3ovYy9jMTEvbjE1NzAuaHRtbCM3LjIx
LjYuMnAxMA0KPiBmcm9tIOKAnElmIHRoaXMgb2JqZWN0IGRvZXMgbm90IGhhdmUgYW4gYXBw
cm9wcmlhdGUgdHlwZSwgb3IgaWYgdGhlIHJlc3VsdA0KPiBvZiB0aGUgY29udmVyc2lvbiBj
YW5ub3QgYmUgcmVwcmVzZW50ZWQgaW4gdGhlIG9iamVjdCwgdGhlIGJlaGF2aW9yIGlzDQo+
IHVuZGVmaW5lZOKAnSB0byDigJxJZiB0aGlzIG9iamVjdCBkb2VzIG5vdCBoYXZlIGFuIGFw
cHJvcHJpYXRlIHR5cGUsIHRoZQ0KPiBiZWhhdmlvciBpcyB1bmRlZmluZWQuICBJZiB0aGUg
cmVzdWx0IG9mIHRoZSBjb252ZXJzaW9uIGNhbm5vdCBiZQ0KPiByZXByZXNlbnRlZCBpbiB0
aGUgb2JqZWN0LCB0aGUgZXhlY3V0aW9uIG9mIHRoZSBkaXJlY3RpdmUgZmFpbHM7IHRoaXMN
Cj4gY29uZGl0aW9uIGlzIGEgbWF0Y2hpbmcgZmFpbHVyZS7igJ0gIEFuZCwgZXZlbiBpZiB0
aGUgQyBjb21taXR0ZWUgZG9lc27igJl0DQo+IHdhbnQgdG8gbWFrZSB0aGF0IGNoYW5nZSwg
b3Blbi1zb3VyY2UgQyBsaWJyYXJpZXMgY2FuIGFuZCBzaG91bGQgZG8gaXQNCj4gdW5pbGF0
ZXJhbGx5LCBhcyBhIGRvY3VtZW50ZWQgaW1wbGVtZW50YXRpb24gZXh0ZW5zaW9uLiAgSSB0
aGluayB0aGF04oCZcw0KPiBhIGJldHRlciBwbGFuIHRoYW4gZGVjbGFyaW5nIG1vc3QgdXNl
cyBvZiAqc2NhbmYg4oCcZGVwcmVjYXRlZC7igJ0NCg0KWWVhaCwgaWYgeW91IGhhdmUgcGxh
bnMgdG8gZml4IGl0LCBJJ20gZmluZSByZW1vdmluZyB0aGUgZGVwcmVjYXRpb24gbm93LiA6
KQ0KDQo+IA0KPj4+ICAgQW5kLCB0aGUgc2NhbmYgZmFtaWx5ICpjYW4qIGJlIHVzZWQgc2Fm
ZWx5IHdpdGgNCj4+PiBzdWZmaWNpZW50IGNhcmUg4oCUIHJlYWQgZW50aXJlIGxpbmVzIG9m
IGlucHV0IHdpdGggZ2V0bGluZSwNCj4+DQo+PiBJZiBnZXRsaW5lKDMpIF9pcyBuZWNlc3Nh
cnlfIHRvIGJlIHNhZmUsIHRoZW4gSSB3b3VsZCBkZXByZWNhdGUgdGhlIHN0cmVhbQ0KPj4g
ZnVuY3Rpb25zLCBhbmQga2VlcCBvbmx5IHRoZSAicyIgdmFyaWFudHMuICBJcyBpdD8NCj4g
DQo+IE9oLCByaWdodCwgdGhlIF90aGlyZF8gaGVhZGFjaGUgd2l0aCBmc2NhbmYuDQo+IA0K
PiBZZXMsIEkgdGhpbmsgaXQgd291bGQgYmUgZmFpciB0byBzYXkgdGhhdCBpdCBpcyBhbG1v
c3QgYWx3YXlzIGEgbWlzdGFrZQ0KPiB0byB1c2UgdGhlIHNjYW5mIHZhcmlhbnRzIHRoYXQg
cmVhZCBkaXJlY3RseSBmcm9tIGEgRklMRS4gIFRoZSBpc3N1ZQ0KPiBoZXJlIGlzLCBhdCBp
dHMgcm9vdCwgdGhhdCBwZW9wbGUgbmV3IHRvIEMgX2V4cGVjdF8gYSBzY2FuZiBjYWxsIHRv
IHJlYWQNCj4gYW4gZW50aXJlIGxpbmUgb2YgaW5wdXQsIGJ1dCBpdCBkb2VzbuKAmXQuIFRo
aXMgaXMgZXNwZWNpYWxseSBwcm9ibGVtYXRpYw0KPiBmb3IgaW50ZXJhY3RpdmUgaW5wdXQg
4oCUIHRoZXkgdHJ5IHRvIHVzZSBwbGFpbiBzY2FuZiB0byByZWFkIG51bWVyaWMNCj4gaW5w
dXQsIGRvbuKAmXQgcmVhbGl6ZSB0aGF0IGBzY2FuZigiJWQiLCAmYXJnKWAgZG9lc27igJl0
IGNvbnN1bWUgdGhlIFxuIGluDQo+IHRoZSB0ZXJtaW5hbOKAmXMgbGluZSBidWZmZXIgX2Fm
dGVyXyB0aGUgbnVtYmVyLCBhbmQgZ2V0IHZlcnkgY29uZnVzZWQNCj4gd2hlbiBhIHN1YnNl
cXVlbnQgZ2V0Y2hhcigpIHJlYWRzIHRoYXQgXG4gaW5zdGVhZCBvZiB0aGUg4oCYeeKAmSBv
ciDigJhu4oCZIHRoZXkNCj4gd2VyZSBleHBlY3RpbmcgYXMgYSByZXNwb25zZSB0byB0aGUg
X25leHRfIHByb21wdC4gIEJ1dCBpdOKAmXMgX2Fsc29fIGENCj4gcHJvYmxlbSBmb3IgZXJy
b3IgcmVjb3ZlcnksIGJlY2F1c2Ugc2NhbmYgd2lsbCBzdG9wIGluIHRoZSBtaWRkbGUgb2Yg
dGhlDQo+IGxpbmUgd2hlbiBhIG1hdGNoaW5nIGZhaWx1cmUgb2NjdXJzLCBhbmQgaWYgeW91
IG5haXZlbHkgYXNzdW1lZCBpdCB3b3VsZA0KPiB0aHJvdyBhd2F5IHRoZSByZXN0IG9mIHRo
ZSBsaW5lLCB5b3UgZ2V0IGFuIGVycm9yIGNhc2NhZGUuDQo+IA0KPiBUaGUgcmVjb21tZW5k
ZWQgcHJhY3RpY2UgdG8gYXZvaWQgdGhpcyB0cmFwLCBpcyB0aGF0IHlvdSBzaG91bGQgdXNl
IG9uZQ0KPiBvZiB0aGUgZnVuY3Rpb25zIHRoYXQgX2RvZXNfIHJlYWQgYW4gZW50aXJlIGxp
bmUgb2YgaW5wdXQsIGkuZS4gZmdldHMgb3INCj4gZ2V0bGluZSwgYW5kIHRoZW4gcGFyc2Ug
dGhlIGxpbmUgYXMgYSBzdHJpbmcuICBJdCB3b3VsZCBtYWtlIHNlbnNlIGZvcg0KPiB0aGUg
W2Zdc2NhbmYgbWFucGFnZSB0byBzYXkgdGhhdC4NCg0KUGxlYXNlIGNsYXJpZnk7IGRvIHlv
dSBjb25zaWRlciBbdl1bZl1zY2FuZiBzb21ldGhpbmcgdGhhdCAid2UgdGhpbmsgd2Ugc2hv
dWxkIA0KbmV2ZXIgaGF2ZSBhZGRlZCB0aGlzIGluIHRoZSBmaXJzdCBwbGFjZSwgdGhlcmXi
gJlzIG5vIHBsYXVzaWJsZSB3YXkgdG8gZml4IGl0LCANCmJ1dCB3ZSBoYXZlIHRvIGtlZXAg
aXQgYXJvdW5kIGZvciBiYWNrd2FyZCBjb21wYXRpYmlsaXR5Ij8NCg0KPiANCj4+PiBJbiBh
IG1vcmUgc29iZXIgdG9uZSBvZiB2b2ljZSBJIHN1Z2dlc3QgdGhpcyB0ZXh0IGZvciB0aGUg
bWFucGFnZToNCj4g4oCmDQo+PiBUaGF0IG1ha2VzIHNlbnNlIHRvIG1lLiAgV291bGQgeW91
IG1pbmQgc2VuZGluZyBhIHBhdGNoPyAgOikNCj4gDQo+IEkgZG8gbm90IGhhdmUgdGltZSB0
byBkbyB0aGF0IGFueXRpbWUgc29vbi4gIEFsc28sIG1heWJlIGdsaWJj4oCZcw0KPiBiZWhh
dmlvciBvbiBudW1lcmljIGlucHV0IG92ZXJmbG93IHNob3VsZCBiZSBmaXhlZCBmaXJzdC4N
Cg0KVGhhdCBhbHNvIG1ha2VzIHNlbnNlIDspDQoNCkluIHNob3J0Og0KDQooMSkgIE51bWVy
aWMgY29udmVyc2lvbiBzcGVjaWZpZXJzIGFyZSBicm9rZW4gYnV0IGNhbiBiZSBmaXhlZCwg
YW5kIHlvdSBwbGFuIHRvIA0KZml4IHRoZW0uDQoNCiAgICAgICgxLjEpICBJJ2xsIHJldmVy
dCB0aGUgZGVwcmVjYXRpb24gd2FybmluZyBub3c7IHNpbmNlIHRoZXkgYXJlIG9ubHkgYnJv
a2VuIA0KYmVjYXVzZSB0aGUgX2N1cnJlbnRfIHN0YW5kYXJkIGFuZCBpbXBsZW1lbnRhdGlv
bnMgYXJlIGJyb2tlbiwgYnV0IG5vdCBieSANCmluaGVyZW50IGRlc2lnbiBwcm9ibGVtcy4N
Cg0KICAgICAgKDEuMikgIFdoZW4geW91IGZpeCB0aGUgaW1wbGVtZW50YXRpb24gdG8gbm90
IGJlIFVCIGFueW1vcmUsIGl0IHdpbGwgYWxzbyANCm1ha2Ugc2Vuc2UgdG8gcmV2ZXJ0IHRo
ZSBwYXRjaCB0aGF0IHJlbW92ZWQgdGhlIEVSQU5HRSBlcnJvciwgc2luY2UgeW91J2xsIG5l
ZWQgDQp0byByZXBvcnQgaXQuDQoNCigyKSAgRm9yIHRoZSBzdHJpbmcgY29udmVyc2lvbiBz
cGVjaWZpZXJzLCB0aGVyZSBhcmUgd2F5cyB0byB1c2UgdGhlbSBzYWZlbHksIA0KYW5kIHlv
dSBwbGFuIHRvIGFkZCBhIHdheSB0byBzcGVjaWZ5IGEgc2l6ZSBhdCBydW50aW1lIHRvIHRo
ZSBmdW5jdGlvbiwgc28gaXQgDQp3aWxsIGJlIGV2ZW4gYmV0dGVyIGluIHRoZSBmdXR1cmUu
ICBObyBhY3Rpb24gcmVxdWlyZWQuDQoNCigzKSAgW3ZdW2Zdc2NhbmYgc2VlbSB0byBiZSBy
ZWFsbHkgYnJva2VuIGJ5IGRlc2lnbi4gIFBsZWFzZSBjb25maXJtLg0KDQpDaGVlcnMsDQoN
CkFsZXgNCg0KPiANCj4gencNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------k5aO7onqsWNkCeBjfCmbTKKR--

--------------Kzycun3ttw2zHxdb9l9Hxpbz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOZqbAACgkQnowa+77/
2zLa5Q/8DQ13FMkTjGodu0jn2ac/KqHP8/hqxj5LTBWQchX+iuJDYjKgXAi0GKNX
2dnCAIV8S7p7+0Lb89tP75wQlp/T4YsSnlzW9hUqUObCfpF2ot6FcT6VPnogeuyg
Q8c0eMJrnR7Lt52ygc9odjiAxVxxn4KO08njCLCDDXknZMb2gSKBkLwe2rArCocO
XOGCCQGcYrs/P5Ww0qHIeJqpWuLywX5EG4z3jeVTH+2cAvwdFRIa4eNK8l99ybLi
yQlv+5PDLNh4DdIo0DyJm6vg+4fefQyCq9Y4HVIZI+ATPx8lA7znWUGd/i+03uRT
4jtvXV++GH0W3A2daqvwEhp+KRLKM8xV5FwWHR2MuMwLEMQ5ZE8CbZYLZe2WotGW
rYam8X73hZVZxxxekRwIKDnzCFlLmsON/b4IbwYREk2BgR6GRk2bevEL/RvNWMZQ
mP8qlSZlI1OHFG+Q7yIHPbq0yDNIXcv5HRTi2uXoj1PshfZMaR4jBGhHDF0r01uo
Ukf6QQieR4MKkpYTjIaT71MXw404YstsmK6UxMyH2Cei6yEqyMByV2XJI/TcRtpP
6Sh6gUT+CfQtG6MO3ISGGYGskWkmJBpSnenLHK/lipGD7mfC86qcHo9DKeGEGXb/
puw4HhD6lxBcJebID9arvPLSIdp2Ddp812LsmDihO6ETPRpX6qk=
=EHPT
-----END PGP SIGNATURE-----

--------------Kzycun3ttw2zHxdb9l9Hxpbz--
