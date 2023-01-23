Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CE1C6780C3
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 17:03:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231378AbjAWQDX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 11:03:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233024AbjAWQDV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 11:03:21 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A293D1E1F3
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 08:03:15 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id d14so7582969wrr.9
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 08:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MtiuMVl3NiHECUYtynUfZDLjuzpn33AGbysLMSNcdeI=;
        b=dLLpqxhCgGrvFQ87GWHULXSqtL381Pd4hW8+6/nbEhwxWuVra4ORPcQxhwyttSqQVn
         qCLAnXXbWiOcy67drWhcKKIOV+fbYmgJwruuFN/N8l/zdUwKoNur6OwOcLojZQZsNCNR
         3aQA+nrD9Vi+0dhsXwkW9s7TAPS6J3xX13L3NGE9P73YaffCg2RPhgConBlhyaYQ/XVc
         Yl70WuPCTNzAD56gL426F4UeHv59FVQ+/pH6iV/8lPwHcBHU4AvxGicwCuTFuMXdsRv4
         knxnDq/tg/Lu17PuDpadnWCdx5Xqgm8jB+g0hCL5SAT4EwvpKRLLQJzAux2cCk49fMOn
         X5EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MtiuMVl3NiHECUYtynUfZDLjuzpn33AGbysLMSNcdeI=;
        b=bE2yROVmWh3+ElOsYThSMf7ombZN5Xhf5ofXKCJnRbsgnnyMX5RUQJHnlb2ZOdl1DM
         DP7x017PdNaXp/9eqeKEl+PoA65P2EPdgEinmn5ZTm9DbVg+6VbCK/tF9yGqbayih6V8
         XwJWVWPRXWdrCunFFXpfTCepvtdMIWjdTpDTtQks0RgR+pJUFCfIQhElkjchR0K3MYTn
         07l8mgPs28CBKII7WNUEJq/3tFh7758EBp7JlqwcblhCe5CNnlMqSFI74dcVBm2ANlMU
         wUAj+U371EoaIVLRiyYJNFs3ES6acCqKLYwDgEi1mUEKTfZn+jcPYfULNk5SFaWCkhw2
         u45w==
X-Gm-Message-State: AFqh2krUJ1zH2WJVUoTIDTfJwwxFWYGZWnS5jwlgQ8mkGNUbkKDHSg0c
        IOckHQZNOl+1Zh4jDE7on9o=
X-Google-Smtp-Source: AMrXdXsCtv8LL645qwthwVR1zDylQM0SI0zkfHl/s6j4oOD/9csJTD901VQH9jVZUReG37uTHCvycA==
X-Received: by 2002:adf:f347:0:b0:2be:5cff:5d01 with SMTP id e7-20020adff347000000b002be5cff5d01mr10549398wrp.12.1674489793991;
        Mon, 23 Jan 2023 08:03:13 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o13-20020a5d670d000000b002bdc19f8e8asm30874033wru.79.2023.01.23.08.03.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 08:03:13 -0800 (PST)
Message-ID: <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com>
Date:   Mon, 23 Jan 2023 17:03:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: struct sockaddr_storage
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
 <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UFaWRQEkrpverxEpLqPj44jb"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UFaWRQEkrpverxEpLqPj44jb
Content-Type: multipart/mixed; boundary="------------pjuNAXNgJkMExLeUiE42T2La";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: GNU C Library <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
 Igor Sysoev <igor@sysoev.ru>, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>
Message-ID: <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com>
Subject: Re: struct sockaddr_storage
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
 <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
In-Reply-To: <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>

