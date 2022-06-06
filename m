Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 418F353EE57
	for <lists+linux-man@lfdr.de>; Mon,  6 Jun 2022 21:12:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232119AbiFFTMG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jun 2022 15:12:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232111AbiFFTMF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jun 2022 15:12:05 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48163210
        for <linux-man@vger.kernel.org>; Mon,  6 Jun 2022 12:12:04 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id p10so21093198wrg.12
        for <linux-man@vger.kernel.org>; Mon, 06 Jun 2022 12:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=b8shvJpGwfNnlTJH1gvvdVgbfmd/VERy56ICLRF6C9Y=;
        b=nfAH8U9r7+u7J4SGtcTcFx2P2tZeu/0DethSjOI7zav8YzCxIPmTsR0H9iQoXpOhVs
         AhGW/EZS8ZwSJlEEaz+gIluIE0fl4VKqA1w8hulcWPQHhDGRaDVOwHVKE4hkUgcKkQlC
         pAuJHz5X7MFK2Txtc2o00pVuI47kP+IEYMO+Z9RShGqzEny045fwT3h1Xa9LOWXAkBgT
         Zhut2t6FFcR6SYy4jaLN+3rR09c5MAzR7h6/9OLuo2JWabO/0EWi6PPDH7yNW3MrMmgv
         RQoZHXWQCNlT2MGVmBXcypAVT9kRf0RNoexKHJf3xMiNLqJam1faNMJFYy+WrzWFM57G
         J2zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=b8shvJpGwfNnlTJH1gvvdVgbfmd/VERy56ICLRF6C9Y=;
        b=bq1X+IruiuboTneGV55n2V86e2mjBmjNj5/txtBS7iyFTwe6ugEKPsbYjDM2up6xHy
         3jmGzlW1AAK/+p1ncp6kL2/2k3i6+4mMWZ+VDX27QjgcE2QAmikxonx1zoaFBhDT6cOv
         dtEHDy5GViNdzy8GDlCxJIh1ZJZ6XLCmyQ3jiwvPQqHP7MThCpXFswY3K+p5jQ+LBOYw
         DI6CJN/L9j92PZWXu/mQ1DmVu0AzkrLf7JpK/R3EkdAyxgP7xOTDT6mFgCheLiER+tq8
         9dWMtaIyQhuMvR02L6b3Ui+I7lnUJoqs9heuOIgZHNQNyCdX9F9V8HUZZS3oIa73EA7Z
         0pow==
X-Gm-Message-State: AOAM533WS0yzHqT+SOLu+wQ80U6XhgDn0Lraea/MxsoaPpQcibbap2Es
        nvMZ1MR5tor2+l7Yju1xMHPfQP0/Qfg=
X-Google-Smtp-Source: ABdhPJzehHya2YujtP95brC7fWUZ2vyemaIils+6k4BsLP3DJd1W4TC7oCumsq2MEsfmgk5jNCqQ1w==
X-Received: by 2002:a05:6000:1866:b0:218:40cc:a26e with SMTP id d6-20020a056000186600b0021840cca26emr5745878wri.678.1654542722834;
        Mon, 06 Jun 2022 12:12:02 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m3-20020a05600c3b0300b003942a244f2fsm23159290wms.8.2022.06.06.12.12.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 12:12:01 -0700 (PDT)
Message-ID: <7db16a8d-f275-3c39-3fed-83a33886976c@gmail.com>
Date:   Mon, 6 Jun 2022 21:12:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v2] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
To:     Mike Kravetz <mike.kravetz@oracle.com>
Cc:     David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220526180950.13916-1-mike.kravetz@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------h5v1ODitq6debeE970ZvdSz0"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------h5v1ODitq6debeE970ZvdSz0
Content-Type: multipart/mixed; boundary="------------SCrMgm1HdGVWXw5sUSkW0Rga";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Kravetz <mike.kravetz@oracle.com>
Cc: David Hildenbrand <david@redhat.com>,
 Axel Rasmussen <axelrasmussen@google.com>, Peter Xu <peterx@redhat.com>,
 linux-mm@kvack.org, linux-man@vger.kernel.org
Message-ID: <7db16a8d-f275-3c39-3fed-83a33886976c@gmail.com>
Subject: Re: [PATCH v2] madvise.2: Clarify addr/length and update hugetlb
 support
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
In-Reply-To: <20220526180950.13916-1-mike.kravetz@oracle.com>

