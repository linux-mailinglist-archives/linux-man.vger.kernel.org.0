Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B0C665F866
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 01:57:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236383AbjAFA51 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 19:57:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236454AbjAFA5Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 19:57:24 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06D915F4AC
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 16:57:20 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id g25-20020a7bc4d9000000b003d97c8d4941so2584968wmk.4
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 16:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xci+Fuj7ct8j3XWCq9hQBc35aMMXp8mkIlSODhlGsE4=;
        b=R/sylKzKU0JrsBig8ouiAuIS+i3utrVkmrTqpF8eSAJPlcIMMpmw6oA6k8jt2SuIp4
         7ZevWWi9B89OGI3GtdwyZRTGVow0gzdDSf0Xb/pW3sGpzLBTbcDIO9HO2ZpgkZZ98X17
         vO2GO29c2/1gwVDNZF9CpnkRLIelfEOLpNcUNAJBWO9Vl1KuQym1UvoP6F09lNWAzjYv
         Te4rRB1ahiZNdc7EAK5pf6XfLxnrQaGztq4oY4mTiUc8laW3vGnJYkWQpNNuCDbw6meW
         QOdcrSm5x/zTq6X1QDQyL8Slj1bkQPDG4K6BIYDbSKnR9tJ5NdQnXkrmgkKZUZBItykM
         /XEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xci+Fuj7ct8j3XWCq9hQBc35aMMXp8mkIlSODhlGsE4=;
        b=uuJzQlOxmNMNAKOlcx0GAjcaR4oI1gyOVVDqNYSnSzFntN7vEVc201sBz6kFRF8mSL
         XSvpaOjUQS64Nor8CHw7bWzXL/jpWCxPZ2d1OH4Xc2yBiYis6AhRGu8zvbYKO+qyJ3uv
         VoVzjcBZh/45FyllreRt9mfkCSf/8bo4RjuOp3UEaLwJFpkT8T29IVzWPqlqYDC8IBpz
         My7t5uzZPrbXG7RwVqSyM5wdZD7vLGzV4AZ9fCHA8UIMWNt4j+ZmbAqMHx/EuIUuRWlf
         YPjz8fxcv0zrKM7aplGtiX9dy4Mp61jV3yxWImaXqkRHGvybtAubKyd9zM4WfGoCzikf
         dj6w==
X-Gm-Message-State: AFqh2kpCeLEhSc+nvkPPRnTmjHk014UKZRYlt4/FdLBUm/V8oQLdHkeR
        xnRHHdQu/RB0dGhM2lg9FHA=
X-Google-Smtp-Source: AMrXdXt2s10jA0gB/r4hnLDwRjW4djcmu/Zl/hySVIC2HKFZ9FYjU/lGqrz9Enj12qmGQ4BaiO79+w==
X-Received: by 2002:a1c:7c14:0:b0:3d1:f74d:4f60 with SMTP id x20-20020a1c7c14000000b003d1f74d4f60mr41470130wmc.22.1672966638671;
        Thu, 05 Jan 2023 16:57:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o9-20020a05600c510900b003c6f8d30e40sm4879155wms.31.2023.01.05.16.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 16:57:18 -0800 (PST)
Message-ID: <c68fe25f-5359-2a8b-5807-618cbe9e39d5@gmail.com>
Date:   Fri, 6 Jan 2023 01:57:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx@kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <PAWPR08MB89827AFF364FB662C3FC5F9A83FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
 <68e4db4a-dba1-dcf3-c332-8b462193a097@gmail.com>
In-Reply-To: <68e4db4a-dba1-dcf3-c332-8b462193a097@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nsmKJ9J77mgphct2uAXFqM4O"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------nsmKJ9J77mgphct2uAXFqM4O
Content-Type: multipart/mixed; boundary="------------It86KKVMHec44eI0pgvT3XTy";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Wilco Dijkstra <Wilco.Dijkstra@arm.com>, Paul Eggert
 <eggert@cs.ucla.edu>,
 Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc: Alejandro Colomar <alx@kernel.org>,
 "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <c68fe25f-5359-2a8b-5807-618cbe9e39d5@gmail.com>
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
References: <PAWPR08MB89827AFF364FB662C3FC5F9A83FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
 <68e4db4a-dba1-dcf3-c332-8b462193a097@gmail.com>
In-Reply-To: <68e4db4a-dba1-dcf3-c332-8b462193a097@gmail.com>

