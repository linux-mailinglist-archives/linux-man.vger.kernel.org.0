Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B689410A715
	for <lists+linux-man@lfdr.de>; Wed, 27 Nov 2019 00:22:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726333AbfKZXWZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Nov 2019 18:22:25 -0500
Received: from mail-eopbgr70059.outbound.protection.outlook.com ([40.107.7.59]:33660
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726231AbfKZXWZ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 26 Nov 2019 18:22:25 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aLm5vDcTqX0POOW+064+D3EwKJfh1jF8wDURx4MH9YF0W8uQo90fJFRkVFQDvjWQYo9sUhjbexU7vYP7e5Mf7Fcwn2WTdN9xYbTa4vp4zaLzJDZY1OVhZ9rSnQH9Ebpt6neCJOSabiFV+8Wu5a8oaKRX9PIPzzYezDE2cG5JdLefaU2VmtjShTGAIlKAIf/h95LZTOu31fBvVFW0B0HriikibB4f3k2jJg2ttqPd5bwXk0f9u63nr7WgICYIf7fVnP+4y+ZHe6PLQMWXb+FMnFXN8VKFWg1QPXKzt/oZzZVAHlIvkfTJ4bwmBuEUITr1hVCneeqoBCnc6QHM1BQ/yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tugUPsq9BM0HPY8qezCZuTzxOMGSIiikDCvGx3cHQBQ=;
 b=XM9skU5Mb4oUPJMtNAh5U3zTDTueWcmkwdYLDybNQb6VtLDq7RyLcsPNPVv8zvD6TcgHt0soSEJYxkFs5JQjqkR6mnRyBzbgTqiR+05jYvFAdPtAa/gKRyrMSQSnjOylO8t06vzpNdaRo7d52+0EU3L0e5jVaN4HDbYjksgrMVy3KZDnIj+YbfPseg3gjKEHosR5wFz3XmoSDoCZkb2/W8b6WN9dhzPwL4SS5nQAQlKpUKjPwjamKu+Pv8ZbQ4vGvcGAPXoag3OcLzw3GCZznrm8Z+zBaBHADIKGyvvvF1bUqRnD3m/5aq7+PjLjkYLUXtrCyjQCichMjC+b2xUcwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=epita.fr; dmarc=pass action=none header.from=epita.fr;
 dkim=pass header.d=epita.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=epitafr.onmicrosoft.com; s=selector2-epitafr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tugUPsq9BM0HPY8qezCZuTzxOMGSIiikDCvGx3cHQBQ=;
 b=ke1gIGDnkZOd4o7PkLPPHozvh/IdNcDEV2hQshxTfbKWoTHmoIrWpva2xvp5CkTTcCBfBSMU0xhnCwa1iZdiA0Q9li0gj3wPWGAr2EJf7rzia+Xm9S2+J2Pkqhpr6wE6yf0CZYr4u8PopBj80mXe3gqQiO+Do5kzGO8xMBvGVl8=
Received: from DB6PR0701MB2183.eurprd07.prod.outlook.com (10.168.58.141) by
 DB6PR0701MB2182.eurprd07.prod.outlook.com (10.168.55.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.13; Tue, 26 Nov 2019 23:22:21 +0000
Received: from DB6PR0701MB2183.eurprd07.prod.outlook.com
 ([fe80::5cc1:fd5e:3947:df19]) by DB6PR0701MB2183.eurprd07.prod.outlook.com
 ([fe80::5cc1:fd5e:3947:df19%6]) with mapi id 15.20.2495.014; Tue, 26 Nov 2019
 23:22:20 +0000
From:   kevin sztern <kevin.sztern@epita.fr>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        kevin sztern <kevin.sztern@epita.fr>
Subject: [PATCH] packet.7: fix tpacket_auxdata fields.
Thread-Topic: [PATCH] packet.7: fix tpacket_auxdata fields.
Thread-Index: AQHVpLBZi5Ogzz8l2UKGOyeaVmqKQQ==
Date:   Tue, 26 Nov 2019 23:22:20 +0000
Message-ID: <20191126232125.9433-1-kevin.sztern@epita.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0037.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1::25) To DB6PR0701MB2183.eurprd07.prod.outlook.com
 (2603:10a6:4:51::13)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin.sztern@epita.fr; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [2a01:cb04:56d:4500:a933:6a37:4ea8:9375]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 985122e2-ac8e-4d5d-888a-08d772c77c4c
x-ms-traffictypediagnostic: DB6PR0701MB2182:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0701MB2182380E5A934D41A47D4684FC450@DB6PR0701MB2182.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(366004)(346002)(376002)(39850400004)(396003)(136003)(189003)(199004)(2501003)(81156014)(81166006)(107886003)(1076003)(2616005)(86362001)(386003)(14454004)(4326008)(46003)(478600001)(52116002)(186003)(102836004)(305945005)(25786009)(966005)(6916009)(6116002)(6506007)(2351001)(6512007)(6306002)(5660300002)(2906002)(6436002)(316002)(1361003)(6486002)(786003)(4744005)(66556008)(64756008)(66446008)(66946007)(66476007)(8676002)(256004)(71190400001)(71200400001)(5640700003)(99286004)(54906003)(50226002)(14444005)(7736002)(8936002)(36756003);DIR:OUT;SFP:1101;SCL:1;SRVR:DB6PR0701MB2182;H:DB6PR0701MB2183.eurprd07.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: epita.fr does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u/d8clUoRI9ioBvmJrurqSAl1kT5VXaGfsjYEwzgbZdjplSyIg80wfywoRM6LAQgi3Sg3eFayP6eWZBop4whg8Hs4jqcl87qtcab4z6j88EzNnIc8sx1m2fDm+iN2Sg4Bi0PguSt0IvUv01DzpV7hBBJtYnhHv+xVzw54DYsCMpA6HwJPgiHoXt95ZOFQpgHD9PyglAGbe+j7TgRL3ddnc2ap41gswIRsUX/3OKXRamZHXn7VznUkhs1ZznpjydL/f8aIzN1h31TvXsxc27VvCidbobNSUMTyhcpNgPFr/7W1UHmuS+EXJGqHiLDcZuq12qg0H96SSXg31gFDOdp5F3le1uNs7yJuRvwbmRXmOOmb7ntFrL9ih696GuMqdnQJIVDbZZ6zBMViVc1Xtad88nyrwQl2qnjfnSSf/WReCJ1PJByDLh0atpmDw2CIU6tMkc9JIslM/ppgYty+BgaJGCcjy8NpAZn4LXR4zz/qMQ=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: epita.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: 985122e2-ac8e-4d5d-888a-08d772c77c4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 23:22:20.7652
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3534b3d7-316c-4bc9-9ede-605c860f49d2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WCvToJHywKcYX+gkPXAAU+ehzybnAFc1+k6C8+JnLc1DOovQf/DoCmWtgdoMVkgzQ7hK67dWmKuggbFDo3VtmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB2182
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The definition of the tpacket_auxdata struct in the manpage is not the
same as the definition found in /include/uapi/linux/if_packet.h.

In particular, instead of a tp_padding field, there is a tp_vlan_tpid
field. An example of a project using this field is libpcap[1].

[1]: https://github.com/the-tcpdump-group/libpcap/blob/master/pcap-linux.c#=
L349
---
 man7/packet.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/packet.7 b/man7/packet.7
index b624d47d1..ecbd63409 100644
--- a/man7/packet.7
+++ b/man7/packet.7
@@ -257,7 +257,7 @@ struct tpacket_auxdata {
     __u16 tp_mac;
     __u16 tp_net;
     __u16 tp_vlan_tci;
-    __u16 tp_padding;
+    __u16 tp_vlan_tpid;
 };
 .EE
 .in
--=20
2.20.1

