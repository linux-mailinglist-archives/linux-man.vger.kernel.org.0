Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37EAA65F81E
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 01:29:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232449AbjAFA3U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 19:29:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230402AbjAFA3T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 19:29:19 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 788A63D5EB
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 16:29:17 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id l26so101542wme.5
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 16:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pU+vGDAj0wAsAsCpUXGlIgm502fcus+wjn2m9AbhFpo=;
        b=M5CTQqGv5svYskBiqZbErslEfvHLRYbWZRdlenfcuyVXvFczrnqJdPPcLSi/y5wWiT
         ujqacbtvevDkWxQIvKm48z51+fVm9psJ6VDcESgX7XEpju80paN23Y/ZSn35R4lmp1rj
         v/bt7NogU8friBA80IN36793Vdg/Cn9Tl7hpBJfYDqq+VbrfTd5sygQopcW14r773N30
         2bb0k+e4+DcgIFNwP179jlBFagIrsHKYlXu35l49AC6jU0GeBuyhcd0ba40lwPx1SgNY
         6rFWhBdJ2bk99a9lh3obB3ihoj18pHoCK560qP2umihXLWGCcp08S7/oh6Ag18RlRQ6l
         3vqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pU+vGDAj0wAsAsCpUXGlIgm502fcus+wjn2m9AbhFpo=;
        b=TUlGVrnIHaPQ+ArdqVHA7lcGb3lSFfizPKcYMaGXl/zlLuYwd3xPP4nMmqFx3wG4BY
         e4qKXSVB4eNUA08BGefeoBijW7Vr14V/EJEiwKn4z7K61KjWS5Rrktxi8/Fw9BIbjd+1
         YFbptfjRZVk6TwLuXq2+mzB0SZ0CZhrEbvYT09UXI3cThYTdVVhw89FphRe1x7N6+9BX
         5jNup+ei0qtwaH/koMTSm17xvNRkeFsptT2cLbQD/5Lv+PqRsKyQrEI/URd++hl68DLm
         OgawCWiMJHcfwZw13DN8HYyXVpr3TQ0mlCprbULBIeVrMqFeBDLCN0qUDrkbc9+mAVFV
         JhjQ==
X-Gm-Message-State: AFqh2ko1bxDS6DstJA5bOcH5/GgPXUD4kgRxlDNAXO9omXqop+XI1eFI
        ieJL6YqMqFT0eUB5fgb/YXM=
X-Google-Smtp-Source: AMrXdXvsJDJjk9qe19MPnxvyLXAOp7zXQkTD7PMPUdNAaMJdUNIauq1VJHf7X5YFaliLUez1qnefYg==
X-Received: by 2002:a05:600c:5113:b0:3d3:5c21:dd99 with SMTP id o19-20020a05600c511300b003d35c21dd99mr37080006wms.18.1672964955934;
        Thu, 05 Jan 2023 16:29:15 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i1-20020adfb641000000b002425787c5easm38124224wre.96.2023.01.05.16.29.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 16:29:15 -0800 (PST)
Message-ID: <87b3b25d-adc3-b1a3-64fc-3e18d6555090@gmail.com>
Date:   Fri, 6 Jan 2023 01:29:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
 <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
 <20230104200451.vxgnuunzztnkifig@illithid>
 <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>
In-Reply-To: <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JQUI0hnd0sO47t6Q0eG495qd"
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
--------------JQUI0hnd0sO47t6Q0eG495qd
Content-Type: multipart/mixed; boundary="------------bloHN6SLF0jwKc6Dyh5Fle0l";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <87b3b25d-adc3-b1a3-64fc-3e18d6555090@gmail.com>
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
 <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
 <20230104200451.vxgnuunzztnkifig@illithid>
 <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>
In-Reply-To: <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>

