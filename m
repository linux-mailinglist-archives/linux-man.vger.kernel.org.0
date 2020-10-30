Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4365A2A0FCA
	for <lists+linux-man@lfdr.de>; Fri, 30 Oct 2020 21:59:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727314AbgJ3U7o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Oct 2020 16:59:44 -0400
Received: from mx0b-000eb902.pphosted.com ([205.220.177.212]:55200 "EHLO
        mx0b-000eb902.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726163AbgJ3U7o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Oct 2020 16:59:44 -0400
Received: from pps.filterd (m0220298.ppops.net [127.0.0.1])
        by mx0a-000eb902.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 09UKwJFZ008772;
        Fri, 30 Oct 2020 15:59:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garmin.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pps1;
 bh=ZHI+i5zrr8+Uiuw/11Hy44JW79pG9l7bSKyV8Vd6w5s=;
 b=I4cE1xwR2LnD6cX8bg2dFIVh6Vdy10UjXnoE+gAS/Q4UjfJBoaqo07cvvQ51ZDLQkpVG
 1gBTEBdRazwUUoKo0zYeLtLV1eOO7vhFSrV1du9Q2VSRugeJtTjKbfxluqwyMu2/IWO7
 v+pQHcr1+B1+2lVkEmTY3KSALqheKEoUnYuARsZ1fTul0u1IQ+tIgI75eNqlieJFb/gM
 SJnLDj4smb6YD7rwRyY8aSQ5rIvJncIGAk3gZci7tght2wIKr3Jf7bm7wcGQDUf1xcqx
 CF7Vsi7EFX//ZQ08NDVV9EW3jJNtgzzYq2vyOvUr96aSXGx4Txcnzl0Zc5tpSJQiWGY/ Eg== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2104.outbound.protection.outlook.com [104.47.55.104])
        by mx0a-000eb902.pphosted.com with ESMTP id 34cen22g4j-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 30 Oct 2020 15:59:31 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=at22lfkxjZs/5pV0GiF9AySRPZK2zgMJEWVxACvufbQqQivs0M2tq/eDXXbTaEsABmpDff/772k1WvKuzPorFhtwuZHLxAKIHWr2nQR1NK5bJtVc8Uq8gvjzSA/keiLjolhNB7Auq+lzsaxBomXDxBwtd6jVoI54zqgJkMGlZjIUj8qp+gulneVEDjow9DQ7iUaNLoZ7kWeKP3RT3XDgTLcDqQpj/J/wCe3U8/LyYLz+8XNevEeY8RYC2FjzUQxXJ44fscFFvZD2JJkz27lHjpIHOiQo0QDjheHXORhnrxEeq3BX/KSKCnNmuMUyub4jsrrtJ89nP+EcMPCMHjuX8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZHI+i5zrr8+Uiuw/11Hy44JW79pG9l7bSKyV8Vd6w5s=;
 b=f7TgENze6R199hiYMt0pD3aXEpsR4DaL33FMYT/XGaJjNjjwZY+k/iygg/gwI2j6gkoF1ulw0BehfSeCODxYs+RuZAKrXoVZBpcC6I337qzSRNPgNw3kPWO4jkUf2npjL+PW59MZGDD7JCVf0ZMIqmNXpvaa8GIzEb1/rpYVWwn0dZUU+/ngimlIC8YRNXvbaom6ax2YISg8HS2laMVOBB4JJHfRvdM6qN3DrYzQbnOKfySN0zkb1SQxkiBRBWEgHmSeohjvBpDfAz+Sb5xdO5U4pW9dHu+cncgong07HsauaV/FJ7nzuwCzSQ4ZVXjZnvd1htBfm5mSn9kPAitSMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 204.77.163.244) smtp.rcpttodomain=gmail.com smtp.mailfrom=garmin.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=garmin.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=garmin.onmicrosoft.com; s=selector1-garmin-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZHI+i5zrr8+Uiuw/11Hy44JW79pG9l7bSKyV8Vd6w5s=;
 b=yRjKnp6vU97QiAaK1BWmWv55Z0+apVqQq4NZNGRiaWmxF8ZpWejZqpUZbJ5B4hyyY8hYZm3Hx4cbF7a3uudKt0rg1CQjpjlcst7oTl35BUStUWHOzKtMCN/gIL9ibRzyrTrEbf/vqC3gnl30oCowlBeX+Dzk0xJYOxA/YYew7yijaAj1KAZcwLYSGKoXsoOhUzpcY0YWlizQdIbslFD5Kvz1wgW1yZEyBCdi0bhEDXKUeIEOlq7qnGnFWF4ZwQzzFIUAVKjM2WUC3521z0yA154VZ0EOfcXmmKB8XI90S2k3lRHZi5AkewkxbT0k1q2tNiw8w6ZCTIcfVsG7L5cBfA==
