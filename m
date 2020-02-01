Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 09B0914F7FE
	for <lists+linux-man@lfdr.de>; Sat,  1 Feb 2020 14:56:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726497AbgBAN4l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Feb 2020 08:56:41 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38066 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726495AbgBAN4l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Feb 2020 08:56:41 -0500
Received: by mail-wr1-f65.google.com with SMTP id y17so12048651wrh.5
        for <linux-man@vger.kernel.org>; Sat, 01 Feb 2020 05:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:references:mime-version:message-id
         :content-transfer-encoding;
        bh=ASRW09HHe0mQrIIKQICYXj1JnElucZPXTpGvWMjr8Ng=;
        b=MF8G9VFqXEbnDpt6F9HnRMrbVKUePhPtZ4NImTf5GeLDT2e/sP6HVflzLUhn9WQZ7G
         +y8MteS3BDc3HHDeUt+BSMfrvheH+tPA2FVizvyh1Qo6dFmqWiJR45+6ihYUoQmIwrjE
         dCinLQV3K1U3fwEnOfZ0F/H62gXqw1cZajBQFPRTF48//jqPSCdCuA4NDBMV/YdmzyZZ
         6EiWYcuNe6laHp2DVb6nNzp8wqYv1qkVO4a3MzzH79FQBZoMQ3qyTZqqUuOxeDAEWQv2
         j+mmwKvegZVoJw7Ngo4UuVc1ZHAdnEXSrwdR8Y5BR94CJ1AmLhAKxIHDysXGZMqI8NpX
         tL2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:references:mime-version
         :message-id:content-transfer-encoding;
        bh=ASRW09HHe0mQrIIKQICYXj1JnElucZPXTpGvWMjr8Ng=;
        b=o/4hYdpQKVakpo87IhoSrbuRTFOiE7mjJBj+hN9mUdlHsp19Uu5XegvkNWwHusaDja
         jDOJ5X4Npr6CXojuzP0aegoKhKCojS8MNWE9aSiFIDzrnTuTl2U6KSWveG1Z1mTwjtMI
         DNhqCIMdtyr2j4RzhnAVn3QFSwPPA0Cj5R3pX6V4OAkp7Pn8YpBa7Ld9I7B6DhFFi9qX
         qh4G2Q5qcRzHRNbjWp7GJMa+qi5DwD/wGCf4Way04Lx3vbNCQRp7HT0MGNsDjZ/NDDER
         Ui4Bsit/UOxrC0WWvTCgU5ZA+FQBdKp1YgWAQ3fxfbfi28ZI7t+SYbWu3Ad6I+t+dk7w
         9xCw==
X-Gm-Message-State: APjAAAWwrPVS0Lp+4lgGlRWsRmX1nLWCTwThJtEzeRv5Hbs4jKt217e7
        wGeI+IAtoj3CfoaaHXd2nInfwHj4mJc=
X-Google-Smtp-Source: APXvYqzjihPD+qLj2KjTsDTQaTBBVjCtObc9FRKGk8yFZRXFuSTFSyDJHhZomX+BP4Xce3HMSHUhKw==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr4677289wrs.365.1580565398217;
        Sat, 01 Feb 2020 05:56:38 -0800 (PST)
Received: from N-20L6PF1KTYA2 ([131.228.2.20])
        by smtp.gmail.com with ESMTPSA id o4sm16617995wrx.25.2020.02.01.05.56.35
        (version=TLS1_2 cipher=AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Feb 2020 05:56:37 -0800 (PST)
Date:   Sat, 1 Feb 2020 21:56:35 +0800
From:   "Li Xinhai" <lixinhai.lxh@gmail.com>
To:     "Mike Kravetz" <mike.kravetz@oracle.com>,
        "linux-mm@kvack.org" <linux-mm@kvack.org>
Cc:     akpm <akpm@linux-foundation.org>, mhocko <mhocko@suse.com>,
        n-horiguchi <n-horiguchi@ah.jp.nec.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] mm/mempolicy: support MPOL_MF_STRICT for huge page mapping
References: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>, 
        <3b12c3ff-d591-d3a6-3ee8-600940e8b30d@oracle.com>
X-Priority: 3
X-GUID: 46269CE8-18F5-4682-80FD-BF1405F7C2B9
X-Has-Attach: no
X-Mailer: Foxmail 7.2.13.365[cn]
Mime-Version: 1.0
Message-ID: <20200201215633566487118@gmail.com>
Content-Type: text/plain;
        charset="utf-8"
Content-Transfer-Encoding: base64
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

