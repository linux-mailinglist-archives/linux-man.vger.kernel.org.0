Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF998FE14B
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2019 16:33:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727599AbfKOPdR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Nov 2019 10:33:17 -0500
Received: from mail-lf1-f67.google.com ([209.85.167.67]:45751 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727566AbfKOPdR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Nov 2019 10:33:17 -0500
Received: by mail-lf1-f67.google.com with SMTP id v8so8297814lfa.12
        for <linux-man@vger.kernel.org>; Fri, 15 Nov 2019 07:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:references:mime-version:message-id
         :content-transfer-encoding;
        bh=L3Im+pvVw3C7aiYNO5AL3MuuLl3SJzqV6gtRSmU6l1E=;
        b=UFgi3HaePpBMQbDhXFkYrzm9RiPm/sDrRjirw4XsoMVnmHY5rTsS9PWLBzB9n6Kqho
         GgFF4tk0OMYJjfUw29CtNyboIsJvmYw79S+0uzDnI64lxg0ZfSzsDw1qgQRpy1YlY71f
         HdFXAtRUef0ZYuexUPx1s0qrVuZt/ZQ1aj9sHZD8n4KtcgEAafJAiprwqj085YHlUNtT
         yPLVTbT7PEis7jFtJ07Wg3Oj5w9XIlG9yts+6JtI/6o12cX9eR/+cQDedDcWECobrRAV
         6QP+t7fz7l5rsn3OR+J0KispSfva4ZEfeVaaD0ntB2mpqnmjyvfDV7D5ed9K9uSwKjdU
         2Lkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:references:mime-version
         :message-id:content-transfer-encoding;
        bh=L3Im+pvVw3C7aiYNO5AL3MuuLl3SJzqV6gtRSmU6l1E=;
        b=Aelwk5RGjZJusYI1/83JUm/NTvfUy0drACutTf188zMPOyU2iDHU7GDyVhAm/Ym325
         SHuKiWnA09yMej2UJvb9jjU43QY58aefci06v+DSz+wizPauGGDL2EyNiblUCJ3YkAUL
         vyff9rGfZ7QNvsV8vqT8oynZcgoEiN1kMwp+fd0sRLG3eDe/aS6cp9SAjMRAFEDjY0f2
         hvW6KHYb8/H0V9nIIAaeCa70QKrLt15Cv/khOtsIpwMtlVSerRA2lflqKmIMEtsyk3Pa
         sp1eW+VOXaZr4GsVYd32yif8u/W2BRTDoYc8Cjd40RrNXb3PqgI9DV3VYx6kR9aYOopR
         8pqA==
X-Gm-Message-State: APjAAAXMEEI3czVeSRcWJtRUTNy6JTfIcUkPuI4uGjfEM39DGGMca2IQ
        NkvleUFjG9GNvbMK8qRiKjOJ6pAE
X-Google-Smtp-Source: APXvYqzcC71EA/v4uAB0QLtKsj1tT03S04jWhzRsaYEuyV9kNY2QfFOtTLHTgs2C04Ugkl2OaGFxAQ==
X-Received: by 2002:ac2:4c16:: with SMTP id t22mr11568033lfq.124.1573831995020;
        Fri, 15 Nov 2019 07:33:15 -0800 (PST)
Received: from N-20L6PF1KTYA2 ([131.228.2.20])
        by smtp.gmail.com with ESMTPSA id n1sm4083199ljg.44.2019.11.15.07.33.12
        (version=TLS1_2 cipher=AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Nov 2019 07:33:14 -0800 (PST)
Date:   Fri, 15 Nov 2019 23:33:12 +0800
From:   "lixinhai.lxh@gmail.com" <lixinhai.lxh@gmail.com>
To:     n-horiguchi <n-horiguchi@ah.jp.nec.com>
Cc:     "linux-mm@kvack.org" <linux-mm@kvack.org>,
        akpm <akpm@linux-foundation.org>, mhocko <mhocko@suse.com>,
        "Vlastimil Babka" <vbabka@suse.cz>,
        "Hugh Dickins" <hughd@google.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 2/2] mm: Fix checking unmapped holes for mbind
References: <1573218104-11021-1-git-send-email-lixinhai.lxh@gmail.com>, 
        <1573218104-11021-3-git-send-email-lixinhai.lxh@gmail.com>, 
        <20191114093018.GA2144@hori.linux.bs1.fc.nec.co.jp>
X-Priority: 3
X-GUID: 7AA44B45-3441-49B2-9C12-4FDB1FEA677A
X-Has-Attach: no
X-Mailer: Foxmail 7.2.13.365[cn]
Mime-Version: 1.0
Message-ID: <2019111523331059776833@gmail.com>
Content-Type: text/plain;
        charset="utf-8"
Content-Transfer-Encoding: base64
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

T24gMjAxOS0xMS0xNMKgYXQgMTc6MzDCoE5hb3lhIEhvcmlndWNoacKgd3JvdGU6Cj5PbiBGcmks
IE5vdiAwOCwgMjAxOSBhdCAwOTowMTo0NFBNICswODAwLCBMaSBYaW5oYWkgd3JvdGU6Cj4+IG1i
aW5kKCkgaXMgcmVxdWlyZWQgdG8gcmVwb3J0IEVGQVVMVCBpZiByYW5nZSwgc3BlY2lmaWVkIGJ5
IGFkZHIgYW5kIGxlbiwKPj4gY29udGFpbnMgdW5tYXBwZWQgaG9sZXMuIEluIGN1cnJlbnQgaW1w
bGVtZW50YXRpb24sIGJlbG93IHJ1bGVzIGFyZSBhcHBsaWVkCj4+IGZvciB0aGlzIGNoZWNraW5n
Ogo+PiAxIFVubWFwcGVkIGhvbGVzIGF0IGFueSBwYXJ0IG9mIHRoZSBzcGVjaWZpZWQgcmFuZ2Ug
c2hvdWxkIGJlIHJlcG9ydGVkIGFzCj4+wqDCoCBFRkFVTFQgaWYgbWJpbmQoKSBmb3Igbm9uZSBN
UE9MX0RFRkFVTFQgY2FzZXM7Cj4+IDIgVW5tYXBwZWQgaG9sZXMgYXQgYW55IHBhcnQgb2YgdGhl
IHNwZWNpZmllZCByYW5nZSBzaG91bGQgYmUgaWdub3JlZCAoZG8KPj7CoMKgIG5vdCByZXByb3Qg
RUZBVUxUKSBpZiBtYmluZCgpIGZvciBNUE9MX0RFRkFVTFQgY2FzZTsKPj4gMyBUaGUgd2hvbGUg
cmFuZ2UgaW4gYW4gdW5tYXBwZWQgaG9sZSBzaG91bGQgYmUgcmVwb3J0ZWQgYXMgRUZBVUxUOwo+
PiBOb3RlIHRoYXQgcnVsZSAyIGRvZXMgbm90IGZ1bGxmaWxsIHRoZSBtYmluZCgpIEFQSSBkZWZp
bml0aW9uLCBidXQgc2luY2UKPj4gdGhhdCBiZWhhdmlvciBoYXMgZXhpc3RlZCBmb3IgbG9uZyBk
YXlzICh0aGUgaW50ZXJuYWwgZmxhZwo+PiBNUE9MX01GX0RJU0NPTlRJR19PSyBpcyBmb3IgdGhp
cyBwdXJwb3NlKSwgdGhpcyBwYXRjaCBkb2VzIG5vdCBwbGFuIHRvCj4+IGNoYW5nZSBpdC4KPj4K
Pj4gSW4gY3VycmVudCBjb2RlLCBhcHBsaWNhdGlvbiBvYnNlcnZlZCBpbmNvbnNpc3RlbnQgYmVo
YXZpb3Igb24gcnVsZSAxIGFuZAo+PiBydWxlIDIgcmVzcGVjdGl2ZWx5LiBUaGF0IGluY29uc2lz
dGVuY3kgaXMgZml4ZWQgYXMgYmVsb3cgZGV0YWlscy4KPj4KPj4gQ2FzZXMgb2YgcnVsZSAxOgo+
PiAxKSBIb2xlIGF0IGhlYWQgc2lkZSBvZiByYW5nZS4gQ3VycmVudCBjb2RlIHJlcHJvdCBFRkFV
TFQsIG5vIGNoYW5nZSBieQo+PiB0aGlzIHBhdGNoLgo+PiBbwqAgdm1hwqAgXVsgaG9sZSBdW8Kg
IHZtYcKgIF0KPj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgW8KgIHJhbmdlwqAgXQo+PiAyKSBI
b2xlIGF0IG1pZGRsZSBvZiByYW5nZS4gQ3VycmVudCBjb2RlIHJlcG9ydCBFRkFVTFQsIG5vIGNo
YW5nZSBieQo+PiB0aGlzIHBhdGNoLgo+PiBbwqAgdm1hwqAgXVsgaG9sZSBdWyB2bWEgXQo+PsKg
wqDCoCBbwqDCoMKgwqAgcmFuZ2XCoMKgwqDCoMKgIF0KPj4gMykgSG9sZSBhdCB0YWlsIHNpZGUg
b2YgcmFuZ2UuIEN1cnJlbnQgY29kZSBkbyBub3QgcmVwb3J0IEVGQVVMVCwgdGhpcwo+PiBwYXRj
aCBmaXggaXQuCj4+IFvCoCB2bWHCoCBdWyBob2xlIF1bIHZtYSBdCj4+wqDCoMKgIFvCoCByYW5n
ZcKgIF0KPj4KPj4gQ2FzZXMgb2YgcnVsZSAyOgo+PiAxKSBIb2xlIGF0IGhlYWQgc2lkZSBvZiBy
YW5nZS4gQ3VycmVudCBjb2RlIHJlcHJvdCBFRkFVTFQsIHRoaXMgcGF0Y2gKPj4gZml4IGl0Lgo+
PiBbwqAgdm1hwqAgXVsgaG9sZSBdW8KgIHZtYcKgIF0KPj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgW8KgIHJhbmdlwqAgXQo+PiAyKSBIb2xlIGF0IG1pZGRsZSBvZiByYW5nZS4gQ3VycmVudCBj
b2RlIGRvIG5vdCByZXBvcnQgRUZBVUxULCBubyBjaGFuZ2UKPj4gYnkgdGhpcyBwYXRjaC4KPj4g
dGhpcyBwYXRjaC4KPj4gW8KgIHZtYcKgIF1bIGhvbGUgXVsgdm1hXQo+PsKgwqDCoCBbwqDCoMKg
wqAgcmFuZ2XCoMKgwqDCoMKgIF0KPj4gMykgSG9sZSBhdCB0YWlsIHNpZGUgb2YgcmFuZ2UuIEN1
cnJlbnQgY29kZSBkbyBub3QgcmVwb3J0IEVGQVVMVCwgbm8KPj4gY2hhbmdlIGJ5IHRoaXMgcGF0
Y2guCj4+IFvCoCB2bWHCoCBdWyBob2xlIF1bIHZtYV0KPj7CoMKgwqAgW8KgIHJhbmdlwqAgXQo+
Pgo+PiBUaGlzIHBhdGNoIGhhcyBubyBjaGFuZ2VzIHRvIHJ1bGUgMy4KPj4KPj4gVGhlIHVubWFw
cGVkIGhvbGUgY2hlY2tpbmcgY2FuIGFsc28gYmUgaGFuZGxlZCBieSB1c2luZyAucHRlX2hvbGUo
KSwKPj4gaW5zdGVhZCBvZiAudGVzdF93YWxrKCkuIEJ1dCAucHRlX2hvbGUoKSBpcyBjYWxsZWQg
Zm9yIGhvbGVzIGluc2lkZSBhbmQKPj4gb3V0c2lkZSB2bWEsIHdoaWNoIGNhdXNlcyBtb3JlIGNv
c3QsIHNvIHRoaXMgcGF0Y2gga2VlcHMgdGhlIG9yaWdpbmFsCj4+IGRlc2lnbiB3aXRoIC50ZXN0
X3dhbGsoKS4KPj4KPj4gRml4ZXM6IDZmNDU3NmUzNjg3YiAoIm1lbXBvbGljeTogYXBwbHkgcGFn
ZSB0YWJsZSB3YWxrZXIgb24gcXVldWVfcGFnZXNfcmFuZ2UoKSIpCj4+IENjOiBBbmRyZXcgTW9y
dG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+PiBDYzogTmFveWEgSG9yaWd1Y2hpIDxu
LWhvcmlndWNoaUBhaC5qcC5uZWMuY29tPgo+PiBDYzogTWljaGFsIEhvY2tvIDxtaG9ja29Ac3Vz
ZS5jb20+Cj4+IENjOiBWbGFzdGltaWwgQmFia2EgPHZiYWJrYUBzdXNlLmN6Pgo+PiBDYzogSHVn
aCBEaWNraW5zIDxodWdoZEBnb29nbGUuY29tPgo+PiBDYzogbGludXgtbWFuIDxsaW51eC1tYW5A
dmdlci5rZXJuZWwub3JnPgo+PiBTaWduZWQtb2ZmLWJ5OiBMaSBYaW5oYWkgPGxpeGluaGFpLmx4
aEBnbWFpbC5jb20+Cj4+IC0tLQo+PsKgIG1tL21lbXBvbGljeS5jIHwgNDAgKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQo+PsKgIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL21tL21lbXBvbGlj
eS5jIGIvbW0vbWVtcG9saWN5LmMKPj4gaW5kZXggODA3ZjA2Zi4uYzY5N2IyOSAxMDA2NDQKPj4g
LS0tIGEvbW0vbWVtcG9saWN5LmMKPj4gKysrIGIvbW0vbWVtcG9saWN5LmMKPj4gQEAgLTQxMCw3
ICs0MTAsOSBAQCBzdHJ1Y3QgcXVldWVfcGFnZXMgewo+PsKgIHN0cnVjdCBsaXN0X2hlYWQgKnBh
Z2VsaXN0Owo+PsKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+wqAgbm9kZW1hc2tfdCAqbm1hc2s7
Cj4+IC0Jc3RydWN0IHZtX2FyZWFfc3RydWN0ICpwcmV2Owo+PiArCXVuc2lnbmVkIGxvbmcgc3Rh
cnQ7Cj4+ICsJdW5zaWduZWQgbG9uZyBlbmQ7Cj4+ICsJc3RydWN0IHZtX2FyZWFfc3RydWN0ICpm
aXJzdDsKPj7CoCB9Owo+PsKgCj4+wqAgLyoKPj4gQEAgLTYxOSwxNCArNjIxLDIwIEBAIHN0YXRp
YyBpbnQgcXVldWVfcGFnZXNfdGVzdF93YWxrKHVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2lnbmVk
IGxvbmcgZW5kLAo+PsKgIHVuc2lnbmVkIGxvbmcgZmxhZ3MgPSBxcC0+ZmxhZ3M7Cj4+wqAKPj7C
oCAvKiByYW5nZSBjaGVjayBmaXJzdCAqLwo+PiAtCWlmICghKGZsYWdzICYgTVBPTF9NRl9ESVND
T05USUdfT0spKSB7Cj4+IC0JaWYgKCF2bWEtPnZtX25leHQgJiYgdm1hLT52bV9lbmQgPCBlbmQp
Cj4+IC0JcmV0dXJuIC1FRkFVTFQ7Cj4+IC0JaWYgKHFwLT5wcmV2ICYmIHFwLT5wcmV2LT52bV9l
bmQgPCB2bWEtPnZtX3N0YXJ0KQo+PiArCVZNX0JVR19PTigodm1hLT52bV9zdGFydCA+IHN0YXJ0
KSB8fCAodm1hLT52bV9lbmQgPCBlbmQpKTsKPj4gKwo+PiArCWlmICghcXAtPmZpcnN0KSB7Cj4+
ICsJcXAtPmZpcnN0ID0gdm1hOwo+PiArCWlmICghKGZsYWdzICYgTVBPTF9NRl9ESVNDT05USUdf
T0spICYmCj4+ICsJKHFwLT5zdGFydCA8IHZtYS0+dm1fc3RhcnQpKQo+PiArCS8qIGhvbGUgYXQg
aGVhZCBzaWRlIG9mIHJhbmdlICovCj4+wqAgcmV0dXJuIC1FRkFVTFQ7Cj4+wqAgfQo+PiAtCj4+
IC0JcXAtPnByZXYgPSB2bWE7Cj4+ICsJaWYgKCEoZmxhZ3MgJiBNUE9MX01GX0RJU0NPTlRJR19P
SykgJiYKPj4gKwkoKHZtYS0+dm1fZW5kIDwgcXAtPmVuZCkgJiYKPgo+WW91IGhlcmUgaGF2ZSBh
IHRyYWlsaW5nIHdoaXRlc3BhY2UuCj4KPk90aGVyd2lzZSwgbG9va3MgZ29vZCB0byBtZS4KPgo+
UmV2aWV3ZWQtYnk6IE5hb3lhIEhvcmlndWNoaSA8bi1ob3JpZ3VjaGlAYWguanAubmVjLmNvbT4g
CgpUaGFua3MgZm9yIHJldmlldywgSSd2IHNlbnQgb3V0IG5ldyBwYXRjaCB3aXRoIHNhbWUgdGl0
bGUKLSBYaW5oYWkKCgo=

