Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 611B946E053
	for <lists+linux-man@lfdr.de>; Thu,  9 Dec 2021 02:41:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234673AbhLIBoc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Dec 2021 20:44:32 -0500
Received: from cluster-j.mailcontrol.com ([85.115.54.190]:40380 "EHLO
        cluster-j.mailcontrol.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229680AbhLIBoc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Dec 2021 20:44:32 -0500
X-Greylist: delayed 1958 seconds by postgrey-1.27 at vger.kernel.org; Wed, 08 Dec 2021 20:44:32 EST
Received: (from mailcontrol@localhost)
        by rly07j.srv.mailcontrol.com (MailControl) with ESMTP id 1B918IcZ071978;
        Thu, 9 Dec 2021 01:08:18 GMT
Received: from rly07j.srv.mailcontrol.com (localhost [127.0.0.1])
        by localhost (envelope-sender Andrei.PODOPLELOV@3ds.com) (MIMEDefang) with ESMTP id 1B918GTq071817
        (TLS bits=256 verify=OK); Thu, 09 Dec 2021 01:08:18 +0000 (GMT)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
        by rly07j.srv.mailcontrol.com (MailControl) id 1B918Gij071814;
        Thu, 9 Dec 2021 01:08:16 GMT
Received: from 3ds-ag-las-smtp-out.3ds.com ([160.231.203.240])
        by rly07j-eth0.srv.mailcontrol.com (envelope-sender <Andrei.PODOPLELOV@3ds.com>) (MIMEDefang) with ESMTP id 1B918E8F071799
        (TLS bits=256 verify=OK); Thu, 09 Dec 2021 01:08:16 +0000 (GMT)
Received: from AG-LAS-EXMBX06.dsone.3ds.com (10.106.33.156) by
 AG-LAS-EXMBX08.dsone.3ds.com (10.106.33.158) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 9 Dec 2021 01:08:13 +0000
Received: from AG-LAS-EXMBX06.dsone.3ds.com ([fe80::4501:7756:3ffd:7924]) by
 AG-LAS-EXMBX06.dsone.3ds.com ([fe80::4501:7756:3ffd:7924%3]) with mapi id
 15.01.2375.017; Thu, 9 Dec 2021 01:08:13 +0000
From:   PODOPLELOV Andrei <Andrei.PODOPLELOV@3ds.com>
To:     Florian Weimer <fweimer@redhat.com>
CC:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
Subject: RE: [patch] --filter option in ld: srcfix
Thread-Topic: [patch] --filter option in ld: srcfix
Thread-Index: AdfhXsdHZbzLdtfhR8+/bMDhuuzVmQK+cwzgAAWvMoEAA6mqwA==
Date:   Thu, 9 Dec 2021 01:08:12 +0000
Message-ID: <11c8a3fcad954d429a9c55564f5f7064@3ds.com>
References: <64a06ee4b44648ccad3dfee1f3d1af1a@3ds.com>
 <87pmq6j1wu.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87pmq6j1wu.fsf@oldenburg.str.redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.69.10]