--------------SCrMgm1HdGVWXw5sUSkW0Rga
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KT24gNS8yNi8yMiAyMDowOSwgTWlrZSBLcmF2ZXR6IHdyb3RlOg0KPiBD
bGFyaWZ5IHRoYXQgbWFkdmlzZSBvbmx5IHdvcmtzIG9uIGZ1bGwgcGFnZXMsIGFuZCByZW1v
dmUgcmVmZXJlbmNlcw0KPiB0byAnYnl0ZXMnLg0KPiANCj4gVXBkYXRlIE1BRFZfRE9OVE5F
RUQgYW5kIE1BRFZfUkVNT1ZFIHNlY3Rpb25zIHRvIHJlbW92ZSBub3RlcyB0aGF0DQo+IEh1
Z2VUTEIgbWFwcGluZ3MgYXJlIG5vdCBzdXBwb3J0ZWQuICBJbmRpY2F0ZSB0aGUgcmVsZWFz
ZXMgd2hlbiB0aGV5DQo+IHdlcmUgZmlyc3Qgc3VwcG9ydGVkIGFzIHdlbGwgYXMgYWxpZ25t
ZW50IHJlc3RyaWN0aW9ucy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1pa2UgS3JhdmV0eiA8
bWlrZS5rcmF2ZXR6QG9yYWNsZS5jb20+DQoNCkNvdWxkIHlvdSBwbGVhc2UgcmViYXNlIGFn
YWluc3QgbWFuLXBhZ2VzLTUuMTktcmMxIGluIHRoZSBrZXJuZWwub3JnIA0KcmVwbz8gIFRo
ZXJlIGhhdmUgYmVlbiBpbXBvcnRhbnQgY2hhbmdlcywgZXNwZWNpYWxseSBpbiB0aGUgZm9y
bWF0dGluZy4NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gLS0tDQo+IHYxIC0+IHYyIEFkZGVk
IHJlbGVhc2VzIHdoZW4gSHVnZSBUTEIgc3VwcG9ydCB3YXMgYWRkZWQgYW5kIG1vdmVkDQo+
IAlhbGlnbm1lbnQgcmVxdWlyZW1lbnRzIHRvIGNvcnJlc3BvbmRpbmcgc2VjdGlvbi4gIChQ
ZXRlcikNCj4gDQo+ICAgbWFuMi9tYWR2aXNlLjIgfCAzMSArKysrKysrKysrKysrKysrKysr
KystLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEw
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvbWFkdmlzZS4yIGIvbWFu
Mi9tYWR2aXNlLjINCj4gaW5kZXggZjFmMzg0YzBjLi41MDY4NmU3ZTMgMTAwNjQ0DQo+IC0t
LSBhL21hbjIvbWFkdmlzZS4yDQo+ICsrKyBiL21hbjIvbWFkdmlzZS4yDQo+IEBAIC02MSw5
ICs2MSwxMyBAQCBzeXN0ZW0gY2FsbCBpcyB1c2VkIHRvIGdpdmUgYWR2aWNlIG9yIGRpcmVj
dGlvbnMgdG8gdGhlIGtlcm5lbA0KPiAgIGFib3V0IHRoZSBhZGRyZXNzIHJhbmdlIGJlZ2lu
bmluZyBhdCBhZGRyZXNzDQo+ICAgLkkgYWRkcg0KPiAgIGFuZCB3aXRoIHNpemUNCj4gKy5J
UiBsZW5ndGggLg0KPiArLkJSIG1hZHZpc2UgKCkNCj4gK29ubHkgb3BlcmF0ZXMgb24gd2hv
bGUgcGFnZXMsIHRoZXJlZm9yZQ0KPiArLkkgYWRkcg0KPiArbXVzdCBiZSBwYWdlLWFsaWdu
ZWQuICBUaGUgdmFsdWUgb2YNCg0KUGxlYXNlIGJyZWFrIGlucHV0IGxpbmVzIGF0IGVuZC1v
Zi1waHJhc2UvY2xhdXNlL3NlbnRlbmNlIHB1bnR1YXRpb24uDQoNClNlZSBtYW4tcGFnZXMo
Nyk6DQogICAgVXNlIHNlbWFudGljIG5ld2xpbmVzDQogICAgICAgIEluIHRoZSBzb3VyY2Ug
b2YgYSBtYW51YWwgcGFnZSwgbmV3IHNlbnRlbmNlcyAgc2hvdWxkICBiZQ0KICAgICAgICBz
dGFydGVkICBvbiBuZXcgbGluZXMsIGFuZCBsb25nIHNlbnRlbmNlcyBzaG91bGQgYmUgc3Bs
aXQNCiAgICAgICAgaW50byBsaW5lcyBhdCBjbGF1c2UgYnJlYWtzIChjb21tYXMsIHNlbWlj
b2xvbnMsICBjb2xvbnMsDQogICAgICAgIGFuZCAgc28gb24pLiAgVGhpcyBjb252ZW50aW9u
LCBzb21ldGltZXMga25vd24gYXMgInNlbWFu4oCQDQogICAgICAgIHRpYyBuZXdsaW5lcyIs
IG1ha2VzIGl0ICBlYXNpZXIgIHRvICBzZWUgIHRoZSAgZWZmZWN0ICBvZg0KICAgICAgICBw
YXRjaGVzLCAgd2hpY2ggIG9mdGVuIG9wZXJhdGUgYXQgdGhlIGxldmVsIG9mIGluZGl2aWR1
YWwNCiAgICAgICAgc2VudGVuY2VzIG9yIHNlbnRlbmNlIGNsYXVzZXMuDQoNCg0KPiAgIC5J
IGxlbmd0aA0KPiAtYnl0ZXMNCj4gLUluIG1vc3QgY2FzZXMsDQo+ICtpcyByb3VuZGVkIHVw
IHRvIGEgbXVsdGlwbGUgb2YgcGFnZSBzaXplLiAgSW4gbW9zdCBjYXNlcywNCg0KU2FtZSBo
ZXJlLg0KDQo+ICAgdGhlIGdvYWwgb2Ygc3VjaCBhZHZpY2UgaXMgdG8gaW1wcm92ZSBzeXN0
ZW0gb3IgYXBwbGljYXRpb24gcGVyZm9ybWFuY2UuDQo+ICAgLlBQDQo+ICAgSW5pdGlhbGx5
LCB0aGUgc3lzdGVtIGNhbGwgc3VwcG9ydGVkIGEgc2V0IG9mICJjb252ZW50aW9uYWwiDQo+
IEBAIC0xNDMsNyArMTQ3LDcgQEAgVGhlIHJlc2lkZW50IHNldCBzaXplIChSU1MpIG9mIHRo
ZSBjYWxsaW5nIHByb2Nlc3Mgd2lsbCBiZSBpbW1lZGlhdGVseQ0KPiAgIHJlZHVjZWQgaG93
ZXZlci4NCj4gICAuSVANCj4gICAuQiBNQURWX0RPTlRORUVEDQo+IC1jYW5ub3QgYmUgYXBw
bGllZCB0byBsb2NrZWQgcGFnZXMsIEh1Z2UgVExCIHBhZ2VzLCBvcg0KPiArY2Fubm90IGJl
IGFwcGxpZWQgdG8gbG9ja2VkIHBhZ2VzLCBvcg0KPiAgIC5CUiBWTV9QRk5NQVANCj4gICBw
YWdlcy4NCj4gICAoUGFnZXMgbWFya2VkIHdpdGggdGhlIGtlcm5lbC1pbnRlcm5hbA0KPiBA
QCAtMTUzLDYgKzE1NywxMSBAQCBmbGFnIGFyZSBzcGVjaWFsIG1lbW9yeSBhcmVhcyB0aGF0
IGFyZSBub3QgbWFuYWdlZA0KPiAgIGJ5IHRoZSB2aXJ0dWFsIG1lbW9yeSBzdWJzeXN0ZW0u
DQo+ICAgU3VjaCBwYWdlcyBhcmUgdHlwaWNhbGx5IGNyZWF0ZWQgYnkgZGV2aWNlIGRyaXZl
cnMgdGhhdA0KPiAgIG1hcCB0aGUgcGFnZXMgaW50byB1c2VyIHNwYWNlLikNCj4gKy5JUA0K
PiArU3VwcG9ydCBmb3IgSHVnZSBUTEIgcGFnZXMgd2FzIGFkZGVkIGluIExpbnV4IHY1LjE4
LiAgQWRkcmVzc2VzIHdpdGhpbiBhDQoNClNhbWUgaGVyZS4gIEFuZCBhbHNvIGJyZWFrIHNl
bnRlbmNlcyBhdCBzZW1hbnRpY2FsbHktcmVsZXZhbnQgcG9pbnRzLCANCmluc3RlYWQgb2Yg
anVzdCBiZWZvcmUgdGhlIDgwIGNvbHVtbi4NCg0KPiArbWFwcGluZyBiYWNrZWQgYnkgSHVn
ZSBUTEIgcGFnZXMgbXVzdCBiZSBhbGlnbmVkIHRvIHRoZSB1bmRlcmx5aW5nIEh1Z2UgVExC
DQo+ICtwYWdlIHNpemUsIGFuZCB0aGUgcmFuZ2UgbGVuZ3RoIGlzIHJvdW5kZWQgdXAgdG8g
YSBtdWx0aXBsZSBvZiB0aGUgdW5kZXJseWluZw0KPiArSHVnZSBUTEIgcGFnZSBzaXplLg0K
PiAgIC5cIg0KPiAgIC5cIiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+ICAgLlwiDQo+IEBAIC0xNzAs
MjQgKzE3OSwyNCBAQCBOb3RlIHRoYXQgc29tZSBvZiB0aGVzZSBvcGVyYXRpb25zIGNoYW5n
ZSB0aGUgc2VtYW50aWNzIG9mIG1lbW9yeSBhY2Nlc3Nlcy4NCj4gICAuXCIgY29tbWl0IGY2
YjNlYzIzOGQxMmM4Y2M2Y2M3MTQ5MGM2ZTMxMjc5ODg0NjAzNDkNCj4gICBGcmVlIHVwIGEg
Z2l2ZW4gcmFuZ2Ugb2YgcGFnZXMNCj4gICBhbmQgaXRzIGFzc29jaWF0ZWQgYmFja2luZyBz
dG9yZS4NCj4gLVRoaXMgaXMgZXF1aXZhbGVudCB0byBwdW5jaGluZyBhIGhvbGUgaW4gdGhl
IGNvcnJlc3BvbmRpbmcgYnl0ZQ0KPiArVGhpcyBpcyBlcXVpdmFsZW50IHRvIHB1bmNoaW5n
IGEgaG9sZSBpbiB0aGUgY29ycmVzcG9uZGluZw0KPiAgIHJhbmdlIG9mIHRoZSBiYWNraW5n
IHN0b3JlIChzZWUNCj4gICAuQlIgZmFsbG9jYXRlICgyKSkuDQo+ICAgU3Vic2VxdWVudCBh
Y2Nlc3NlcyBpbiB0aGUgc3BlY2lmaWVkIGFkZHJlc3MgcmFuZ2Ugd2lsbCBzZWUNCj4gLWJ5
dGVzIGNvbnRhaW5pbmcgemVyby4NCj4gK3BhZ2VzIGNvbnRhaW5pbmcgemVyby4NCj4gICAu
XCIgRGF0YWJhc2VzIHdhbnQgdG8gdXNlIHRoaXMgZmVhdHVyZSB0byBkcm9wIGEgc2VjdGlv
biBvZiB0aGVpcg0KPiAgIC5cIiBidWZmZXJwb29sIChzaGFyZWQgbWVtb3J5IHNlZ21lbnRz
KSAtIHdpdGhvdXQgd3JpdGluZyBiYWNrIHRvDQo+ICAgLlwiIGRpc2svc3dhcCBzcGFjZS4g
IFRoaXMgZmVhdHVyZSBpcyBhbHNvIHVzZWZ1bCBmb3Igc3VwcG9ydGluZw0KPiAgIC5cIiBo
b3QtcGx1ZyBtZW1vcnkgb24gVU1MLg0KPiAgIC5JUA0KPiAgIFRoZSBzcGVjaWZpZWQgYWRk
cmVzcyByYW5nZSBtdXN0IGJlIG1hcHBlZCBzaGFyZWQgYW5kIHdyaXRhYmxlLg0KPiAtVGhp
cyBmbGFnIGNhbm5vdCBiZSBhcHBsaWVkIHRvIGxvY2tlZCBwYWdlcywgSHVnZSBUTEIgcGFn
ZXMsIG9yDQo+ICtUaGlzIGZsYWcgY2Fubm90IGJlIGFwcGxpZWQgdG8gbG9ja2VkIHBhZ2Vz
LCBvcg0KPiAgIC5CUiBWTV9QRk5NQVANCj4gICBwYWdlcy4NCj4gICAuSVANCj4gICBJbiB0
aGUgaW5pdGlhbCBpbXBsZW1lbnRhdGlvbiwgb25seQ0KPiAgIC5CUiB0bXBmcyAoNSkNCj4g
LXdhcyBzdXBwb3J0ZWQNCj4gK3N1cHBvcnRlZA0KPiAgIC5CUiBNQURWX1JFTU9WRSA7DQo+
ICAgYnV0IHNpbmNlIExpbnV4IDMuNSwNCj4gICAuXCIgY29tbWl0IDNmMzFkMDc1NzFlZWVh
MThhN2QzNGRiOWFmMjFkMjI4NWI4MDdhMTcNCj4gQEAgLTE5NiwxMCArMjA1LDEyIEBAIGFu
eSBmaWxlc3lzdGVtIHdoaWNoIHN1cHBvcnRzIHRoZQ0KPiAgIC5CUiBGQUxMT0NfRkxfUFVO
Q0hfSE9MRQ0KPiAgIG1vZGUgYWxzbyBzdXBwb3J0cw0KPiAgIC5CUiBNQURWX1JFTU9WRSAu
DQo+IC1IdWdldGxiZnMgZmFpbHMgd2l0aCB0aGUgZXJyb3INCj4gLS5CUiBFSU5WQUwgPiAt
YW5kIG90aGVyIGZpbGVzeXN0ZW1zIGZhaWwgd2l0aCB0aGUgZXJyb3INCj4gK0ZpbGVzeXN0
ZW1zIHdoaWNoIGRvIG5vdCBzdXBwb3J0DQo+ICsuQlIgTUFEVl9SRU1PVkUNCg0Kcy9CUi9C
Lw0KDQpTZWUgbWFuKDcpOg0KDQogICAgICAgIC5CICBCb2xkDQoNCiAgICAgICAgLkJSIEJv
bGQgIGFsdGVybmF0aW5nICB3aXRoICBSb21hbiAoZXNwZWNpYWxseSB1c2VmdWwgZm9yDQog
ICAgICAgICAgICByZWZlcnJpbmcgdG8gb3RoZXIgbWFudWFsIHBhZ2VzKQ0KDQoNCj4gK2Zh
aWwgd2l0aCB0aGUgZXJyb3INCj4gICAuQlIgRU9QTk9UU1VQUCAuDQo+ICsuSVANCj4gK1N1
cHBvcnQgZm9yIEh1Z2UgVExCIGZpbGVzeXN0ZW0gd2FzIGFkZGVkIGluIExpbnV4IHY0LjMu
DQo+ICAgLlRQDQo+ICAgLkJSIE1BRFZfRE9OVEZPUksgIiAoc2luY2UgTGludXggMi42LjE2
KSINCj4gICAuXCIgY29tbWl0IGY4MjI1NjYxNjVkZDQ2ZmY1ZGU5YmY4OTVjZmE2YzUxZjUz
YmIwYzQNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------SCrMgm1HdGVWXw5sUSkW0Rga--

