Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28E6260299E
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 12:48:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbiJRKsB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 06:48:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229916AbiJRKrr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 06:47:47 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB1E9B48AA
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:47:39 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id l32so10433887wms.2
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PwvNVmOshfER+QugjWL3P+48s/v5aTp/JrPPv4PQXGM=;
        b=dsyNBUWiI4fx3xcGywaSwsSJdnyx//j+Jo2CgVtC5QUrq+a3MpkUAtwwKIlZN+YGSH
         q9CzXEvnFrWqTUIKpNmTiJJPohS0FMXCaAv7fRFlUCBzskTgBaDGNEV/usLP8WF05yEu
         d3rvPQuYpg1AHDdOKh6JFULmgye1D64qg+c9uQHKLGFFhnscm9B1D2U2PQGMJ0K1Uat0
         1YjhQTRi+UHoB2vACBgb+DX9BdPhQuJRnRa0iFXC4LjLFoKMwuqn6ca3sN2g86T7xvya
         enFej19WIj4gR4bDvrPCrPD+4tYfDASHonx65lPbBTCpfeor4cQyj04W+LLDH4Xsfj/Y
         EoHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PwvNVmOshfER+QugjWL3P+48s/v5aTp/JrPPv4PQXGM=;
        b=JHm1TgFE5pn0aMFxxMb5lZwNvu6MffIn2ivcnwyUrCv7dqLC2SyZ9mCVHfB2dAJEkr
         OCh1NrBx6zhkAlKBqs2NfeBv2TUhFfsaud07C/2daYIQiauO8BKCaFWwaiuYCEfVyEXt
         3sPg20pa6dKYhmXcAOh7nTOYrv8GtPvOQmmdqHGoHUjOQ9yEZOUDtTh22AMZ4V/xY5WD
         wt88rJ3uwMe91+GvilYxpQOAY37iwwdBbX0+UuqdqQzD7BWoO9PWpmwtV/6rBdnq9Aac
         2BrKK/4emGmDE93Kr3HiVUCxagh+658kJ9CdMfYRWBZDwYYLYejsG8ZmWRQdl71La5fZ
         eslw==
X-Gm-Message-State: ACrzQf0Oz3bQ5LpxKJ+XxN5PfbvjS4GvRinT7W9BWcjTMdVFgtRfG8Hv
        om2TdnDNZxFPXyaI0kMULEZeHKbz2U4=
X-Google-Smtp-Source: AMsMyM4tVE6ij4PI/rdVDCrgDPGSNiFyHh6SrjUktFgPFLLnqFQBo2rvu+fMIEhDeI2Rag8uds83Ig==
X-Received: by 2002:a05:600c:1e0d:b0:3c6:e3f8:2ff with SMTP id ay13-20020a05600c1e0d00b003c6e3f802ffmr1476230wmb.33.1666090058034;
        Tue, 18 Oct 2022 03:47:38 -0700 (PDT)
Received: from [192.168.43.80] ([46.6.220.148])
        by smtp.gmail.com with ESMTPSA id d15-20020adffd8f000000b0022e309d35f8sm10777522wrr.12.2022.10.18.03.47.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 03:47:37 -0700 (PDT)