x-tm-snts-smtp: 2C6EE6DCD627BCC5B76ADAB8C2EB47B912EF2191B5D1D6DE9876E36BD27189882000:8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MailControl-OutInfo: MTYzOTAxMjA5ODpGUEtleTEucHJpdjpNYvtXYvfclBLmxuDuPVisXeRsy8MqlWZGQBtDoLBU4yMGWHuZ20bnUjqOFbpv6wrUyxBxbhp+3wXZCB31y6cgVFDSwCdZroXrKr1cbn8a+pqu3S0LrGD9hxaV4eqOCBSWP6Grbn3LMoqfTFURWI53fM/HKdZ+MAVNhuB3H4S5y7MyQHFezk8ZEs4+zIZzzD2S117desT5cbXiG7qGdWiJyQzhE+m5kyZgVby6TOA9Tn7XXan4MjgBDbfVx+9UcObvUcxBtBqwd45IbCxb9Rx5OV6hHToE20NxM6kREt4ihchNSQGUW584cYXS3980GvQQft8pf8IVcHkbfmKV95FW
X-Scanned-By: MailControl 44278.2116 (www.mailcontrol.com) on 160.231.203.240
X-Mailcontrol-Refers-To: 1B918GTq071817
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=3ds.com; h=from:to:cc:subject:date:message-id:references:in-reply-to:content-type:content-transfer-encoding:mime-version; s=fpkey6354-1; bh=FIDZOBaIZaKeI/ztHhFvGIAtNeUZXSG5MNFaeqPSTq8=; b=WtGc545B6/qkegRHzy4aCFvRM42a54pDHXFhsJE+PVLUVyOHELrVpm9xtwieJ6bEG0I9HLHvH1YnvaWJrCSVT/4fDHQRcG77XojD02zjCnT+rKEHwXzW96hAOIUWPYa6B9Ca8eN1mgJctQQhI9nJpehDepfpeM75GZYxhZbTOuQzapLPBVu7QEAXoe6Ua4bCzfQYLbimd0Rr0sG4poVoylvgBnC6Av0+ubnOTstv9AyybpmytkDZfTYBwqpsz+GDYki1+jh1t758dZi+ckaxGeKBqEmMsEasLvHW/6Pn42ZJseinJV2j2XxbomeuoxwVBXYzUCVHgQgGpcBh8YHxuA==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SGkgRmxvcmlhbiwNCg0KUmVzcG9uZGluZyB0byB5b3VyIGlkZWEgYWJvdXQgZmlsdGVyaW5nLi4u
DQpJIGp1c3QgY2hlY2tlZCB0aGUgZmlsdGVyaW5nLiBJdCBkb2VzIHdvcmsgYXMgZXhwZWN0ZWQs
IG1lYW5zLCBJIGNhbm5vdCBidWlsZCBtYWluLmMgdXNpbmcgc29tZSBuZXcgc3ltYm9sLCBkZWZp
bmVkIG9ubHkgaW4gZmlsdGVlLmMsIGJ1dCBub3QgaW4gZmlsdGVyLmMuIFNvIHRoZSBydW50aW1l
IHdvbid0IHVzZSB0aGUgZnVsbCBzZXQgb2YgZmlsdGVlJ3Mgc3ltYm9scywgYnV0IGp1c3QgYSBz
dWJzZXQsIGRlZmluZWQgaW4gdGhlIGZpbHRlci4NCg0KWW91IGNhbiBjaGVjayBteSBzYW1wbGUs
IGF0dGFjaGVkIHRvIHRoZSBwcmV2aW91cyBlbWFpbC4gRWFzeSB0byB1c2UuIEp1c3QgcmVuYW1l
IGJ1aWxkLnR4dCB0byBidWlsZC5zaCwgYW5kIHB1dCB0aGUgdXN1YWwgICMhL2Jpbi9iYXNoIG9u
IHRoZSB0b3AgdG8gYnVpbGQgaXQuIFRoZW4gcnVuICIuL3Byb2ciLg0KDQpJIGFtIGNvbXBsZXRl
bHkgb3BlbiB0byBjaGFuZ2UgbXkgd29yZGluZy4NCg0KVGhhbmtzLA0KQW5kcmVpDQoNCi0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBGbG9yaWFuIFdlaW1lciA8ZndlaW1lckByZWRo
YXQuY29tPg0KU2VudDogV2VkbmVzZGF5LCBEZWNlbWJlciA4LCAyMDIxIDE6MDggUE0NClRvOiBQ
T0RPUExFTE9WIEFuZHJlaSA8QW5kcmVpLlBPRE9QTEVMT1ZAM2RzLmNvbT4NCkNjOiBtdGsubWFu
cGFnZXNAZ21haWwuY29tOyBsaW51eC1tYW5Admdlci5rZXJuZWwub3JnOyBhbHgubWFucGFnZXNA
Z21haWwuY29tDQpTdWJqZWN0OiBSZTogW3BhdGNoXSAtLWZpbHRlciBvcHRpb24gaW4gbGQ6IHNy
Y2ZpeA0KDQoqIFBPRE9QTEVMT1YgQW5kcmVpOg0KDQo+IEkgYmVsaWV2ZSBpdCB3b3VsZCBiZSBi
ZW5lZmljaWFsIHRvIGNoYW5nZSBpdCB0byBzb21ldGhpbmcgbGlrZToNCj4NCj4gICAgICAgIC0t
ZmlsdGVyPW5hbWUNCj4gICAgICAgICAgICBXaGVuIGNyZWF0aW5nIGFuIEVMRiBzaGFyZWQgb2Jq
ZWN0IChhICJmaWx0ZXIiKSwgc2V0IHRoZQ0KPiAgICAgICAgICAgIGludGVybmFsIERUX0ZJTFRF
UiBmaWVsZCB0byB0aGUgc3BlY2lmaWVkIG5hbWUgLSBhbm90aGVyDQo+ICAgICAgICAgICAgRUxG
IHNoYXJlZCBvYmplY3QgKGEgImZpbHRlZSIpLiBUaGlzIHRlbGxzIHRoZSBkeW5hbWljIGxpbmtl
cg0KPiAgICAgICAgICAgIHRoYXQgdGhlIHN5bWJvbCB0YWJsZSBvZiB0aGUgImZpbHRlciIgc2hv
dWxkIGJlIHVzZWQgdG8NCj4gICAgICAgICAgICBzZWxlY3QgYSBzdWJzZXQgb2YgdGhlIHN5bWJv
bHMgcHJvdmlkZWQgYnkgdGhlICJmaWx0ZWUiLg0KPg0KPiAgICAgICAgICAgIFdoZW4geW91IGxp
bmsgYSBwcm9ncmFtIGFnYWluc3QgdGhpcyAiZmlsdGVyIiBhbmQgcnVuIGl0LA0KPiAgICAgICAg
ICAgIHRoZSBkeW5hbWljIGxpbmtlciB3aWxsIHNlZSB0aGUgRFRfRklMVEVSIGZpZWxkIGFuZCBy
ZXNvbHZlDQo+ICAgICAgICAgICAgc3ltYm9scyBhY2NvcmRpbmcgdG8gdGhlIHN5bWJvbCB0YWJs
ZSBvZiB0aGUgImZpbHRlciIgb2JqZWN0DQo+ICAgICAgICAgICAgYXMgdXN1YWwuIEhvd2V2ZXIs
IHdoZW4gYSBjZXJ0YWluIHN5bWJvbCBvZiB0aGUgImZpbHRlciIgaXMNCj4gICAgICAgICAgICBh
bHNvIHByZXNlbnQgaW4gImZpbHRlZSIsIGl0IHdpbGwgYWN0dWFsbHkgbGluayB0byB0aGUNCj4g
ICAgICAgICAgICBkZWZpbml0aW9uIGluIHRoZSAiZmlsdGVlIi4NCg0KSSB0aGluayB0aGF0J3Mg
c3RpbGwgbWlzbGVhZGluZyBiZWNhdXNlIHRvIG15IGtub3dsZWRnZSwgZ2xpYmMgZG9lcyBub3Qg
aW1wbGVtZW50IGFueSBmaWx0ZXJpbmcuICBPbmx5IHRoZSBzeW1ib2wgc2VhcmNoIG9yZGVyIGlz
IGNoYW5nZWQgKHdoYXQgeW91IGRlc2NyaWJlIGluIHRoZSBzZWNvbmQgcGFyYWdyYXBoKS4NCg0K
VGhhbmtzLA0KRmxvcmlhbg0KDQpUaGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJlIGlu
dGVuZGVkIHNvbGVseSBmb3IgdGhlIHVzZSBvZiB0aGUgaW5kaXZpZHVhbCBvciBlbnRpdHkgdG8g
d2hvbSBpdCBpcyBhZGRyZXNzZWQgYW5kIG1heSBiZSBjb25maWRlbnRpYWwgYW5kL29yIHByaXZp
bGVnZWQuDQoNCklmIHlvdSBhcmUgbm90IG9uZSBvZiB0aGUgbmFtZWQgcmVjaXBpZW50cyBvciBo
YXZlIHJlY2VpdmVkIHRoaXMgZW1haWwgaW4gZXJyb3IsDQoNCihpKSB5b3Ugc2hvdWxkIG5vdCBy
ZWFkLCBkaXNjbG9zZSwgb3IgY29weSBpdCwNCg0KKGlpKSBwbGVhc2Ugbm90aWZ5IHNlbmRlciBv
ZiB5b3VyIHJlY2VpcHQgYnkgcmVwbHkgZW1haWwgYW5kIGRlbGV0ZSB0aGlzIGVtYWlsIGFuZCBh
bGwgYXR0YWNobWVudHMsDQoNCihpaWkpIERhc3NhdWx0IFN5c3TDqG1lcyBkb2VzIG5vdCBhY2Nl
cHQgb3IgYXNzdW1lIGFueSBsaWFiaWxpdHkgb3IgcmVzcG9uc2liaWxpdHkgZm9yIGFueSB1c2Ug
b2Ygb3IgcmVsaWFuY2Ugb24gdGhpcyBlbWFpbC4NCg0KDQpQbGVhc2UgYmUgaW5mb3JtZWQgdGhh
dCB5b3VyIHBlcnNvbmFsIGRhdGEgYXJlIHByb2Nlc3NlZCBhY2NvcmRpbmcgdG8gb3VyIGRhdGEg
cHJpdmFjeSBwb2xpY3kgYXMgZGVzY3JpYmVkIG9uIG91ciB3ZWJzaXRlLiBTaG91bGQgeW91IGhh
dmUgYW55IHF1ZXN0aW9ucyByZWxhdGVkIHRvIHBlcnNvbmFsIGRhdGEgcHJvdGVjdGlvbiwgcGxl
YXNlIGNvbnRhY3QgM0RTIERhdGEgUHJvdGVjdGlvbiBPZmZpY2VyIGF0IDNEUy5jb21wbGlhbmNl
LXByaXZhY3lAM2RzLmNvbTxtYWlsdG86M0RTLmNvbXBsaWFuY2UtcHJpdmFjeUAzZHMuY29tPg0K
DQoNCkZvciBvdGhlciBsYW5ndWFnZXMsIGdvIHRvIGh0dHBzOi8vd3d3LjNkcy5jb20vdGVybXMv
ZW1haWwtZGlzY2xhaW1lcg0K
