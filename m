Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07AC467436D
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 21:19:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230084AbjASUTz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 15:19:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229761AbjASUTn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 15:19:43 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B3899D29F
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 12:19:41 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id d2so2965654wrp.8
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 12:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eu8md3Xvow2KP3/qQqn52D7WY5wB9oNUAw9Fh7xOKvo=;
        b=GIb2dg8nD+4nppCYOlBkXetgTy2p4UwLcjrfsjwxa9o0B+gV6P/LaSNT06LCZjaf71
         jnqL5q7395z+RwgNrfxIMUkftUt1JyovHaqsHI+4lu/OV4lD1kGU7W/KD5KERdfP4hfp
         uYv06V+mx1K/yNNpEw1Aoi1F3OiGBiiX+OCyzHilZbBUnvKn9V9smNxRnHpM8FQXO/Wb
         RvAy9McuiA5wtxHcx26T3gbOnU3ALBeH6V2NtqOyeaZQUfj179kdHGUMQMLyF5LRUznm
         nBA7BfIyPW8HEdoerb+sg+x4csimAdgZW6OIHFZleTPpOO1xABSUHgSwIHNb6I6KW0nc
         NN1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eu8md3Xvow2KP3/qQqn52D7WY5wB9oNUAw9Fh7xOKvo=;
        b=XcwtA1+VasqSmtsz4OEcwZ2REQ7w3INL196kxHejJDs4yTyKCcsPxPmKwtDAJ7oQtQ
         K6pA1wE+5myfsrzIq9hlS5lKLAc4MzzOukm+JoCUwgz3iq7ndZ5fA5/sZ0cwK2jyxnL9
         Ey7RCPNtxrjszZzi74ETPNAVD5jaoeE9Bcm89YmG4wbGb0E64/CSev2uMkutsRsnGkxM
         Exl+BGpPqYw54pm4PCszWzTsvKcXY/tfXcIOrDNhM6U1RcdNVx4qrzgTTxtIBy8dMm+A
         28pJAHy0qEtqyLq2HZbAAM5aUckP8Xu28VLWSfbpFFDsq/UIn0ii/4IxJ8sHt1xUvEw2
         cAdQ==
X-Gm-Message-State: AFqh2koyLYVEBRh2KkhhyQIkPaPHxrLVqFlXTyULEqFtCpEo6qs0mIsy
        imDi/uAeTiBJpN65ve3ll9I=
X-Google-Smtp-Source: AMrXdXtPVr6uDi+sZunSD/iisxxHh+E9+Vb3PPfpJL/oUxNnAH9nrLtTyTnvh28yYgNmsQiMMKCLbA==
X-Received: by 2002:adf:ebc9:0:b0:2be:d02:1bdd with SMTP id v9-20020adfebc9000000b002be0d021bddmr9537014wrn.43.1674159579876;
        Thu, 19 Jan 2023 12:19:39 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m13-20020adfe94d000000b002714b3d2348sm34569267wrn.25.2023.01.19.12.19.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 12:19:39 -0800 (PST)
Message-ID: <0fdb2d61-db2d-d85c-35e4-ce32b2f36269@gmail.com>
Date:   Thu, 19 Jan 2023 21:19:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: struct sockaddr_storage, union (was: Improve getsockname)
Content-Language: en-US
To:     =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <2889739.XEG2VLDMQ1@portable-bastien>
 <5c06b714-80fb-b2c5-0721-72c19f22819f@gmail.com>
 <2860541.uBSZ6KuyZf@portable-bastien>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2860541.uBSZ6KuyZf@portable-bastien>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KC78uK5oenzeN3schc0BZOW0"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------KC78uK5oenzeN3schc0BZOW0
Content-Type: multipart/mixed; boundary="------------PpHR500hN0MbJbW7kQXHVrj4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <0fdb2d61-db2d-d85c-35e4-ce32b2f36269@gmail.com>
Subject: struct sockaddr_storage, union (was: Improve getsockname)
References: <2889739.XEG2VLDMQ1@portable-bastien>
 <5c06b714-80fb-b2c5-0721-72c19f22819f@gmail.com>
 <2860541.uBSZ6KuyZf@portable-bastien>
