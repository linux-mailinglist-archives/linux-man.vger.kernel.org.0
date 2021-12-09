Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D95246ED1C
	for <lists+linux-man@lfdr.de>; Thu,  9 Dec 2021 17:33:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236983AbhLIQgj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Dec 2021 11:36:39 -0500
Received: from cluster-j.mailcontrol.com ([85.115.54.190]:50880 "EHLO
        cluster-j.mailcontrol.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236840AbhLIQgi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Dec 2021 11:36:38 -0500
Received: (from mailcontrol@localhost)
        by rly11j.srv.mailcontrol.com (MailControl) with ESMTP id 1B9GWwqi163240;
        Thu, 9 Dec 2021 16:32:58 GMT
Received: from rly11j.srv.mailcontrol.com (localhost [127.0.0.1])
        by localhost (envelope-sender Andrei.PODOPLELOV@3ds.com) (MIMEDefang) with ESMTP id 1B9GWtRF162702
        (TLS bits=256 verify=OK); Thu, 09 Dec 2021 16:32:58 +0000 (GMT)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
        by rly11j.srv.mailcontrol.com (MailControl) id 1B9GWtxS162687;
        Thu, 9 Dec 2021 16:32:55 GMT
Received: from 3ds-ag-las-smtp-out.3ds.com ([160.231.203.240])
        by rly11j-eth0.srv.mailcontrol.com (envelope-sender <Andrei.PODOPLELOV@3ds.com>) (MIMEDefang) with ESMTP id 1B9GWrL0162377
        (TLS bits=256 verify=OK); Thu, 09 Dec 2021 16:32:55 +0000 (GMT)
Received: from AG-LAS-EXMBX06.dsone.3ds.com (10.106.33.156) by
 AG-LAS-EXMBX05.dsone.3ds.com (10.106.33.155) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 9 Dec 2021 16:32:51 +0000
Received: from AG-LAS-EXMBX06.dsone.3ds.com ([fe80::4501:7756:3ffd:7924]) by
 AG-LAS-EXMBX06.dsone.3ds.com ([fe80::4501:7756:3ffd:7924%3]) with mapi id
 15.01.2375.017; Thu, 9 Dec 2021 16:32:51 +0000
From:   PODOPLELOV Andrei <Andrei.PODOPLELOV@3ds.com>
To:     Florian Weimer <fweimer@redhat.com>
CC:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
Subject: RE: [patch] --filter option in ld: srcfix
Thread-Topic: [patch] --filter option in ld: srcfix
Thread-Index: AdfhXsdHZbzLdtfhR8+/bMDhuuzVmQK+cwzgAAWvMoEAA6mqwAAlIdDEAAGZIpA=
Date:   Thu, 9 Dec 2021 16:32:51 +0000
Message-ID: <0dba52f9f5d84167a1e25747393bc91f@3ds.com>
References: <64a06ee4b44648ccad3dfee1f3d1af1a@3ds.com>
        <87pmq6j1wu.fsf@oldenburg.str.redhat.com>
        <11c8a3fcad954d429a9c55564f5f7064@3ds.com>
 <87fsr1g59f.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87fsr1g59f.fsf@oldenburg.str.redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.203.97.158]
x-tm-snts-smtp: 9C36DCF2150D27960592CE9C000A7C845B5C69CE58C0F11548AC875614B909512000:8
Content-Type: multipart/mixed;
        boundary="_002_0dba52f9f5d84167a1e25747393bc91f3dscom_"
