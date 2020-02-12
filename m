Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E226615A09D
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2020 06:25:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728078AbgBLFZK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Feb 2020 00:25:10 -0500
Received: from mail-lf1-f65.google.com ([209.85.167.65]:37143 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725601AbgBLFZJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Feb 2020 00:25:09 -0500
Received: by mail-lf1-f65.google.com with SMTP id b15so649362lfc.4
        for <linux-man@vger.kernel.org>; Tue, 11 Feb 2020 21:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:references:mime-version:message-id
         :content-transfer-encoding;
        bh=vvIpUBo6uxC5AVi3uktjPiyF7zlzhjWGnYj0L81LAnU=;
        b=PY1pIykNRDtZ1jH5vc7ZYiTxp/Fe6MR1UIkyWrnh/SlvV4LzcgsQHjSQBCT25+Pioo
         VQ8Vw4dbRzaOsPlkqwd5ogWYd8Pvk/ZehmLTqj0xxnUYqXPhighoXF8cEliAy8Ahxr38
         Tl72DjGLYFCfhAFXJTPJ/dkRrqkMOGOS6DyjHkCoE9DJqNmI42uoZAHw3yfQsUC5/vjg
         Kcr9Br4AnBoS+jIFJKnxFzTbfBFYbOSm0G3ORGGkO5wVdoOXO5MvoJ6c6KyFhFNCtLGd
         4nT+cBgqBzxVYrBtZKt2SqIQf0sbd3Dw4mG8gFMLPowhRvrd5LR9ZEvOM2X2EcdD+JXb
         QQkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:references:mime-version
         :message-id:content-transfer-encoding;
        bh=vvIpUBo6uxC5AVi3uktjPiyF7zlzhjWGnYj0L81LAnU=;
        b=X8zbIksL/o0yo9DGybrMK6bGMvlOThlFlToUv8iDm2eCoBjCiz0CtvWsz2fLfQJv15
         yB4yv7Xaf9ZD1Ht8w5kVPNdZbsp6dOfdLLBnsUPBHgvFrH2sGBk3PtSNgm/E7oR7GJmZ
         cIpY67xoDl9WmbSGsUozfp7ZpKkhfjzm5bVB6oBg5JRlZDfq4KmIAS3V3RJJL492oZto
         DzwmjUyNdkad96ZmwrQSfoxm25x/oTsjIxHt3lti71PgARNxKElLnFoYRxJKPPkpmRBv
         4ZWPW/tc0btPHb+69tH7gu1fbbeuVfyG8XlJspEgmGOm9BaqBbiekH0Psctjv0IsgXlg
         /SKA==
X-Gm-Message-State: APjAAAVhZl/Ikd72naByBGZECuiH11pTia1FgvEAtv6YoHF2FHLSJ9os
        mp/aFV/xH5vzpaAkCtG8B3Y=
X-Google-Smtp-Source: APXvYqxFUs+Qk5BGPUJgHbJD46+LhgWtnGqTAu5ohoIjnLgCNhInqvKtVY2hiZ1bKkNmxETGqbPGSg==
X-Received: by 2002:ac2:5a48:: with SMTP id r8mr5784211lfn.179.1581485107825;
        Tue, 11 Feb 2020 21:25:07 -0800 (PST)
Received: from N-20L6PF1KTYA2 ([131.228.2.21])
        by smtp.gmail.com with ESMTPSA id z8sm3180992ljc.44.2020.02.11.21.25.05
        (version=TLS1_2 cipher=AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 21:25:07 -0800 (PST)
Date:   Wed, 12 Feb 2020 13:25:04 +0800
From:   "Li Xinhai" <lixinhai.lxh@gmail.com>
To:     =?utf-8?B?SE9SSUdVQ0hJIE5BT1lBKOWggOWPo+OAgOebtOS5nyk=?= 
        <naoya.horiguchi@nec.com>, "Mike Kravetz" <mike.kravetz@oracle.com>
Cc:     n-horiguchi <n-horiguchi@ah.jp.nec.com>,
        "linux-mm@kvack.org" <linux-mm@kvack.org>,
        akpm <akpm@linux-foundation.org>, mhocko <mhocko@suse.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] mm/mempolicy: support MPOL_MF_STRICT for huge page mapping
References: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>, 
        <07cd0750-d908-dd3b-dee1-bc3fcf5bf771@oracle.com>, 
        <20200212032139.GA31425@hori.linux.bs1.fc.nec.co.jp>
X-Priority: 3
X-GUID: 19D042BF-938B-4A69-AFBF-C00993E1B127
X-Has-Attach: no
X-Mailer: Foxmail 7.2.13.365[cn]
Mime-Version: 1.0
Message-ID: <2020021213250278382352@gmail.com>
Content-Type: text/plain;
        charset="utf-8"
Content-Transfer-Encoding: base64
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

T24gMjAyMC0wMi0xMsKgYXQgMTE6MjHCoEhPUklHVUNISSBOQU9ZQSjloIDlj6PjgIDnm7TkuZ8p
wqB3cm90ZToKPk9uIE1vbiwgRmViIDEwLCAyMDIwIGF0IDA5OjE5OjQ4QU0gLTA4MDAsIE1pa2Ug
S3JhdmV0eiB3cm90ZToKPj4gT24gMS8zMC8yMCA1OjMzIFBNLCBMaSBYaW5oYWkgd3JvdGU6Cj4u
Li4KPj4gPgo+PiA+IFNpZ25lZC1vZmYtYnk6IExpIFhpbmhhaSA8bGl4aW5oYWkubHhoQGdtYWls
LmNvbT4KPj4gPiBDYzogTWljaGFsIEhvY2tvIDxtaG9ja29Ac3VzZS5jb20+Cj4+ID4gQ2M6IE1p
a2UgS3JhdmV0eiA8bWlrZS5rcmF2ZXR6QG9yYWNsZS5jb20+Cj4+ID4gQ2M6IE5hb3lhIEhvcmln
dWNoaSA8bi1ob3JpZ3VjaGlAYWguanAubmVjLmNvbT4KPj4gPiBDYzogbGludXgtbWFuIDxsaW51
eC1tYW5Admdlci5rZXJuZWwub3JnPgo+Pgo+PiBIZWxsbyBOYW95YSwKPj4KPj4gRG8geW91IGhh
dmUgYW55IHRob3VnaHRzIG9uIHRoaXM/wqAgSW4gcHJldmlvdXMgZGlzY3Vzc2lvbnMgeW91IHN1
Z2dlc3RlZCB0aGlzCj4+IGFwcHJvYWNoIG9mIHJlbW92aW5nIHRoZSBzcGVjaWFsIGNhc2luZyBm
b3IgaHVnZXRsYiBwYWdlcy7CoCBUaGUgY29kZSBsb29rcwo+PiBnb29kIHRvIG1lIGFuZCBwYXRj
aCBpcyBmaW5lIHdpdGggY29tbW1pdCBtZXNzYWdlIG1vZGlmaWNhdGlvbi7CoCBKdXN0IHdhbnRl
ZAo+PiB0byBnZXQgeW91ciBvcGluaW9uLgo+Cj5IaSBNaWtlLCBYaW5oYWksCj4KPlRoZSBzdWdn
ZXN0ZWQgY2hhbmdlIGxvb2tzIGdvb2QgdG8gbWUsIHRvby4KPgo+VGhhbmtzLAo+TmFveWEgSG9y
aWd1Y2hpIAoKTmFveWEsIHRoYW5rcyBmb3IgaW5zcGVjdGluZyB0aGUgY2hhbmdlIQo=

