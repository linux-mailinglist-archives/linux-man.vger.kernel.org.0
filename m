Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3EEA1F5077
	for <lists+linux-man@lfdr.de>; Fri,  8 Nov 2019 17:02:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726036AbfKHQCL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Nov 2019 11:02:11 -0500
Received: from mail-eopbgr140071.outbound.protection.outlook.com ([40.107.14.71]:39174
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726049AbfKHQCL (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 8 Nov 2019 11:02:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ZfFR8//TRQuD6kuUGkCgCXipdUD1PuOGmlE8V2yiUs=;
 b=64Gy9Q7/m7vZ47VwKd0L314nkG2O09XXYQd5Q95Ygda6iApdU3NbNLuQn9ArF4V3FS+sHv5v3on1ACxRqg2wN0+u9ndEWZ3UK7yFlovbk6nRbQbc7ypoHpIywCrdTBMLXhMcIMpryv4pDDlBWt5P145QY55HE6HJ6R3AlrcnMPU=
Received: from VI1PR08CA0202.eurprd08.prod.outlook.com (2603:10a6:800:d2::32)
 by AM6PR08MB3640.eurprd08.prod.outlook.com (2603:10a6:20b:4c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.24; Fri, 8 Nov
 2019 16:02:06 +0000
Received: from VE1EUR03FT043.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::203) by VI1PR08CA0202.outlook.office365.com
 (2603:10a6:800:d2::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2430.23 via Frontend
 Transport; Fri, 8 Nov 2019 16:02:06 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; vger.kernel.org; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;vger.kernel.org; dmarc=none action=none
 header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT043.mail.protection.outlook.com (10.152.19.122) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2430.21 via Frontend Transport; Fri, 8 Nov 2019 16:02:05 +0000
Received: ("Tessian outbound e4042aced47b:v33"); Fri, 08 Nov 2019 16:02:05 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1840652c78da0006
X-CR-MTA-TID: 64aa7808
Received: from dd4aa74a545e.1 (cr-mta-lb-1.cr-mta-net [104.47.14.54])
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id F866433E-2CCD-4841-8029-D2A454B037FC.1;
        Fri, 08 Nov 2019 16:01:59 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04lp2054.outbound.protection.outlook.com [104.47.14.54])
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dd4aa74a545e.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 08 Nov 2019 16:01:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4/Kvj7EFIoFhj2rsaPTjTo5W0GXdUerS+zDyJyR6K9YcHRxjf++M2uFdw58K0d05qsltxpMpFIInw+9fnY4h0v2A9hPBiSout156Z9IE3j868qUoTLJ+1Ftvb8PnDTx3WBV+54ZZU+BUr9PKk27gbrLcxwHCd5tmJC1jL5MMIUHhYIv2MkFQl9KiAqLfoj1CzwI+PRusfHZglF82wJjbS3jUii4WGcFLkXyprgDQMPiPFF64YOG3tGbp6FIj2SvQG40iUPXuci/gEaW4H+a6Rko5lCydFyN1KpmuPlklWhxoBdi2POGX6mnxHjIR4NZy9/z0saYrd75Psom9liTPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ZfFR8//TRQuD6kuUGkCgCXipdUD1PuOGmlE8V2yiUs=;
 b=H7VDchPJrCv4vwlkIhrXGHZJXMDvT20+1ovT1pjSqGBpypTk4ijyyZBALDoQPsSaAP0lMDWEfi6i7tYyjXGnF0cHu3voiA0visXrWywuAr5T/rqXvZp/Qif03FDbrsOsDe0zTsUjAuJhjeVZz2OzottohC5Djw1SyD572QUJxqUlnKR1gNgvLc5Jib53DQaGXCq335UxxYDSvvyTdCuYV1j9eSCJodOZhhMvrmOO3DlmOQG5SCo/i3hin1UyjVYV285RNHsMOJrRTP5Zi63ilxXUty6befuw3aio6ON4PzFnjGX3KekgmzOF8nUpTQZX+gJTC6bkivsHl4iwv23KFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ZfFR8//TRQuD6kuUGkCgCXipdUD1PuOGmlE8V2yiUs=;
 b=64Gy9Q7/m7vZ47VwKd0L314nkG2O09XXYQd5Q95Ygda6iApdU3NbNLuQn9ArF4V3FS+sHv5v3on1ACxRqg2wN0+u9ndEWZ3UK7yFlovbk6nRbQbc7ypoHpIywCrdTBMLXhMcIMpryv4pDDlBWt5P145QY55HE6HJ6R3AlrcnMPU=
Received: from DB7PR08MB3292.eurprd08.prod.outlook.com (52.134.111.30) by
 DB7PR08MB2972.eurprd08.prod.outlook.com (52.134.109.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Fri, 8 Nov 2019 16:01:58 +0000
Received: from DB7PR08MB3292.eurprd08.prod.outlook.com
 ([fe80::21ec:f698:b78e:d4b8]) by DB7PR08MB3292.eurprd08.prod.outlook.com
 ([fe80::21ec:f698:b78e:d4b8%7]) with mapi id 15.20.2408.028; Fri, 8 Nov 2019
 16:01:58 +0000
From:   Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
CC:     nd <nd@arm.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: glibc in master is incompatible with systemd-nspawn
Thread-Topic: glibc in master is incompatible with systemd-nspawn
Thread-Index: AQHVliTje9IDFzIeykOctC9I8/FDBKeBUKMAgAAJecGAAA1uAIAAB9wA
Date:   Fri, 8 Nov 2019 16:01:58 +0000
Message-ID: <e3486649-58fa-c1b5-7913-9e9f098972db@arm.com>
References: <87k18a62xe.fsf@oldenburg2.str.redhat.com>
 <20191108141149.GB20533@altlinux.org>
 <87v9ru1l6d.fsf@oldenburg2.str.redhat.com>
 <c4001320-2d3f-9523-c93f-60f799545654@linaro.org>
In-Reply-To: <c4001320-2d3f-9523-c93f-60f799545654@linaro.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [217.140.106.54]
x-clientproxiedby: LO2P265CA0379.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::31) To DB7PR08MB3292.eurprd08.prod.outlook.com
 (2603:10a6:5:1f::30)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9411e44c-f702-442d-dc09-08d764650086
X-MS-TrafficTypeDiagnostic: DB7PR08MB2972:|AM6PR08MB3640:
X-Microsoft-Antispam-PRVS: <AM6PR08MB3640BA9DE16AA2105843A7EBED7B0@AM6PR08MB3640.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0215D7173F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(136003)(396003)(366004)(376002)(346002)(189003)(199004)(4744005)(6116002)(3846002)(66066001)(65956001)(65806001)(478600001)(14454004)(66446008)(486006)(8936002)(81166006)(81156014)(8676002)(44832011)(2501003)(476003)(54906003)(66476007)(71200400001)(71190400001)(64756008)(386003)(5660300002)(2616005)(25786009)(66946007)(6506007)(66556008)(11346002)(446003)(53546011)(58126008)(31696002)(316002)(110136005)(102836004)(6512007)(6246003)(52116002)(76176011)(6486002)(6436002)(229853002)(4326008)(31686004)(7736002)(2906002)(256004)(36756003)(99286004)(14444005)(26005)(305945005)(186003)(86362001);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR08MB2972;H:DB7PR08MB3292.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: X/kGN9yhpSKr7pj2I2EAv3b5Up0gZC0GOab8LFNvxeR9rlKYSixI7BLrW3QFCqe+/xuhHqRO5AB3VQnd6MniOZ7WRjLNLilhiA3mHQLnobrda6ynyvJS8XDNheT0RXvtS/5XiOMEnCnuwPiCymMEzielv5xryZ0kiVnKJ5+JHxTCuch1AzC/MRlTOq0fc/1FDVwpzZ5+IcCMhQPdBnpFGst7yaUTWrFH5M81CxFF0xTOV34rkHc19iaX6jjCCv57qgW/j1MA5aC5E+Vrkfsh7cWrw/d08n5UJeN/XJudsFMpey7rV8Lq8jXs33tRfW0+1ZnPjp0JgVSHw9awHmiOT5xLpYlTBGgiMzLUh84a3RQ2jMBs6wNmqD7UjPByWW3rgnQgb031s3+21bwUwJWDOm0PQs8qX1V2tKAfEYg+daQ8FjqaU7jxEzTR66jt3VSs
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <91433E06BAB07441837132AB055914C0@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB2972
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT043.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;IPV:CAL;SCL:-1;CTRY:IE;EFV:NLI;SFV:NSPM;SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(376002)(1110001)(339900001)(189003)(199004)(25786009)(58126008)(54906003)(65956001)(65806001)(66066001)(229853002)(6486002)(2501003)(70206006)(86362001)(31696002)(110136005)(105606002)(31686004)(126002)(2616005)(36906005)(47776003)(5660300002)(4326008)(446003)(476003)(486006)(6246003)(4744005)(336012)(11346002)(70586007)(186003)(26005)(76130400001)(22756006)(14444005)(26826003)(305945005)(7736002)(478600001)(50466002)(6506007)(53546011)(386003)(102836004)(436003)(2486003)(23676004)(76176011)(356004)(14454004)(2906002)(99286004)(316002)(81166006)(8676002)(81156014)(8936002)(36756003)(6512007)(3846002)(6116002);DIR:OUT;SFP:1101;SCL:1;SRVR:AM6PR08MB3640;H:64aa7808-outbound-1.mta.getcheckrecipient.com;FPR:;SPF:Fail;LANG:en;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;MX:1;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: c9c7d5d4-b622-4f3e-bd4f-08d76464fbd3
NoDisclaimer: True
X-Forefront-PRVS: 0215D7173F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hR2Gh9dJ/lSpRUbdO8cbV+aYsiOb2qdSViAmWS8xVUwgjH06XhYgiE9xionB6+JjiduX1nH2bQpM7LaM8N9rWbb/+KxeLGZza8AwQmTqqL/Bw+s9i1a1qlWVODe06ZNmRkFTwoOqEBz2xlWcosc1NwlSPHX4VwOnM8fitmAWgnDNM8ysAd2Lx76JqQyvk/rRrMhG/RZoWJ3Qpanlxp4pG4Ar366dMSUvQviwojvKyigHtECMQyA6u2LOoI/KdFEmjQ+WS3hcS3ehRQsA9Uvreg9f6vqlruFVjbsGCm3B3738LU/o7wty2Q2GUhQ6fUHtTTu+tXRhSbU7ae5LtlRZF7S80p1xubLVjsHHlW7Yrcasspnxh4stJS8vNvV+lyRQwqinrImVV9UYMpcxqAJVRugH83GHJe0ezCymPSV9zy0kPVvBMqIzCJ1kuZFGMg+9
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2019 16:02:05.7455
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9411e44c-f702-442d-dc09-08d764650086
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3640
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

T24gMDgvMTEvMjAxOSAxNTozMywgQWRoZW1lcnZhbCBaYW5lbGxhIHdyb3RlOg0KPiBTaW5jZSB3
aGVuIHN5c3RlbWQtbnNwYXduIGhhcyB0aGlzIGJlaGF2aW91cj8gV2hhdCB3YXMgdGhlIHJhdGlv
bmFsZSB0bw0KPiB1c2UgRVBFUk0gaW5zdGVhZCBvZiBFTk9TWVM/IElNSE8gRU5PU1lTIGl0IHRo
ZSBleHBlY3RlZCBlcnJvciBpbiB0aGlzDQo+IGNhc2UsIHNpbmNlIGZpbHRlcmluZyBpcyBlc3Nl
bnRpYWxseSBibG9ja2luZyB0aGUgc3lzY2FsbCB1c2FnZSBhbHRvZ2V0aGVyLg0KDQpkb2NrZXIg
ZG9lcyB0aGUgc2FtZSwgYnV0IGF0IGxlYXN0IHlvdSBjYW4gZGlzYWJsZSBpdA0Kd2l0aCAtLXNl
Y3VyaXR5LW9wdCBzZWNjb21wOnVuY29uZmluZWQNCg0KaSB0aGluayB0aGUgb3JpZ2luYWwgc2lu
IHdhcyBjb21taXR0ZWQgYnkgY2hyb21pdW0NCndoaWNoIHVzZXMgRVBFUk0gaW4gaXRzIHNhbmRi
b3guDQoNCml0J3Mgb2YgY291cnNlIGJyb2tlbiB3aGVuZXZlciB0aGUgYXBwbGljYXRpb24gaXMN
CnJ1biBvbiBhIG5ld2VyIGtlcm5lbCtsaWJjIHRoYW4gd2hhdCB3YXMgdXNlZCBmb3INCmNyZWF0
aW5nIHRoZSBmaWx0ZXIsIG1heSBiZSB0aGUgc2VjY29tcCBtYW51YWwgc2hvdWxkDQp3YXJuIGFn
YWluc3QgdGhlIHVzZSBvZiBFUEVSTSAodGhlcmUgaXMgYWxyZWFkeSBhDQpjYXZlYXRzIHNlY3Rp
b24pPw0KDQo=