MIME-Version: 1.0
X-MailControl-OutInfo: MTYzOTA2NzU3NzpGUEtleTEucHJpdjo5t8I5M5mqo8DAp9eHxrkRYONzgAufaKCEcjDd+rQwRRxFIn5cGszKl3A1GjpeyDeyGT6G+b40QPW1jf3cxK9MfxAjOahvoeEvbzi/MW0Tsp5sy99+o7yBIeGqKEViqBDqzkLuN7aE8KLs8q0tTFfKOYnFiTO1dhgGC7fU/U8xw3tlmb8oVbbKdpHdF/fzHHx2xCQmXk6iqaNl+cTwtUKwcrmka3CeTNlcZZDmtbPRmFODn25qm+VNW9Wn14YEgA1eO1170+2xw7ftSvEJg9DFr506xiwlQqY/l22A211Bed/wGgle65dPTwocd3cj7LsrCkHy4ictnQ4TdX/hlWIQ
X-Scanned-By: MailControl 44278.2116 (www.mailcontrol.com) on 160.231.203.240
X-Mailcontrol-Refers-To: 1B9GWtRF162702
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=3ds.com; h=from:to:cc:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=fpkey6354-1; bh=7DnwaiO32zjKwmzoJZtQgGkBPtcos85zMhqzyenyfJM=; b=deNMhsQYIK3rzbMkJlIEFGFJNiIw/17gk3sKvgnOw+6p7/gA1XnVk2DOOEB1MwoZJqd+CtbBJT7lSNMoLt72CSEnAlS47E2yESCEFcimGWIriPtv46J/9p5A3H2gJtRpyCGZaWCYvcsk6h4IRTsIsMJNl7JI9nPwGabyN+lEkA+AQOUKsqapfhJVjFvgjY2Ydg6LWcYTZKE8szIjBisvsVH62zKbsZOhdAcChgrRKEISc9HCKFwQ/WaUv4nnIui6Dqiu7Ufj0UaMqM/+W27na+ybs+CumGaPzIVsfy3ey/1yi4Ps3PCCmAy/du/yX90vnB8I74s7swGszdilKOuJ9Q==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--_002_0dba52f9f5d84167a1e25747393bc91f3dscom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRmxvcmlhbiwNCg0KWWVzLCBJIGNhbiBidWlsZCB0aGUgZXhlY3V0YWJsZSB3aXRoIHRoZSBz
dWdnZXN0ZWQgb3B0aW9uLiBIb3dldmVyLCB3aGVuIEkgcnVuIGl0LCBJIGdldCBTRUdGQVVMVC4g
VGhhdCdzIGV4YWN0bHkgd2hhdCBzaG91bGQgaGFwcGVuIGFjY29yZGluZyB0byB0aGUgZG9jcy4N
Cg0KU2VlIGF0dGFjaGVkIHNhbXBsZS4gSSBoYWQgdG8gcmVuYW1lIGJ1aWxkLnNoIGFuZCByZW1v
dmUgIyEvYmluL2Jhc2ggZnJvbSB0aGUgdG9wIGR1ZSB0byB0aGUgY29ycG9yYXRlIGVtYWlsIHJl
c3RyaWN0aW9ucy4NCg0KTXkgcHJvcG9zYWwgZG9lcyBub3QgY2hhbmdlIHRoZSBtZWFuaW5nLCBi
dXQgbWFrZXMgaXQgbW9yZSBjbGVhci4NCg0KVGhhbmtzLA0KQW5kcmVpDQoNCi0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBGbG9yaWFuIFdlaW1lciA8ZndlaW1lckByZWRoYXQuY29t
Pg0KU2VudDogVGh1cnNkYXksIERlY2VtYmVyIDksIDIwMjEgODozNiBBTQ0KVG86IFBPRE9QTEVM
T1YgQW5kcmVpIDxBbmRyZWkuUE9ET1BMRUxPVkAzZHMuY29tPg0KQ2M6IG10ay5tYW5wYWdlc0Bn
bWFpbC5jb207IGxpbnV4LW1hbkB2Z2VyLmtlcm5lbC5vcmc7IGFseC5tYW5wYWdlc0BnbWFpbC5j
b20NClN1YmplY3Q6IFJlOiBbcGF0Y2hdIC0tZmlsdGVyIG9wdGlvbiBpbiBsZDogc3JjZml4DQoN
CiogUE9ET1BMRUxPViBBbmRyZWk6DQoNCj4gSGkgRmxvcmlhbiwNCj4NCj4gUmVzcG9uZGluZyB0
byB5b3VyIGlkZWEgYWJvdXQgZmlsdGVyaW5nLi4uDQoNCj4gSSBqdXN0IGNoZWNrZWQgdGhlIGZp
bHRlcmluZy4gSXQgZG9lcyB3b3JrIGFzIGV4cGVjdGVkLCBtZWFucywgSQ0KPiBjYW5ub3QgYnVp
bGQgbWFpbi5jIHVzaW5nIHNvbWUgbmV3IHN5bWJvbCwgZGVmaW5lZCBvbmx5IGluIGZpbHRlZS5j
LA0KPiBidXQgbm90IGluIGZpbHRlci5jLiBTbyB0aGUgcnVudGltZSB3b24ndCB1c2UgdGhlIGZ1
bGwgc2V0IG9mIGZpbHRlZSdzDQo+IHN5bWJvbHMsIGJ1dCBqdXN0IGEgc3Vic2V0LCBkZWZpbmVk
IGluIHRoZSBmaWx0ZXIuDQoNCkxvb2tzIGxpa2UgbGQgKHRoZSBsaW5rIGVkaXRvcikgaGFzIGZp
bHRlcmluZywNCg0KVHJ5IGxpbmtpbmcgd2l0aCAtV2wsLXosdW5kZWZzLCBJIGV4cGVjdCB5b3Ug
d2lsbCBzZWUgdGhhdCB0aGUgc3ltYm9sIGlzIGF2YWlsYWJsZSBhdCBydW4gdGltZS4NCg0KVGhh
bmtzLA0KRmxvcmlhbg0KDQpUaGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJlIGludGVu
ZGVkIHNvbGVseSBmb3IgdGhlIHVzZSBvZiB0aGUgaW5kaXZpZHVhbCBvciBlbnRpdHkgdG8gd2hv
bSBpdCBpcyBhZGRyZXNzZWQgYW5kIG1heSBiZSBjb25maWRlbnRpYWwgYW5kL29yIHByaXZpbGVn
ZWQuDQoNCklmIHlvdSBhcmUgbm90IG9uZSBvZiB0aGUgbmFtZWQgcmVjaXBpZW50cyBvciBoYXZl
IHJlY2VpdmVkIHRoaXMgZW1haWwgaW4gZXJyb3IsDQoNCihpKSB5b3Ugc2hvdWxkIG5vdCByZWFk
LCBkaXNjbG9zZSwgb3IgY29weSBpdCwNCg0KKGlpKSBwbGVhc2Ugbm90aWZ5IHNlbmRlciBvZiB5
b3VyIHJlY2VpcHQgYnkgcmVwbHkgZW1haWwgYW5kIGRlbGV0ZSB0aGlzIGVtYWlsIGFuZCBhbGwg
YXR0YWNobWVudHMsDQoNCihpaWkpIERhc3NhdWx0IFN5c3TDqG1lcyBkb2VzIG5vdCBhY2NlcHQg
b3IgYXNzdW1lIGFueSBsaWFiaWxpdHkgb3IgcmVzcG9uc2liaWxpdHkgZm9yIGFueSB1c2Ugb2Yg
b3IgcmVsaWFuY2Ugb24gdGhpcyBlbWFpbC4NCg0KDQpQbGVhc2UgYmUgaW5mb3JtZWQgdGhhdCB5
b3VyIHBlcnNvbmFsIGRhdGEgYXJlIHByb2Nlc3NlZCBhY2NvcmRpbmcgdG8gb3VyIGRhdGEgcHJp
dmFjeSBwb2xpY3kgYXMgZGVzY3JpYmVkIG9uIG91ciB3ZWJzaXRlLiBTaG91bGQgeW91IGhhdmUg
YW55IHF1ZXN0aW9ucyByZWxhdGVkIHRvIHBlcnNvbmFsIGRhdGEgcHJvdGVjdGlvbiwgcGxlYXNl
IGNvbnRhY3QgM0RTIERhdGEgUHJvdGVjdGlvbiBPZmZpY2VyIGF0IDNEUy5jb21wbGlhbmNlLXBy
aXZhY3lAM2RzLmNvbTxtYWlsdG86M0RTLmNvbXBsaWFuY2UtcHJpdmFjeUAzZHMuY29tPg0KDQoN
CkZvciBvdGhlciBsYW5ndWFnZXMsIGdvIHRvIGh0dHBzOi8vd3d3LjNkcy5jb20vdGVybXMvZW1h
aWwtZGlzY2xhaW1lcg0K