--------------pjuNAXNgJkMExLeUiE42T2La
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU3RlZmFuLA0KDQpPbiAxLzIzLzIzIDA4OjQwLCBTdGVmYW4gUHVpdSB3cm90ZToNCj4+
Pj4gQWNjb3JkaW5nIHRvIHN0cmljdCBhbGlhc2luZyBydWxlcywgaWYgeW91IGRlY2xhcmUg
YSB2YXJpYWJsZSBvZiB0eXBlICdzdHJ1Y3QNCj4+Pj4gc29ja2FkZHJfc3RvcmFnZScsIHRo
YXQncyB3aGF0IHlvdSBnZXQsIGFuZCB0cnlpbmcgdG8gYWNjZXNzIGl0IGxhdGVyIGFzIHNv
bWUNCj4+Pj4gb3RoZXIgc29ja2FkZHJfOCBpcyBzaW1wbHkgbm90IGxlZ2FsLiAgVGhlIGNv
bXBpbGVyIG1heSBhc3N1bWUgdGhvc2UgYWNjZXNzZXMNCj4+Pj4gY2FuJ3QgaGFwcGVuLCBh
bmQgb3B0aW1pemUgYXMgaXQgcGxlYXNlcy4NCj4+Pg0KPj4+IENhbiB5b3UgZGV0YWlsIHRo
ZSAiaXMgbm90IGxlZ2FsIiBwYXJ0Pw0KPj4NCj4+IEkgbWVhbiB0aGF0IGl0J3MgVW5kZWZp
bmVkIEJlaGF2aW9yIGNvbnRyYWJhbmQuDQo+IA0KPiBPSywgbmV4dCBxdWVzdGlvbi4gSXMg
dGhpcyB0aGVvcmV0aWNhbCBvciBwcmFjdGljYWwgVUI/DQoNCg0KU2luY2UgdGhlIGZ1bmN0
aW9ucyB1c2luZyB0aGlzIHR5cGUgYXJlIG5vdCBmdW5jdGlvbnMgdGhhdCBzaG91bGQgYmUg
aW5saW5lZCwgDQpzaW5jZSB0aGUgY29kZSBpcyByYXRoZXIgbGFyZ2UsIHRoZXkgYXJlIG5v
dCB2aXNpYmxlIHRvIHRoZSBjb21waWxlciwgc28gbWFueSBvZiANCnRoZSBvcHRpbWl6YXRp
b25zIHRoYXQgdGhpcyBVQiBlbmFibGVzIGFyZSBub3QgbGlrZWx5IHRvIGhhcHBlbi4gIFRy
YW5zbGF0aW9uIA0KVW5pdCAoVFUpIGJvdW5kYXJpZXMgYXJlIHdoYXQga2VlcHMgbW9zdCBV
QiBpbnZva2F0aW9ucyBub3QgYmUgcmVhbGx5IGRhbmdlcm91cy4NCg0KQWxzbywgZ2xpYmMg
c2VlbXMgdG8gYmUgdXNpbmcgYSBHQ0MgYXR0cmlidXRlICh0cmFuc3BhcmVudF91bmlvbikg
dG8gbWFrZSB0aGUgDQpjb2RlIGF2b2lkIFVCIGV2ZW4gaWYgaXQgd2VyZSBpbmxpbmVkLCBz
byBpZiB5b3UgdXNlIGdsaWJjLCB5b3UncmUgZmluZS4gIElmIA0KeW91J3JlIHVzaW5nIHNv
bWUgc21hbGxlciBsaWJjIHdpdGggYSBsZXNzIGNhcGFibGUgY29tcGlsZXIsIG9yIG1heWJl
IEMrKywgeW91IA0KYXJlIGxlc3MgbHVja3ksIGJ1dCBUVSBib3VuZGFyaWVzIHdpbGwgcHJv
YmFibHkgc3RpbGwgc2F2ZSB5b3VyIGRheS4NCg0KPiBQZW9wbGUgY2hlY2sNCj4gZG9jdW1l
bnRhdGlvbiBhYm91dCBob3cgdG8gd3JpdGUgY29kZSB0b2RheSwgSSB0aGluay4NCg0KSSdt
IGZpbmUgZG9jdW1lbnRpbmcgaG93IHRvIGRvIGl0IHRvZGF5LiAgQnV0IGJlZm9yZSBjaGFu
Z2luZyB0aGUgZG9jdW1lbnRhdGlvbiwgDQpJJ2QgbGlrZSB0byB0YWtlIHNvbWUgdGltZSB0
byByZWZsZWN0IG9uIHdoYXQgY2FuIHdlIGRvIHRvIGZpeCB0aGUgc3RhbmRhcmQgc28gDQp0
aGF0IHdlIGRvbid0IGhhdmUgdGhpcyBzZW1pLWJyb2tlbiBzdGF0ZSBmb3JldmVyLiAgV2hl
biB3ZSBoYXZlIGEgY2xlYXIgaWRlYSBvZiANCndoYXQgd2UgY2FuIGRvIHRvIGZpeCB0aGUg
aW1wbGVtZW50YXRpb24gYW5kIGhvcGVmdWxseSB0aGUgc3RhbmRhcmQgbG9uZy10ZXJtLCAN
CnBvc3NpYmx5IGtlZXBpbmcgc291cmNlIGNvZGUgdGhlIHNhbWUsIHdlIGNhbiBkbyBhIGJl
dHRlciByZWNvbW1lbmRhdGlvbiBmb3IgDQpwcm9ncmFtbWVycy4NCg0KVG9kYXksIHlvdSBj
YW4gZG8gMiB0aGluZ3M6DQoNCi0gIFlvdSBkb24ndCBjYXJlIGFib3V0IFVCLCBhbmQgd291
bGQgbGlrZSB0aGF0IEMgaGFkIGFsd2F5cyBiZWVuIEsmUiBDLCBhbmQgR0NDIA0KanVzdCBt
YWtlcyBpdCB3b3JrLiAgVGhlbiB1c2UgYHNvY2thZGRyX3N0b3JhZ2VgLiAgSXQgd2lsbCBq
dXN0IHdvcmsuICBXaGVuIGl0IA0Kc3RvcHMgd29ya2luZywgeW91IGNhbiBibGFtZSB0aGUg
Y29tcGlsZXIgYW5kIGxpYmMgZm9yIG9wdGltaXppbmcgd2F5IHRvbyBtdWNoLg0KDQotICBZ
b3UgY2FyZSBhIGxvdCBhYm91dCBVQi4gIFRoZW4gd3JpdGUgeW91ciBvd24gdW5pb24sIGFz
IGFsbCB0aGUgYHNvY2thZGRyYCANCmludGVyZmFjZSBzaG91bGQgaGF2ZSBiZWVuIGRlc2ln
bmVkIGZyb20gdGhlIGdyb3VuZCB1cC4gIFRoYXQncyB3aGF0IHVuaW9ucyBhcmUgZm9yLg0K
DQpXaGljaCBzaG91bGQgd2UgcmVjb21tZW5kPyAgVGhhdCdzIG15IHByb2JsZW0uDQoNCkkg
ZG9uJ3Qgd2FudCB0byBiZSBkb2N1bWVudGluZyB0aGUgbGF0dGVyLCBiZWNhdXNlIGl0J3Mg
bm9uLXN0YW5kYXJkLCBhbmQgaXQncyANCnN0aWxsIGxpa2VseSB0byBkbyBpdCBpbnZva2lu
ZyBVQiBpbiBhIGRpZmZlcmVudCB3YXksIGJlY2F1c2UgaXQncyBhIGRpZmZpY3VsdCANCnBh
cnQgb2YgdGhlIGxhbmd1YWdlLCBhbmQgd2hlbiB5b3Ugcm9sbCB5b3VyIG93biwgeW91J3Jl
IGxpa2VseSB0byBtYWtlIGFjY2lkZW50cy4NCg0KU28sIGlkZWFsbHksIEknZCBsaWtlIHRv
IGRvY3VtZW50IHRoZSBmb3JtZXIsIGJ1dCBmb3IgdGhhdCwgSSdkIGxpa2UgdG8gbWFrZSAN
CnN1cmUgdGhhdCBpdCB3aWxsIHdvcmsgZm9yZXZlciwgc2luY2Ugb3RoZXJ3aXNlIHdlJ2Qg
YmUgYmxhbWVkIHdoZW4gc29tZWJvZHkncyANCmNvZGUgaXMgY29tcGlsZWQgaW4gYSBwbGF0
Zm9ybSB3aXRoIHNvbWUgY29tYmluYXRpb24gb2YgbGliYywgY29tcGlsZXIsIGFuZCANCnBo
YXNlIG9mIHRoZSBtb29uLCB0aGF0IG1ha2VzIHRoZSBVQiBiZWNvbWUgbm9uLXRoZW9yZXRp
Y2FsLg0KDQpJIHRoaW5rIHdlIGNhbiBmaXggdGhlIGRlZmluaXRpb24gb2YgYHNvY2thZGRy
X3N0b3JhZ2VgIHRvIGhhdmUgZGVmaW5lZCANCmJlaGF2aW9yLCB3aXRoIHRoZSBjaGFuZ2Vz
IEknbSBkaXNjdXNzaW5nIHdpdGggQmFzdGllbiwgc28gSSBndWVzcyB3ZSdsbCANCmRvY3Vt
ZW50IHRoZSBmb3JtZXIuDQoNCj4+PiBXaWxsIGNvZGUgYnJlYWsgaW4gcHJhY3RpY2U/DQo+
Pg0KPj4gV2VsbCwgaXQgZGVwZW5kcyBvbiBob3cgbXVjaCBjb21waWxlcnMgYWR2YW5jZS4g
IEhlcmUncyBzb21lIGludGVyZXN0aW5nIGV4cGVyaW1lbnQ6DQo+Pg0KPj4gPGh0dHBzOi8v
c29mdHdhcmUuY29kaWRhY3QuY29tL3Bvc3RzLzI4Nzc0OC8yODc3NTAjYW5zd2VyLTI4Nzc1
MD4NCj4gDQo+IFRoYXQgY29kZSBwbGF5cyB3aXRoIDIgcG9pbnRlcnMgdG8gdGhlIHNhbWUg
YXJlYSwgb25lIHRvIGRvdWJsZSBhbmQNCj4gb25lIHRvIGludCwgc28gSSBkb24ndCB0aGlu
ayBpdCdzIHRoYXQgc2ltaWxhciB0byB0aGUgc29ja2FkZHINCj4gc2l0dWF0aW9uLiBBdCBs
ZWFzdCBmb3Igc3RydWN0IHNvY2thZGRyLCB0aGUgc2FfZmFtaWx5IGZpZWxkIGlzIHRoZQ0K
PiBzYW1lIGZvciBhbGwgc3RydWN0IHNvY2thZGRyXyogdmFyaWFudHMuIEFsc28sIGluIHBy
YWN0aWNhbCB0ZXJtcywgSQ0KPiBkb24ndCB0aGluayBhbnkgY29tcGlsZXIgb3B0aW1pemF0
aW9uIHRoYXQgYnJlYWtzIHNvY2tldCBBUElzIChhbmQsIGlmDQo+IEkgcmVjYWxsIGNvcnJl
Y3RseSwgdGhlcmUgYXJlIGluc3RhbmNlcyBvZiB0aGlzIHBhdHRlcm4gaW4gdGhlIGtlcm5l
bA0KPiBhcyB3ZWxsKSBpcyBnb2luZyB0byBiZSBhbiBlYXN5IHNlbGwuIEl0J3MgcG9zc2li
bGUsIGJ1dCByZWFsaXN0aWNhbGx5DQo+IHNwZWFraW5nLCBJIGRvbid0IHRoaW5rIGl0J3Mg
Z29pbmcgdG8gaGFwcGVuLg0KDQpUaGUgY29tbW9uIGluaXRpYWwgc2VxdWVuY2Ugb2Ygc3Ry
dWN0dXJlcyBpcyBvbmx5IGFsbG93ZWQgaWYgdGhlIHN0cnVjdHVyZXMgZm9ybSANCnBhcnQg
b2YgYSB1bmlvbiAod2hpY2ggaXMgd2h5IHRvIGF2b2lkIFVCIHlvdSBuZWVkIGEgdW5pb247
IGFuZCBzdGlsbCwgeW91IG5lZWQgDQp0byBtYWtlIHN1cmUgeW91IGRvbid0IGludm9rZSBV
QiBpbiBhIGRpZmZlcmVudCB3YXkpLg0KPGh0dHBzOi8vcG9ydDcwLm5ldC8lN0Vuc3ovYy9j
MTEvbjE1NzAuaHRtbCM2LjUuMi4zcDY+DQoNCj4gDQo+Pg0KPj4gSSB3b3VsZG4ndCByZWx5
IG9uIFVuZGVmaW5lZCBCZWhhdmlvciBub3QgY2F1c2luZyBuYXNhbCBkZW1vbnMuICBXaGVu
IHlvdSBnZXQNCj4+IHRoZW0sIHlvdSBjYW4gb25seSBraWxsIHRoZW0gd2l0aCBnYXJsaWMu
DQo+IA0KPiBPSywgYnV0IG5vdCBhbGwgdGhlb3JldGljYWwgaXNzdWVzIGhhdmUgcHJhY3Rp
Y2FsIGltcGxpY2F0aW9ucy4gSXMNCj4gdGhlcmUgY29kZSB0aGF0IGNhbiBzaG93IFVCIGlu
IHByYWN0aWNhbCB0ZXJtcyB3aXRoIHN0cnVjdA0KPiBzb2NrYWRkcl9zdG9yYWdlIHRvZGF5
PyBMaWtlIEVyaWMgbWVudGlvbmVkIGluIGFub3RoZXIgdGhyZWFkLCBkb2VzDQo+IFVCU2Fu
IGNvbXBsYWluIGFib3V0IGNvZGUgdXNpbmcgc3RydWN0IHNvY2thZGRyX3N0b3JhZ2U/DQoN
Ckl0J3MgdW5saWtlbHkuICBCdXQgSSBjYW4ndCBwcm9taXNlIGl0IHdpbGwgYmUgc2FmZSB1
bmRlciBzb21lIHJhbmRvbSANCmNvbWJpbmF0aW9uIG9mIGNvbXBpbGVyIGFuZCBsaWJyYXJ5
LCBhbmQgZGVwZW5kcyBhbHNvIG9uIHdoYXQgeW91IGRvIGluIHlvdXIgDQpjb2RlLCB3aGlj
aCB3aWxsIGFmZmVjdCBjb21waWxlciBvcHRpbWl6YXRpb25zLg0KDQpDaGVlcnMsDQoNCkFs
ZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------pjuNAXNgJkMExLeUiE42T2La--

