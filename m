Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 623D89D8AA
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 23:48:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727124AbfHZVsZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 17:48:25 -0400
Received: from esa2.microchip.iphmx.com ([68.232.149.84]:35515 "EHLO
        esa2.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727009AbfHZVsZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 17:48:25 -0400
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
  Don.Brace@microchip.com designates 198.175.253.82 as
  permitted sender) identity=mailfrom;
  client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
  envelope-from="Don.Brace@microchip.com";
  x-sender="Don.Brace@microchip.com"; x-conformance=spf_only;
  x-record-type="v=spf1"; x-record-text="v=spf1 mx
  a:ushub1.microchip.com a:smtpout.microchip.com
  a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
  include:servers.mcsv.net include:mktomail.com
  include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@email.microchip.com) identity=helo;
  client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
  envelope-from="Don.Brace@microchip.com";
  x-sender="postmaster@email.microchip.com";
  x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com; spf=Pass smtp.mailfrom=Don.Brace@microchip.com; spf=None smtp.helo=postmaster@email.microchip.com; dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com; dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: abg0A2jRfAIAfjoNEChUkwVh7+65Um5CkiZJvukC4Jw1y1K+N7pNmFz62g7XFdiO9Jr+WFF1de
 9tYr4LFEVy23vb6oTNInqSVHQrvBP7oKenUdSA3jp9uBwOCnXeY/zj3F8KxKtvgNNpRMJ5lCZy
 w3+b/BqrNghWF/p3+KrlTj1TeOvkvBQQ2y+5Y8Yg/mHxh8u4fT50am5LhCzVQblxN9rpZJs1NK
 Jk4TJbKs2S/xvrPmpG22NnsQlwIYbRwykDALoQQjK9Hz7hkwSCU53DqkC4hBwqdzKP0IKXkN4V
 VbY=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; 
   d="scan'208";a="46587850"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Aug 2019 14:48:23 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 14:48:17 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 14:48:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JhTXKnjyja29sLY4P7a+U+aaStRGLqxx2Zp2Hretg0f0KESMIkD2RIsSKB1nOzfvGLUVNv3nAjW3nrz6QF65tEjflHQHC9nJJ1cM1nZBI9dmThedIUu6tFNydimwjuerFTFUSFFDCaO36UmikGY7Z2gP3DASSPutYjDpqkJgx/HyEieXq1JVlvE/ZFgVrrX2WWu2t/iBaqJ1XTRqu4JHWmkt/F+d0P+vuQUJeuWSLrPaW0UuMGtNYcQ7rEUFJ1OScdj0WJ/v4dYpsXL/eH4/g4/0ZF+2vYIpc/VwwheebdViMbphv/1iCrJv7GhfzbF7XEKFvxrPfaEDraPzaaf6zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jc3o+OXwSUDOHZw3xiK1r7ACTclpMbtJ37rCaiMgHGE=;
 b=W44ycKkFLVmm+S39cf21voza1IibHWHmxKH3G0/ZtccGHAxcPtx99gw5FxIuRIJfWZUsPVee0pqp53Wvui4fSAvlFLNWLExAc7aPHlkVydmA6zgOnnnMEGMyXQ5ptYxS6Wl4ATN2JoW1H+yKVPQEkmDdaf2ll8jzrxrxWQwOWXxcJ0jMq/2U+g2NCWecBWPFv015SWWhj8BO3L6owixvLGyvVBe8jkM9R7nY27TDfJA8fEbR3Sx/r/mDgcBAtWC3u34isOsUcxF3ma8brhgJ5sWIdaT0WxKnF1Q5mTB1f8+rs1JywdPsDni90GAQWgRITnSnwjhCbBXkf+txFT/rJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jc3o+OXwSUDOHZw3xiK1r7ACTclpMbtJ37rCaiMgHGE=;
 b=JPQVuZdLb4dAl/K1tsEiF7FaFaL4mwPIQLNX4NRtjUP0Npm0CcybJ8Iy6wNtZhsq5ECJ3dES5UPk9r6ZyFfZ7J0dyRCKlaDrRLffny1cIEEUi+gNUDK0BPydI2o4Q3UbajrvixVEyLcaLXg8cajOk+VaunAAkp0QH14x4qN4Luk=