Message-ID: <0e980bc2-d8a8-1ad0-2660-cc9f7f8568a3@gmail.com>
Date:   Tue, 18 Oct 2022 12:47:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH man-pages 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
Content-Language: en-US
To:     Zach OKeefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-5-zokeefe@google.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221017175523.2048887-5-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kWP0RY6TRn9EBF01tU9Nc4PA"
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
--------------kWP0RY6TRn9EBF01tU9Nc4PA
Content-Type: multipart/mixed; boundary="------------8ysypGiSWihOzWrIsVA3pxM9";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org
Message-ID: <0e980bc2-d8a8-1ad0-2660-cc9f7f8568a3@gmail.com>
Subject: Re: [PATCH man-pages 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-5-zokeefe@google.com>
In-Reply-To: <20221017175523.2048887-5-zokeefe@google.com>

--------------8ysypGiSWihOzWrIsVA3pxM9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCwNCg0KT24gMTAvMTcvMjIgMTk6NTUsIFphY2ggT0tlZWZlIHdyb3RlOg0KPiBG
cm9tOiBaYWNoIE8nS2VlZmUgPHpva2VlZmVAZ29vZ2xlLmNvbT4NCj4gDQo+IExpbnV4IDYu
MSBpbnRyb2R1Y2VkIE1BRFZfQ09MTEFQU0UgaW4gdXBzdHJlYW0gY29tbWl0IDdkOGZhYWYx
NTU0NQ0KPiAoIm1tL21hZHZpc2U6IGludHJvZHVjZSBNQURWX0NPTExBUFNFIHN5bmMgaHVn
ZXBhZ2UgY29sbGFwc2UiKSBhbmQNCj4gdXBzdHJlYW0gY29tbWl0IDM0NDg4Mzk5ZmEwOCAo
Im1tL21hZHZpc2U6IGFkZCBmaWxlIGFuZCBzaG1lbSBzdXBwb3J0IHRvDQo+IE1BRFZfQ09M
TEFQU0UiKS4gIFVwZGF0ZSB0aGUgbWFuLXBhZ2VzIGZvciBtYWR2aXNlKDIpIGFuZA0KPiBw
cm9jZXNzX21hZHZpc2UoMikuDQo+IA0KPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1tbS8yMDIyMDkyMjIyNDA0Ni4xMTQzMjA0LTEtem9rZWVmZUBnb29nbGUuY29t
Lw0KPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDIyMDcwNjIz
NTkzNi4yMTk3MTk1LTEtem9rZWVmZUBnb29nbGUuY29tLw0KPiBTaWduZWQtb2ZmLWJ5OiBa
YWNoIE8nS2VlZmUgPHpva2VlZmVAZ29vZ2xlLmNvbT4NCg0KUGxlYXNlIHNlZSBzb21lIGNv
bW1lbnRzIGJlbG93Lg0KVGhlcmUgYXJlIGEgZmV3IG1vcmUgY2FzZXMgd2VyZSBJJ2QgYnJl
YWsgdGhlIGxpbmVzIGF0IGRpZmZlcmVudCBwb2ludHMsIA0KYnV0IHRoZXJlIGFyZSBmZXcs
IHNvIEknbGwgYXBwbHkgdGhlbSB3aXRoIGFuIGFtZW5kLg0KDQpUaGFua3MhDQoNCkFsZXgN
Cg0KPiAtLS0NCj4gICBtYW4yL21hZHZpc2UuMiAgICAgICAgIHwgOTEgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystDQo+ICAgbWFuMi9wcm9jZXNzX21hZHZp
c2UuMiB8IDEwICsrKysrDQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA5OSBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvbWFkdmlzZS4yIGIv
bWFuMi9tYWR2aXNlLjINCj4gaW5kZXggYWRmZTI0YzI0Li43ZGE0NGZhYzQgMTAwNjQ0DQo+
IC0tLSBhL21hbjIvbWFkdmlzZS4yDQo+ICsrKyBiL21hbjIvbWFkdmlzZS4yDQo+IEBAIC0z
ODQsOSArMzg0LDEwIEBAIHNldCAoc2VlDQo+ICAgLkJSIHByY3RsICgyKSApLg0KPiAgIC5J
UA0KPiAgIFRoZQ0KPiAtLkIgTUFEVl9IVUdFUEFHRQ0KPiAtYW5kDQo+ICsuQlIgTUFEVl9I
VUdFUEFHRSAsDQo+ICAgLkIgTUFEVl9OT0hVR0VQQUdFDQoNClBsZWFzZSBhZGQgYSBjb21t
YSBiZWZvcmUgJ2FuZCcgKE94Zm9yZCBjb21tYSkuDQoNCj4gK2FuZA0KPiArLkIgTUFEVl9D
T0xMQVBTRQ0KPiAgIG9wZXJhdGlvbnMgYXJlIGF2YWlsYWJsZSBvbmx5IGlmIHRoZSBrZXJu
ZWwgd2FzIGNvbmZpZ3VyZWQgd2l0aA0KPiAgIC5CIENPTkZJR19UUkFOU1BBUkVOVF9IVUdF
UEFHRQ0KPiAgIGFuZCBmaWxlL3NobWVtIG1lbW9yeSBpcyBvbmx5IHN1cHBvcnRlZCBpZiB0
aGUga2VybmVsIHdhcyBjb25maWd1cmVkIHdpdGgNCj4gQEAgLTM5OSw2ICs0MDAsODIgQEAg
YW5kDQo+ICAgLkkgbGVuZ3RoDQo+ICAgd2lsbCBub3QgYmUgYmFja2VkIGJ5IHRyYW5zcGFy
ZW50IGh1Z2VwYWdlcy4NCj4gICAuVFANCj4gKy5CUiBNQURWX0NPTExBUFNFICIgKHNpbmNl
IExpbnV4IDYuMSkiDQo+ICsuXCIgY29tbWl0IDdkOGZhYWYxNTU0NTRmODc5OGVjNTY0MDRm
YWNhMjlhODI2ODljNzcNCj4gKy5cIiBjb21taXQgMzQ0ODgzOTlmYTA4ZmFhZjY2NDc0M2Zh
NTRiMjcxZWI2ZjllMTMyMQ0KPiArUGVyZm9ybSBhIGJlc3QtZWZmb3J0IHN5bmNocm9ub3Vz
IGNvbGxhcHNlIG9mIHRoZSBuYXRpdmUgcGFnZXMgbWFwcGVkIGJ5IHRoZQ0KPiArbWVtb3J5
IHJhbmdlIGludG8gVHJhbnNwYXJlbnQgSHVnZSBQYWdlcyAoVEhQcykuDQo+ICsuQiBNQURW
X0NPTExBUFNFDQo+ICtvcGVyYXRlcyBvbiB0aGUgY3VycmVudCBzdGF0ZSBvZiBtZW1vcnkg
b2YgdGhlIGNhbGxpbmcgcHJvY2VzcyBhbmQgbWFrZXMgbm8NCj4gK3BlcnNpc3RlbnQgY2hh
bmdlcyBvciBndWFyYW50ZWVzIG9uIGhvdyBwYWdlcyB3aWxsIGJlIG1hcHBlZCwNCj4gK2Nv
bnN0cnVjdGVkLA0KPiArb3IgZmF1bHRlZCBpbiB0aGUgZnV0dXJlLg0KPiArLklQDQo+ICsu
QiBNQURWX0NPTExBUFNFDQo+ICtzdXBwb3J0cyBwcml2YXRlIGFub255bW91cyBwYWdlcyAo
c2VlDQo+ICsuQlIgbW1hcCAoMikpLA0KPiArc2htZW0tYmFja2VkIHBhZ2VzDQo+ICsoaW5j
bHVkaW5nIHRtcGZzIChzZWUNCj4gKy5CUiB0bXBmcyAoNSkpLA0KDQpzLykpLykpKS8NCg0K
cHJvYmFibHksIGJ1dCBtYXliZSB5b3Ugd2FudCB0byByZXdvcmQgdXNpbmcgY29tbWFzIG9y
IGVtIGRhc2hlcy4gDQpQbGVhc2UgY2hlY2suDQoNCj4gK2FuZCBmaWxlLWJhY2tlZCBwYWdl
cy4gU2VlDQoNCk5vIGNvbnRpbnVhdGlvbiBhZnRlciAnLicuICA6KQ0KDQo+ICsuQiBNQURW
X0hVR0VQQUdFDQo+ICtmb3IgZ2VuZXJhbCBpbmZvcm1hdGlvbiBvbiBtZW1vcnkgcmVxdWly
ZW1lbnRzIGZvciBUSFAuDQo+ICtJZiB0aGUgcmFuZ2UgcHJvdmlkZWQgc3BhbnMgbXVsdGlw
bGUgVk1BcywNCj4gK3RoZSBzZW1hbnRpY3Mgb2YgdGhlIGNvbGxhcHNlIG92ZXIgZWFjaCBW
TUEgaXMgaW5kZXBlbmRlbnQgZnJvbSB0aGUgb3RoZXJzLg0KPiArSWYgY29sbGFwc2Ugb2Yg
YSBnaXZlbiBodWdlIHBhZ2UtYWxpZ25lZC9zaXplZCByZWdpb24gZmFpbHMsDQo+ICt0aGUg
b3BlcmF0aW9uIG1heSBjb250aW51ZSB0byBhdHRlbXB0IGNvbGxhcHNpbmcgdGhlIHJlbWFp
bmRlciBvZiB0aGUNCj4gK3NwZWNpZmllZCBtZW1vcnkuDQo+ICsuQiBNQURWX0NPTExBUFNF
DQo+ICt3aWxsIGF1dG9tYXRpY2FsbHkgY2xhbXAgdGhlIHByb3ZpZGVkIHJhbmdlIHRvIGJl
IGh1Z2VwYWdlLWFsaWduZWQuDQo+ICsuSVANCj4gK0FsbCBub24tcmVzaWRlbnQgcGFnZXMg
Y292ZXJlZCBieSB0aGUgcmFuZ2Ugd2lsbCBmaXJzdCBiZQ0KPiArc3dhcHBlZC9mYXVsdGVk
LWluLA0KPiArYmVmb3JlIGJlaW5nIGNvcGllZCBvbnRvIGEgZnJlc2hseSBhbGxvY2F0ZWQg
aHVnZXBhZ2UuDQo+ICtJZiB0aGUgbmF0aXZlIHBhZ2VzIGNvbXBvc2UgdGhlIHNhbWUgUFRF
LW1hcHBlZCBodWdlcGFnZSwNCj4gK2FuZCBhcmUgc3VpdGFibHkgYWxpZ25lZCwNCj4gK2Fs
bG9jYXRpb24gb2YgYSBuZXcgaHVnZXBhZ2UgbWF5IGJlIGVsaWRlZCBhbmQgY29sbGFwc2Ug
bWF5IGhhcHBlbg0KPiAraW4tcGxhY2UuDQo+ICtVbm1hcHBlZCBwYWdlcyB3aWxsIGhhdmUg
dGhlaXIgZGF0YSBkaXJlY3RseSBpbml0aWFsaXplZCB0byAwIGluIHRoZSBuZXcNCj4gK2h1
Z2VwYWdlLg0KPiArSG93ZXZlciwNCj4gK2ZvciBldmVyeSBlbGlnaWJsZSBodWdlcGFnZS1h
bGlnbmVkL3NpemVkIHJlZ2lvbiB0byBiZSBjb2xsYXBzZWQsDQo+ICthdCBsZWFzdCBvbmUg
cGFnZSBtdXN0IGN1cnJlbnRseSBiZSBiYWNrZWQgYnkgcGh5c2ljYWwgbWVtb3J5Lg0KPiAr
LklQDQo+ICsuQlIgTUFEVl9DT0xMQVBTRQ0KPiAraXMgaW5kZXBlbmRlbnQgb2YgYW55IHN5
c2ZzDQo+ICsoc2VlDQo+ICsuQlIgc3lzZnMgKDUpICkNCg0Kcy8pICkvKSkvDQoNCj4gK3Nl
dHRpbmcgdW5kZXINCj4gKy5JUiAvc3lzL2tlcm5lbC9tbS90cmFuc3BhcmVudF9odWdlcGFn
ZSAsDQo+ICtib3RoIGluIHRlcm1zIG9mIGRldGVybWluaW5nIFRIUCBlbGlnaWJpbGl0eSwN
Cj4gK2FuZCBhbGxvY2F0aW9uIHNlbWFudGljcy4NCj4gK1NlZSBMaW51eCBrZXJuZWwgc291
cmNlIGZpbGUNCj4gKy5JIERvY3VtZW50YXRpb24vYWRtaW5cLWd1aWRlL21tL3RyYW5zaHVn
ZS5yc3QNCj4gK2ZvciBtb3JlIGluZm9ybWF0aW9uLg0KPiArLkJSIE1BRFZfQ09MTEFQU0UN
Cj4gK2Fsc28gaWdub3Jlcw0KPiArLkIgaHVnZT0NCj4gK3RtcGZzIG1vdW50IHdoZW4gb3Bl
cmF0aW5nIG9uIHRtcGZzIGZpbGVzLg0KPiArQWxsb2NhdGlvbiBmb3IgdGhlIG5ldyBodWdl
cGFnZSBtYXkgZW50ZXIgZGlyZWN0IHJlY2xhaW0gYW5kL29yIGNvbXBhY3Rpb24sDQo+ICty
ZWdhcmRsZXNzIG9mIFZNQSBmbGFncw0KPiArKHRob3VnaA0KPiArLkJSIFZNX05PSFVHRVBB
R0UNCj4gK2lzIHN0aWxsIHJlc3BlY3RlZCkuDQo+ICsuSVANCj4gK1doZW4gdGhlIHN5c3Rl
bSBoYXMgbXVsdGlwbGUgTlVNQSBub2RlcywNCj4gK3RoZSBodWdlcGFnZSB3aWxsIGJlIGFs
bG9jYXRlZCBmcm9tIHRoZSBub2RlIHByb3ZpZGluZyB0aGUgbW9zdCBuYXRpdmUNCj4gK3Bh
Z2VzLg0KPiArLklQDQo+ICtJZiBhbGwgaHVnZXBhZ2Utc2l6ZWQvYWxpZ25lZCByZWdpb25z
IGNvdmVyZWQgYnkgdGhlIHByb3ZpZGVkIHJhbmdlIHdlcmUNCj4gK2VpdGhlciBzdWNjZXNz
ZnVsbHkgY29sbGFwc2VkLA0KPiArb3Igd2VyZSBhbHJlYWR5IFBNRC1tYXBwZWQgVEhQcywN
Cj4gK3RoaXMgb3BlcmF0aW9uIHdpbGwgYmUgZGVlbWVkIHN1Y2Nlc3NmdWwuDQo+ICtOb3Rl
IHRoYXQgdGhpcyBkb2VzbuKAmXQgZ3VhcmFudGVlIGFueXRoaW5nIGFib3V0IG90aGVyIHBv
c3NpYmxlIG1hcHBpbmdzIG9mDQo+ICt0aGUgbWVtb3J5Lg0KPiArQWxzbyBub3RlIHRoYXQg
bWFueSBmYWlsdXJlcyBtaWdodCBoYXZlIG9jY3VycmVkIHNpbmNlIHRoZSBvcGVyYXRpb24g
bWF5DQo+ICtjb250aW51ZSB0byBjb2xsYXBzZSBpbiB0aGUgZXZlbnQgY29sbGFwc2Ugb2Yg
YSBzaW5nbGUgaHVnZXBhZ2Utc2l6ZWQvYWxpZ25lZA0KPiArcmVnaW9uIGZhaWxzLg0KPiAr
LlRQDQo+ICAgLkJSIE1BRFZfRE9OVERVTVAgIiAoc2luY2UgTGludXggMy40KSINCj4gICAu
XCIgY29tbWl0IDkwOWFmNzY4ZTg4ODY3MDE2ZjQyNzI2NGFlMzlkMjdhNTdiNmE4ZWQNCj4g
ICAuXCIgY29tbWl0IGFjY2I2MWZlN2JiMGY1YzJhNDEwMjIzOWU0OTgxNjUwZjkwNDg1MTkN
Cj4gQEAgLTYxOCw2ICs2OTUsMTEgQEAgQSBrZXJuZWwgcmVzb3VyY2Ugd2FzIHRlbXBvcmFy
aWx5IHVuYXZhaWxhYmxlLg0KPiAgIC5CIEVCQURGDQo+ICAgVGhlIG1hcCBleGlzdHMsIGJ1
dCB0aGUgYXJlYSBtYXBzIHNvbWV0aGluZyB0aGF0IGlzbid0IGEgZmlsZS4NCj4gICAuVFAN
Cj4gKy5CIEVCVVNZDQo+ICsoZm9yDQo+ICsuQlIgTUFEVl9DT0xMQVBTRSApDQo+ICtDb3Vs
ZCBub3QgY2hhcmdlIGh1Z2VwYWdlIHRvIGNncm91cDogY2dyb3VwIGxpbWl0IGV4Y2VlZGVk
Lg0KPiArLlRQDQo+ICAgLkIgRUZBVUxUDQo+ICAgLkkgYWR2aWNlDQo+ICAgaXMNCj4gQEAg
LTcxNSw2ICs3OTcsMTEgQEAgbWF4aW11bSByZXNpZGVudCBzZXQgc2l6ZS4NCj4gICBOb3Qg
ZW5vdWdoIG1lbW9yeTogcGFnaW5nIGluIGZhaWxlZC4NCj4gICAuVFANCj4gICAuQiBFTk9N
RU0NCj4gKyhmb3INCj4gKy5CUiBNQURWX0NPTExBUFNFICkNCj4gK05vdCBlbm91Z2ggbWVt
b3J5OiBjb3VsZCBub3QgYWxsb2NhdGUgaHVnZXBhZ2UuDQo+ICsuVFANCj4gKy5CIEVOT01F
TQ0KPiAgIEFkZHJlc3NlcyBpbiB0aGUgc3BlY2lmaWVkIHJhbmdlIGFyZSBub3QgY3VycmVu
dGx5DQo+ICAgbWFwcGVkLCBvciBhcmUgb3V0c2lkZSB0aGUgYWRkcmVzcyBzcGFjZSBvZiB0
aGUgcHJvY2Vzcy4NCj4gICAuVFANCj4gZGlmZiAtLWdpdCBhL21hbjIvcHJvY2Vzc19tYWR2
aXNlLjIgYi9tYW4yL3Byb2Nlc3NfbWFkdmlzZS4yDQo+IGluZGV4IDdiZWUxYTA5OC4uOTAw
MjEwMTA2IDEwMDY0NA0KPiAtLS0gYS9tYW4yL3Byb2Nlc3NfbWFkdmlzZS4yDQo+ICsrKyBi
L21hbjIvcHJvY2Vzc19tYWR2aXNlLjINCj4gQEAgLTczLDYgKzczLDEwIEBAIGFyZ3VtZW50
IGlzIG9uZSBvZiB0aGUgZm9sbG93aW5nIHZhbHVlczoNCj4gICBTZWUNCj4gICAuQlIgbWFk
dmlzZSAoMikuDQo+ICAgLlRQDQo+ICsuQiBNQURWX0NPTExBUFNFDQo+ICtTZWUNCj4gKy5C
UiBtYWR2aXNlICgyKS4NCj4gKy5UUA0KPiAgIC5CIE1BRFZfUEFHRU9VVA0KPiAgIFNlZQ0K
PiAgIC5CUiBtYWR2aXNlICgyKS4NCj4gQEAgLTE3MCw2ICsxNzQsMTIgQEAgVGhlIGNhbGxl
ciBkb2VzIG5vdCBoYXZlIHBlcm1pc3Npb24gdG8gYWNjZXNzIHRoZSBhZGRyZXNzIHNwYWNl
IG9mIHRoZSBwcm9jZXNzDQo+ICAgLlRQDQo+ICAgLkIgRVNSQ0gNCj4gICBUaGUgdGFyZ2V0
IHByb2Nlc3MgZG9lcyBub3QgZXhpc3QgKGkuZS4sIGl0IGhhcyB0ZXJtaW5hdGVkIGFuZCBi
ZWVuIHdhaXRlZCBvbikuDQo+ICsuUFANCj4gK1NlZQ0KPiArLkJSIG1hZHZpc2UgKDIpDQo+
ICtmb3INCj4gKy5JUiBhZHZpY2UgLXNwZWNpZmljDQo+ICtlcnJvcnMuDQo+ICAgLlNIIFZF
UlNJT05TDQo+ICAgVGhpcyBzeXN0ZW0gY2FsbCBmaXJzdCBhcHBlYXJlZCBpbiBMaW51eCA1
LjEwLg0KPiAgIC5cIiBjb21taXQgZWNiOGFjOGIxZjE0NjkxNWFhNmI5NjQ0OWI2NmRkNDg5
ODRjYWFjYw0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg0K


--------------8ysypGiSWihOzWrIsVA3pxM9--

--------------kWP0RY6TRn9EBF01tU9Nc4PA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNOhEcACgkQnowa+77/
2zIQHA/+L1YqG5nn5CI3+E/yeIQ5Gvh0Dlm0hcv6NeqqQyNHyAeI0nwAGSSrQ9Vr
q6KP2pijIAHqe5972ospHbULpnbSgOjCBbMYhp6BSA1Yy1N7B1Irasdjo7HUOk4G
m7mhVuA7oNuG8zHY+XzZJY2dcPreyXgUQCHXez892g7r8uxEo4IUJaZWsJiUslIo
p6uUnZ3p8T/GxpK7RC4opszZWatPYI1jNy5K7SnlmdLE5Ojrk0UIvumiPZ+oYWiU
BIZmK/ywvfIFGXmpXi3pJM8r01hTriBXMWVFyTP1M2uhcirr9esd2BSfZHcnUwaX
swt3ozq3tSnnrtn+Tlr2aRsjjo+bx49eXs3a/Qt3beKiTvmVKoCB8wJpte0oh2do
6R1UA7PPkFKjnr66h9bTkjFp/Ykipm9gThw8eLDOChYGpPk8yFMDHG6MqJj/ERDe
n+JIfivXrK8lxcIIErp+fAIIriaxFSu8t+zObwavD+8rMN9NkvZQ3wg+GFLeruoK
mbNyyJU31CDb9cLatbJqadNLb6OQ2hQKiseC5v2vxXV5EuLJyWZ7kizvTz7Hjs57
YTZOImPYLXlNqlQmGP69Y8ftl8hyc5xOWewQlXfxx4stWKUkri58XZ61WOD5lEp1
J2uPcMPlMWzdHMlGjnamZlsZ2JNY3xro7hqcqG+B0XN+58k0sn8=
=52kQ
-----END PGP SIGNATURE-----

--------------kWP0RY6TRn9EBF01tU9Nc4PA--