In-Reply-To: <2860541.uBSZ6KuyZf@portable-bastien>

--------------PpHR500hN0MbJbW7kQXHVrj4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

W0NDICs9IFphY2ssIGdsaWJjXQ0KDQpIaSBCYXN0aWVuLCBFcmljLCBhbmQgWmFjaywNCg0K
T24gMS8xOS8yMyAyMDo0NCwgQmFzdGllbiBSb3VjYXJpw6hzIHdyb3RlOg0KPiBMZSBqZXVk
aSAxOSBqYW52aWVyIDIwMjMsIDEyOjQyOjUyIFVUQyBBbGVqYW5kcm8gQ29sb21hciBhIMOp
Y3JpdCA6DQo+IEhpIGFsbCwNCj4gW2FkZGluZyBFcmljIEJsYWtlIGZyb20gcmVkaGF0IGFu
ZCBpZiBJIHJlbWVtYmVyIHdlbGwgbWVtYmVyIG9mIFBPU0lYIGNvbWl0ZWVdDQoNClRoYW5r
cy4NCg0KQlRXLCB5b3VyIHBvc3QgdHJpZ2dlcmVkIHNvbWUgY2hhbmdlcy4gIEkgZGlkbid0
IENDIHRvIG5vdCBiZSB0b28gbm9pc3ksIGJ1dCANCnNpbmNlIHlvdSBzZWVtIHRvIGJlIGlu
dGVyZXN0ZWQgaW4gaXQsIGhlcmUgYXJlIGEgZmV3IHRoaW5nczoNCg0KDQotICBTdWdnZXN0
IGRlcHJlY2F0aW5nIHN0cnVjdCBzb2NrYWRkcl9zdG9yYWdlIHRvIGdsaWJjOg0KDQogDQo8
aHR0cHM6Ly9pbmJveC5zb3VyY2V3YXJlLm9yZy9saWJjLWFscGhhLzBmMjVkNjBmLWYxODMt
YjUxOC1iNmMxLTZkNDZhYTYzZWU1N0BnbWFpbC5jb20vVC8+DQoNCi0gIFdoaWNoIGNhdXNl
ZCBaYWNrIHRvIHVwZGF0ZSBzb21lIG9sZCBzdGFja292ZXJmbG93IGFuc3dlciA6KQ0KDQog
ICAgPGh0dHBzOi8vc3RhY2tvdmVyZmxvdy5jb20vYS80MjE5MDkxMy82ODcyNzE3Pg0KDQot
ICBIZSBtYWRlIG1lIHJlYWxpemUgZ2V0bmFtZWluZm8oMykgZXhpc3RzLCBhbmQgc28gSSB1
c2VkIGluIHBsYWNlIG9mIGEgc2ltaWxhciANCmZ1bmN0aW9uIHRoYXQgSSBoYWQgaW1wbGVt
ZW50ZWQgcmVjZW50bHk6DQoNCiAgICA8aHR0cHM6Ly9naXRodWIuY29tL3NoYWRvdy1tYWlu
dC9zaGFkb3cvcHVsbC82Mjk+DQoNCi0gIEFuZCB3aGlsZSByZWFkaW5nIHRoZSBtYW51YWwg
cGFnZSBmb3IgZ2V0bmFtZWluZm8oMyksIEkgcmVhbGl6ZWQgaXQgd2FzIA0KbWlzc2luZyBz
b21lIG1pc3NpbmcgX051bGxhYmxlIHF1YWxpZmllcnM6DQoNCiANCjxodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQv
P2lkPTM5MDE3ZjkwNjQ0MTQxYThiZDI5N2M3ODMyMDFlMDRiMjM4NzY5ZmI+DQoNCg0KQlRX
LCBaYWNrLCBnbGliYyBjb3VsZCBhZGQgW1tub25udWxsKDEpXV0gZm9yIHRoZSBwcm90b3R5
cGUuICBTaG91bGQgSSBzZW5kIGEgDQpwYXRjaCBhZGRpbmcgaXQgdG8gdGhlIGhlYWRlcj8N
Cg0KPiANCj4gRXJpYyB0byBiZSBzaG9ydCBwb3NpeCBiZWhhdmlvciBvZiBzb2NrYWRkciBz
b2NrYWRkcl9zdG9yYWdlIGlzIFVCDQoNCkFncmVlLiAgQWxtb3N0IGFsbCB1c2VzIG9mIHN0
cnVjdCBzb2NrYWRkcl9zdG9yYWdlIGFyZSBVQiwgYW5kIHRob3NlIHRoYXQgYXJlIA0Kbm90
IFVCLCBhcmUgZXJyb3IgcHJvbmUuICBzdG9ja2FkZHJfc3RvcmFnZSBpcyBiYWQuDQoNCj4g
YW5kIGV4YW1wbGUgc3VwcGxpZWQgYXJlIFVCLiBTZWUgaGVyZToNCj4gaHR0cHM6Ly9wdWJz
Lm9wZW5ncm91cC5vcmcvb25saW5lcHVicy8wMDk2OTY2OTkvYmFzZWRlZnMvc3lzL3NvY2tl
dC5oLmh0bWwNCg0KSSBkb24ndCBzZWUgYW55IHVzYWdlIGV4YW1wbGVzIHRoZXJlLiAgT25s
eSBhIGRlZmluaXRpb24uICBUaGUgZGVmaW5pdGlvbiBpc24ndCANCmJhZCBpbiBpdHNlbGY7
IGl0J3MganVzdCB0aGF0IGl0J3MgdW51c2FibGUuDQoNCkJUVywgbm93IHdlIG5lZWQgdG8g
Y2hlY2sgYWxsIHRoZSBtYW4gcGFnZXMgdGhhdCByZWZlciB0byB0aGF0IHN0cnVjdHVyZSBh
bmQgZml4IA0KdGhlbSB0byBub3QgcHJvbW90ZSBVQi4NCg0KPiANCj4gSSB0aGluayB3ZSBj
b3VsZCBzYXZlIHRoZSBkYXkgYnkgZGVmaW5pbmcgc3RydWN0IHNvY2thZGRfc3RvcmFnZSB1
c2luZyBhbm9ueW1vdXMgdW5pb24gKHRoYW5rcyB0byBDMTEgc3VwcG9ydCksDQo+ICAgYnV0
IGl0IHdpbGwgbGVhdmUgQysrLiBCdXQgaG93IGNhbiBiZSBkb25lLi4uDQo+IA0KPj4gSGkg
QmFzdGllbiwNCj4+IEhpIEJhc3RpZW4sDQo+Pg0KPj4gT24gMS8xNy8yMyAxMToyMiwgQmFz
dGllbiBSb3VjYXJpw6hzIHdyb3RlOg0KPj4+IEhpLA0KPj4+DQo+Pj4gSSBoYXZlIGEgbG90
IG9mIHN0dWRlbnQgdGhhdCBkb2VzIG5vdCB1c2UgY29ycmVjdGx5IGdldHNvY2tuYW1lIGlu
IGNhc2Ugb2YNCj4+PiBkdWFsIHN0YWNrLg0KPj4NCj4+IFBsZWFzZSBzaG93IHNvbWUgZXhh
bXBsZXMgb2YgY29tbW9uIG1pc3Rha2VzLCBpZiB5b3UgY2FuLg0KPiBvaCB0aGUgYmFzaWMg
b25lIGlzIHRvIHBhc3MgYSBzb2NrYWRkcl9pbiBpbnN0ZWFkIG9mIHNvY2thZGRyX2luNi4u
LiBPciB0byBwYXNzIGEgc29ja2FkZHJfaW42IGFuZCBkbyBub3QgdGhpbmsgdGhhdCBpdCBj
b3VsZCBiZSByZXR1cm5lZCBhbiBJUFY0IHNvY2tldCBvciBhbiBVbml4IHN0cmVhbSBzb2Nr
ZXQuDQoNClVuZGVyc3Rvb2QuDQoNCj4+DQo+Pj4NCj4+PiBNYXkgYmUgdGhpcyBraW5kIG9m
IGRpc2N1c3Npb24gc2hvdWxkIGJlIGZhY3Rvcml6ZWQgaW4gIHNvY2thZGRyX3N0b3JhZ2Ug
KHRoZQ0KPj4+IGhpc3RvcmljYWwgbm90ZSBwYXJ0aWN1bGFybHkpLg0KPj4+DQo+Pj4gaSBz
dXBwb3NlIHRoZSBzYW1lIHNob3VsZCBiZSBkb25lIGZvciBnZXRwZWVybmFtZQ0KPj4+DQo+
Pj4gSSB0aGluayBhIHNhZmUgcHJvZ3JhbW1pbmcgZXhhbXBsZSBtYXkgYmUgZ2l2ZW4gdGhh
dCBhY2NlcHQgYSBzb2NrZXQgYXMgc3RkaW4NCj4+PiBhbmQgcHJpbnQgaW5mb3JtYXRpb24g
b24gaXQuIFVzaW5nIHNvY2F0IGl0IGNvdWxkIGJlIHNpbXBsZSB0byB0ZXN0Lg0KPj4NCj4+
IFBsZWFzZSBwcm92aWRlIHNvbWUgaWYgeW91IGNhbi4gIEhvd2V2ZXIsIGJlIGNhcmVmdWws
IHNpbmNlIGl0IG1pZ2h0IGVhc2lseSBmYWxsDQo+PiBpbnRvIFVuZGVmaW5lZCBCZWhhdmlv
ci4NCj4gDQo+IE9rIHNlZSBpdCBhdHRhY2hlZC4NCg0KVGhhbmtzLg0KDQo+Pg0KPj4+IG1h
eWJlDQo+Pj4gZm9yY2luZyBFTk9UU1VQUCBpZiAqYWRkciA+IHNpemVvZihzb2NrYWRkX3N0
b3JhZ2UpDQo+Pj4NCj4+PiBSZWdhcmRzDQo+Pj4NCj4+PiBCYXN0aWVuDQo+Pg0KPj4gSSds
bCBhZGQgc29tZSBjb21tZW50cyB0byB0aGUgcGF0Y2guDQo+Pg0KPj4+ICBGcm9tIDBhZmIz
YWQyM2Y4ZWEwOTMzMWYyMWEzNzdlM2FkMTljNDRlNGRmMTggTW9uIFNlcCAxNyAwMDowMDow
MCAyMDAxDQo+Pj4gRnJvbTogPT9VVEYtOD9xP0Jhc3RpZW49MjBSb3VjYXJpPUMzPUE4cz89
IDxyb3VjYUBkZWJpYW4ub3JnPg0KPj4+IERhdGU6IFR1ZSwgMTcgSmFuIDIwMjMgMTA6MDc6
NDMgKzAwMDANCj4+PiBTdWJqZWN0OiBbUEFUQ0hdIERvY3VtZW50IHVzZSBvZiBzdHJ1Y3Qg
c29ja2FkZHJfc3RvcmFnZSBpbiBnZXRzb2NrbmFtZQ0KPj4+DQo+Pj4gRG9jdW1lbnQ6DQo+
Pj4gLSBzdG9yYWdlIHJlcXVpZXJlbWVudA0KPj4+IC0gZnV0dXJlIGNvbXBhdGliaWxpdHkN
Cj4+PiAtLS0NCj4+PiAgIG1hbjIvZ2V0c29ja25hbWUuMiB8IDU2ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCA1NiBpbnNlcnRpb25zKCspDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvbWFuMi9nZXRzb2Nr
bmFtZS4yIGIvbWFuMi9nZXRzb2NrbmFtZS4yDQo+Pj4gaW5kZXggZTZlODk4MGM5Li41OTE0
YzllMTIgMTAwNjQ0DQo+Pj4gLS0tIGEvbWFuMi9nZXRzb2NrbmFtZS4yDQo+Pj4gKysrIGIv
bWFuMi9nZXRzb2NrbmFtZS4yDQo+Pj4gQEAgLTM5LDYgKzM5LDE3IEBAIFRoZSByZXR1cm5l
ZCBhZGRyZXNzIGlzIHRydW5jYXRlZCBpZiB0aGUgYnVmZmVyIHByb3ZpZGVkIGlzIHRvbyBz
bWFsbDsNCj4+PiAgIGluIHRoaXMgY2FzZSwNCj4+PiAgIC5JIGFkZHJsZW4NCj4+PiAgIHdp
bGwgcmV0dXJuIGEgdmFsdWUgZ3JlYXRlciB0aGFuIHdhcyBzdXBwbGllZCB0byB0aGUgY2Fs
bC4NCj4+PiArLlBQDQo+Pj4gK0ZvciBncmVhdGVyIHBvcnRhYmlsaXR5DQo+Pj4gKy5JIGFk
ZHINCj4+PiArc2hvdWxkIHBvaW50IHRvIGEgc3RydWN0dXJlIG9mIHR5cGUNCj4+PiArLkkg
c29ja2FkZHJfc3RvcmFnZS4NCj4+DQo+PiBUaGlzIGlzIG5vdCBjb3JyZWN0LiAgSWYgdGhl
IG9iamVjdCBoYXMgYSB0eXBlIG9mICdzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZScsDQo+PiB0
aGVuIGl0IGNhbiBvbmx5IGJlIGFjY2Vzc2VkIGFzIGEgJ3N0cnVjdCBzb2NrYWRkcl9zdG9y
YWdlJy4gIFRyeWluZyB0byBhY2Nlc3MNCj4+IGl0IGFzIGFueSBvdGhlciBzdHJ1Y3R1cmUg
dHlwZSB3b3VsZCBiZSBVbmRlZmluZWQgQmVoYXZpb3IuICBUaGUgd2F5IHRvIGRvIGl0DQo+
PiBjb25mb3JtaW5nIHRvIElTTyBDIHdvdWxkIGJlIHRvIGRlY2xhcmUgYSB1bmlvbiB3aGlj
aCBjb250YWlucyBhbGwgdGhlICdzdHJ1Y3QNCj4+IHNvY2thZGRyXyonIHRoYXQgYXJlIGlu
dGVyZXN0aW5nLCBhbmQgYWNjZXNzIGl0IHRocm91Z2ggdGhlIGNvcnJlY3QgdW5pb24NCj4+
IG1lbWJlci4gIEFueXRoaW5nIGVsc2UgaXMgb24gVUIgbGFuZC4gIFRoZSBvbmx5IHVzZSBv
ZiAnc3RydWN0IHNvY2thZGRyX3N0b3JhZ2UnDQo+PiB0aGF0IEkgY2FuIHRoaW5rIG9mLCBp
cyBmb3IgaGF2aW5nIGEgbW9yZSBjb25zaXN0ZW50IHVuaW9uIHNpemUuDQo+IA0KPiBPayBJ
IHNlZSwgRXJpYyBjb3VsZCB3ZSByZWRlZmluZSBhdCBwb3NpeCBsZXZlbCB0aGUgc3RydWN0
IHNvY2thZGRyX3N0b3JhZ2UgdG8gYmUgc29tZXRoaW5nIGxpa2UsIGl0IHNlZW1zIHRoYXQg
aXQgaXMgYWxsb3dlZCBieQ0KPiAvKg0KPiAgICogIEZvbGxvd2luZyBmaWVsZHMgYXJlIGlt
cGxlbWVudGF0aW9uLWRlZmluZWQuDQo+ICAgKi8NCj4gDQo+IHVuaW9uIHNvY2thZGRyX3N0
b3JhZ2Ugew0KPiAgICBzYV9mYW1pbHlfdCAgICAgc3NfZmFtaWx5Ow0KPiAgICBzdHJ1Y3Qg
c29ja2FkZHIgc29jazsNCj4gICAgc3RydWN0IF9zb2NrYWRkcl9zdG9yYWdlIHN0b3JhZ2U7
DQo+ICAgIHN0cnVjdCBzb2NrYWRkcl9pbiBpbjsNCj4gICAgc3RydWN0IHNvY2thZGRyX2lu
NiBpbjY7DQo+ICAgIHN0cnVjdCBzb2NrYWRkcl91biB1bjsNCj4gfTsNCg0KSG1tbSwgaW50
ZXJlc3RpbmcuICBXZSBjYW4ndCBkbyB0aGF0LCBiZWNhdXNlIHRoaXMgd291bGQgYmUgYSBi
cmVha2luZyBjaGFuZ2UgdG8gDQpzb3VyY2UgY29kZS4gIFdlIGNhbid0IGNoYW5nZSBmcm9t
IGBzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZWAgdG8gYHVuaW9uIA0Kc29ja2FkZHJfc3RvcmFn
ZWAuICBIb3dldmVyLCB0aGlzIHN1Z2dlc3Rpb24sIGNvbWJpbmVkIHdpdGggdGhlIGlkZWEg
b2YgdXNpbmcgYW4gDQphbm9ueW1vdXMgdW5pb24sIGNhbiBiZSBtYWRlIHRvIHdvcmsgYXMg
c29tZXRoaW5nIHRoYXQgaXMgY29tcGF0aWJsZSB3aXRoIHRoZSANCmN1cnJlbnQgc29ja2Fk
ZHJfc3RvcmFnZToNCg0Kc3RydWN0IHNvY2thZGRyX3N0b3JhZ2Ugew0KCXVuaW9uIHsNCgkJ
c2FfZmFtaWx5X3QgICAgICAgICAgc3NfZmFtaWx5Ow0KCQlzdHJ1Y3Qgc29ja2FkZHIgICAg
ICBzYTsNCgkJc3RydWN0IHNvY2thZGRyX2luICAgc2luOw0KCQlzdHJ1Y3Qgc29ja2FkZHJf
aW42ICBzaW42Ow0KCQlzdHJ1Y3Qgc29ja2FkZHJfdW4gICBzdW47DQoJfTsNCn07DQoNClRo
aXMgaXMgY29tcGF0aWJsZToNCg0KLSAgSXQgaGFkIGF0IGxlYXN0IHRoZSBgc3NfZmFtaWx5
YCBmaWVsZC4gIEl0J3Mgc3RpbGwgdGhlcmUsIGF0IHRoZSBzYW1lIGJpbmFyeSANCmxvY2F0
aW9uLg0KLSAgSXQgaGFzIGEgc2l6ZSBhdCBsZWFzdCBhcyBsYXJnZSBhcyBhbnkgb3RoZXIg
c29ja2FkZHJfKiBzdHJ1Y3R1cmUsIGFuZCBhIA0Kc3VpdGFibGUgYWxpZ25tZW50Lg0KLSAg
T2xkIGNvZGUgc3RpbGwgd29ya3Mgd2l0aCBpdCBqdXN0IGZpbmUuDQotICBOZXcgY29kZSB3
aWxsIGJlIGFibGUgdG8gYXZvaWQgVUIsIGFuZCBhbGwgY2FzdHMsIGp1c3QgYnkgYWNjZXNz
aW5nIHRoZSByaWdodCANCnN0cnVjdHVyZSBlbGVtZW50Lg0KLSAgSXQncyB0cml2aWFsIHRv
IHRlc3QgYXQgY29uZmlndXJlIHRpbWUgaWYgdGhlIGltcGxlbWVudGF0aW9uIHByb3ZpZGVz
IHRoaXMgDQpuZXcgZGVmaW5pdGlvbiBvZiB0aGUgc3RydWN0dXJlLg0KDQo+Pg0KPj4+ICsu
SSBzb2NrYWRkcl9zdG9yYWdlDQo+Pj4gK3N0cnVjdHVyZSBpcyBsYXJnZSBlbm91Z2ggdG8g
aG9sZCBhbnkgb2YgdGhlIG90aGVyDQo+Pj4gKy5JIHNvY2thZGRyXyoNCj4+PiArdmFyaWFu
dHMgYW5kIGFsd2F5cyB3ZWxsIGFsaWduZWQuIE9uIHJldHVybiwgaXQgc2hvdWxkIGJlIGNh
c3QgdG8gdGhlIGNvcnJlY3QNCj4+PiArLkkgc29ja2FkZHJfKg0KPj4NCj4+IFRoZSBmYWN0
IHRoYXQgaXQgaXMgY29ycmVjdGx5IGFsaWduZWQsIGFuZCBhIGNhc3Qgd2lsbCB3b3JrIG1v
c3Qgb2YgdGhlIHRpbWUsDQo+PiBpc24ndCBlbm91Z2ggZm9yIHN0cmljdCBhbGlhc2luZyBy
dWxlcy4gIFRoZSBjb21waWxlciBpcyBmcmVlIHRvIGFzc3VtZSB0aGluZ3MsDQo+PiBqdXN0
IGJ5IHRoZSBmYWN0IHRoYXQgaXQncyBhIGRpZmZlcmVudCB0eXBlLg0KPiANCj4gT2sgYW55
IGlkZWEgZm9yIHdyaXRpbmcgdGhpcyBraW5kIG9mIHN0dWZmDQoNCkknbSB0aGlua2luZyBh
Ym91dCB3cml0aW5nIHNvbWV0aGluZyB0byBzZXZlcmFsIHBhZ2VzOyB3aWxsIGtlZXAgeW91
IGFsbCB1cGRhdGVkIA0Kb24gaW1wb3J0YW50IGNoYW5nZXMgdG8gdGhlIHBhZ2VzLg0KDQoN
CkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFy
LmVzLz4NCg==