T24gMjAyMC0wMi0wMcKgYXQgMTE6MjjCoE1pa2UgS3JhdmV0esKgd3JvdGU6Cj5PbiAxLzMwLzIw
IDU6MzMgUE0sIExpIFhpbmhhaSB3cm90ZToKPj4gTVBPTF9NRl9TVFJJQ1QgaXMgdXNlZCBpbiBt
YmluZCgpIGZvciBwdXJwb3NlczoKPj4gKDEpIE1QT0xfTUZfU1RSSUNUIGlzIHNldCBhbG9uZSB3
aXRob3V0IE1QT0xfTUZfTU9WRSBvciBNUE9MX01GX01PVkVfQUxMLAo+PsKgwqDCoMKgIHRvIGNo
ZWNrIGlmIHRoZXJlIGlzIG1pc3BsYWNlZCBwYWdlIGFuZCByZXR1cm4gLUVJTzsKPj4gKDIpIE1Q
T0xfTUZfU1RSSUNUIGlzIHNldCB3aXRoIE1QT0xfTUZfTU9WRSBvciBNUE9MX01GX01PVkVfQUxM
LCB0byBjaGVjawo+PsKgwqDCoMKgIGlmIHRoZXJlIGlzIG1pc3BsYWNlZCBwYWdlIHdoaWNoIGlz
IGZhaWxlZCB0byBpc29sYXRlLCBvciBwYWdlIGlzCj4+wqDCoMKgwqAgc3VjY2VzcyBvbiBpc29s
YXRlIGJ1dCBmYWlsZWQgdG8gbW92ZSwgYW5kIHJldHVybiAtRUlPLgo+Pgo+PiBGb3Igbm9uIGh1
Z2VwYWdlIG1hcHBpbmcsICgxKSBhbmQgKDIpIGFyZSBpbXBsZW1lbnRlZCBhcyBleHBlY3RhdGlv
bi4KPj4gRm9yIGh1Z2VwYWdlIG1hcHBpbmcsICgxKSBpcyBub3QgaW1wbGVtZW50ZWQuIEFuZCBp
biAoMiksIHRoZSBwYXJ0IGFib3V0Cj4+IGZhaWxlZCB0byBpc29sYXRlIGFuZCByZXBvcnQgLUVJ
TyBpcyBub3QgaW1wbGVtZW50ZWQuCj4+Cj4+IFRoaXMgcGF0Y2ggaW1wbGVtZW50cyB0aGUgbWlz
c2VkIHBhcnRzIGZvciBodWdlcGFnZSBtYXBwaW5nLiBCZW5lZml0cwo+PiB3aXRoIGl0IGFwcGxp
ZWQ6Cj4+IC0gVXNlciBzcGFjZSBjYW4gYXBwbHkgc2FtZSBjb2RlIGxvZ2ljIHRvIGhhbmRsZSBt
YmluZCgpIG9uIGh1Z2VwYWdlIGFuZAo+PsKgwqAgbm9uIGh1Z2VwYWdlIG1hcHBpbmc7Cj4+IC0g
UmVsaWFibHkgdXNpbmcgTVBPTF9NRl9TVFJJQ1QgYWxvbmUgdG8gY2hlY2sgd2hldGhlciB0aGVy
ZSBpcyBtaXNwbGFjZWQKPj7CoMKgIHBhZ2Ugb3Igbm90IHdoZW4gYmluZCBwb2xpY3kgb24gYWRk
cmVzcyByYW5nZSwgZXNwZWNpYWxseSBmb3IgYWRkcmVzcwo+PsKgwqAgcmFuZ2Ugd2hpY2ggY29u
dGFpbnMgYm90aCBodWdlcGFnZSBhbmQgbm9uIGh1Z2VwYWdlIG1hcHBpbmcuCj4+Cj4+IEFuYWx5
c2lzIG9mIHBvdGVudGlhbCBpbXBhY3Qgb24gZXhpc3RpbmcgdXNlcnM6Cj4+IC0gRm9yIHVzZXJz
IHdobyB1c2luZyBNUE9MX01GX1NUUklDVCBhbG9uZSwgc2luY2UgbWJpbmQoKSBkb24ndCByZXBv
cnQKPj7CoMKgIHJlbGlhYmxlIGFuc3dlciBhYm91dCBtaXNwbGFjZWQgcGFnZSwgdGhlaXIgZXhp
c3RpbmcgY29kZSBoYXZlIHRvCj4+wqDCoCB1dGlsaXplIG90aGVyIGZhY2lsaXRpZXMsIGUuZy4g
bnVtYV9tYXBzIG9mIHByb2MsIHRvIGNoZWNrIG1pc3BsYWNlZAo+PsKgwqAgcGFnZS4gQWZ0ZXIg
dGhpcyBwYXRjaCBhcHBsaWVkLCB0aGF0IGRlZGljYXRlZCBjaGVja2luZyB3aWxsIHN0aWxsIHdv
cmsKPj7CoMKgIHdpdGhvdXQgYmVlbiBpbXBhY3RlZDsKPgo+SSBkbyBub3QgYWdyZWUgd2l0aCB0
aGlzIGNoYXJhY3Rlcml6YXRpb24gb2YgaW1wYWN0IHRvIGV4aXN0aW5nIHVzZXJzLsKgIElmCj5z
b21lb25lIHVzZXMgTVBPTF9NRl9TVFJJQ1QgYWxvbmUgd2l0aCBodWdldGxiIHBhZ2VzIHRvZGF5
LCB0aGV5IHdpbGwgbmV2ZXIKPmdldCBFSU8uwqAgQWZ0ZXIgdGhpcyBwYXRjaCwgdGhleSB3aWxs
IGdldCBFSU8gaWYgdGhlIGh1Z2V0bGIgcGFnZXMgZG8gbm90Cj5mb2xsb3cgdGhlIHBvbGljeS4K
PiAKClRoYW5rcywgeW91ciBwb2ludCBpcyBjb3JyZWN0IG9uIHRoaXMgc3BlY2lmaWMgY2FzZS4K
ClRyeSB0byBzdW1tYXJpemUgY2FzZXMgdGhhdCBoYXZlIGJlZW4gdXNlZCBhcyBzZXR0aW5nIE1Q
T0xfTUZfU1RSSUNUIGFsb25lOgotIElmIHVzZXIgaGFzIG5vdCBub3RpY2VkIHRoYXQgU1RSSUNU
IGJlZW4gaWdub3JlZCwgYW5kIGltcGxlbWVudGVkIGNvZGUKwqAgYnJhbmNowqBmb3IgZmFpbHVy
ZSwgdGhlbiB0aGF0IGJyYW5jaCB3aWxsIG5vdyBiZSByZWFjaGFibGUgd2hlbiBwYWdlIGlzCsKg
IG1pc3BsYWNlZC7CoFRoaXMgc2hvdWxkIG5vdCBiZSBhwqBwcm9ibGVtIChtYXliZSBidWcgaW4g
dGhhdCB1c2VyJ3MgYnJhbmNoIHdvdWxkCsKgIGJlIHJldmVhbGVkIG5vdykuCi0gSWYgdXNlciBo
YXMgbm90aWNlZCB0aGF0IFNUUklDVCBiZWVuIGlnbm9yZWQsIGFuZCBwcmVwYXJlZCB0byBjaGVj
ayBtaXNwbGFjZWQKwqAgcGFnZXMgYnkgZGVkaWNhdGVkIGNvZGUgKHRoaXMgY2FzZSBpcyB0aGF0
IGRlc2NyaWJlZCBpbiBjaGFuZ2Vsb2csIG5vIGltcGFjdGlvbikuwqAKLSAoKikgSWYgdXNlciBo
YXMgbm90aWNlZCB0aGF0IFNUUklDVCBiZWVuIGlnbm9yZWQsIGFuZCBhc3N1bWVkIG1iaW5kKCkg
d291bGQgbmV2ZXIKwqAgcmV0dXJuIGZhaWx1cmUgZm9yIG1pc3BsYWNlZCBwYWdlcyAoZS5nLiwg
YXNzZXJ0IG9uIGl0KS4gVGhlbiwgdGhvc2UgdXNlcnMgd2lsbArCoCBiZSBpbXBhY3RlZCwgYWx0
aG91Z2ggdGhlaXIgY29kZSBsb2dpYyBzZWVtcyB3ZWlyZC4KLSBpZiB1c2VycyBkaWRuJ3QgZGVm
aW5lIGNvZGUgbG9naWMgdG8gaGFuZGxlIGZhaWx1cmUgb24gbWlzcGxhY2VkIHBhZ2VzLCBubyBt
YXR0ZXIKwqAgdGhleSBub3RpY2VkIHRoYXQgU1RSSUNUIGJlZW4gaWdub3JlZCBvciBub3QsIHRo
ZXkgY2FuJ3QgYmUgaW1wYWN0ZWQuCkluIG15IG1pbmQsICgqKSBwYXJ0IGlzIHRoZSBvbmx5IGNh
c2UgaW1wYWN0IHRvIHVzZXJzLgoKPlllcywgdGhpcyBpcyB0aGUgZGVzaXJlZCBiZWhhdmlvciBh
ZnRlciB0aGUgY2hhbmdlIHdpdGggdXBkYXRlZCBkb2N1bWVudGF0aW9uLgo+SG93ZXZlciwgaXQg
aXMgYSBwb3RlbnRpYWwgY2hhbmdlIGZvciBleGlzdGluZyB1c2Vycy7CoCBJIGhvbmVzdGx5IGRv
IG5vdAo+YmVsaWV2ZSBhbnlvbmUgd2lsbCBub3RpY2UuwqAgQnV0LCBpdCBpcyBhIGNoYW5nZSBp
biBiZWhhdmlvci4KPiAKPj4gLSBGb3IgdXNlcnMgd2hvIHVzaW5nIE1QT0xfTUZfU1RSSUNUIHdp
dGggTVBPTF9NRl9NT1ZFIG9yCj4+wqDCoCBNUE9MX01GX01PVkVfQUxMLCB0aGUgc2VtYW50aWMg
YWJvdXQgc29tZSBwYWdlcyBjb3VsZCBub3QgYmUgbW92ZWQgd2lsbAo+PsKgwqAgbm90IGJlIGNo
YW5nZWQgYnkgdGhpcyBwYXRjaCwgYmVjYXVzZSBmYWlsZWQgdG8gaXNvbGF0ZSBhbmQgZmFpbGVk
IHRvCj4+wqDCoCBtb3ZlIGhhdmUgc2FtZSBlZmZlY3RzIHRvIHVzZXJzLCBzbyB0aGVpciBleGlz
dGluZyBjb2RlIHdpbGwgbm90IGJlCj4+wqDCoCBpbXBhY3RlZC4KPj4KPj4gSW4gbWJpbmQgbWFu
IHBhZ2UsIHRoZSBub3RlIGFib3V0ICdNUE9MX01GX1NUUklDVCBpcyBpZ25vcmVkIG9uIGh1Z2Ug
cGFnZQo+PiBtYXBwaW5ncycgY2FuIGJlIHJlbW92ZWQgYWZ0ZXIgdGhpcyBwYXRjaCBpcyBhcHBs
aWVkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMaSBYaW5oYWkgPGxpeGluaGFpLmx4aEBnbWFpbC5j
b20+Cj4+IENjOiBNaWNoYWwgSG9ja28gPG1ob2Nrb0BzdXNlLmNvbT4KPj4gQ2M6IE1pa2UgS3Jh
dmV0eiA8bWlrZS5rcmF2ZXR6QG9yYWNsZS5jb20+Cj4+IENjOiBOYW95YSBIb3JpZ3VjaGkgPG4t
aG9yaWd1Y2hpQGFoLmpwLm5lYy5jb20+Cj4+IENjOiBsaW51eC1tYW4gPGxpbnV4LW1hbkB2Z2Vy
Lmtlcm5lbC5vcmc+Cj4+IC0tLQo+PiBMaW5rIHRvIHJlbGV2YW50IGRpc2N1c3Npb246Cj4+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tLzE1Nzg5OTMzNzgtMTA4NjAtMi1naXQtc2Vu
ZC1lbWFpbC1saXhpbmhhaS5seGhAZ21haWwuY29tLwo+Pgo+Cj5UaGFua3MgZm9yIGRvaW5nIHRo
aXMgYW5kIHRoZSBjb21taXQgbWVzc2FnZS7CoCBJIGRvIG5vdCBzZWUgYW55IGlzc3VlcyB3aXRo
Cj50aGUgY29kZS4gCgpUaGFua3MgZm9yIGluc3BlY3RpbmcgdGhlIGNvZGUuCgo+Cj5JIGJlbGll
dmUgcmVtb3ZpbmcgdGhlIHNwZWNpYWwgY2FzZSBmb3IgaHVnZXRsYiBwYWdlcyBpbiBtYmluZCBp
cyBhIGdvb2QKPnRoaW5nLsKgIEl0IGlzIHVuZm9ydHVuYXRlIHRoYXQgaXQgd2lsbCBjYXVzZSBh
IGNoYW5nZSBpbiBiZWhhdmlvci7CoCBNeQo+YmVsaWVmIGlzIHRoYXQgdGhpcyBjaGFuZ2Ugd2ls
bCBnbyB1bm5vdGljZWQuwqBQcm92aWRpbmcgY29uc2lzdGVudAo+YmVoYXZpb3IgdGhhdCBtYXRj
aGVzIHRoZSAodXBkYXRlZCkgZG9jdW1lbnRhdGlvbiBpcyBiZXR0ZXIgdGhhdCBtYWludGFpbmlu
Zwo+dGhlIGN1cnJlbnQgZnVuY3Rpb25hbGl0eSBpbnRvIHRoZSBmdXR1cmUuCj4KPi0tCj5NaWtl
IEtyYXZldHo=