--------------It86KKVMHec44eI0pgvT3XTy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgV2lsY28sDQoNCk9uIDEvNi8yMyAwMToyMiwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6
DQo+IEhpIFdpbGNvLA0KPiANCj4gT24gMS82LzIzIDAxOjAyLCBXaWxjbyBEaWprc3RyYSB3
cm90ZToNCj4+IEhpIEFsZXgsDQo+Pg0KPj4+IFRoZXJlIGFyZSBtYW55IHVzZXJzIG9mIGJ6
ZXJvKDMpIGluIHRoZSB3aWxkLCBhbmQgaXQgaXMgYSBmaW5lIEFQSSBmcm9tIGENCj4+PiB1
c2FiaWxpdHkgcG9pbnQgb2Ygdmlldy4NCj4+DQo+PiBTaW5jZSB5b3UgcmVwZWF0ZWRseSBj
bGFpbSBsb3RzIG9mIHVzZSBvZiB0aGVzZSBmdW5jdGlvbnMsIEkgZGlkIGEgcXVpY2sgc2Vh
cmNoDQo+PiBvbiBodHRwczovL2NvZGVzZWFyY2guZGViaWFuLm5ldC8NCj4+DQo+PiBiemVy
bzogMjE0NDANCj4+IG1lbXNldDogNTYzMDU0DQo+Pg0KPj4gbWVtcGNweTogNDQ4OQ0KPj4g
bWVtY3B5OiA2OTI4NzMNCg0KRm9yIGNvbXBhcmlzb246DQoNCnN0cmNhdDogMTMwNzg1DQpz
dHBjcHk6IDg5NjANCg0KVGhleSBjb21wZXRlIGZvciB0aGUgc2FtZSBmdW5jdGlvbmFsaXR5
LiAgc3RwY3B5KDMpIGlzIGEgbG90IGxlc3MgdXNlZCB0aGFuIA0Kc3RyY2F0KDMpLiAgTm90
IGJlY2F1c2UgaXQncyBkZWFkLCBidXQgYmVjYXVzZSBpdCBvbmx5IGJlY2FtZSBzdGFuZGFy
ZCBpbiANClBPU0lYLjEtMjAwOCwgd2hpbGUgdGhlIG90aGVyIGhhcyBiZWVuIHRoZW4gc2lu
Y2UgZm9yZXZlciwgYW5kIGhhcyBiZWVuIA0KInByb21vdGVkIiBieSBJU08gYW5kIFBPU0lY
IGZvciBhIGxvbmcgdGltZS4gIFRoZXJlJ3Mgbm8gY2xlYXIgd2lubmVyIG9uIHdoaWNoIA0K
QVBJIGlzIGJldHRlciwgYXNzdW1pbmcgYW4gb3B0aW1pemluZyBjb21waWxlcjsgaXQgZGVw
ZW5kcyBvbiB3aGF0IHlvdSBkbyB3aXRoIHRoZW0uDQoNCkFub3RoZXIgb25lOg0KDQpzdHJu
Y2F0OiAxNzA5MQ0Kc3RybGNhdDogMTM5ODkNCg0Kc3RybGNhdCgzKSBpcyA5OSUgb2YgdGhl
IHRpbWUgd2hhdCB1c2VycyBzaG91bGQgY2FsbC4gIFlldCB0aGV5IGNhbGwgaXQgbGVzcyAN
CnRoYW4gc3RybmNhdCgzKS4NCg0KUG9ydGFiaWxpdHkgc2VlbXMgdG8gYmUgdGhlIG1haW4g
ZHJpdmVyIG9mIHRob3NlIG51bWJlcnMuICBMdWNraWx5LCB0aGUgDQpzdHJsY2F0KDMpIG51
bWJlcnMgYXJlIG5vdCBzbyBiYWQgY29tcGFyZWQgdG8gc3RybmNhdCgzKS4gIEhvd2V2ZXIs
IEkgc3RpbGwgDQp3b25kZXIgaWYgYWxsIHRob3NlIHVzZXMgb2Ygc3RyY2F0KDMpIGFyZSBy
ZWFsbHkgc2FmZS4NCg0KT2YgY291cnNlLCBoYXZpbmcgUE9TSVggdHJ5IHRvIGtpbGwgYnpl
cm8oMyksIG9yIHRoYXQgaXQgaGFzbid0IHlldCBjb25zaWRlcmVkIA0KbWVtcGNweSgzKSwg
aGFzbid0IGhlbHBlZCB0aGUgbnVtYmVyczsgYnV0IGl0IGRvZXNuJ3QgbWVhbiB0aGF0IHBy
b2dyYW1tZXJzIA0Kd291bGRuJ3QgaGFwcHkgd2l0aCB0aGVtIGJlaW5nIGJsZXNzZWQgYnkg
SVNPL1BPU0lYLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPj4NCj4+IEkgdXNlZCAibWVtY3B5
KCIgYW5kICJtZW1jcHkgKCIgYW5kIGFkZGVkIHRoZSByZXN1bHRzLiBUaGVzZSBvdmVyZXN0
aW1hdGUNCj4+IHVzYWdlIGR1ZSB0byBwcm90b3R5cGVzIGFuZCBjb21tZW50cywgYW5kIGRv
bid0IGluY2x1ZGUgbWVtY3B5IGFuZCBtZW1zZXQNCj4+IGNhbGxzIGVtaXR0ZWQgYnkgY29t
cGlsZXJzIHNvIGluIHJlYWxpdHkgdGhlIHJlc3VsdHMgYXJlIGV2ZW4gbW9yZSBza2V3ZWQu
DQo+IA0KPiBNYW55IHByb2plY3RzIHJlZGVmaW5lIHRob3NlIGZ1bmN0aW9ucyB0aGVtc2Vs
dmVzLCB3aXRoIGFsdGVybmF0aXZlIG5hbWVzLCBzbyANCj4gaXQncyBoYXJkIHRvIHJlYWxs
eSBjb3VudCBob3cgbXVjaCBpcyB0aGUgaW50ZW50aW9uIG9mIHByb2plY3RzIHRvIHVzZSBp
dCwgDQo+IHJhdGhlciB0aGFuIGFjdHVhbCB1c2UuwqAgU2luY2UgdGhlIHN0YW5kYXJkcyBk
b24ndCBndWFyYW50ZWUgc3VjaCBmdW5jdGlvbnMsIA0KPiBwcm9qZWN0cyB0aGF0IGNhcmUg
YSBsb3QsIHVzZSBhIHBvcnRhYmxlIG5hbWUgKG9uZSB0aGF0IGlzbid0IHJlc2VydmVkOyAN
Cj4gc29tZXRpbWVzIHRoZXkgZG9uJ3QgZXZlbiBrbm93IHRoYXQgdGhlcmUncyBhIEdOVSBl
eHRlbnNpb24gd2l0aCB0aGF0IG5hbWUgYW5kIA0KPiB1c2UgYSB3ZWlyZCBvbmUsIHN1Y2gg
YXMgY3B5bWVtKCkgYnkgbmdpbngpLg0KPiANCj4gUHJvamVjdHMgdGhhdCBwcmVmZXIgcG9y
dGFiaWxpdHkgYW5kIGRvbid0IGNhcmUgYWJvdXQgdXNpbmcgZ29vZCBBUElzIHNvIG11Y2gg
DQo+IHdpbGwgZmFsbCBiYWNrIHRvIHRoZSBzdGFuZGFyZCBBUElzLCB3aGljaCBpcyBtb3N0
IHByb2plY3RzLCBzbyBvZiBjb3Vyc2UgdGhlIA0KPiBudW1iZXJzIGFyZSBub3QgY29tcGFy
YWJsZSBpbiB0aGUgd2lsZC4NCj4gDQo+IFRoZSB0aGluZyBpcyB0aGF0IHRob3NlIEFQSXMg
YXJlIGJldHRlciAoaW1hZ2luZSB0aGF0IHRoZXkgd2VyZSBhbGwgc3RhbmRhcmQsIA0KPiBh
bmQgd2VyZSBhbGwgZXF1YWxseSBrbm93biBieSBwcm9ncmFtbWVyczsgd2hpY2ggb25lcyB3
b3VsZCB5b3UgdXNlPykuwqAgU29tZSANCj4gcHJvZ3JhbW1lcnMgd2lsbCB3YW50IHRvIHVz
ZSB0aGUgYmV0dGVyIEFQSXMsIGluZGVwZW5kZW50bHkgb2YgbGliYyBwcm92aWRpbmcgaXQg
DQo+IG9yIG5vdC7CoCBJbiBzb21lIGNhc2VzLCBmb3IgaGlnaCBwZXJmb3JtYW5jZSBwcm9n
cmFtcywgZ29vZCBBUElzIGFyZSBldmVuIG1vcmUgDQo+IHJlbGV2YW50LsKgIE5vdCBpbXBs
ZW1lbnRpbmcgdGhlbSBpbiBsaWJjLCB3aWxsIG9ubHkgbWVhbiB0aGF0IHByb2plY3RzIHdp
bGwgcm9sbCANCj4gdGhlaXIgb3duLg0KPiANCj4gSSdtIG5vdCBzYXlpbmcgdGhhdCdzIGJh
ZCBlaXRoZXIuwqAgSWYgd2Ugd2FudCB0byBzaW1wbGlmeSBsaWJjLCBhbmQgYWRkIHNvbWUg
DQo+IGV4dGVuc2lvbiBsaWJyYXJpZXMgdGhhdCBhcmUgaW5kZXBlbmRlbnQgb2YgbGliYywg
dGhhdCB3b3VsZCBwcm92aWRlIHN1Y2ggDQo+IGZ1bmN0aW9ucywgdGhhdCdzIGZpbmUgYnkg
bWUuwqAgQW5kIG1heWJlIGl0J3MgdGhlIGJldHRlciB0aGluZyB0byBkby4NCj4gDQo+IFNv
LCB3aGV0aGVyIHlvdSBsaWtlIGl0IG9yIG5vdCwgYSByZWxldmFudCBudW1iZXIgb2YgcHJv
Z3JhbXMgKGFsdGhvdWdoLCBhcyB5b3UgDQo+IHByb3ZlZCwgYSBzbWFsbCBvbmUgY29tcGFy
ZWQgdG8gdGhlIGVudGlyZSB1bml2ZXJzZSBvZiBwcm9ncmFtcykgd2lsbCBrZWVwIHVzaW5n
IA0KPiBhbiBBUEkgdGhhdCBhc2tzIGZvciBhIHBvaW50ZXIgYW5kIGEgc2l6ZSBhbmQgemVy
b2VzIGl0LsKgIFdlIGNhbiBjYWxsIGl0IA0KPiBiemVybygzKSwgb3IgbWVtemVybygzKSwg
b3IgZXh0X21lbXplcm8oMykgKGV4dF8gYmVpbmcgYSBwcmVmaXggZm9yIGEgbGlicmFyeSAN
Cj4gcHJvdmlkaW5nIHVzZWZ1bCBleHRlbnNpb25zIHRvIGxpYmMpLCBidXQgdGhlIGZ1bmN0
aW9uIHdpbGwgYmUgdGhlcmUuDQo+IA0KPiBXaGVyZSBkbyB5b3Ugc3VnZ2VzdCB0aGF0IHdl
IHB1dCBzdWNoIGZ1bmN0aW9uP8KgIEluIG9yIG91dCBvZiBsaWJjPw0KPiANCj4+DQo+PiBU
aGVyZSBtYXkgYmUgb3RoZXIgcmVwb3NpdG9yaWVzIHdoaWNoIGNhbiBiZSBlYXNpbHkgc2Vh
cmNoZWQsIGJ1dCB0aGVzZSByZXN1bHRzDQo+PiBhcmUgY2xlYXIgZW5vdWdoIHRvIGNvbmNs
dWRlIHRoZXNlIGZ1bmN0aW9ucyBhcmUgZGVhZC4NCj4gSSdkIHNheSBkZWFkIGlzIHRvbyBt
dWNoLg0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiANCj4+DQo+PiBDaGVlcnMsDQo+
PiBXaWxjbw0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+
DQo=

