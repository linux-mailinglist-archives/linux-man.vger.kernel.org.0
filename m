Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5401443F5E
	for <lists+linux-man@lfdr.de>; Wed,  3 Nov 2021 10:26:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231278AbhKCJ3B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 05:29:01 -0400
Received: from esa18.fujitsucc.c3s2.iphmx.com ([216.71.158.38]:25183 "EHLO
        esa18.fujitsucc.c3s2.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231904AbhKCJ3A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Nov 2021 05:29:00 -0400
X-Greylist: delayed 434 seconds by postgrey-1.27 at vger.kernel.org; Wed, 03 Nov 2021 05:29:00 EDT
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1635931585; x=1667467585;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=CxWsUMDs1PTrf0xCX6PkBeQI8e3KLZKllvrZdjnPXGQ=;
  b=mmFmLyJWBZ+UE0CtW/enxTlFB6z8d7GXdUkFY+NS2v8wwFDPx9VeYoQ2
   LiSePMms4hV1HeaAsB5o9W0js1IbDFNK3uxdmHI+UnVwA9od+zdWAU+0c
   4TqPTvvM6MXmdEL2xLYlLjZBM7LDiVj366NN+349ledmQPOfRUHvgAyxm
   K4ZMHI2g3TNvZ9OejWgGEaJVgxZ9fdlU1bfVJSPKGx9fqnYn7mp/R4EQ+
   lmpX/bhag+DLnDy0khMQygY3yS3XXfdu9dq//RrA0XqjCUcN4icQjLWKF
   zqnKH5vpyYQi+KHgArrxA98S5R7m2vn8NqpoC+IcekziCyn0CmT+Ghbsv
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="43535335"
X-IronPort-AV: E=Sophos;i="5.87,205,1631545200"; 
   d="scan'208";a="43535335"
Received: from mail-os2jpn01lp2050.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.50])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2021 18:19:09 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mThg1kjydVqPsjGRPwTJC8Mm2W6/j8Gt9DMqmrnszeK7RriOjN+g7Fos0xIGq3nZ1Ipy5F3MFYY8cU1OAN2fSCIgD5tNn0rzJHly+9N9lUevPxOZxuul0BqoIseQnog9WExERsOZ/Bzsvsqw7a/lKDZiJ15wPAcgh27GvnWlI4i2uFHGHVBPLrasWheBGsZjQ5p4XEoAj8JUv7ZzhciWnNbLj0o+5sBLrmaa/SIqaAUHiS29/5T21hM3TY9fPyNoHHS6jZtu9mTCGzGXF7dpMg44nDG6GH0m6fLjvYuQMZGrkbKLEr1qk/gZwG6ZDJfGEaGeQ6vk64Hh1u1dXex4WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CxWsUMDs1PTrf0xCX6PkBeQI8e3KLZKllvrZdjnPXGQ=;
 b=F+bVG3Z+EfKMIJAC/Zqxrbo6V5gMbDcVed4rJlIst2hilzVk+Jf/01FdS24NGdHi71Z7JkF6rZYrXSx9ThSMujXK6beVpWKEaUzUkCeYV3YZJBYdGEExV+XWmjSS0CgKb/rqyiy/VnPIJhqpTSO/kphXDBQG/RHe37tNokTiRq1exENPD0Jd5+ZS5wOvVnwtqFzW25kUHsAlHPrVhCMKN3pq4qi+O+niW1mJtpWE9D2wEBtevT/JkbOsWJoN8jQy2hrWHyi3baSEjhNUWi9wpwdglcuNhLkq3sbJo8toJFtHde7MzBwjCgxSnVmeOEXvDmMG1jY87I5unwEngzp5wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CxWsUMDs1PTrf0xCX6PkBeQI8e3KLZKllvrZdjnPXGQ=;
 b=WXlTEuzK1Of+Y68Suycxa0EbCkcuDeq20MyUYaSvLD6LwtnMbGpMpXG3L0ArQluRBnYx3IG72E1qu1RhJS406CSVlFbdkfjA7ByNMt74fOiMw7MIzpq6KhDJY/HJClK+iX4ydl/MehyfQF+BSsjzo2QFUi/d9Y/3jG9A4E3pFgk=
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com (2603:1096:400:98::6)
 by TYXPR01MB1517.jpnprd01.prod.outlook.com (2603:1096:403:e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Wed, 3 Nov
 2021 09:19:06 +0000
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9]) by TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9%7]) with mapi id 15.20.4649.020; Wed, 3 Nov 2021
 09:19:06 +0000