--------------bloHN6SLF0jwKc6Dyh5Fle0l
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNS8yMyAxMzowMywgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEhpIEJy
YW5kZW4sDQo+IA0KPiBPbiAxLzQvMjMgMjE6MDQsIEcuIEJyYW5kZW4gUm9iaW5zb24gd3Jv
dGU6DQo+PiBIaSBBbGV4LA0KPj4NCj4+IEF0IDIwMjMtMDEtMDRUMTk6NTA6MDErMDEwMCwg
QWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+Pj4gT24gMS80LzIzIDA4OjM4LCBHLiBCcmFu
ZGVuIFJvYmluc29uIHdyb3RlOg0KPj4+PiAqIEluIHN5bm9wc2VzLCBzZXQgZWxsaXBzZXMg
YXMgc2VwYXJhdGUgIm9wZXJhbmRzIiB0byBiZXR0ZXINCj4+Pj4gwqDCoCBzdWdnZXN0IGFy
Z3VtZW50IHNlcGFyYXRpb24gYnkgd2hpdGUgc3BhY2UuDQo+Pj4NCj4+PiBQbGVhc2UgZXhw
bGFpbiB0aGlzIGJldHRlciB0byBtZS7CoCBNYXliZSBhbiBleGFtcGxlIGRpZmZlcmVuY2U/
DQo+Pg0KPj4gSXQgaXMgaGFyZCB0byBsb2NhdGUgZXhhbXBsZXMgb2Ygd2hlcmUgSSB0aGlu
ayBlbGlzaW9uIG9mIHdoaXRlIHNwYWNlDQo+PiBiZWZvcmUgYW4gZWxsaXBzaXMgaW4gYSBj
b21tYW5kIHN1bW1hcnkgd291bGQgYmUgY29ycmVjdCwgc28gSSBoYXZlIHRvDQo+PiBjb250
cml2ZSBvbmUuDQo+Pg0KPj4gQ29uc2lkZXIgc29tZSBzdXBlci1jb21wbGljYXRlZCBidXQg
dHJhZGl0aW9uYWxseS1zeW50YXhlZCBmb3JtIG9mIHRoZQ0KPj4gdGFyKDEpIGNvbW1hbmQu
DQo+Pg0KPj4gdGFyIGNmdi4uLiBhcmNoaXZlIG1lbWJlciAuLi4NCj4+DQo+PiBUaGVyZSBt
aWdodCBiZSBhIF9idW5jaF8gb2YgZmxhZyBsZXR0ZXJzIGluIHRoZSBmaXJzdCBhcmd1bWVu
dCwgYW5kIGENCj4+IHRlcnNlIG9yIGxhenkgbWFuIHBhZ2UgbWlnaHQgbm90IHByZXNlbnQg
dGhlbSBhbGwgaW4gdGhlIHN5bm9wc2lzLsKgIEl0DQo+PiB3b3VsZCBiZSB3cm9uZyB0byBo
YXZlIHdoaXRlIHNwYWNlIGFzIGluICJjZnYgLi4uIiBiZWNhdXNlIG9uY2UgdGhhdA0KPiAN
Cj4gQWhoLCB5ZXMsIHdlIGRvbid0IHdhbnQgdGhhdC4NCj4gDQo+PiBmaXJzdCBhcmd1bWVu
dCBpcyBmaW5pc2hlZCwgdGhlIGNvbW1hbmQgaXMgbG9va2luZyBmb3IgYW4gYXJjaGl2ZSBm
aWxlDQo+PiBuYW1lIChvciAiLSIsIHRyYWRpdGlvbmFsbHkpLsKgIEJ5IGNvbnRyYXN0LCBl
YWNoIG1lbWJlciBvZiB0aGUgYXJjaGl2ZQ0KPj4gb25lIHdhbnRzIHRvIGV4dHJhY3QgX211
c3RfIGJlIHNlcGFyYXRlZCBieSB3aGl0ZSBzcGFjZS4NCj4+DQoNCkkgbWlzc2VkIHRoaXMg
cGFydC4gIEFmdGVyIGhhdmluZyBjaGVja2VkIGEgZmV3IG1hbnVhbCBwYWdlcyBmcm9tIHZh
cmlvdXMgDQpwcm9qZWN0cyAoT3BlbkJTRCBncmVwKDEpLCBHTlUgZ3JlcCgxKSwgR05VIHRh
aWwoMSksIGdyZXBjKDEpKSwgaXQgc2VlbXMgdGhhdCANCnRoZSBvbmx5IG9uZSB0aGF0IGhh
cyB0aGUgZWxsaXBzZXMgdG9nZXRoZXIgd2l0aCAiRklMRSIgYXJlIGZyb20gR05VLCBhbmQg
d2UgDQprbm93IEdOVSBwYWdlcyBhcmUgbm90IHRoZSBiZXN0IGV4YW1wbGVzIG9mIHF1YWxp
dHksIHNvIHllcywgSSBhZ3JlZS4NCg0KPj4gSSBhY2tub3dsZWRnZSB0aGF0IHRoZSBHTlUg
dGFyKDEpIG1hbiBwYWdlIGlzIG5vdCB3cml0dGVuIGluIHRoZSBzdHlsZSBJDQo+PiBwcmVz
Y3JpYmUgb3IgcHJlc2VudGVkIGFib3ZlLsKgIEl0IGFwcGVhcnMgdG8gaGV3IGNsb3NlbHkg
dG8gVGV4aW5mbw0KPj4gY29udmVudGlvbnMgZXZlbiB3aGVyZSBpdCBuZWVkIG5vdCwgYXMg
d2l0aCB0aGUgc2hvdXRpbmcgZnVsbCBjYXBpdGFscy4NCj4+IChTdGlsbCwgdGhlIHBhZ2Ug
aXMgYSBiaWcgaW1wcm92ZW1lbnQgb3ZlciB0aGUgZm9ybSBpdCBoYWQgMjAgeWVhcnMgb3IN
Cj4+IHNvIGFnbywgd2hlbiBJSVJDIGl0IHdhcyBvbmUgb2YgdGhlIG1hbnkgdGhhdCB0b2xk
IHlvdSB0byByZWFkIGluZm8NCj4+IGZpbGVzIG9yIHBvdW5kIHNhbmQuKQ0KPj4NCj4+IE9m
ZmljaWFsIEdOVSByZXNpc3RhbmNlIHRvIG1hbiBwYWdlcyBpcyBicm9hZCBhbmQgZGVlcCwg
YnV0IG5vdA0KPj4gdW5pdmVyc2FsLg0KPiANCj4gSXMgdGhlcmUgc3RpbGwgcmVzaXN0YW5j
ZSBhcGFydCBmcm9tIHdyaXR0ZW4/wqAgTW9zdCBjb250cmlidXRvcnMgdG8gR05VIHRvZGF5
IA0KPiBzZWVtIHRvIHVzZSBtYW4gcGFnZXMuwqAgVGhlcmUgYXJlIHN0aWxsIGEgZmV3IHBy
b2plY3RzLCBsaWtlIG1ha2UoMSkgd2hpY2ggd291bGQgDQo+IGJlIGJldHRlciB3aXRoIG1h
bnVhbCBwYWdlcyBkb2N1bWVudGluZyB0aGUgbGFuZ3VhZ2UsIGJ1dCBtb3N0IGhhdmUgdXNl
ZnVsIA0KPiBtYW51YWwgcGFnZXMsIGRvbid0IHRoZXk/wqAgTWF5YmUgRGViaWFuIGhlbHBl
ZCBnZXQgdGhlcmUuDQo+IA0KPj4NCj4+Pj4gKiBJbiBzeW5vcHNlcywgcHJldmVudCBicmVh
a3Mgd2l0aGluIG9wdGlvbiBicmFja2V0cy4NCj4+DQo+PiBXZSB3b3VsZCBtb3JlIHByZWZl
ciB0aGUgc3lub3BzaXMgdG8gYnJlYWsgbGlrZSB0aGlzOg0KPj4NCj4+IMKgwqAgL3NiaW4v
bGRjb25maWcgWy1uTnZYXSBbLUMgY2FjaGVdIFstZiBjb25mXQ0KPj4gwqDCoCBbLXIgcm9v
dF0gZGlyZWN0b3J5IC4uLg0KPj4NCj4+IC4uLnRoYW4gdGhpcy4NCj4+DQo+PiDCoMKgIC9z
YmluL2xkY29uZmlnIFstbk52WF0gWy1DIGNhY2hlXSBbLWYgY29uZl0gWy1yDQo+PiDCoMKg
IHJvb3RdIGRpcmVjdG9yeSAuLi4NCj4+DQo+PiBJZiB3ZSB1c2UgU1kvWVMgYW5kIGVtcGxv
eSBcfiBqdWRpY2lvdXNseSwgd2UnbGwgZXZlbiBnZXQgdGhpcy4NCj4+DQo+PiDCoMKgIC9z
YmluL2xkY29uZmlnIFstbk52WF0gWy1DIGNhY2hlXSBbLWYgY29uZl0NCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgWy1yIHJvb3RdIGRpcmVjdG9yeSAuLi4NCj4g
DQo+IEhtbW0sIGxvb2tzIHZlcnkgZ29vZC4NCj4gDQo+Pg0KPj4gTWFnbmlmaXF1ZSHCoCA8
Y2hlZidzIGtpc3M+DQo+Pg0KPj4+PiAqIFR5cGVzZXQgZWxsaXBzZXMgbW9yZSBhdHRyYWN0
aXZlbHkgb24gdHJvZmYgZGV2aWNlcy4NCj4+Pj4gKiBTb3J0IG9wdGlvbiBmbGFncyBpbiBF
bmdsaXNoIGxleGljb2dyYXBoaWMgb3JkZXIuDQo+Pj4+ICogRGUtcGFyZW50aGVzaXplIGNv
bnRlbnQgdGhhdCBzZWVtcyBpbXBvcnRhbnQuDQo+Pj4+ICogUGVyZm9ybSBhIEtlbXBlciBu
b3RlY3RvbXkuwqAgVGhhdCBpcywgc3RvcCBzYXlpbmcgIm5vdGUgdGhhdCINCj4+Pj4gwqDC
oCBmb2xsb3dlZCBieSBzb21lIGRlY2xhcmF0aXZlIHN0YXRlbWVudC7CoCBUaGlzIHRyb3Bl
IGlzIGFsbCBvdmVyDQo+Pj4+IMKgwqAgVW5peCBkb2N1bWVudGF0aW9uIGFuZCBJIGV2ZW4g
c2VlIGl0IGluIElTTyBzdGFuZGFyZHMuwqAgVGhlIGxhdHRlcg0KPj4+PiDCoMKgIGRvZXNu
J3Qgc2VydmUgdG8gcmVjb21tZW5kIGl0OyBhcyBEYXZlIEtlbXBlciBoYXMgcG9pbnRlZCBv
dXQsDQo+Pj4+IMKgwqAgZXZlcnl0aGluZyB3ZSBwdXQgaW4gdGVjaG5pY2FsIGRvY3VtZW50
YXRpb24gc2hvdWxkIGJlIHdvcnRoeSBvZg0KPj4+PiDCoMKgIG5vdGUgdW5sZXNzIHBsYWNl
ZCBpbiBhIGZvb3Rub3RlLCBtYXJrZWQgYXMgInVubmVjZXNzYXJ5IG9uIGENCj4+Pj4gwqDC
oCBmaXJzdCByZWFkaW5nIiwgb3Igc2ltaWxhci7CoCBJdCBpcyB0aGUgZXhjZXB0aW9uLCBu
b3QgdGhlIHJ1bGUuDQo+Pj4+IMKgwqAgSWYgeW91IGZlZWwgdGhlIG5lZWQgdG8gc2F5ICJu
b3RlIHRoYXQiLCBjb25zaWRlciB3aGF0IGFkamFjZW50DQo+Pj4+IMKgwqAgbWF0ZXJpYWwg
eW91IHNob3VsZG4ndCBiZSBzYXlpbmcgYXQgYWxsLg0KPj4+PiAqIFNheSAic3ltYm9saWMg
bGluayIgaW5zdGVhZCBvZiAic3ltbGluayIuDQo+Pj4+ICogV2hlbiBvbmUgc2VudGVuY2Ug
ZXhwbGFpbnMgdGhlIHByZXZpb3VzLCB1c2UgYSBzZW1pY29sb24uDQo+Pj4+ICogU2V0IGxp
dGVyYWxzIHVzZWQgYXMgYXJndW1lbnRzIHRvIGAtY2Agb3B0aW9uIGluIGJvbGQsIG5vdA0K
Pj4+PiDCoMKgIGl0YWxpY3MuDQo+Pj4+ICogUGxhY2UgdGhlIG1vZGlmaWVyICJvbmx5IiBt
b3JlIGNhcmVmdWxseS4NCj4+Pj4gKiBSZWNhc3Qgb3B0aW9uIGRlc2NyaXB0aW9ucyB0byBi
ZSBpbiB0aGUgaW1wZXJhdGl2ZSBtb29kLg0KPj4+PiAqIFJlY2FzdCBmaWxlIGRlc2NyaXB0
aW9ucyB0byB1c2UgdGhlIHBhcmFncmFwaCB0YWcgYXMgdGhlIHN1YmplY3QNCj4+Pj4gb2Yg
dGhlIGZpcnN0IHNlbnRlbmNlLg0KPj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBHLiBCcmFu
ZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0KPj4+DQo+Pj4g
UGxlYXNlIGJyZWFrIHRoaXMgZnVydGhlciBpbnRvIGZmaXgsIHdmaXgsIGFuZCB0Zml4LCBp
Zi93aGVyZSBpdCBtYWtlcw0KPj4+IHNlbnNlLiBNb3ZpbmcgY29kZSBhcm91bmQgYWxzbyB1
c3VhbGx5IGdvZXMgaW4gYSBzZXBhcmF0ZSBjb21taXQsIHdpdGgNCj4+PiBubyBvdGhlciBj
b2RlIGNoYW5nZXMgKHRoYXQgd291bGQgYmUgZm9yIHRoZSBzb3J0aW5nKS4NCj4+DQo+PiBP
a2F5LCBmb3IgdjMgSSdsbCBzcGxpdCB0aGUgInN0eWxlIiBjaGFuZ2UgaW50byBmZml4LCB0
Zml4LCB3Zml4LCBhbmQNCj4+IHRoZSBsZXhpY2FsIGFycmFuZ2VtZW50IG9mIHRoZSBhcmd1
bWVudGZ1bCBvcHRpb25zIHRvIGxkY29uZmlnKDgpLg0KPj4NCj4+Pj4gLXdpbGwgb25seSBs
b29rIGF0IGZpbGVzIHRoYXQgYXJlIG5hbWVkDQo+Pj4+ICt3aWxsIGxvb2sgb25seSBhdCBm
aWxlcyB0aGF0IGFyZSBuYW1lZA0KPj4+DQo+Pj4gV291bGQgeW91IG1pbmQgZXhwbGFpbmlu
ZyB0aGUgZGlmZmVyZW5jZSB0byBhIG5vbi1uYXRpdmUgc3BlYWtlcj8NCj4+DQo+PiBTdXJl
LsKgIENvbnNpZGVyIHRoZSBzZW50ZW5jZToNCj4+DQo+PiBJIGF0ZSBwaXp6YSB5ZXN0ZXJk
YXkuDQo+Pg0KPj4gV2UgY2FuIGluc2VydCB0aGUgbW9kaWZpZXIgIm9ubHkiIGluIF9maXZl
XyBkaWZmZXJlbnQgcGxhY2VzIGluIHRoaXMNCj4+IHNlbnRlbmNlLCBwcm9kdWNpbmcgZml2
ZSBkaXN0aW5jdCBtZWFuaW5ncy7CoCBGb3IgYWRkaXRpb25hbCBFbmdsaXNoDQo+PiBsYW5n
dWFnZSBmdW4sIHRoZXNlIGFyZSBub3QgdGhlIG9ubHkgcG9zc2libGUgaW50ZXJwcmV0YXRp
b25zOyBidXQgYWxsDQo+PiBhcmUgcGxhdXNpYmxlLg0KPj4NCj4+IE9ubHkgSSBhdGUgcGl6
emEgeWVzdGVyZGF5LsKgIC0+wqAgT3RoZXIgcGVvcGxlIGF0ZSBzb21ldGhpbmcgZWxzZS4N
Cj4+IEkgb25seSBhdGUgcGl6emEgeWVzdGVyZGF5LsKgIC0+wqAgSSBkaWRuJ3QgX21ha2Vf
IHRoZSBwaXp6YS4NCj4+IEkgYXRlIG9ubHkgcGl6emEgeWVzdGVyZGF5LsKgIC0+wqAgSSBk
aWRuJ3QgZWF0IGFueXRoaW5nIGVsc2UuDQo+PiBJIGF0ZSBwaXp6YSBvbmx5IHllc3RlcmRh
eS7CoCAtPsKgIEl0IGhhc24ndCBiZWVuIGxvbmcgc2luY2UgSSBhdGUgcGl6emEuDQo+PiBJ
IGF0ZSBwaXp6YSB5ZXN0ZXJkYXkgb25seS7CoCAtPsKgIEkgdXN1YWxseSBkb24ndCwgYnV0
IGZlbGwgb2ZmIHRoZSB3YWdvbi4NCj4gDQo+IEhtbW0sIHBpenphIcKgIE5pY2UgZXhhbXBs
ZXMuwqAgVGhhbmtzIQ0KPiANCj4+DQo+Pj4+IC13aWxsIG9ubHkgbG9vayBhdCBmaWxlcyB0
aGF0IGFyZSBuYW1lZA0KPj4+PiArd2lsbCBsb29rIG9ubHkgYXQgZmlsZXMgdGhhdCBhcmUg
bmFtZWQNCj4+DQo+PiBIZXJlLCB0aGUgcmVzdHJpY3Rpb24gYXBwbGllcyB0byB0aGUgc2V0
IG9mIHBvc3NpYmxlIGZpbGVzICJsb29rZWQgYXQiLg0KPj4gQXQgdGhlIHNhbWUgdGltZSwg
ZmlsZXMgYXJlIG5vdCBzaW1wbHkgImxvb2tlZCBhdCI7IGxkY29uZmlnKDgpIG1heQ0KPj4g
cmVwbGFjZSB0aGVtIGJ5IHJld3JpdGluZyB0aGUgdGFyZ2V0IG9mIGEgc3ltYm9saWMgbGlu
ay7CoCBTbyBpdCBpcyBub3QNCj4+IGNvcnJlY3QgdG8gc3VnZ2VzdCB0aGF0IGZpbGVzIGFy
ZSAib25seSBsb29rZWQgYXQiLg0KPiANCj4gTWFrZXMgc2Vuc2UuDQo+IA0KPj4NCj4+Pj4g
LUludGVuZGVkIGZvciB1c2UgYnkgZXhwZXJ0cyBvbmx5Lg0KPj4gWy4uLl0NCj4+Pj4gK0lu
dGVuZGVkIGZvciB1c2Ugb25seSBieSBleHBlcnRzLg0KPj4+DQo+Pj4gU2FtZSBoZXJlLg0K
Pj4NCj4+IFRoZXJlJ3Mgbm8gc2lnbmlmaWNhbnQgZGlmZmVyZW5jZSBpbiBtZWFuaW5nIGhl
cmUsIHRvIG15IGV5ZXM7IHRoZQ0KPj4gbGF0dGVyIHJlYWRzIG1vcmUgbGlrZSBpZGlvbWF0
aWMgRW5nbGlzaCB0byBtZS4NCj4gDQo+IE9rYXkuDQo+IA0KPj4NCj4+IFJlZ2FyZHMsDQo+
PiBCcmFuZGVuDQo+IA0KPiBDaGVlcnMsDQo+IEFsZXgNCj4gDQoNCi0tIA0KPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------bloHN6SLF0jwKc6Dyh5Fle0l--