Received: from SN6PR11MB2767.namprd11.prod.outlook.com (52.135.92.154) by
 SN6PR11MB3360.namprd11.prod.outlook.com (52.135.110.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 21:47:52 +0000
Received: from SN6PR11MB2767.namprd11.prod.outlook.com
 ([fe80::b987:8943:b50f:d333]) by SN6PR11MB2767.namprd11.prod.outlook.com
 ([fe80::b987:8943:b50f:d333%6]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 21:47:52 +0000
From:   <Don.Brace@microchip.com>
To:     <mtk.manpages@gmail.com>, <don.brace@microsemi.com>
CC:     <linux-man@vger.kernel.org>, <Kevin.Barnett@microchip.com>,
        <Scott.Teel@microchip.com>, <Justin.Lindley@microchip.com>,
        <Scott.Benesh@microchip.com>, <bader.alisaleh@microchip.com>,
        <Gerry.Morong@microchip.com>, <Mahesh.Rajashekhara@microchip.com>,
        <gilbert.wu@microsemi.com>
Subject: RE: [PATCH V3 3/5] smartpqi: add module param expose ld first
Thread-Topic: [PATCH V3 3/5] smartpqi: add module param expose ld first
Thread-Index: AQHVXCTa5wH+CJX7fk6eXibx2Wylq6cN9vqAgAAAQfA=
Date:   Mon, 26 Aug 2019 21:47:51 +0000
Message-ID: <SN6PR11MB2767626EA06CFCE93224AE3CE1A10@SN6PR11MB2767.namprd11.prod.outlook.com>
References: <156683390892.32298.878243674084910282.stgit@brunhilda>
 <156683409930.32298.9345147165757445811.stgit@brunhilda>
 <e1624e83-8c7d-49e6-2a10-a57f2511d729@gmail.com>
In-Reply-To: <e1624e83-8c7d-49e6-2a10-a57f2511d729@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [216.54.225.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d8d30568-198d-418d-b29e-08d72a6f0bf7
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:SN6PR11MB3360;
x-ms-traffictypediagnostic: SN6PR11MB3360:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3360206561A6491ADFCFD664E1A10@SN6PR11MB3360.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(366004)(39860400002)(346002)(376002)(136003)(13464003)(199004)(189003)(53376002)(6246003)(305945005)(53936002)(76176011)(7736002)(14444005)(66446008)(64756008)(66556008)(66946007)(66476007)(52536014)(6306002)(5660300002)(66066001)(9686003)(6436002)(446003)(55016002)(25786009)(256004)(476003)(11346002)(26005)(8676002)(102836004)(74316002)(2906002)(6506007)(53546011)(81156014)(99286004)(81166006)(7696005)(8936002)(110136005)(71200400001)(71190400001)(86362001)(966005)(3846002)(229853002)(6116002)(186003)(33656002)(76116006)(486006)(4326008)(54906003)(316002)(478600001)(14454004);DIR:OUT;SFP:1101;SCL:1;SRVR:SN6PR11MB3360;H:SN6PR11MB2767.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 09CCRr9mSrELSjVK0sG7Ub1cDaowX+4S3gGDI8paZ0ZwZxObYwbtitHkBcEHse1jGZ8kJQfvI3aLYrnBgWTozz0UpNSCrmbSgw8KsQhIMuEd9Y3zRd/2t8f+XZBLot3r+IWxGx3iqPnMnxui9tMl4es5oDCjy/PyRHTXWzpAeAeLwNpftQgsUHL9FhSVJRE5sgsYGw9XjNe9dJCkQy4PN3JUu6JzEVCmeSBfZDOMbqhnXb8cyYb65Lsjc5CKvKXxzLQFxgA9yMRjCCfj4svmq+HIt9cV4FgtlNFU2rpQZq4VRT3jfuGTPj6/hRYnfCQ6gLq6RJaZr5Rsw8zMZFjhKsGzfOPg8Hjspeh2DrRm4Vvu/w/h1J4M0hoJx3Omt9McZ4Ih0DjMu3ZbVrmvBWkUwDc7Tzl/8MCoUtgu/DPsiRA=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d8d30568-198d-418d-b29e-08d72a6f0bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 21:47:51.9967
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RKjNG6/StyqkwA1hD4dW1nBIj6RfgF1ptUKLqRUxgFZMCli+Hi2tQvyfKZdsMGj6kixa+AbqkFUlMImU/JKLPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3360
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE1pY2hhZWwgS2VycmlzayAobWFuLXBh
Z2VzKSBbbWFpbHRvOm10ay5tYW5wYWdlc0BnbWFpbC5jb21dIA0KU2VudDogTW9uZGF5LCBBdWd1
c3QgMjYsIDIwMTkgNDo0NiBQTQ0KVG86IERvbiBCcmFjZSA8ZG9uLmJyYWNlQG1pY3Jvc2VtaS5j
b20+DQpDYzogbXRrLm1hbnBhZ2VzQGdtYWlsLmNvbTsgbGludXgtbWFuQHZnZXIua2VybmVsLm9y
ZzsgS2V2aW4gQmFybmV0dCAtIEMzMzc0OCA8S2V2aW4uQmFybmV0dEBtaWNyb2NoaXAuY29tPjsg
U2NvdHQgVGVlbCAtIEMzMzczMCA8U2NvdHQuVGVlbEBtaWNyb2NoaXAuY29tPjsgSnVzdGluIExp
bmRsZXkgLSBDMzM3MTggPEp1c3Rpbi5MaW5kbGV5QG1pY3JvY2hpcC5jb20+OyBTY290dCBCZW5l
c2ggLSBDMzM3MDMgPFNjb3R0LkJlbmVzaEBtaWNyb2NoaXAuY29tPjsgYmFkZXIuYWxpc2FsZWhA
bWljcm9jaGlwLmNvbTsgR2VycnkgTW9yb25nIC0gQzMzNzIwIDxHZXJyeS5Nb3JvbmdAbWljcm9j
aGlwLmNvbT47IE1haGVzaCBSYWphc2hla2hhcmEgLSBJMzA1ODMgPE1haGVzaC5SYWphc2hla2hh
cmFAbWljcm9jaGlwLmNvbT47IEdpbGJlcnQgV3UgPGdpbGJlcnQud3VAbWljcm9zZW1pLmNvbT4N
ClN1YmplY3Q6IFJlOiBbUEFUQ0ggVjMgMy81XSBzbWFydHBxaTogYWRkIG1vZHVsZSBwYXJhbSBl
eHBvc2UgbGQgZmlyc3QNCg0KRXh0ZXJuYWwgRS1NYWlsDQoNCg0KSGVsbG8gRG9uDQoNClBhdGNo
IGFwcGxpZWQuIEJ1dCBhIHF1ZXN0aW9uIGJlbG93Lg0KDQpPbiA4LzI2LzE5IDU6NDEgUE0sIERv
biBCcmFjZSB3cm90ZToNCj4gRnJvbTogR2lsYmVydCBXdSA8Z2lsYmVydC53dUBtaWNyb3NlbWku
Y29tPg0KPiANCj4gUmV2aWV3ZWQtYnk6IE1hdHQgUGVycmljb25lIDxtYXR0LnBlcnJpY29uZUBt
aWNyb3NlbWkuY29tPg0KPiBSZXZpZXdlZC1ieTogU2NvdHQgQmVuZXNoIDxzY290dC5iZW5lc2hA
bWljcm9zZW1pLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEtldmluIEJhcm5ldHQgPGtldmluLmJhcm5l
dHRAbWljcm9zZW1pLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogR2lsYmVydCBXdSA8Z2lsYmVydC53
dUBtaWNyb3NlbWkuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBEb24gQnJhY2UgPGRvbi5icmFjZUBt
aWNyb3NlbWkuY29tPg0KPiAtLS0NCj4gIG1hbjQvc21hcnRwcWkuNCB8ICAgIDUgKysrKysNCj4g
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW40
L3NtYXJ0cHFpLjQgYi9tYW40L3NtYXJ0cHFpLjQgaW5kZXggDQo+IGRjOWVmMTAyMC4uNTM4OWI4
NDUzIDEwMDY0NA0KPiAtLS0gYS9tYW40L3NtYXJ0cHFpLjQNCj4gKysrIGIvbWFuNC9zbWFydHBx
aS40DQo+IEBAIC0xNSw2ICsxNSw3IEBAIHNtYXJ0cHFpIFwtIE1pY3Jvc2VtaSBTbWFydCBGYW1p
bHkgU0NTSSBkcml2ZXIgIC5SQiANCj4gWyBkaXNhYmxlX2hlYXJ0YmVhdD0geyAwIHwgMSB9XSAg
LlJCIFsgZGlzYWJsZV9jdHJsX3NodXRkb3duPSB7IDAgfCAxIA0KPiB9XSAgLlJCIFsgbG9ja3Vw
X2FjdGlvbj0geyBub25lIHwgcmVib290IHwgcGFuaWMgfV0NCj4gKy5SQiBbIGV4cG9zZV9sZF9m
aXJzdD0geyAwIHwgMSB9XQ0KPiAgLllTDQo+ICAuU0ggREVTQ1JJUFRJT04NCj4gIC5CIHNtYXJ0
cHFpDQo+IEBAIC05MSw2ICs5MiwxMCBAQCBwYXJhbWV0ZXIJYWN0aW9uDQo+ICBcZkJyZWJvb3Rc
ZlAJcmVib290IHRoZSBzeXN0ZW0NCj4gIFxmQnBhbmljXGZQCXBhbmljIHRoZSBzeXN0ZW0NCj4g
IC5URQ0KPiArLlRQDQo+ICsuQlIgZXhwb3NlX2xkX2ZpcnN0PSB7IDAgfCAxIH0NCj4gK1RoaXMg
b3B0aW9uIGVuYWJsZXMgc3VwcG9ydCBmb3IgZXhwb3NpbmcgbG9naWNhbCBkZXZpY2VzIHRvIE9T
IGJlZm9yZSBwaHlzaWNhbCBkZXZpY2VzLg0KDQpTaG91bGQgIk9TJyBpbnN0ZWFkIGJlICJ0aGUg
b3BlcmF0aW5nIHN5c3RlbSI/DQoNCiJUaGUgb3BlcmF0aW5nIHN5c3RlbSIgc291bmRzIGJldHRl
ci4NClRoYW5rcywNCkRvbiBCcmFjZQ0KDQo+ICtUaGUgZGVmYXVsdCB2YWx1ZSBpcyAwLg0KPiAg
LlNIIEZJTEVTDQo+ICAuU1MgRGV2aWNlIG5vZGVzDQo+ICBMb2dpY2FsIGRyaXZlcyBhcmUgYWNj
ZXNzZWQgdmlhIHRoZSBTQ1NJIGRpc2sgZHJpdmVyDQoNClRoYW5rcywNCg0KTWljaGFlbA0KDQoN
Cg0KLS0NCk1pY2hhZWwgS2Vycmlzaw0KTGludXggbWFuLXBhZ2VzIG1haW50YWluZXI7IGh0dHA6
Ly93d3cua2VybmVsLm9yZy9kb2MvbWFuLXBhZ2VzLw0KTGludXgvVU5JWCBTeXN0ZW0gUHJvZ3Jh
bW1pbmcgVHJhaW5pbmc6IGh0dHA6Ly9tYW43Lm9yZy90cmFpbmluZy8NCg==
