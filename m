Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9A813E1E75
	for <lists+linux-man@lfdr.de>; Fri,  6 Aug 2021 00:10:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231902AbhHEWKr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 18:10:47 -0400
Received: from mail523.linkedin.com ([108.174.6.123]:57833 "EHLO
        mail523.linkedin.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231337AbhHEWKq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Aug 2021 18:10:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linkedin.com;
        s=d2048-201806-01; t=1628201431;
        bh=PTAmefV7YdyHssP96U94ZhKkp0jog6l307d02LijxtU=;
        h=From:To:Subject:Date:Content-Type:MIME-Version;
        b=mN8oHosZDkMjoSj4HPB9lVhOiZm/yfbhxHql1VFib7lKVQqrcS7/6tkSkPpZA8oql
         YLOCEftEx42wSwOcx3x8Ayl0KhYS7E6c6m0ZMDt5WlUAmN9EHblXswGQ1IiXQ+tDMa
         jplHsszUBrHY5u88WchnjbYSq3YxF4mXzPGIA1bkZglUz6SEv/FS+IhWJ2Si2Ta55/
         TrayhDkWyxkgbgPOthjlhAv6rjUgKNrUOTs4fJKyvYnAKuRUkgcZdkOcXTzpzGMzko
         x5zqM4XyzJOm6VG5RhFrR1/B6h7ysisXNM25S/eIXkh8HIQNWFD0RTluTinz/55ooe
         Z/rxkpX7u+RYg==
Authentication-Results:  mail523.prod.linkedin.com x-tls.subject="/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/CN=mail.protection.outlook.com"; auth=pass (cipher=ECDHE-RSA-AES256-GCM-SHA384)
Authentication-Results: mail523.prod.linkedin.com; iprev=pass policy.iprev="2a01:111:f400:7eaa::209"; spf=softfail smtp.mailfrom="gbanks@linkedin.com" smtp.helo="nam11-dm6-obe.outbound.protection.outlook.com"; dkim=pass header.d=microsoft.onmicrosoft.com; tls=pass (verified) key.ciphersuite="TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384" key.length="256" tls.v="tlsv1.2" cert.client="C=US,ST=Washington,L=Redmond,O=Microsoft Corporation,CN=mail.protection.outlook.com" cert.clientissuer="C=US,O=DigiCert Inc,CN=DigiCert Cloud Services CA-1"
Received: from [2a01:111:f400:7eaa::209] ([2a01:111:f400:7eaa::209.36537] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
        by mail523.prod.linkedin.com (envelope-from <gbanks@linkedin.com>)
        (ecelerity 3.6.21.53563 r(Core:3.6.21.0)) with ESMTPS (cipher=ECDHE-RSA-AES256-GCM-SHA384
        subject="/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/CN=mail.protection.outlook.com") 
        id A4/56-26186-7D16C016; Thu, 05 Aug 2021 22:10:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlyqCLba4RQ1d52CKPI2gJUu/a31WO64zJ/IlKUaM/yyZWGR0h29RmJ2XcKtDkEApTZnnSLuqTJouUzn57cM9yPrLEEF9zDxKDN1At6UWPHsYyh0x5Yx3hlOC40K9KRfW9UR6v88sYhZ1wC28dUhgRPNz0jRGe/u4pd3KWcG4iZhkHD8meCXil57A2BqCksrEGo7PzkY7vcQU4roIfHgaaIbjNuGtjXNr4hIT4wPbH8WSCiM95p8zyFOU+o5Cp1NDTOV4mDQc1OfXvxIMjMQ1lRSioTvouZzMpyfYnEnpfYkwnhjnk20lr/KZOqUHkx5ovjJuaXehC3kF80rjKmRUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PTAmefV7YdyHssP96U94ZhKkp0jog6l307d02LijxtU=;
 b=WxdN7RdXhsSthNUGUjUg0zOQpYFE2SuXskTHw4FWi6dIW4buiQF+T7iovNd8PcrRxlVN5bWLL4eHNfSWaFixdJ+nOOTKaPS9YAnwC16+VuMwp8G+z+WO22CIMUfmxfB2CDkBNmHHWDa/NKFBNpGPZm18gummaxhtccfa7SQvMk5LTbottFniAmQysKD8g8IeJRWqF3k4HDdStJ6TtNuuyq4gZsPu/OkLyPnKe9PhkTjAVS10Kd6nhoQy1g8s56S2h5wCwH/PbXo3S2LuKzdxGb/+/+TbjGwSdug5NHvRXOeka+RSLSed4v1NfB8MfnS5vzijH3bc7SPvn2ZmIEUqpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=linkedin.com; dmarc=pass action=none header.from=linkedin.com;
 dkim=pass header.d=linkedin.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.onmicrosoft.com; s=selector2-microsoft-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PTAmefV7YdyHssP96U94ZhKkp0jog6l307d02LijxtU=;
 b=5l5DiWLyRGj0l5+e7vHelvBW2uHNxp5gy90UuhT5pURc5Sr61F9W6xSVYGymXjp+t5cpQjxZWUgHQdgHtnWl58RXgG9Xb8UlXTKWYW2lm8dBcsk56R2flKoTEGn45HmyVfTYSHzlDVGhm4WdbxQ/FL9OYNryU7WS+EYftgvPVPU=
Received: from BL0PR2101MB1316.namprd21.prod.outlook.com
 (2603:10b6:208:92::10) by BL0PR2101MB0977.namprd21.prod.outlook.com
 (2603:10b6:207:30::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.3; Thu, 5 Aug
 2021 22:10:29 +0000
Received: from BL0PR2101MB1316.namprd21.prod.outlook.com
 ([fe80::85a0:b805:1191:bb82]) by BL0PR2101MB1316.namprd21.prod.outlook.com
 ([fe80::85a0:b805:1191:bb82%9]) with mapi id 15.20.4415.007; Thu, 5 Aug 2021
 22:10:29 +0000
From:   Greg Banks <gbanks@linkedin.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        DJ Delorie <dj@redhat.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: nscd.conf.5: describe reloading, clarifications, v4
Thread-Topic: nscd.conf.5: describe reloading, clarifications, v4
Thread-Index: AQHXikYM0CeYUayWUEqBTRUBJkCElQ==
Date:   Thu, 5 Aug 2021 22:10:29 +0000
Message-ID: <BL0PR2101MB13169E7F7783D74DE828D83EA1F29@BL0PR2101MB1316.namprd21.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2021-08-05T22:10:29.138Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=linkedin.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5df52a79-d760-493b-8716-08d9585dd608
x-ms-traffictypediagnostic: BL0PR2101MB0977:
x-microsoft-antispam-prvs: <BL0PR2101MB09778F105022833329024B91A1F29@BL0PR2101MB0977.namprd21.prod.outlook.com>
x-o365ent-eop-header: Message Processed By - CBR_LInkedIn_Mail_To_External
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6uyKGEOEEJb6m1WI1we8tt9vqDPqRsUlfdiNe+32favuzF90yQ2alHMIxTfy3F7n5iu3/AIp6kvRwMHuLTQu35mN69NazwcY/pZRKgUpjuNr1SdIiBX7LXzqfVG7AWvhq5appViom9U8yOktUxxf4xlIfvdd1cSzDKQC7AeGMFhENgUmF6tNcrqqSijnEC9WRd9TOqzivvGCBAQA/fzKTUSU/VZ2oZWCeKReFKPkYAQePMEjUd74C7Eh39KKqaQxfmuodMSGmd1RarbkkgjyQnbrhvuaHf4VA5x6pwy0JhRtX10Cd7JZerqFCM7AONP1ZuPiIiBWj9MDNKjAMqxd933Rsi7THMDT2Fv+KlVPUmFyfn+NNSH3NC9qykpa3sCFhhJ2Qai4R7HhsWeUgXOe6Ni2RMJkZuBsK03JJAvhugQRteAKIWDrwak2GwIR0KxyjVrvIrPeVk7p16FqSNZ44a7PVrc8ynqLiBRE7EdejUGM0W3MX0pQZvOpA/uvok4mfl552WTQNR3wj8tLwy7PEyLhjXnqHszQ0IfbQqC//+nnUqEid2d5BoO16LAdRQFXsmCldTOcCclHmlrMF+75CloWopiK3rAkmnd9glz/UibaYUAHfBwrQw5yZH/P+8TAvvDFTnms9tuwV/FHozjQ0chBMSFpOOw4J/quW8v9ogQXvcew1ExYyyDKShA/UpVWHNR5rvv67n95b5ytbvvkJydh4q3YPzv8xbWLwydriwAyWg7CsW82DE3HCCp3oMy/
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR2101MB1316.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8990500004)(66446008)(66476007)(66946007)(508600001)(4326008)(71200400001)(76116006)(38070700005)(5660300002)(26005)(64756008)(186003)(6506007)(33656002)(52536014)(7696005)(6916009)(66556008)(8936002)(8676002)(316002)(54906003)(86362001)(55016002)(38100700002)(83380400001)(9686003)(122000001)(2906002)(82960400001)(82950400001)(2004002)(134885004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?J9O0fP8qVFXYboOt/dR4JmqNM+eIntYBoHXIDgCaAixfM59vc19lx2sNYx?=
 =?iso-8859-1?Q?NoBwUEHFmhY/WYDlqu6sPS7/LALd6NAq5uruKgLVikwgvIVkFcAXdQNS0q?=
 =?iso-8859-1?Q?hpDK0+lD+yus0d2J9+OVZzi4d8Tf7yrsPUt5tf6bC8qIEgcc8VTQ9lOKWZ?=
 =?iso-8859-1?Q?qyHD2Cy9N4/LmIhvIL8Z7Oh6mx5fIbqSE7i7RO6sxkUwVzbqe/rl6uIxRu?=
 =?iso-8859-1?Q?zEYEm+rVOti1abj4Of8jVK77h1z/ZwLV0imzEh/b38AePyvYqyC6wi3pKr?=
 =?iso-8859-1?Q?maQcJEp9PhZW7qP0TDkCBw8i+LU50e6QtWVBdiBS0SZzt3z4WcKuVdghUn?=
 =?iso-8859-1?Q?QZDvGm3LEm7oQDRfDkM0SoR9IccuXGIeOA3TP8GpJB8xEf8xnobzqtTeZC?=
 =?iso-8859-1?Q?s0NAOgsdzBxcGhIAadnh36/8XCe5TA9mqzf/3+2dVGArSNhN9mKribTmaA?=
 =?iso-8859-1?Q?Et4TtLpHoTIbdG+e7tLI2rkH8G7PfTnRubKtJ3K0NWEATXSRN9Lv6Ybo+N?=
 =?iso-8859-1?Q?assTwvkvA+biZKUL55hB7jeT36MOkDIaNpkKWUo43IFQED4Fg1PkvbP1Ug?=
 =?iso-8859-1?Q?GUY1Ug+gTnPCWsJRe0G8BcSdOnxN2WIyejLtbE1mfaICAP5lpuaavlUAfQ?=
 =?iso-8859-1?Q?oHI1QHexevC1i+HVsS5n3sr3bcnKlE237cMXjNYPuD+U8QrEBxchRnCxXR?=
 =?iso-8859-1?Q?msinBz+bi2yVAQK9EI5Y2pxdKl9umPzTT28pDX1dnj/H0Rq/nxI4od/wx1?=
 =?iso-8859-1?Q?okI5fhwbf5FJ/vyDD1iN6vLWCCe8KEmYvXL2I/PF6nQLWe0vs/7F01CcMI?=
 =?iso-8859-1?Q?N+dPhRrez4/fmc0VL2QWq17yDMTaCKBmhcYqyo7rwVxD6mE/nPyx9YcODY?=
 =?iso-8859-1?Q?mgXM/j9nQB2LpeT7dFPAUbiVvY9nL0ZwCLY7I1IziR6f1YRU1gyHlRIkiU?=
 =?iso-8859-1?Q?n4mhUl4hvvlGKVvOEt92YgMKzlSNRJUddKL+c/bL59148y1aZKZk09v3G/?=
 =?iso-8859-1?Q?BdB7Ne56vCs9sUGzOFlr6RnAYBGdl7woHuAUTaQqHpCUT3ycvRtkvVCq2h?=
 =?iso-8859-1?Q?glIVvoPbLP15/myuargGfKeb6q/t3sWV+/BgEmcgYtxWu6AzbqwEpaGbY+?=
 =?iso-8859-1?Q?115HZ221gCpt6tdKSh0bMsijeLfoXfVvuY2G3FP0qLuHmNVsQvGUL/JI22?=
 =?iso-8859-1?Q?4uffHezTTI3QkjGOfD2ZO7lCaFOlrIJ9iW5TdCSnUSMdW3V93qKWD93xNL?=
 =?iso-8859-1?Q?97doHnQtDO2w98fwZpqUzglOPx+E6p2s7JKyeOA9T7n1xjjl/2huvikiR2?=
 =?iso-8859-1?Q?FUvV4A2Bu28XGWY7QKxlP2B72jjMhoU0lN8VZ2ElEl+JIa8=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: linkedin.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR2101MB1316.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5df52a79-d760-493b-8716-08d9585dd608
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 22:10:29.4666
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7jSp8P0M6vmbL73oEFJCJVVrxrzZXFr7n2YJqYAJZE+x0lZ+p1/WlRvyrOb87+3fACcvCaKgOTnXUoWySE+gdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR2101MB0977
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
  git@github.com:gnb/man-pages.git nscd.conf.5.v4=0A=
=0A=
for you to fetch changes up to 2cb4e042b6aee518f1673d8897fd06056bd87767:=0A=
=0A=
  nscd.conf.5: describe reloading, clarifications, v4 (2021-08-05 15:07:20 =
-0700)=0A=
=0A=
----------------------------------------------------------------=0A=
Greg Banks (1):=0A=
      nscd.conf.5: describe reloading, clarifications, v4=0A=
=0A=
 man5/nscd.conf.5 | 112 +++++++++++++++++++++++++++++++++++++++++++++++++++=
++--=0A=
 1 file changed, 109 insertions(+), 3 deletions(-)=0A=
=0A=
diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5=0A=
index 7356bf7c2..9635922fd 100644=0A=
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
@@ -53,9 +54,12 @@ The default is 0.=0A=
 .B threads=0A=
 .I number=0A=
 .RS=0A=
-This is the number of threads that are started to wait for=0A=
+This is the initial number of threads that are started to wait for=0A=
 requests.=0A=
 At least five threads will always be created.=0A=
+The number of threads may increase dynamically up to=0A=
+.B max\-threads=0A=
+in response to demand from clients, but never decreases.=0A=
 .RE=0A=
 .PP=0A=
 .B max\-threads=0A=
@@ -83,9 +87,20 @@ Specifies the user who is allowed to request statistics.=
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
@@ -128,6 +143,9 @@ in the specified cache for=0A=
 is in seconds.=0A=
 Larger values increase cache hit rates and reduce mean=0A=
 response times, but increase problems with cache coherence.=0A=
+Note that for some name services (including specifically DNS)=0A=
+the TTL returned from the name service is used and=0A=
+this attribute is ignored.=0A=
 .RE=0A=
 .PP=0A=
 .B negative\-time\-to\-live=0A=
@@ -166,6 +184,7 @@ The files are=0A=
 .IR /etc/passwd ,=0A=
 .IR /etc/group ,=0A=
 .IR /etc/hosts ,=0A=
+.IR /etc/resolv.conf ,=0A=
 .IR /etc/services ,=0A=
 and=0A=
 .IR /etc/netgroup .=0A=
@@ -194,6 +213,8 @@ is shared with the clients so=0A=
 that they can directly search in them instead of having to ask the=0A=
 daemon over the socket each time a lookup is performed.=0A=
 The default is no.=0A=
+Note that a cache miss will still result in=0A=
+asking the daemon over the socket.=0A=
 .RE=0A=
 .PP=0A=
 .B max\-db\-size=0A=
@@ -236,6 +257,91 @@ from the source code of=0A=
 and are used if not overridden in the configuration file.=0A=
 The default values used in the configuration file of=0A=
 your distribution might differ.=0A=
+.SS Reloading=0A=
+.BR nscd (8)=0A=
+has a feature called reloading whose behavior can be surprising.=0A=
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
+Instead, at the expiry time=0A=
+.B nscd=0A=
+will "reload",=0A=
+i.e., re-issue to the name service the same query that created the cached =
entry,=0A=
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
+A request from a client which hits the entry will reset the=0A=
+reload counter on the entry.=0A=
+Purging the cache using=0A=
+.I nscd\~-i=0A=
+overrides the reload logic and removes the entry.=0A=
+.PP=0A=
+Reloading has the effect of extending cache entry TTLs without=0A=
+compromising on cache coherency,=0A=
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
+after more then 1 TTL but before=0A=
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
+as it will result in a cache that never expires entries and puts never-end=
ing=0A=
+additional load on the backing name service.=0A=
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
