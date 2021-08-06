Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC6FB3E2E7A
	for <lists+linux-man@lfdr.de>; Fri,  6 Aug 2021 18:42:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234907AbhHFQnJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Aug 2021 12:43:09 -0400
Received: from mail523.linkedin.com ([108.174.6.123]:52227 "EHLO
        mail523.linkedin.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229665AbhHFQnI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Aug 2021 12:43:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linkedin.com;
        s=d2048-201806-01; t=1628268110;
        bh=/ZdXwvVR+hVTSWX/oxJNXDDa961UxdvnE092+EjMopk=;
        h=From:To:Subject:Date:Content-Type:MIME-Version;
        b=oGc1EWT0IO2Rv56uudf4h4GJixBaoocunkb5Vhlq/Uf91Lace+wzaLxCIve/lrfd5
         RrVkihehDz12CcYVQe3kYHqzSiL8ZisL5ms4QlpY/dpUqB6V0ISBRGFhhN8G0oFseK
         9acFuR6xcVLQumGQm7FbIIoYhzEKIzl4lyNUDZ+ZNoIFKtcv03XLGkadUGuCuduxBr
         zlzm4Js3kByEgxkqd7TnQlUG50N8P74qxL0xbpXdIEaBtqjPFLUcw1hBbJmCl5Qgc9
         fN3n5m7DSZxHmfwWyLW1OcRFWoEQeSbevgWiOQU1FIXdGW8fMYAfvP2krqg2+pYrtB
         4n25Sde8jXtRA==
Authentication-Results:  mail523.prod.linkedin.com x-tls.subject="/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/CN=mail.protection.outlook.com"; auth=pass (cipher=ECDHE-RSA-AES256-GCM-SHA384)
Authentication-Results: mail523.prod.linkedin.com; iprev=pass policy.iprev="2a01:111:f400:7eaa::207"; spf=softfail smtp.mailfrom="gbanks@linkedin.com" smtp.helo="nam11-dm6-obe.outbound.protection.outlook.com"; dkim=pass header.d=microsoft.onmicrosoft.com; tls=pass (verified) key.ciphersuite="TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384" key.length="256" tls.v="tlsv1.2" cert.client="C=US,ST=Washington,L=Redmond,O=Microsoft Corporation,CN=mail.protection.outlook.com" cert.clientissuer="C=US,O=DigiCert Inc,CN=DigiCert Cloud Services CA-1"
Received: from [2a01:111:f400:7eaa::207] ([2a01:111:f400:7eaa::207.33923] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
        by mail523.prod.linkedin.com (envelope-from <gbanks@linkedin.com>)
        (ecelerity 3.6.21.53563 r(Core:3.6.21.0)) with ESMTPS (cipher=ECDHE-RSA-AES256-GCM-SHA384
        subject="/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/CN=mail.protection.outlook.com") 
        id B2/3F-26186-E466D016; Fri, 06 Aug 2021 16:41:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PT0cmOxQipiBFOy/SjMRZkoaynoQ9qiv294AiGm+KY0MMGEeRmJJXm0J4P/MzU+mUCQJipFLArGr6F2fqM/aCyPRbR6E7DqoRuhW99Extp85ga0LQ4r1StQm3XuwCmVTGxgss39uJfcP8fVCxtL03TFuajuUeYfuIqE2wAa/ZSUOp+HlXFwrJYKUOwJmhjHPZah3YRSBaOjPTi/b6u/NY3N01fAxVfgAc+oAc2AFkmDKEEQfHvPj9fNVxiQF1Vf+kdrMdcfQ1AWenRwa0cX3Q6lFsqh02IoB0wEh560+y/P59v4pZUgaOaxTi9+A8q5KAXwgDCoeqDpX/7b4qmxM/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ZdXwvVR+hVTSWX/oxJNXDDa961UxdvnE092+EjMopk=;
 b=SHmCo7tKg2snvwhlwqBr5HrqtpdJ6vBvr8L9DA9OzKaXKWRwtpVBhZElU16FN5iozKj7z6pLIbFwvAQYjrtwyH0kfH9PY83tAU7XD7czBXl8f2hrXjMVone188Y1IolCC8Rfg4nLzwzORo63hS7uBzs8U4A46ecTR5gRVOf/MSj5eBfy8wSPGT5gKiA3IOBmplbCL+QzcUouSdBb4vtAiznXUAexw6RWrj0P7VRRPuVwWEBMjeV4PVHJO7CZoDJ746zhgNCgbCkiKXhIIm4Brgs/w45tVYW64+zbIX4R8bZWmVIrT9TYT4nfLmAlni8QI3s+xtjda8MiJUdIGbc2Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=linkedin.com; dmarc=pass action=none header.from=linkedin.com;
 dkim=pass header.d=linkedin.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.onmicrosoft.com; s=selector2-microsoft-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ZdXwvVR+hVTSWX/oxJNXDDa961UxdvnE092+EjMopk=;
 b=mASlHlNcgY+DcV9H8mkICsVU5IpgOZP1TsMpFS+lEMu3qQTmKecPA4gyQg12+tkpUGt200zGxGg3tawuYNEssrWzN1iC7CdEqTd2Z/x8zPyuhW6HY8ryKG1pyOT7qSJFY9jlAGadkNc7WbmIG8fjd5miMFU/5MCR06SAESQ1JW8=
Received: from BL0PR2101MB1316.namprd21.prod.outlook.com
 (2603:10b6:208:92::10) by BL0PR2101MB1041.namprd21.prod.outlook.com
 (2603:10b6:207:36::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.1; Fri, 6 Aug
 2021 16:41:38 +0000
Received: from BL0PR2101MB1316.namprd21.prod.outlook.com
 ([fe80::85a0:b805:1191:bb82]) by BL0PR2101MB1316.namprd21.prod.outlook.com
 ([fe80::85a0:b805:1191:bb82%9]) with mapi id 15.20.4415.009; Fri, 6 Aug 2021
 16:41:38 +0000
From:   Greg Banks <gbanks@linkedin.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        DJ Delorie <dj@redhat.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: [patch] nscd.conf.5: describe reloading, clarifications, v5
Thread-Topic: [patch] nscd.conf.5: describe reloading, clarifications, v5
Thread-Index: AQHXiuG/mtX29mJjH0qJXrFoIv0EMQ==
Date:   Fri, 6 Aug 2021 16:41:38 +0000
Message-ID: <BL0PR2101MB131635E1A9DD3F853D9EAE86A1F39@BL0PR2101MB1316.namprd21.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2021-08-06T16:41:38.061Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=linkedin.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffc8748b-f343-4f6f-c6ef-08d958f90fea
x-ms-traffictypediagnostic: BL0PR2101MB1041:
x-microsoft-antispam-prvs: <BL0PR2101MB1041B944BF50CC66EFF57992A1F39@BL0PR2101MB1041.namprd21.prod.outlook.com>
x-o365ent-eop-header: Message Processed By - CBR_LInkedIn_Mail_To_External
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FSNmCTNvY0ZIUmRNmK2vbZe+AWdcaczmkcMQAlkmah3KJhjnJpehk1rRhmg6kf6jk5mm3ABJAkHIaNYiChfRppAKGQag00Sn1DWpmmGpsYEztu2rOwzVRgod/PzDH70t1p59c2oV7TfxQy2Xm744RZl8yLAAepxsv0HTHEJOJn3YXccguYZe7erFX3xLYpY+LIMCGkyOoNZKTAqsj3iMJ0OuovWgspRRX7s4MBVW40fQBKtqTFlVc0R2BzHaMrdvBhyZWdskP7XZb+HK/GFlXgrQXdXKyRtfi2RWu7OYLPAp6ffyvNkixSFWfeCvLGZG7KQq9DCu0o8BOeU1jSaNSkpNUCNhcIH2V6DUuxRhsMZa55UcZ0WyZy9rq8E74TdTwLkB83+ThzsaJz+sFQrU6h3cu8Mhd36WEtRHGuDdvceDLFwvuov59qq0LifCgXxjsg0wLEJJE5xCOLdln+h3dD8e92FApN1gnURzrchTVOIuPiay6xwLiKjN5LxI53LDzh0E7L69mnbYXuigC4Oy+Uz0Gw7Gf03NM2bFHEUQhxQx/Flv5/pBBQb7/uPg4tf9sPTFf5MF4L9HoRRlOoMzF7cqT2QFATHIrdGqFhPXGGgWi3vdQziCH6xLB/cX80+NXks+i5PNhztz9Kq3wUG782mBlkKf+DOv9/byPbuRO89KhoarYg/gLXatgbQT46xhRrpnJmcbgpYxHDCPSvF1FfteS4/6Bj2L+IfqDx1klQDOeSNA5zb/fOlIM28IW4hS
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR2101MB1316.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(71200400001)(6916009)(2906002)(52536014)(54906003)(82950400001)(9686003)(83380400001)(122000001)(66556008)(66946007)(33656002)(66446008)(76116006)(66476007)(38100700002)(82960400001)(86362001)(64756008)(5660300002)(186003)(4326008)(8936002)(26005)(7696005)(316002)(8676002)(8990500004)(38070700005)(508600001)(55016002)(6506007)(2004002)(134885004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?RmxMdyJEFNzbwsmX72gOZIKWQhanXvBUyB0a9a56yF7ulrCHr88ZRoeeqW?=
 =?iso-8859-1?Q?/zH63PU4dVyVQcOgyZt3MGQ6QFUyA0e4Vjpzh9ASCI9jmdDyP7AHBeBj1k?=
 =?iso-8859-1?Q?yVdBlQnOUFm+ijvsY1/VweUuJluy+s9gLRy2aKSEWBcUcVq+2mcs5Y7KnB?=
 =?iso-8859-1?Q?IPvOnp5TP391T3Suffhu/f8fFxcVXZ/qWo2P/IZm8eyFPw85mQ0JVkueTH?=
 =?iso-8859-1?Q?Y8oI/Pb/RWxXXYx0KnqzXr9rIMAOnRUaXNBqeP0fwsXyWhLwdER50I0zVi?=
 =?iso-8859-1?Q?sBt5G0u12A63ICQZIPwOyTCB3g4PTt1gA+RZ3s1qX7nUJELmFKQmUjwA/8?=
 =?iso-8859-1?Q?dGH4AGDLnDKBxzQrw3zmOYga6EKcSRjdMwIhGAOQc5MPWEmm0nxgs0E2jf?=
 =?iso-8859-1?Q?brXPMHl9DRVqtUOq/ekjlgPftO7ZrtCa10i/ovXsaWOjJpbrvrP9V2bPTV?=
 =?iso-8859-1?Q?1Q0chZ+mSzPw5FFaxPv6V16/uK+o3sdtHpjSD6aHVvFSk+qVuiYLYCMAiZ?=
 =?iso-8859-1?Q?HZC2wJ9FcBNj/Geab4vZMMLGX5HmsTkQxeJXmE5sgGhNNRXQNwdDQcdM/2?=
 =?iso-8859-1?Q?LimBC0hvD1X7eXHItvxkCOQtgkKu99W23sBdpz9BS/nGM8NuUNrqjaN/yf?=
 =?iso-8859-1?Q?Zh3w22jB+53FZ2U4qVRYBURbHmE+ijnk1v74roUr4/OeSd3He5j6LTQG1Y?=
 =?iso-8859-1?Q?EALC0+bqB1utJ0Z+b2OT67pOLimBA/qBwOAKl0xWZNe89hBoS0u7QZ6Dvg?=
 =?iso-8859-1?Q?wzNlpHxbaLO5/CFMZTCCCaplZUk5YupWw/gvwjQSEcRo0Yl3BmgBW5g9jm?=
 =?iso-8859-1?Q?yBLBC/0l7WzLtpgYkS3wh0hZA48J/AfxCjf9GWCuPY7gc35ApN3KltBvkG?=
 =?iso-8859-1?Q?aCAFq8IPIdqaykAQxIWAzSTXqUEeTwwC+o3EjE0fqqSD8tAFdxGNOlVAk2?=
 =?iso-8859-1?Q?947X975ZEIx9rIE5L+1tlakTSzoeG1fMK4HKJZFKBxmY9t2Jyy8upBzVpN?=
 =?iso-8859-1?Q?qWnLO/AtSjW4f10x3qvaJUSngjW8lq0CDH/I2ma6VGBeDidNj5Z5Gv2UuQ?=
 =?iso-8859-1?Q?GyJRRVqE1NqmFOQKtE8jSDaTQimHxSJrvVXlbGN8XvV03ysb7b+F3VNHYQ?=
 =?iso-8859-1?Q?kJZ1LDhQYV/wSeBACDWBJrVYSE3SKJ0wT19NX1jueTtLgehmpd4o3Hv60W?=
 =?iso-8859-1?Q?EhQUy17Qx6EqakELLJ+vC9tOkPCckYJftxs2C1oO6l1W5az8Cdyicf5rU5?=
 =?iso-8859-1?Q?RyRoX/JnVyVxeLT7+vorFpVG0V28im3SFMJiFuZywL7fKqU1wRVVvrzhXh?=
 =?iso-8859-1?Q?pDyjhobzT3iIeDAFG8qwo0IDFhOi0OanUL8k7I05nBl1pOg=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: linkedin.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR2101MB1316.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffc8748b-f343-4f6f-c6ef-08d958f90fea
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 16:41:38.5845
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Uo/3Bu0PH3QZdOaU0uZONUAnwp/cxKZqfEc3iVgcgghSaYdc2Ry+I0r7UCZb3MU0prbuXJiZDHHLM/uQ6gVNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR2101MB1041
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The following changes since commit fbe71b1b79e72be3b9afc44b5d479e7fd84b598a=
:=0A=
=0A=
  ioctl_tty.2: wfix (2021-07-26 01:31:54 +0200)=0A=
=0A=
are available in the Git repository at:=0A=
=0A=
  git@github.com:gnb/man-pages.git nscd.conf.5.v5=0A=
=0A=
for you to fetch changes up to de00b682c0d2280c92c692fbcdb6cf5d4ca9bc01:=0A=
=0A=
  nscd.conf.5: describe reloading, clarifications, v5 (2021-08-06 09:26:57 =
-0700)=0A=
=0A=
----------------------------------------------------------------=0A=
Greg Banks (1):=0A=
      nscd.conf.5: describe reloading, clarifications, v5=0A=
=0A=
 man5/nscd.conf.5 | 115 +++++++++++++++++++++++++++++++++++++++++++++++++++=
++--=0A=
 1 file changed, 112 insertions(+), 3 deletions(-)=0A=
=0A=
diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5=0A=
index 7356bf7c2..25ee4901b 100644=0A=
--- a/man5/nscd.conf.5=0A=
+++ b/man5/nscd.conf.5=0A=
@@ -1,5 +1,6 @@=0A=
 .\" Copyright (c) 1999, 2000 SuSE GmbH Nuernberg, Germany=0A=
 .\" Author: Thorsten Kukuk <kukuk@suse.de>=0A=
+.\" Updates: Greg Banks <gbanks@linkedin.com> Copyright (c) 2021 Microsoft=
 Corp.=0A=
 .\"=0A=
 .\" %%%LICENSE_START(GPLv2+_SW_3_PARA)=0A=
 .\" This program is free software; you can redistribute it and/or=0A=
@@ -53,9 +54,13 @@ The default is 0.=0A=
 .B threads=0A=
 .I number=0A=
 .RS=0A=
-This is the number of threads that are started to wait for=0A=
+This is the initial number of threads that are started to wait for=0A=
 requests.=0A=
 At least five threads will always be created.=0A=
+The number of threads may increase dynamically up to=0A=
+.B max\-threads=0A=
+in response to demand from clients,=0A=
+but never decreases.=0A=
 .RE=0A=
 .PP=0A=
 .B max\-threads=0A=
@@ -83,9 +88,20 @@ Specifies the user who is allowed to request statistics.=
=0A=
 unlimited |=0A=
 .I number=0A=
 .RS=0A=
-Limit on the number of times a cached entry gets reloaded without being us=
ed=0A=
+Sets a limit on the number of times a cached entry=0A=
+gets reloaded without being used=0A=
 before it gets removed.=0A=
-The default is 5.=0A=
+The limit can take values ranging from 0 to 254;=0A=
+values 255 or higher behave the same as=0A=
+.BR unlimited .=0A=
+Limit values can be specified in either decimal=0A=
+or hexadecimal with a "0x" prefix.=0A=
+The special value=0A=
+.B unlimited=0A=
+is case-insensitive.=0A=
+The default limit is 5.=0A=
+A limit of 0 turns off the reloading feature.=0A=
+See NOTES below for further discussion of reloading.=0A=
 .RE=0A=
 .PP=0A=
 .B paranoia=0A=
@@ -128,6 +144,9 @@ in the specified cache for=0A=
 is in seconds.=0A=
 Larger values increase cache hit rates and reduce mean=0A=
 response times, but increase problems with cache coherence.=0A=
+Note that for some name services (including specifically DNS)=0A=
+the TTL returned from the name service is used and=0A=
+this attribute is ignored.=0A=
 .RE=0A=
 .PP=0A=
 .B negative\-time\-to\-live=0A=
@@ -166,6 +185,7 @@ The files are=0A=
 .IR /etc/passwd ,=0A=
 .IR /etc/group ,=0A=
 .IR /etc/hosts ,=0A=
+.IR /etc/resolv.conf ,=0A=
 .IR /etc/services ,=0A=
 and=0A=
 .IR /etc/netgroup .=0A=
@@ -194,6 +214,8 @@ is shared with the clients so=0A=
 that they can directly search in them instead of having to ask the=0A=
 daemon over the socket each time a lookup is performed.=0A=
 The default is no.=0A=
+Note that a cache miss will still result in=0A=
+asking the daemon over the socket.=0A=
 .RE=0A=
 .PP=0A=
 .B max\-db\-size=0A=
@@ -236,6 +258,93 @@ from the source code of=0A=
 and are used if not overridden in the configuration file.=0A=
 The default values used in the configuration file of=0A=
 your distribution might differ.=0A=
+.SS Reloading=0A=
+.BR nscd (8)=0A=
+has a feature called reloading,=0A=
+whose behavior can be surprising.=0A=
+.PP=0A=
+Reloading is enabled when the=0A=
+.B reload-count=0A=
+attribute has a non-zero value.=0A=
+The default value in the source code enables reloading,=0A=
+although your distribution may differ.=0A=
+.PP=0A=
+When reloading is enabled,=0A=
+positive cached entries (the results of successful queries)=0A=
+do not simply expire when their TTL is up.=0A=
+Instead, at the expiry time,=0A=
+.B nscd=0A=
+will "reload",=0A=
+i.e.,=0A=
+re-issue to the name service the same query that created the cached entry,=
=0A=
+to get a new value to cache.=0A=
+Depending on=0A=
+.I /etc/nsswitch.conf=0A=
+this may mean that a DNS, LDAP, or NIS request is made.=0A=
+If the new query is successful,=0A=
+reloading will repeat when the new value would expire,=0A=
+until=0A=
+.B reload-count=0A=
+reloads have happened for the entry,=0A=
+and only then will it actually be removed from the cache.=0A=
+A request from a client which hits the entry will=0A=
+reset the reload counter on the entry.=0A=
+Purging the cache using=0A=
+.I nscd\~-i=0A=
+overrides the reload logic and removes the entry.=0A=
+.PP=0A=
+Reloading has the effect of extending cache entry TTLs=0A=
+without compromising on cache coherency,=0A=
+at the cost of additional load on the backing name service.=0A=
+Whether this is a good idea on your system depends on=0A=
+details of your applications' behavior,=0A=
+your name service,=0A=
+and the effective TTL values of your cache entries.=0A=
+Note that for some name services=0A=
+(for example, DNS),=0A=
+the effective TTL is the value returned from the name service and=0A=
+.I not=0A=
+the value of the=0A=
+.B positive\-time\-to\-live=0A=
+attribute.=0A=
+.PP=0A=
+Please consider the following advice carefully:=0A=
+.IP \(bu=0A=
+If your application will make a second request for the same name,=0A=
+after more than 1 TTL but before=0A=
+.B reload\-count=0A=
+TTLs,=0A=
+and is sensitive to the latency of a cache miss,=0A=
+then reloading may be a good idea for you.=0A=
+.IP \(bu=0A=
+If your name service is configured to return very short TTLs,=0A=
+and your applications only make requests rarely under normal circumstances=
,=0A=
+then reloading may result in additional load on your backing name service=
=0A=
+without any benefit to applications,=0A=
+which is probably a bad idea for you.=0A=
+.IP \(bu=0A=
+If your name service capacity is limited,=0A=
+reloading may have the surprising effect of=0A=
+increasing load on your name service instead of reducing it,=0A=
+and may be a bad idea for you.=0A=
+.IP \(bu=0A=
+Setting=0A=
+.B reload\-count=0A=
+to=0A=
+.B unlimited=0A=
+is almost never a good idea,=0A=
+as it will result in a cache that never expires entries=0A=
+and puts never-ending additional load on the backing name service.=0A=
+.PP=0A=
+Some distributions have an init script for=0A=
+.BR nscd (8)=0A=
+with a=0A=
+.I reload=0A=
+command which uses=0A=
+.I nscd\~-i=0A=
+to purge the cache.=0A=
+That use of the word "reload" is entirely different=0A=
+from the "reloading" described here.=0A=
 .SH SEE ALSO=0A=
 .BR nscd (8)=0A=
 .\" .SH AUTHOR=0A=