Received: from MWHPR12CA0072.namprd12.prod.outlook.com (2603:10b6:300:103::34)
 by MN2PR04MB5647.namprd04.prod.outlook.com (2603:10b6:208:3f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.28; Fri, 30 Oct
 2020 20:59:29 +0000
Received: from MW2NAM10FT033.eop-nam10.prod.protection.outlook.com
 (2603:10b6:300:103:cafe::a0) by MWHPR12CA0072.outlook.office365.com
 (2603:10b6:300:103::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18 via Frontend
 Transport; Fri, 30 Oct 2020 20:59:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 204.77.163.244)
 smtp.mailfrom=garmin.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=pass action=none header.from=garmin.com;
Received-SPF: Pass (protection.outlook.com: domain of garmin.com designates
 204.77.163.244 as permitted sender) receiver=protection.outlook.com;
 client-ip=204.77.163.244; helo=edgetransport.garmin.com;
Received: from edgetransport.garmin.com (204.77.163.244) by
 MW2NAM10FT033.mail.protection.outlook.com (10.13.154.195) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3520.17 via Frontend Transport; Fri, 30 Oct 2020 20:59:29 +0000
Received: from OLAWPA-EXMB1.ad.garmin.com (10.5.144.23) by
 olawpa-edge3.garmin.com (10.60.4.226) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2106.2; Fri, 30 Oct 2020 15:59:28 -0500
Received: from OLAWPA-EXMB7.ad.garmin.com (10.5.144.21) by
 OLAWPA-EXMB1.ad.garmin.com (10.5.144.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2106.2; Fri, 30 Oct 2020 15:59:28 -0500
Received: from OLAWPA-EXMB7.ad.garmin.com ([fe80::68cc:dab9:e96a:c89]) by
 OLAWPA-EXMB7.ad.garmin.com ([fe80::68cc:dab9:e96a:c89%23]) with mapi id
 15.01.2106.003; Fri, 30 Oct 2020 15:59:28 -0500
From:   "Karstens, Nate" <Nate.Karstens@garmin.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "willy@infradead.org" <willy@infradead.org>
Subject: RE: [PATCH] system.3: Indicate MT-Unsafe
Thread-Topic: [PATCH] system.3: Indicate MT-Unsafe
Thread-Index: AQHWm/vtNluNXYsZokGE+MUwRkv21amLJ30AgAEN6VCAAI+HgIAetsaAgAVDqXA=
Date:   Fri, 30 Oct 2020 20:59:28 +0000
Message-ID: <a0ae5e9a19624a8f92d91dc8bb2c0113@garmin.com>
References: <20201006161520.975-1-nate.karstens@garmin.com>
 <6dec3d89-a16e-8be5-6f85-4ff4e51e9136@linaro.org>
 <b9349b7939b140fc8e53d3b96807affc@garmin.com>
 <65eb1d09-64b9-03d1-321f-440b857ac1b2@linaro.org>
 <672fc29e-1c5c-8c6c-c9f0-dfbd32c5ff57@gmail.com>
In-Reply-To: <672fc29e-1c5c-8c6c-c9f0-dfbd32c5ff57@gmail.com>
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
X-MS-Office365-Filtering-Correlation-Id: ff1e3c08-5561-4c5d-1483-08d87d16b17b
X-MS-TrafficTypeDiagnostic: MN2PR04MB5647:
X-Microsoft-Antispam-PRVS: <MN2PR04MB564797D764336ABBDA6663C29C150@MN2PR04MB5647.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wfETma+M+VpInHz6R+JQYd4IL1IT/PYRav4d1UL8RC8bi1e+GXPw9E+yr2R1ZPdj5g4pQ3B65PaMnUHNI4t9UAza/UWlEngRv58h9jGQBx9OOVuwizOIa6/dLhwzCvvJ4z1sA9/c5MFZtyIYXuoRGt/t5nHL/co3ZHbAEuvUF3fNwqazus3j3PLRipl5CrwZW1JHK0dsnWgMb8Kx9wWnw50ZKJt6qhfFG97xpxRLFc2W8oDv0UOVIxsfx1+Ki3ZzPX6jZCYKnYCv6y3DGjY2nhx5BHnttAAEhJU9+G+IxrfKx4dxWaU0x2uiy+CxBpDrS6SNVPZYxD3LESlkEEz94tB7cofz7RXX1oCljsP0999gVPpRRp3Mchn+TV0yKJAf/nk7aiyiWEJcVTTKLoQ/q5lBFGsHrAbVUyTWIpQ8nnb3mexgZuwx+KFLRjRSdQoHMPqOy1WAMa9Q0OzXTT8sx0EydWBtnQ2O2xC4g72Qo3Q=
X-Forefront-Antispam-Report: CIP:204.77.163.244;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:edgetransport.garmin.com;PTR:extedge.garmin.com;CAT:NONE;SFS:(136003)(396003)(376002)(39860400002)(346002)(46966005)(86362001)(7636003)(83380400001)(2906002)(108616005)(24736004)(8676002)(356005)(82310400003)(186003)(70206006)(426003)(336012)(70586007)(8936002)(26005)(53546011)(7696005)(478600001)(5660300002)(82740400003)(47076004)(2616005)(36756003)(4326008)(54906003)(966005)(110136005)(316002);DIR:OUT;SFP:1102;
X-OriginatorOrg: garmin.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2020 20:59:29.1981
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff1e3c08-5561-4c5d-1483-08d87d16b17b
X-MS-Exchange-CrossTenant-Id: 38d0d425-ba52-4c0a-a03e-2a65c8e82e2d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=38d0d425-ba52-4c0a-a03e-2a65c8e82e2d;Ip=[204.77.163.244];Helo=[edgetransport.garmin.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM10FT033.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5647
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-10-30_10:2020-10-30,2020-10-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0 phishscore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0 clxscore=1011
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010300154
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SSBkb24ndCBrbm93LCBteSBpbnRlcnByZXRhdGlvbiBvZiB3aGF0IGhhcHBlbnMgaXMgdGhhdCB0
aGUgcmFjZSBpcyByZWxhdGVkIHRvIHRoZSByZXNvdXJjZXMgb2YgdGhlIGNhbGxlci4gSW5zaWRl
IG9mIHN5c3RlbSgpIHRoZSBwcm9ncmFtIGVzc2VudGlhbGx5IGZvcmtlZCwgaW5jcmVhc2luZyB0
aGUgT1MncyByZWZlcmVuY2UgY291bnQgb2YgdGhvc2UgZmlsZSBkZXNjcmlwdG9ycy4gQXQgdGhl
IHNhbWUgdGltZSwgYW5vdGhlciB0aHJlYWQgaW4gdGhlIGNhbGxlciBhdHRlbXB0cyB0byBjbG9z
ZSAmIHJlb3BlbiB0aG9zZSByZXNvdXJjZXMsIGJ1dCBmYWlscyBiZWNhdXNlIGl0IGNhbm5vdCBn
ZXQgZXhjbHVzaXZlIGFjY2Vzcy4gSW4gYSBzaW5nbGUtdGhyZWFkZWQgcHJvY2VzcyB0aGlzIHdv
dWxkIG5vdCBoYXBwZW4gYmVjYXVzZSBzeXN0ZW0oKSBkb2Vzbid0IHJldHVybiB1bnRpbCB0aGUg
Y2hpbGQgcHJvY2VzcyBpcyBjb21wbGV0ZS4gSSB0aGluayBtb3N0IHBlb3BsZSB3aWxsIGNoZWNr
IHRoZSB0aHJlYWQgc2FmZXR5IGF0dHJpYnV0ZSBhbmQgc28gY2hhbmdpbmcgdGhpcyB3aWxsIGJl
IHRoZSBtb3N0IG9idmlvdXMgd2F5IHRvIGluZGljYXRlIGEgcG90ZW50aWFsIHByb2JsZW0uDQoN
CkJ1dCBtYXliZSB0aGVyZSBpcyBzb21lIHN1YnRsZXR5IEknbSBub3QgcGlja2luZyB1cCBvbiwg
SSdtIG9wZW4gdG8gb3RoZXIgaWRlYXMgb24gaG93IGJlc3QgdG8gY29tbXVuaWNhdGUgdGhpcy4N
Cg0KVGhhbmtzLA0KDQpOYXRlDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBN
aWNoYWVsIEtlcnJpc2sgKG1hbi1wYWdlcykgPG10ay5tYW5wYWdlc0BnbWFpbC5jb20+IA0KU2Vu
dDogVHVlc2RheSwgT2N0b2JlciAyNywgMjAyMCAwMjowOA0KVG86IEFkaGVtZXJ2YWwgWmFuZWxs
YSA8YWRoZW1lcnZhbC56YW5lbGxhQGxpbmFyby5vcmc+OyBLYXJzdGVucywgTmF0ZSA8TmF0ZS5L
YXJzdGVuc0BnYXJtaW4uY29tPg0KQ2M6IG10ay5tYW5wYWdlc0BnbWFpbC5jb207IGxpbnV4LW1h
bkB2Z2VyLmtlcm5lbC5vcmc7IGxpYmMtYWxwaGFAc291cmNld2FyZS5vcmc7IHdpbGx5QGluZnJh
ZGVhZC5vcmcNClN1YmplY3Q6IFJlOiBbUEFUQ0hdIHN5c3RlbS4zOiBJbmRpY2F0ZSBNVC1VbnNh
ZmUNCg0KT24gMTAvNy8yMCA4OjA2IFBNLCBBZGhlbWVydmFsIFphbmVsbGEgd3JvdGU6DQo+IEJ1
dCBjYWxsaW5nIHN5c3RlbSBkb2VzIG5vdCByZWFsbHkgaW5jdXIgaW4gYSByYWNlIHcuci50IHRo
ZSByZXNvdXJjZXMgDQo+IG9mIHRoZSBjYWxsZXIgaXRzZWxmIGFuZCBsZWFzdCBnbGliYyBkb2Vz
IGhhbmRsZSBjb25jdXJyZW50IHNpZ2FjdGlvbnMgDQo+IGNhbGxzIGFuZCB0aHJlYWQgY2FuY2Vs
bGF0aW9uIChieSByZWFwaW5nIHRoZSBjcmVhdGVkIHByb2Nlc3MpLiBJIGFtIA0KPiBub3Qgc3Vy
ZSBhYm91dCBvdGhlciBsaWJjIGltcGxlbWVudGF0aW9uIHRob3VnaC4NCj4gDQo+IFRoZSBmaWxl
IGxlYWthZ2Ugd2lsbCBiZSBvbmx5IGZvciB0aGUgc3Bhd24gcHJvZ3JhbSBpdHNlbGYgYW5kIA0K
PiBhbHRob3VnaCBpdCBpcyBtaWdodCBjaGFyYWN0ZXJpemUgYXMgdW5zYWZlIHRvIGNhbGwgJ3N5
c3RlbScgaW4gDQo+IG11bHRpdGhyZWFkIGVudmlyb25tZW50IEkgZG9uJ3QgdGhpbmsgdGhpcyBj
aGFyYWN0ZXJpemUgYXMgTVQtdW5zYWZlIA0KPiAoYW5kIHdpdGggRkRfQ0xPRVhFQy9PX0NMT0VY
RUMgc3lzdGVtIGlzIGluZGVlZCBzYWZlIGluIHRoaXMgcmVnYXJkaW5nKS4NCj4gDQo+IFNvIG1h
eWJlIGRvY3VtZW50IHVzaW5nIGEgZGlmZmVyZW50IG1hcmt1cCB0byBtYWtlIGl0IGV4cGxpY2l0
Pw0KDQpBbnkgZnVydGhlciBjb25jbHVzaW9ucyBvdXQgb2YgdGhpcz8NCg0KVGhhbmtzLA0KDQpN
aWNoYWVsDQoNCj4gT24gMDcvMTAvMjAyMCAxMTozNSwgS2Fyc3RlbnMsIE5hdGUgd3JvdGU6DQo+
PiBJJ20gZmluZSB3aXRoIGFkZGluZyBhICJyYWNlIiBxdWFsaWZpZXIuIERvIHlvdSBoYXZlIGFu
eSBpZGVhcyBvbiB0aGUgdHlwZSBvZiByYWNlPyBJIGRpZG4ndCBzZWUgYW55dGhpbmcgaW4gdGhl
IG90aGVyIG1hbi1wYWdlcyB0aGF0IGp1bXBlZCBvdXQgYXMgYmVpbmcgY29ycmVjdC4NCj4+DQo+
PiBUaGFua3MsDQo+Pg0KPj4gTmF0ZQ0KPj4NCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+PiBGcm9tOiBBZGhlbWVydmFsIFphbmVsbGEgPGFkaGVtZXJ2YWwuemFuZWxsYUBsaW5hcm8u
b3JnPg0KPj4gU2VudDogVHVlc2RheSwgT2N0b2JlciAwNiwgMjAyMCAxMjoyNg0KPj4gVG86IEth
cnN0ZW5zLCBOYXRlIDxOYXRlLkthcnN0ZW5zQGdhcm1pbi5jb20+OyBtdGsubWFucGFnZXNAZ21h
aWwuY29tDQo+PiBDYzogbGludXgtbWFuQHZnZXIua2VybmVsLm9yZzsgbGliYy1hbHBoYUBzb3Vy
Y2V3YXJlLm9yZzsgDQo+PiB3aWxseUBpbmZyYWRlYWQub3JnDQo+PiBTdWJqZWN0OiBSZTogW1BB
VENIXSBzeXN0ZW0uMzogSW5kaWNhdGUgTVQtVW5zYWZlDQo+Pg0KPj4gQ0FVVElPTiAtIEVYVEVS
TkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgYW55IGxpbmtzIG9yIG9wZW4gYW55IGF0dGFjaG1lbnRz
IHVubGVzcyB5b3UgdHJ1c3QgdGhlIHNlbmRlciBhbmQga25vdyB0aGUgY29udGVudCBpcyBzYWZl
Lg0KPj4NCj4+DQo+PiBPbiAwNi8xMC8yMDIwIDEzOjE1LCBOYXRlIEthcnN0ZW5zIHZpYSBMaWJj
LWFscGhhIHdyb3RlOg0KPj4+IFRoZSBmYWN0IHRoYXQgc3lzdGVtKDMpIGRvZXMgbm90IHN1cHBv
cnQgcHRocmVhZF9hdGZvcmsoMykgYWxzbyANCj4+PiBtZWFucyB0aGF0IGl0IGlzIG5vdCB0aHJl
YWQgc2FmZS4gU2VlIHRoZSBkaXNjdXNzaW9uIGZvciB0aGUgDQo+Pj4gcHJvcG9zYWwgb2YgYSBj
bG9zZS1vbi1mb3JrIGZsYWcgaW4gdGhlIDIwMjAgQXByaWwgYW5kIE1heSB0aW1lZnJhbWUsIGVz
cGVjaWFsbHk6DQo+Pj4NCj4+PiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9s
a21sLm9yZy9sa21sLzIwMjAvNS8xNS8xMDY3X187IQ0KPj4+ICFFIA0KPj4+IEpjNFlDM2lGbVEh
RDlZVkFFNzYwaFQtWUZvT1QxNEttSXU0eTJjalFiOFpmbFZncFgtM3J4Z0JGMld2eHlBVFVlUW9n
DQo+Pj4gWkYNCj4+PiBGZnYyc0lRJA0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogTmF0ZSBLYXJz
dGVucyA8bmF0ZS5rYXJzdGVuc0BnYXJtaW4uY29tPg0KPj4NCj4+IE5vdCBzdXJlIGlmIG1hbiBw
YWdlcyBjaGFyYWN0ZXJpemVzIGZpbGUgZGVzY3JpcHRvciBsZWFrIGFzIG10LXVuc2FmZSwgYXQg
bGVhc3Qgd2UgZG9uJ3QgaGF2ZSB0aGlzIGNvbmNlcHQgb24gZ2xpYmMgbWFudWFsLiAgSW4gZmFj
dCwgSSB0aGluayBhZGRpbmcgYSBNVC1VbnNhZmUgbWFyayB0byB0aGlzIHBvdGVudGlhbGx5IG1h
a2UgYW55IGxpYmMgY2FsbCB0aGF0IGlzIG5vdCBhdG9taWMgcG90ZW50aWFsbHkgTVQtVW5zYWZl
LCBlaXRoZXIgd2hlbiB0aGV5IGRvIG5vdCBjb25jdXJyZW50IHRyaWdnZXIgcmFjZSBpc3N1ZXMg
cmVnYXJkaW5nIG1lbW9yeSBzZW1hbnRpYy4gQXQgbGVhc3QgSSB0aGluayBpdCBzaG91bGQgYWRk
IGEgJ3JhY2UnDQo+PiBtYXJrIHRvIGluZGljYXRlIHdoYXQgZXhhY3RseSBpcyBNVC11bnNhZmUg
KGFzIGZvciBvdGhlciBpbXBsZW1lbnRhdGlvbnMpLg0KPj4NCj4+PiAtLS0NCj4+PiAgbWFuMy9z
eXN0ZW0uMyB8IDIgKy0NCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvbWFuMy9zeXN0ZW0uMyBiL21hbjMvc3lz
dGVtLjMgaW5kZXggDQo+Pj4gYWVmNDA0MTdhLi44NzMwZmFiZDMNCj4+PiAxMDA2NDQNCj4+PiAt
LS0gYS9tYW4zL3N5c3RlbS4zDQo+Pj4gKysrIGIvbWFuMy9zeXN0ZW0uMw0KPj4+IEBAIC0xMjcs
NyArMTI3LDcgQEAgbCBsIGwuDQo+Pj4gIEludGVyZmFjZSAgICBBdHRyaWJ1dGUgICAgICAgVmFs
dWUNCj4+PiAgVHsNCj4+PiAgLkJSIHN5c3RlbSAoKQ0KPj4+IC1UfSAgIFRocmVhZCBzYWZldHkg
ICBNVC1TYWZlDQo+Pj4gK1R9ICAgVGhyZWFkIHNhZmV0eSAgIE1ULVVuc2FmZQ0KPj4+ICAuVEUN
Cj4+PiAgLlNIIENPTkZPUk1JTkcgVE8NCj4+PiAgUE9TSVguMS0yMDAxLCBQT1NJWC4xLTIwMDgs
IEM4OSwgQzk5Lg0KPj4+DQo+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4+DQo+PiBDT05GSURFTlRJQUxJVFkgTk9USUNFOiBUaGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNo
bWVudHMgYXJlIGZvciB0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKSBh
bmQgY29udGFpbiBpbmZvcm1hdGlvbiB0aGF0IG1heSBiZSBHYXJtaW4gY29uZmlkZW50aWFsIGFu
ZC9vciBHYXJtaW4gbGVnYWxseSBwcml2aWxlZ2VkLiBJZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlz
IGVtYWlsIGluIGVycm9yLCBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgYnkgcmVwbHkgZW1haWwg
YW5kIGRlbGV0ZSB0aGUgbWVzc2FnZS4gQW55IGRpc2Nsb3N1cmUsIGNvcHlpbmcsIGRpc3RyaWJ1
dGlvbiBvciB1c2Ugb2YgdGhpcyBjb21tdW5pY2F0aW9uIChpbmNsdWRpbmcgYXR0YWNobWVudHMp
IGJ5IHNvbWVvbmUgb3RoZXIgdGhhbiB0aGUgaW50ZW5kZWQgcmVjaXBpZW50IGlzIHByb2hpYml0
ZWQuIFRoYW5rIHlvdS4NCj4+DQoNCg0KLS0NCk1pY2hhZWwgS2Vycmlzaw0KTGludXggbWFuLXBh
Z2VzIG1haW50YWluZXI7IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwOi8vd3d3Lmtl
cm5lbC5vcmcvZG9jL21hbi1wYWdlcy9fXzshIUVKYzRZQzNpRm1RIUZnV0pRY2ZiX252dVE4Nm5r
c0NMeFFweTE4LThuQlE1LThQeXBxVWtHVm9MQlc5ZEhaUVN0TkhoaXktSGh0UUx4dyQNCkxpbnV4
L1VOSVggU3lzdGVtIFByb2dyYW1taW5nIFRyYWluaW5nOiBodHRwczovL3VybGRlZmVuc2UuY29t
L3YzL19faHR0cDovL21hbjcub3JnL3RyYWluaW5nL19fOyEhRUpjNFlDM2lGbVEhRmdXSlFjZmJf
bnZ1UTg2bmtzQ0x4UXB5MTgtOG5CUTUtOFB5cHFVa0dWb0xCVzlkSFpRU3ROSGhpeS05VER6cWVB
JCANCg==