--------------PpHR500hN0MbJbW7kQXHVrj4--

--------------KC78uK5oenzeN3schc0BZOW0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPJpdMACgkQnowa+77/
2zIUpA//euvmEIsRMkCMGvCD1tywT1bveTTkDGCb2FTcug5FKkpJq2NGkKBUWonb
MvG4QtNHNFUokJvMpSLd3yuxeVXNRVJyXEwxFzO9oh+bMLLqnSHDh2dcOpVPb3yC
SkEc2lDYVbQ4wJimzFRly/cadJY8fYUEphXzZ4tcApuCGQC1byiafST/k6L79B2p
GyJH9MzzIZ2Bu9R8PVDzboq9HNJCOQkvOlrjWXo971uob34taTPgSk5AwQEgxHeB
SCEotWygqLHOo1NvwZJ8hRz3k/+SKyGsO08ciUuuLPDdGmp4WX2DcE51aMUaC7wU
70RL+GE8SGMr8S6v1aoGbhF1+lw0kbbxCRVdNd4eiv2t2sI8Ce5SAflFZyf8CkIs
10478gkSNn/hKBtcJ3Ga+2uo04uwkA+rhqcqCO++P59SjzDCmlQONgalfbdHyNiQ
R4QZjL3MNj4f3OG6t2qo+NJooPGUcYxwPVt8rVMG6eImUDkQVhZ8JEsqtiYoO+mS
cx9GQ0P3bVNULyvoOUrArlnhR3qxqymoIF0M5ArZIyW67THAsYKDAm4DODiwrGit
fxNnW9+MZM0Ibve0ZBRJfwJdWMhPVlQ/ePY4I0a2fvYPBjAtE54qfZ9VhW0KFuGY
nF/gzaMGt/NacfSsVCV0tMDHPl9yj2pfmrmuMRBLS0R2hM5+wsY=
=t8tb
-----END PGP SIGNATURE-----

--------------KC78uK5oenzeN3schc0BZOW0--
