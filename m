Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 973C3286181
	for <lists+linux-man@lfdr.de>; Wed,  7 Oct 2020 16:48:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728662AbgJGOsA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Oct 2020 10:48:00 -0400
Received: from mx0b-000eb902.pphosted.com ([205.220.177.212]:10110 "EHLO
        mx0b-000eb902.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728535AbgJGOr7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Oct 2020 10:47:59 -0400
X-Greylist: delayed 753 seconds by postgrey-1.27 at vger.kernel.org; Wed, 07 Oct 2020 10:47:58 EDT
Received: from pps.filterd (m0220298.ppops.net [127.0.0.1])
        by mx0a-000eb902.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 097EGAhD015782;
        Wed, 7 Oct 2020 09:35:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garmin.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pps1;
 bh=AfL0emvmIYbP6Nx3UPonJ15BnJeSw4LkSFv95sFOgIU=;
 b=ynEnHU+bZAXk/E7RiPofIaO1n1pIAWNIlBVo3XLVMF2WkR+T2Fw6nUgL7jMpqTr/M2rB
 wNxjBZ3tisnACgRs3yHk1e7zFDDOX3grbQOA89R6INcBoYtwUyacpwupthr88e/y3U48
 w24qDm8ybOJMPXPeOUBXbm3cCDnBsqDcNkKVKDJOGD9iNh+JjGb/MU1EZHr/rS9kbF/q
 Q6U1vTXuMmfZ5IFBu94GErv6gWNxRatMuy4hgvSVw/f2lfHUq00EIvr9Hilm2AWdQoWj
 3jievVdTaIRQWb5oU5UoWb2Xg9p0to/L8kciSxnwVsG6UMKUA0/qv29Ao4tnOYnWC3TZ /g== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
        by mx0a-000eb902.pphosted.com with ESMTP id 34110f9542-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 07 Oct 2020 09:35:15 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EgvHrkRilp7/bb78ARcdAUzZ0oSIe6yN8RL9bK7aj1TPy1ReI8yHNPacBRjkexWngGC2eBW4nUhjLGzMXjP70vPgS1rzITSzbpUHBTiGhMV7bnlbREv9jogU4AWXse5V7YrYOAqNFy5go1wAHZLCHf+pJqKYe1dxi3v3y7xdoFLKv/MaKOrnWTCRc8ars1YCMZ13NUqvcPNtnzQa7eLEXnvDxr7xSisN9UmhwXyqcVNIPANufFnKSfwbvxNJE6Cas1tXBNgT0I5nKfv7ozOJvFGVGSUQWTwG0zbg1HQFo9zTMCb8/ezirZjp0zFKl1APvAa5t5HPpn2cDEUFdu2s/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AfL0emvmIYbP6Nx3UPonJ15BnJeSw4LkSFv95sFOgIU=;
 b=oSLmRZHbM9eK9QY6bAIgoZ9LYF9mMr8hg4suq9R0b2CH5q2Eclpo5h2C852usJ6LOuyI61SQ3/4wOwxlVxCNDtxTh7k5U8v1MLHLUTZCBBshrht0sQpwdNybKNFV4kI5gK+ASJ7fibwq5AixHQZd/KIOH0/Cw9Cz4qBNyxoGvv7zKo0XKu8hEZwVVn5mqOPO+Wnx3XObOzPJscocEtWUTwtD1bjiBTVlTHaYVe0cFhCcqiuvXodd4jvVJ2HIR3r6cMZSOqpqpNVvn1r1grRwOJfPQQ4yqZCL6gZUUX6FxWsaAoO4xg1vs6SxuPPSPYiGnQFEIDXAF/xJK+BZ+SZukw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 204.77.163.244) smtp.rcpttodomain=linaro.org smtp.mailfrom=garmin.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=garmin.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=garmin.onmicrosoft.com; s=selector1-garmin-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AfL0emvmIYbP6Nx3UPonJ15BnJeSw4LkSFv95sFOgIU=;
 b=Tt7tYA1mvkfEauzj7lXSFlm1GLpH7+obEjVRS7x9GRrt7zLh+lT7U6BjjJZZ6D3URun3ozh4GEDQ5y+QaKLZUAufFRjCVR82W0uoX9USpnU/cqBxpKZELuYOCbmOUISenvlLGnllxtiA8j8iOFy0cTAh8gvkrmgB58S8DJ6wUL4rxB7p+vDVmJEaOgnlc4/jdcYPEbJYnW06e+4KM7JC5X+O0tOhsI8cSZ66uNzRpENzhjwdxdmpBsk13pl1y0GcK1eJozso/Pn2lRcYXmCfigaLlXAvRBOSANw3Hfwi7Bxk2VD/RDAcSHYOMN3SqhBIDtm+sgfbsDWSoSkz+Wroyw==