--------------JQUI0hnd0sO47t6Q0eG495qd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3a1oACgkQnowa+77/
2zIokw/9FqBj4YYo3U+qGg9RIsdPTLalCivHMjaTr4b/yecuu1bXmtCrSVh3mx5H
bGtHaV6bTYB5xMF/xQt1DiiTK/ewlAu6ith376Krk7Wp/awQQokgmaxvfM3/cOlw
NH87seiyndPJTPloYUvRdFZbCRy0IKDQV2Dm5Q3KgHVJnTroywWjlsO/jc+rH/Of
IsspeXiM+skjHZ8On8U0ZVmTuoKfk2Mh4lDQhAew9El9xcOy6UT5A9DWVZxobxOC
Z7BmisdRrZLEeWKMuk6kOnjz8iPktCoqekFAOv1k9lQUGhCP9hQT/iQZzpp4wR0H
klXFXvqG5nV1v//9fdUTWfqeUNIs+y0Ow9ofIb2msCLfYEERUVtLqWfh+Qdo+HaV
H5f5ICwK6eDKghldiQo5/GZfOjZVxEhnsfJmY9pVZn+MaTyPuBPBTT7k7RVEKB4g
R8UKZ9xojAxyYft4qPF1QG2h2OIH15nfb7YdWCNLH5UsoApZMDCkh8rY7bN7XlT7
1PqXe3gUHyG881O/ejG3+Je+vBIbVfIJu28a76PBVG13tuOYK5qJoz6Q+j5urTj0
Pe1xyrrQtjVdR2CBVWM+8v9xrzyC0s3wKEOB/rp7SX8k2EO20uQasg9RGV1nSSzk
1xAaBCWkf2gM3qmw2URvNSl3omV/5Yo22mo9DUmjhcyudEU9Wlw=
=ejPU
-----END PGP SIGNATURE-----

--------------JQUI0hnd0sO47t6Q0eG495qd--