--_002_0dba52f9f5d84167a1e25747393bc91f3dscom_
Content-Type: application/x-zip-compressed; name="ld --filter option.zip"
Content-Description: ld --filter option.zip
Content-Disposition: attachment; filename="ld --filter option.zip"; size=1032;
	creation-date="Thu, 09 Dec 2021 16:21:18 GMT";
	modification-date="Thu, 09 Dec 2021 16:21:18 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAAIAGxKiVOn3G2ZdAAAAOcAAAAcAAAAbGQgLS1maWx0ZXIgb3B0aW9uL2J1aWxkLnR4
dOPiSk9OVtDNV8jJTHLLzClJTdUrzlfQLc5ILEpNUdBNC/B0VkiDiCdzoastwlQLUVykl6wQw6UA
BLoROZl52alFCrpFBYklGbZ6GOK6EB22yA6A21RQlJ+ukJuYmQc0EMVWICBgQXiOjm6VTmleSmpa
MRcAUEsDBBQAAAAIAEhHiVNd3PNJfQAAAMgAAAAbAAAAbGQgLS1maWx0ZXIgb3B0aW9uL2ZpbHRl
ZS5jdcxBCsIwFATQfU4xdFMVaQ9QPIDHsMmEfkh+IE2pIN7dELsT/2I28+aPI+4eZSGUz4IgSsgK
m2KkFrpr6xy9qBRJCp9ThJdQmAeLXULATGwr3WDs8si4zDVu6NqGDqLom2ffTQdR7r/qi6o5kE/p
dDYvg3qZZcv67+l7Mh9QSwMEFAAAAAgAyEmJU4my/DJfAAAAbgAAABsAAABsZCAtLWZpbHRlciBv
cHRpb24vZmlsdGVyLmNTzsxLzilNSVWwKS5JSUlN08uw4+JKzkgsUtBKAhK2Cn6hPj7WXPr6Cn75
JalWCnmp5SDxzGKFvPwSBaCGzLzUFIWM1KJUmLa0/HwNTa5qLgUgKEotKS3Kg5pRa80FAFBLAwQU
AAAACAC3SYlTMvJnMZwAAADjAAAAGQAAAGxkIC0tZmlsdGVyIG9wdGlvbi9tYWluLmNVTs0OgjAM
vu8pvmBMgAy5g/EtjBcvkw1ZnJ3ZhhiN726ReLCHpu3315Wlzo3aYBuTtn4z7IQwj2QCoRtUQHlS
QaLsvc+L9h8hMzHYCnH3VuOqLOWFeAlw3YKl1OcZy2Aj1rEBU5fxSJnE10/OR3adFXWNfbR0RnVw
snrKkbTpI5RzfopIgwFxOJwlM7cLU/+Slmean/+ysve7FR9QSwECFAAUAAAACABsSolTp9xtmXQA
AADnAAAAHAAAAAAAAAABACAAAAAAAAAAbGQgLS1maWx0ZXIgb3B0aW9uL2J1aWxkLnR4dFBLAQIU
ABQAAAAIAEhHiVNd3PNJfQAAAMgAAAAbAAAAAAAAAAEAIAAAAK4AAABsZCAtLWZpbHRlciBvcHRp
b24vZmlsdGVlLmNQSwECFAAUAAAACADISYlTibL8Ml8AAABuAAAAGwAAAAAAAAABACAAAABkAQAA
bGQgLS1maWx0ZXIgb3B0aW9uL2ZpbHRlci5jUEsBAhQAFAAAAAgAt0mJUzLyZzGcAAAA4wAAABkA
AAAAAAAAAQAgAAAA/AEAAGxkIC0tZmlsdGVyIG9wdGlvbi9tYWluLmNQSwUGAAAAAAQABAAjAQAA
zwIAAAAA

--_002_0dba52f9f5d84167a1e25747393bc91f3dscom_--