Received: from CO2PR04CA0128.namprd04.prod.outlook.com (2603:10b6:104:7::30)
 by MWHPR04MB0976.namprd04.prod.outlook.com (2603:10b6:301:42::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.35; Wed, 7 Oct
 2020 14:35:13 +0000
Received: from MW2NAM10FT045.eop-nam10.prod.protection.outlook.com
 (2603:10b6:104:7:cafe::41) by CO2PR04CA0128.outlook.office365.com
 (2603:10b6:104:7::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20 via Frontend
 Transport; Wed, 7 Oct 2020 14:35:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 204.77.163.244)
 smtp.mailfrom=garmin.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=pass action=none header.from=garmin.com;
Received-SPF: Pass (protection.outlook.com: domain of garmin.com designates
 204.77.163.244 as permitted sender) receiver=protection.outlook.com;
 client-ip=204.77.163.244; helo=edgetransport.garmin.com;
Received: from edgetransport.garmin.com (204.77.163.244) by
 MW2NAM10FT045.mail.protection.outlook.com (10.13.155.45) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.34 via Frontend Transport; Wed, 7 Oct 2020 14:35:13 +0000
Received: from OLAWPA-EXMB8.ad.garmin.com (10.5.144.18) by
 olawpa-edge3.garmin.com (10.60.4.226) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1466.3; Wed, 7 Oct 2020 09:35:11 -0500
Received: from OLAWPA-EXMB7.ad.garmin.com (10.5.144.21) by
 OLAWPA-EXMB8.ad.garmin.com (10.5.144.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Wed, 7 Oct 2020 09:35:12 -0500
Received: from OLAWPA-EXMB7.ad.garmin.com ([fe80::a45b:bdef:e70b:15dc]) by
 OLAWPA-EXMB7.ad.garmin.com ([fe80::a45b:bdef:e70b:15dc%23]) with mapi id
 15.01.1913.010; Wed, 7 Oct 2020 09:35:12 -0500
From:   "Karstens, Nate" <Nate.Karstens@garmin.com>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "willy@infradead.org" <willy@infradead.org>
Subject: RE: [PATCH] system.3: Indicate MT-Unsafe
Thread-Topic: [PATCH] system.3: Indicate MT-Unsafe
Thread-Index: AQHWm/vtNluNXYsZokGE+MUwRkv21amLJ30AgAEN6VA=
Date:   Wed, 7 Oct 2020 14:35:11 +0000
Message-ID: <b9349b7939b140fc8e53d3b96807affc@garmin.com>
References: <20201006161520.975-1-nate.karstens@garmin.com>
 <6dec3d89-a16e-8be5-6f85-4ff4e51e9136@linaro.org>
In-Reply-To: <6dec3d89-a16e-8be5-6f85-4ff4e51e9136@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.4.7]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8a286899-8f67-4a7d-cb5b-08d86ace3394
X-MS-TrafficTypeDiagnostic: MWHPR04MB0976:
X-Microsoft-Antispam-PRVS: <MWHPR04MB097652AB5F85F63B09E4C44F9C0A0@MWHPR04MB0976.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ndZ3tIDwlhlog4d82gJ+QdZv4Swmu7/SOMkgbuI6yqWTUfpmikkFlgCxwCbHvy2O1+BQMEEnNJvl+ATTGcTfYdcFyGJSo8GiW/muyI4zsPmBSHe3moy72p1Z2bcCtGe2AWHN8Y3IlNnj7yOvV6uNXm92kN+LVk2mC6kf1CVzJh0oUqxL6mewTuK29KjfpHwTqUXWqQm6xvfQCg1B+AnO1MnCzehbZcKUXlzqdmNcHTfLo/T1OoN9cbGBHxIB2LyZeueUroriN6Ps6voco0PRwg7j0xRSn8jFxL3rhfree2lEhdFKaaWVfvpl5GNMwseck0cHU/ZrmLUcBasj4MvOA4bjPfttKKqOl+6npZnWbE7BasWbf7HQihZsq8cp3SE/746ARQBnef3R6vNvYvlKPvH/cnKYgcSXgQTCvEqvx6D70pbP1lkxmINlEDkD0wnF2YKMx4q2cfqaGfg+4EmB+kRBbC9MaHiVSPPo1zXQuiE=
X-Forefront-Antispam-Report: CIP:204.77.163.244;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:edgetransport.garmin.com;PTR:extedge.garmin.com;CAT:NONE;SFS:(136003)(39850400004)(376002)(346002)(396003)(46966005)(426003)(8936002)(2906002)(24736004)(336012)(82740400003)(70206006)(108616005)(70586007)(47076004)(966005)(7696005)(356005)(26005)(316002)(5660300002)(36756003)(83080400001)(7636003)(110136005)(86362001)(54906003)(83380400001)(478600001)(53546011)(8676002)(4326008)(186003)(2616005)(82310400003);DIR:OUT;SFP:1102;
X-OriginatorOrg: garmin.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2020 14:35:13.2752
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a286899-8f67-4a7d-cb5b-08d86ace3394
X-MS-Exchange-CrossTenant-Id: 38d0d425-ba52-4c0a-a03e-2a65c8e82e2d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=38d0d425-ba52-4c0a-a03e-2a65c8e82e2d;Ip=[204.77.163.244];Helo=[edgetransport.garmin.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM10FT045.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR04MB0976
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-10-07_09:2020-10-06,2020-10-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 mlxlogscore=999 clxscore=1011 lowpriorityscore=0 priorityscore=1501
 spamscore=0 malwarescore=0 mlxscore=0 phishscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2010070091
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SSdtIGZpbmUgd2l0aCBhZGRpbmcgYSAicmFjZSIgcXVhbGlmaWVyLiBEbyB5b3UgaGF2ZSBhbnkg
aWRlYXMgb24gdGhlIHR5cGUgb2YgcmFjZT8gSSBkaWRuJ3Qgc2VlIGFueXRoaW5nIGluIHRoZSBv
dGhlciBtYW4tcGFnZXMgdGhhdCBqdW1wZWQgb3V0IGFzIGJlaW5nIGNvcnJlY3QuDQoNClRoYW5r
cywNCg0KTmF0ZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQWRoZW1lcnZh
bCBaYW5lbGxhIDxhZGhlbWVydmFsLnphbmVsbGFAbGluYXJvLm9yZz4NClNlbnQ6IFR1ZXNkYXks
IE9jdG9iZXIgMDYsIDIwMjAgMTI6MjYNClRvOiBLYXJzdGVucywgTmF0ZSA8TmF0ZS5LYXJzdGVu
c0BnYXJtaW4uY29tPjsgbXRrLm1hbnBhZ2VzQGdtYWlsLmNvbQ0KQ2M6IGxpbnV4LW1hbkB2Z2Vy
Lmtlcm5lbC5vcmc7IGxpYmMtYWxwaGFAc291cmNld2FyZS5vcmc7IHdpbGx5QGluZnJhZGVhZC5v
cmcNClN1YmplY3Q6IFJlOiBbUEFUQ0hdIHN5c3RlbS4zOiBJbmRpY2F0ZSBNVC1VbnNhZmUNCg0K
Q0FVVElPTiAtIEVYVEVSTkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgYW55IGxpbmtzIG9yIG9wZW4g
YW55IGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgdHJ1c3QgdGhlIHNlbmRlciBhbmQga25vdyB0aGUg
Y29udGVudCBpcyBzYWZlLg0KDQoNCk9uIDA2LzEwLzIwMjAgMTM6MTUsIE5hdGUgS2Fyc3RlbnMg
dmlhIExpYmMtYWxwaGEgd3JvdGU6DQo+IFRoZSBmYWN0IHRoYXQgc3lzdGVtKDMpIGRvZXMgbm90
IHN1cHBvcnQgcHRocmVhZF9hdGZvcmsoMykgYWxzbyBtZWFucw0KPiB0aGF0IGl0IGlzIG5vdCB0
aHJlYWQgc2FmZS4gU2VlIHRoZSBkaXNjdXNzaW9uIGZvciB0aGUgcHJvcG9zYWwgb2YgYQ0KPiBj
bG9zZS1vbi1mb3JrIGZsYWcgaW4gdGhlIDIwMjAgQXByaWwgYW5kIE1heSB0aW1lZnJhbWUsIGVz
cGVjaWFsbHk6DQo+DQo+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xrbWwu
b3JnL2xrbWwvMjAyMC81LzE1LzEwNjdfXzshIUUNCj4gSmM0WUMzaUZtUSFEOVlWQUU3NjBoVC1Z
Rm9PVDE0S21JdTR5MmNqUWI4WmZsVmdwWC0zcnhnQkYyV3Z4eUFUVWVRb2daRg0KPiBGZnYyc0lR
JA0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBOYXRlIEthcnN0ZW5zIDxuYXRlLmthcnN0ZW5zQGdhcm1p
bi5jb20+DQoNCk5vdCBzdXJlIGlmIG1hbiBwYWdlcyBjaGFyYWN0ZXJpemVzIGZpbGUgZGVzY3Jp
cHRvciBsZWFrIGFzIG10LXVuc2FmZSwgYXQgbGVhc3Qgd2UgZG9uJ3QgaGF2ZSB0aGlzIGNvbmNl
cHQgb24gZ2xpYmMgbWFudWFsLiAgSW4gZmFjdCwgSSB0aGluayBhZGRpbmcgYSBNVC1VbnNhZmUg
bWFyayB0byB0aGlzIHBvdGVudGlhbGx5IG1ha2UgYW55IGxpYmMgY2FsbCB0aGF0IGlzIG5vdCBh
dG9taWMgcG90ZW50aWFsbHkgTVQtVW5zYWZlLCBlaXRoZXIgd2hlbiB0aGV5IGRvIG5vdCBjb25j
dXJyZW50IHRyaWdnZXIgcmFjZSBpc3N1ZXMgcmVnYXJkaW5nIG1lbW9yeSBzZW1hbnRpYy4gQXQg
bGVhc3QgSSB0aGluayBpdCBzaG91bGQgYWRkIGEgJ3JhY2UnDQptYXJrIHRvIGluZGljYXRlIHdo
YXQgZXhhY3RseSBpcyBNVC11bnNhZmUgKGFzIGZvciBvdGhlciBpbXBsZW1lbnRhdGlvbnMpLg0K
DQo+IC0tLQ0KPiAgbWFuMy9zeXN0ZW0uMyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9zeXN0ZW0u
MyBiL21hbjMvc3lzdGVtLjMgaW5kZXggYWVmNDA0MTdhLi44NzMwZmFiZDMNCj4gMTAwNjQ0DQo+
IC0tLSBhL21hbjMvc3lzdGVtLjMNCj4gKysrIGIvbWFuMy9zeXN0ZW0uMw0KPiBAQCAtMTI3LDcg
KzEyNyw3IEBAIGwgbCBsLg0KPiAgSW50ZXJmYWNlICAgIEF0dHJpYnV0ZSAgICAgICBWYWx1ZQ0K
PiAgVHsNCj4gIC5CUiBzeXN0ZW0gKCkNCj4gLVR9ICAgVGhyZWFkIHNhZmV0eSAgIE1ULVNhZmUN
Cj4gK1R9ICAgVGhyZWFkIHNhZmV0eSAgIE1ULVVuc2FmZQ0KPiAgLlRFDQo+ICAuU0ggQ09ORk9S
TUlORyBUTw0KPiAgUE9TSVguMS0yMDAxLCBQT1NJWC4xLTIwMDgsIEM4OSwgQzk5Lg0KPg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KDQpDT05GSURFTlRJQUxJVFkgTk9USUNF
OiBUaGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJlIGZvciB0aGUgc29sZSB1c2Ugb2Yg
dGhlIGludGVuZGVkIHJlY2lwaWVudChzKSBhbmQgY29udGFpbiBpbmZvcm1hdGlvbiB0aGF0IG1h
eSBiZSBHYXJtaW4gY29uZmlkZW50aWFsIGFuZC9vciBHYXJtaW4gbGVnYWxseSBwcml2aWxlZ2Vk
LiBJZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGVtYWlsIGluIGVycm9yLCBwbGVhc2Ugbm90aWZ5
IHRoZSBzZW5kZXIgYnkgcmVwbHkgZW1haWwgYW5kIGRlbGV0ZSB0aGUgbWVzc2FnZS4gQW55IGRp
c2Nsb3N1cmUsIGNvcHlpbmcsIGRpc3RyaWJ1dGlvbiBvciB1c2Ugb2YgdGhpcyBjb21tdW5pY2F0
aW9uIChpbmNsdWRpbmcgYXR0YWNobWVudHMpIGJ5IHNvbWVvbmUgb3RoZXIgdGhhbiB0aGUgaW50
ZW5kZWQgcmVjaXBpZW50IGlzIHByb2hpYml0ZWQuIFRoYW5rIHlvdS4NCg==