--------------h5v1ODitq6debeE970ZvdSz0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKeUYAACgkQnowa+77/
2zI7Vg//Xf8PPZCF7uKRKISeq4Tc+ch2iB/Uje93UZ24PPM49aPmRT0C3TrYVN0y
DfrifOa2/4vXVnhreSo4PRnF8c5TJNk9qM9lulbsMHxmQy/atIjXF4uKoge0+GKk
/v+Z9LOLE5IYVSnke6uAFUdyRs/gON8owkHR0odgwIFDBYTRYjBaWKx8gCJAX3Wy
f/6LZ83wt2NcXBTeMunlh3h6AlNliO4MQAdQKzvFfFWzCtJJSrRXEGiswCQIkBFa
B740OmLksH5kEflOfrpwrpyeDk0ecwGyeFZb+bMyKEnRHnu7vBj3JZvSivJb5pQK
a7mAa+QVR2QEtI28scgmNQT/0DJCcTWVZa24Z4sqrWeQZG2x7zNuP4lq2q3h1q7S
Pb1H9rvLADDUE88wrAAyjrZw+MVzJjVV6xPj8iz3l/yggztmi8flC7VCKryglGDM
GPXeZqaPd5dpS++Ft0T+hKtO/P5z+GX5tYmZD0YjmohQ09qu1hE1fVnR1ZVc00l/
CJJPiwoFpxpamrBVywA8HtaFRDjHq66h9L8CvK9epAaPYJGwRckqGt0iP9RR9Oal
4E7YYbswSh+1ndp1HhbW6lk19a6M376g2h0EraLp+i6+xcfAwB8oKo49iFDsR4W4
qyrILFR1KYt8Nwuukn1edjm1riD/NmBqnCIN/4Odz6QvbUYKG2E=
=3fnO
-----END PGP SIGNATURE-----

--------------h5v1ODitq6debeE970ZvdSz0--