--------------It86KKVMHec44eI0pgvT3XTy--

--------------nsmKJ9J77mgphct2uAXFqM4O
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3ceAACgkQnowa+77/
2zIDNA//RB8kpaLF76+PtyANBhCyR8nORNmJa+pIQlbmiU31zpp3x4o1fX7lmeK3
885aNty6VeqwyfQKqqifE68bhhZetK7B8YMg99ELuuqmHMzqqaJVU47oJHnpKhEu
j5ACTWLfHg0XZdK02DAlZdo03wyoEfnae3+IQ5ljSRMwWh8nBMCZZH2efODwXD24
ES+SlPz7ogNnRfTRwpJlRJKdfXcD/YJDZB7N+NSX2Ff2HUeexmTsii1cI2eldCx1
ogFUaZ6wS3fzIIQphPj+IB2s2ojDH1biDQnAi156TfrW9PkA5Mfm5yCqCkbkwJAf
+eQlrm7qSpXl0mTvSzJqMAEPWWDW7BFCR0jyF2hqQpn38GGfMv/VwrJuMWyz8CDu
Xj+KeeQTGu1OHpgnoH48Ps9QnH6ehtxsGfjfv0TVzs98/tcFqsAOCGo0sDgScRAa
g9aleGXUuYYxQPTbfVkWPD5teEN8sJMlMAgDmuM48myh7PGAnBVdKeNlLcUzfMyb
9OQJGbcloUciHslMlvuoTD74R4zVal9zGNFNyDiVeMGGYHogcog0fG4SRQQh+gf6
1MVBXNRyNLGXyFYRxaLBMojR9/ED6oq83o9oaYdmi2M6oVj7iAQ+iBkXhm+2vI8s
lMJz01jzP5XqYpD+tWnGZ7vDlXsEdI6EkqcNrdQZeWHYmWIwr2s=
=lsMu
-----END PGP SIGNATURE-----

--------------nsmKJ9J77mgphct2uAXFqM4O--