--------------UFaWRQEkrpverxEpLqPj44jb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPOr7UACgkQnowa+77/
2zJw4BAAgQQ62rsBH+bPshNp+2T43ZvIhd8MVGlD4CR6NwnAalt4C4QTVjUttV/N
VFQMnlxseOtjfyDHNjQERh9JmoeOqy1M5G2c988zzPmKHnRw+sjVek4XffdMMGV4
Gaf6xso4+v+dWF6n+jXWs/uyAvevXge9ABNcI73czQZvUIL2jr0AXUe3o+GuNPIC
kB58NuESsycbnSk42VjKtUEpU5Rp+48iPWDYCBGt/ANGlUqviL3O4hjhmulP89Kd
hErnFrkWAAu0Zd2k1N94CZ6/XWbLUj9hAT/6N9bTtOoBPi3ylqEBHESjmX+U4DoK
c466WC1svoRJ4Liefa/NVHtnY3mXdn61rQIbqs9upHeiGO39IL56tuanW6y+H8/t
LUsJ/BqBT6z3cqB/Xr3pXZwnOPHelU4a5gEIgORrj+sWfEsnTrEV1XrIs5szj3sV
focKgNGFTPU0x+3EmW3r0VlfDw+M+VVdflW3lXaflYpnRAD8/esj5enZpu9Okj4I
vZpwrkpBDlEK4yHLWi2JL9ZtGhiQPO/9ImuwJZWms0tHXYTm16SLr5k5Pr+URrDw
0EZyLHkRrch/YQpWymf9knil/X/zhwvX5MhgS0Dl3tpZBkkQnDMbpARnRam9PO6s
oas/1TiRoyQyi8EwBMSMjKf0ZIzKXgrreGcTvOaS5ycLrOKm+oE=
=fhgb
-----END PGP SIGNATURE-----

--------------UFaWRQEkrpverxEpLqPj44jb--