From:   "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
To:     "Alejandro Colomar (mailing lists; readonly)" 
        <alx.mailinglists@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Topic: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Index: AQHXxVROpR5fexAzmEGKVloBqdrEKKvuGTkAgAOD44A=
Date:   Wed, 3 Nov 2021 09:19:06 +0000
Message-ID: <61825419.1080502@fujitsu.com>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com>
In-Reply-To: <617F6138.5040601@fujitsu.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5bbe2e7e-d906-4aaa-812e-08d99eaafc3b
x-ms-traffictypediagnostic: TYXPR01MB1517:
x-microsoft-antispam-prvs: <TYXPR01MB151755CABA1AC50679134D9FFD8C9@TYXPR01MB1517.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:451;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vbpH+4Q2tX7P2bpqNHXewGhnPMCgsZ46rLPiS13l4EyET75wtsrMGNh9gZ5i66Ry8dRoQDAlvib4AdLKimC6NyLkzonOzGq6n6bpVBiICBwh1f/84isYrirxsh4oQz+cj1zmpmDmZ0smWZtERDGr5xtdf8wz5OQ7pvotar9k8EcFoAV+51/uJaJ6Mxr0pvxEpWIlEIWuBMjAOTbIi3rAw41LQLSncjbqnpdnmZ0PtF9LRxNGaABYX8s910n+gPbfnJSU4u9zm8r6DxaRyrEspZXJL+QCCTFfpcuF7CyjNxwmDABVoQY1yuIpJyzY41+JC85ug+pPFcUm7P5SkD/yAEDsMG7y4OGcgdCWoDNhEcDzFwCgfMmFiULYHVXOkmmfi880wOi4xIJhKEq1Cy4RQznL6YEsLRMam5lemN1DKZ4RPyWmoqh7V049Cmop73y9d+WOmqeIc9YVeq1mULKJiLOs62+op/p48G70crKTZJ7MuMdhsOH8ugPiCCfxN38EXN9Lhzy5QiQ+JxEVdLWSQH9wrzpYHVfr4IBSECZC74JkbDu+io7dpJGUU5I5nJAhGVxKscG83upUbzrDAYIjBqSJObXi4JyB1tBpKUJUTtavwKiBpoSxeqMgDGux4CShwhbKyRtitJyrXdZg0RSFd9BDgqgiKwm0X/Phu29ozSeNoFsouoFlITL2OkGgK2vAtoUnWGmlKOU9CzavXixghw14H2KCGLE7fmxAyriuL4W5lJsR98jvjQmz8rsobsqhlpOIcsrAn+J3RjttDAqQRmMHR1QZSrE8GauteEqcVNFEXGKjHeUNaGh4iuv9uaQg
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB6544.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66476007)(64756008)(122000001)(76116006)(66556008)(66446008)(66946007)(87266011)(110136005)(71200400001)(2616005)(38070700005)(82960400001)(91956017)(15650500001)(6506007)(4744005)(85182001)(8676002)(316002)(38100700002)(186003)(6512007)(86362001)(26005)(4326008)(2906002)(6486002)(5660300002)(508600001)(36756003)(83380400001)(8936002)(62816006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?TFBHK3BTdWVqUkVwTkFyb0pLcU9kQnpCaVVEN3JMZzJGMWFMUk9ybUxiVTRZ?=
 =?gb2312?B?a1B2a29uS3FjbXEwS0VlcEJqQmxoZGpNODNTcWZBT0ZWYit1MUlSVitMQjNK?=
 =?gb2312?B?anY5WmF1WVFHejd6ZDJ6SU5pUTR2WVhmZWtQNHVIandXMzk0VHNwWU9WVytp?=
 =?gb2312?B?RU42TFd6LzFpTEdJNFBoNGQ0Ty9zQ0pFNS8yN3F1RDRrNm0zVWVYK29VVURx?=
 =?gb2312?B?eHFhalh3aHNlZENidncxMU56cnNYYmVyVjJKR05KeEZ3TnpDa1R5RkZtZTZa?=
 =?gb2312?B?T2o0S0Y0cS95UXlGUkZVdE9ZdU01N3B2QTlMS1M3T1pzRVc2azg3NWhkVlpk?=
 =?gb2312?B?NmhkSFpZSXBWaFZLenhDNVNEb0tJK2FIcVdPRUwvL01GODUwaXlrcHh3SlR0?=
 =?gb2312?B?K3pReGpPUjM5K0Z5bkN3MUhlRDZqZWlQTnU4akdlaWtpcC82eElqZ1ROKy9S?=
 =?gb2312?B?UTg0UmxISGJlcnEyNkVyMFJmTDNrZElndUdLekR0dUplM25IOXNZZVFMSnJT?=
 =?gb2312?B?QXlEdnJac2UyTEZ4QS9yWlVoTHZSOUxhcWVSWnkvSWk3QkJjQ0t0eXB1WTdQ?=
 =?gb2312?B?TStIV0U2b2ZNUjBjeUd5dG5xSmVPeWhSaFBDRTlqdnd6VWV2RUpXcno2aEx2?=
 =?gb2312?B?QW9WTEZKSkI3MFpYd1NaT3ZUcWl5dVd3VTYvWlNDblMzY21PZStMQlNMdkRL?=
 =?gb2312?B?d3lEcHgxNzdFVDk0ZkY2VGlPaDFXOWJiM3B6bU5md1JvZjlDYWJCUUpjNWll?=
 =?gb2312?B?VW1CVTdVaVB5bk9VWERmeU0zVEVJdkYvRkluckxscGVMUSszNmRxSjVBSDlX?=
 =?gb2312?B?UG9MaEpaTGUyZXljNTRwcm9RMlRpZGpENGFsSVgrWlRIUVh2SXh0WWI0d3hR?=
 =?gb2312?B?cDUwV2krRS96c2RLYktTSUtzdDd0T1JHTDZJclF0NEIvaU5JRUZJNDZpb3FY?=
 =?gb2312?B?T2owc3hoeFZPQkNGUHRiZzZWcE42dW01UVpOMmNUbjgxWm5Od1RwQzkwbTFS?=
 =?gb2312?B?SWEwZUdMMDBGZjJCVUhkMi9PU01KTUtaMDFNK0Z5QXlvcW1YRURiRy9wOGd6?=
 =?gb2312?B?V3hJeHBXMkd3UnlTWWRsWnVTMHBMb1Rpc0VYT3YyS3EwRG9YeXdzblNnYlNy?=
 =?gb2312?B?TE9oWkdELzFjZXo5VEthYXRoa0N0anFIY0VVWjlWQ1hSSS9IL0F6WEU3TTlk?=
 =?gb2312?B?TzdaT2UxVmR1bXpWTy85R3hxTVZGTU1MQkF3eGpoUytMTkMwbGF6SmhQTllp?=
 =?gb2312?B?dUJDcGRrRmlSVk5CUG92UzhLQWJlUTVGM29wbjZZL1UzYlhuRFFnWkFSYU95?=
 =?gb2312?B?ay93b2l5clV6OG1wR2JjdEFINDYwSnpkdnQ0TERKQTU0dWMvaEM4clZ5aUZN?=
 =?gb2312?B?RGtsMXljUzdYdDNNdVhlS05FN3dMaGlPYzBsOXhrTnpQeFJVdENwazh6L2xl?=
 =?gb2312?B?R2pHZ21sWlZaOEE1RzNEaS9UdnlVRG1DUlJEbWRVZnV0bGFrOXE5SXZEOEtX?=
 =?gb2312?B?NE05SS9oWVlzcTJrNFNFdEZGMExpbUFrbkJWdVo2TGhyN3NEcEM2b1J4Zi9U?=
 =?gb2312?B?a2M1L0Q5cml6TDFZeTVNOER1dzhhSHJjWkpacWl4NmJ0RTNYOUxXa3VuNnB6?=
 =?gb2312?B?QzdLdlVUS25Xam9lU1ZGa25pUnErOWlscWQ1bWxnMUtaa1pKWUZKaWpSZmZD?=
 =?gb2312?B?YjRWNDZyNFRGR2wxN1pnQWhqS0dYS0dIdUNDdHZmQTlxWkcvV3JsSjNGNHlX?=
 =?gb2312?B?dG5wQjVxQWV0Zk01R1FhN0FEeG5tSTBlMUJlcCsyeFNMcVRhRk9pQUZNemQ1?=
 =?gb2312?B?ckNDUkJ5WmtyekpJR3FKSzZ3WVNKcUJnQS9jUGkxR1NPMTlyUFNLVU8zOGY4?=
 =?gb2312?B?eGN1R01qdGVuUFFjZlZFOCtrUmF5SnhPVUF0MHVrbWJMVk5CKzFCdFRpdjRM?=
 =?gb2312?B?MW9BbDJLcEJKcE15M01BL1kyTE9YWng0MjVwRDBZcGNma1hnMVRlTkdzV0xq?=
 =?gb2312?B?a3BkaGh1MXBIVzUxb3ZRMm9aK1FtMWQyV2ZVMndSWjZONHpLdThTNVlOVU5V?=
 =?gb2312?B?dXE0QVV3V0lyNTZEeWYvWXcyTmVsZGJjeUR5QmUyOEZ2UEZpamJFcUJMQkY2?=
 =?gb2312?B?SkRmZE1GaVdGRERmK2V2MktuZHZudjVWWXVtSEJ0dU1LZTR4TmJUY0UwYTIv?=
 =?gb2312?B?TVkxR3lVR3NCT2hGcmRuclhGeWxtdktianAwL2Y1QUJ3YWZSRXdnckJBMXZx?=
 =?gb2312?Q?TTMFQiENJXqz8yBdEHWKIrKWGy0aabi8KssEQQlgls=3D?=
Content-Type: text/plain; charset="gb2312"
Content-ID: <1D6177E212E59E4E8901C9F7D28048D7@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB6544.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bbe2e7e-d906-4aaa-812e-08d99eaafc3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2021 09:19:06.1818
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GFPsuWZfyy6OOPbA9jbTRg/aTNZuz1ktzcBiTpGIiCDLRmm5163ugOh7bzepOVXEymgyzsMA91t/UFAPr6+L+J9nT+9eDKlsf/T+rKCwHLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYXPR01MB1517
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SGkgQWxlamFuZHJvDQoNCllvdSBtZXJnZWQgYW5vdGhlciBxdW90YWN0bCBwYXRjaCwgYnV0IEkg
Z3Vlc3MgeW91IG1pc3NlZCB0aGlzLg0KDQoNCkJlc3QgUmVnYXJkcw0KWWFuZyBYdQ0KPiBIaSBB
bGVqYW5kcm8sIE1pY2hhZWwNCj4gDQo+IFBpbmchDQo+IA0KPiBCZXN0IFJlZ2FyZHMNCj4gWWFu
ZyBYdQ0KPj4gVGhpcyBwYXRjaFsxXSBpcyBkZXNpZ25lZCB0byBmaXggYnVnIGZvciBRX1hRVU9U
QVJNIGlvY3RsIG5vdCBmb3IgaW50cm9kdWNlZC4NCj4+IFNvIHJlbW92ZSBpdC4NCj4+DQo+PiBb
MV1odHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxk
cy9saW51eC5naXQvY29tbWl0Lz9pZD05ZGE5M2Y5YjdjDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTog
WWFuZyBYdTx4dXlhbmcyMDE4Lmp5QGZ1aml0c3UuY29tPg0KPj4gLS0tDQo+PiAgICBtYW4yL3F1
b3RhY3RsLjIgfCAzICstLQ0KPj4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAy
IGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9tYW4yL3F1b3RhY3RsLjIgYi9tYW4y
L3F1b3RhY3RsLjINCj4+IGluZGV4IGQyMmQ4YzU4NC4uNDZmNzdhOGIxIDEwMDY0NA0KPj4gLS0t
IGEvbWFuMi9xdW90YWN0bC4yDQo+PiArKysgYi9tYW4yL3F1b3RhY3RsLjINCj4+IEBAIC02NTEs
OCArNjUxLDcgQEAgVGhlDQo+PiAgICAuSSBpZA0KPj4gICAgYXJndW1lbnQgaXMgaWdub3JlZC4N
Cj4+ICAgIC5UUA0KPj4gLS5CIFFfWFFVT1RBUk0gIiAoc2luY2UgTGludXggMy4xNikiDQo+PiAt
LlwiIDlkYTkzZjliN2NkZjhhYjI4ZGE2YjM2NGNkYzFmYWZjODY3MGI0ZGMNCj4+ICsuQiBRX1hR
VU9UQVJNDQo+PiAgICBGcmVlIHRoZSBkaXNrIHNwYWNlIHRha2VuIGJ5IGRpc2sgcXVvdGFzLg0K
Pj4gICAgVGhlDQo+PiAgICAuSSBhZGRyDQo=
