Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 741F215B6E3
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2020 02:50:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729348AbgBMBuw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Feb 2020 20:50:52 -0500
Received: from mail-lf1-f65.google.com ([209.85.167.65]:46241 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729333AbgBMBuw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Feb 2020 20:50:52 -0500
Received: by mail-lf1-f65.google.com with SMTP id z26so2988942lfg.13
        for <linux-man@vger.kernel.org>; Wed, 12 Feb 2020 17:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:references:mime-version:message-id
         :content-transfer-encoding;
        bh=diZt54ie+TkZj4ubruT96nyQ4Tq/LCfhjdojlWfP/L4=;
        b=ZTqEoRcimmyMEZICjG4I5VDrrq0T4UVzEHOssn8Emz3Jre3gLv4WuBc/pqy/N2FRYV
         8IqOVXLvv1V98gaLNjivTI4slheNc6te6f4S+EsRmIgsd1GbU1T8yZ2K6JhF356V41zR
         xZFVMJIEgnJIWdbjDtJ4wtZZo4c47i3pHTLLHv4wwz4zx1Wtvn0MxuYkon6yhLqowdnM
         fvJPiPuVOXxdm5MzmA2ueOyWYAGIngMOBvIr1k3cgGXTxWRPojG1Z2t1BJaFaItQeQwS
         lKVoWYOwe9GvPai2jiqjG4nXzZgCY5MJWevLRYF9OlduAhEZhUM2cGtjdiInBMq/c5w+
         WPvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:references:mime-version
         :message-id:content-transfer-encoding;
        bh=diZt54ie+TkZj4ubruT96nyQ4Tq/LCfhjdojlWfP/L4=;
        b=lsd2mYtiG7KcFQeCWy4yy3j5GpLj5eIYnag2ZtQEn+ikZMJZQ5aADIgCCYruG+eBJh
         oYL1lLdnJyda8YmR76BKriyJkGpzvPMkexu5zIpgMG1a0c/kOk75Ry9DqVhcwyqWSApu
         pB879JG7x0RvrGFe+CHpK3P05cSFWfNuGLnBPXPHFTHiyidskmyguk0HHfUmAsSVaxvp
         3YjLLRd8zFfFzc2NQbxhSZbE+YhQhEtQLdaqQlZy5hnT+2XnRgibZsXHtSbkSHYg5If5
         TeoVwBXb0RnfLDoOJIoXZhpwuNxaoPmbquGC2uLYdAQo+Wy80Bgfk5vCTZMYLJoYvmLP
         2N/w==
X-Gm-Message-State: APjAAAUBPZBEh81xJezOsYf+Z9RhObhQueq/gW5UXU2VPb7dEXeMYBCF
        JLiv3hHoAQAxgNOD1+e/6ro=
X-Google-Smtp-Source: APXvYqwBIhuxFP2nvm1SlzcGsDrKT+ERPH1ihwJdbe7iM8pboGHnWrr/ACwuRopsV+Ddzkfe6SVb8A==
X-Received: by 2002:ac2:482c:: with SMTP id 12mr8013289lft.163.1581558650390;
        Wed, 12 Feb 2020 17:50:50 -0800 (PST)
Received: from N-20L6PF1KTYA2 ([131.228.2.21])
        by smtp.gmail.com with ESMTPSA id d26sm330184lfa.44.2020.02.12.17.50.46
        (version=TLS1_2 cipher=AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Feb 2020 17:50:49 -0800 (PST)
Date:   Thu, 13 Feb 2020 09:50:45 +0800
From:   "Li Xinhai" <lixinhai.lxh@gmail.com>
To:     "Mike Kravetz" <mike.kravetz@oracle.com>,
        =?utf-8?B?SE9SSUdVQ0hJIE5BT1lBKOWggOWPo+OAgOebtOS5nyk=?= 
        <naoya.horiguchi@nec.com>
Cc:     n-horiguchi <n-horiguchi@ah.jp.nec.com>,
        "linux-mm@kvack.org" <linux-mm@kvack.org>,
        akpm <akpm@linux-foundation.org>, mhocko <mhocko@suse.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] mm/mempolicy: support MPOL_MF_STRICT for huge page mapping
References: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>, 
        <07cd0750-d908-dd3b-dee1-bc3fcf5bf771@oracle.com>, 
        <20200212032139.GA31425@hori.linux.bs1.fc.nec.co.jp>, 
        <2020021213250278382352@gmail.com>, 
        <e135a4d1-c713-2003-13ea-f8b5695a7745@oracle.com>
X-Priority: 3
X-GUID: 428ACBAB-B3AA-483B-923A-A583EBD186ED
X-Has-Attach: no
X-Mailer: Foxmail 7.2.13.365[cn]
Mime-Version: 1.0
Message-ID: <2020021309504334686455@gmail.com>
Content-Type: text/plain;
        charset="utf-8"
Content-Transfer-Encoding: base64
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

T24gMjAyMC0wMi0xM8KgYXQgMDc6NTDCoE1pa2UgS3JhdmV0esKgd3JvdGU6Cj5PbiAyLzExLzIw
IDk6MjUgUE0sIExpIFhpbmhhaSB3cm90ZToKPj4gT24gMjAyMC0wMi0xMiBhdCAxMToyMSBIT1JJ
R1VDSEkgTkFPWUEo5aCA5Y+j44CA55u05LmfKSB3cm90ZToKPj4+IE9uIE1vbiwgRmViIDEwLCAy
MDIwIGF0IDA5OjE5OjQ4QU0gLTA4MDAsIE1pa2UgS3JhdmV0eiB3cm90ZToKPj4+PiBPbiAxLzMw
LzIwIDU6MzMgUE0sIExpIFhpbmhhaSB3cm90ZToKPj4+IC4uLgo+Pj4+Pgo+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBMaSBYaW5oYWkgPGxpeGluaGFpLmx4aEBnbWFpbC5jb20+Cj4+Pj4+IENjOiBNaWNo
YWwgSG9ja28gPG1ob2Nrb0BzdXNlLmNvbT4KPj4+Pj4gQ2M6IE1pa2UgS3JhdmV0eiA8bWlrZS5r
cmF2ZXR6QG9yYWNsZS5jb20+Cj4+Pj4+IENjOiBOYW95YSBIb3JpZ3VjaGkgPG4taG9yaWd1Y2hp
QGFoLmpwLm5lYy5jb20+Cj4+Pj4+IENjOiBsaW51eC1tYW4gPGxpbnV4LW1hbkB2Z2VyLmtlcm5l
bC5vcmc+Cj4+Pj4KPj4+PiBIZWxsbyBOYW95YSwKPj4+Pgo+Pj4+IERvIHlvdSBoYXZlIGFueSB0
aG91Z2h0cyBvbiB0aGlzP8KgIEluIHByZXZpb3VzIGRpc2N1c3Npb25zIHlvdSBzdWdnZXN0ZWQg
dGhpcwo+Pj4+IGFwcHJvYWNoIG9mIHJlbW92aW5nIHRoZSBzcGVjaWFsIGNhc2luZyBmb3IgaHVn
ZXRsYiBwYWdlcy7CoCBUaGUgY29kZSBsb29rcwo+Pj4+IGdvb2QgdG8gbWUgYW5kIHBhdGNoIGlz
IGZpbmUgd2l0aCBjb21tbWl0IG1lc3NhZ2UgbW9kaWZpY2F0aW9uLsKgIEp1c3Qgd2FudGVkCj4+
Pj4gdG8gZ2V0IHlvdXIgb3Bpbmlvbi4KPj4+Cj4+PiBIaSBNaWtlLCBYaW5oYWksCj4+Pgo+Pj4g
VGhlIHN1Z2dlc3RlZCBjaGFuZ2UgbG9va3MgZ29vZCB0byBtZSwgdG9vLgo+Pj4KPj4+IFRoYW5r
cywKPj4+IE5hb3lhIEhvcmlndWNoaQo+Pgo+PiBOYW95YSwgdGhhbmtzIGZvciBpbnNwZWN0aW5n
IHRoZSBjaGFuZ2UhCj4KPkNhbiB5b3UgcGxlYXNlIHNlbmQgVjIgb2YgcGF0Y2ggd2l0aCBhbiB1
cGRhdGVkIGNvbW1pdCBtZXNzYWdlLgo+Cj5JIHdvdWxkIGxpa2UgdGhlIHNlY3Rpb24gdGhhdCB3
aGljaCBsaXN0cyB0aGUgaW1wYWN0IHRvICJ1c2VycyB1c2luZwo+TVBPTF9NRl9TVFJJQ1QgYWxv
bmUiIHRvIHNheSBzb21ldGhpbmcgbGlrZSB0aGlzOgo+SWYgTVBPTF9NRl9TVFJJQ1QgYWxvbmUg
d2FzIHByZXZpb3VzbHkgdXNlZCwgaHVnZXRsYiBwYWdlcyBub3QgZm9sbG93aW5nIHRoZQo+bWVt
b3J5IHBvbGljeSB3b3VsZCBub3QgY2F1c2UgYW4gRUlPIGVycm9yLsKgIEFmdGVyIHRoaXMgY2hh
bmdlLCBodWdldGxiIHBhZ2VzCj5hcmUgdHJlYXRlZCBsaWtlIGFsbCBvdGhlciBwYWdlcy7CoCBJ
ZsKgIE1QT0xfTUZfU1RSSUNUIGFsb25lIGlzIHVzZWQgYW5kIGh1Z2V0bGIKPnBhZ2VzIGRvIG5v
dCBmb2xsb3cgbWVtb3J5IHBvbGljeSBhbiBFSU8gZXJyb3Igd2lsbCBiZSByZXR1cm5lZC4KPi0t
Cj5NaWtlIEtyYXZldHogCgpJIHdpbGwgc2VuZCBhIG5ldyBwYXRjaCwgdGhhbmtzLg==

