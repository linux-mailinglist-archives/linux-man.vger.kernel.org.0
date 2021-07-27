Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 351563D8259
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 00:16:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232142AbhG0WQO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Jul 2021 18:16:14 -0400
Received: from mail323.linkedin.com ([108.174.3.123]:44449 "EHLO
        mail323.linkedin.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231989AbhG0WQO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Jul 2021 18:16:14 -0400
X-Greylist: delayed 422 seconds by postgrey-1.27 at vger.kernel.org; Tue, 27 Jul 2021 18:16:14 EDT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linkedin.com;
        s=d2048-201806-01; t=1627423750;
        bh=xIBOj/FTzuClzGwUJD6TUM2804RZQH0myMnK0IYkUwg=;
        h=From:To:Subject:Date:Content-Type:MIME-Version;
        b=XMxtZzpMDQ34Py5mJYCUtFaal0LgjpVfHjh1mixMjJXYwQKqoXB47dAz1SvVikWdr
         gB4n0mIOZrBlLKeWjNhcdsjMQOvYGrw+i4hsT9zzy44bHR3gRVcOo265vH0NbbZ87A
         MdXKqcsNYQ3BnsNHgEC9qyKuKuQH24DyVPbyWyPR5zfbHEY+lLyZ73B47LkSVF9+sC
         dMEQIANZYCFd5pAh9qOe1YmmqMPMQ9mSdAwQhf5ue9Ud5s2G3ufK1eq4z5m8xdTVFl
         iF39btdaQgUqIK6jbmJL0rnjAEDWi8me0rNlX0qVH7XvztJ7uXi9JzDh0VwTbFt7fj
         HQxPLk6HQ2NqA==
Authentication-Results:  mail323.prod.linkedin.com x-tls.subject="/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/CN=mail.protection.outlook.com"; auth=pass (cipher=ECDHE-RSA-AES256-GCM-SHA384)
Authentication-Results: mail323.prod.linkedin.com; iprev=pass policy.iprev="104.47.70.101"; spf=softfail smtp.mailfrom="gbanks@linkedin.com" smtp.helo="nam10-bn7-obe.outbound.protection.outlook.com"; dkim=pass header.d=microsoft.onmicrosoft.com; tls=pass (verified) key.ciphersuite="TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384" key.length="256" tls.v="tlsv1.2" cert.client="C=US,ST=Washington,L=Redmond,O=Microsoft Corporation,CN=mail.protection.outlook.com" cert.clientissuer="C=US,O=DigiCert Inc,CN=DigiCert Cloud Services CA-1"
Received: from [104.47.70.101] ([104.47.70.101:17338] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
        by mail323.prod.linkedin.com (envelope-from <gbanks@linkedin.com>)
        (ecelerity 3.6.21.53563 r(Core:3.6.21.0)) with ESMTPS (cipher=ECDHE-RSA-AES256-GCM-SHA384
        subject="/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/CN=mail.protection.outlook.com") 
        id 05/12-28282-60480016; Tue, 27 Jul 2021 22:09:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hbYHPA4K4e0/j+Dt3jKPO6SVA8mS3nHp1JXkTSJVYHkTVfeDczciigRDWfPxGrLvHFuQ9B1l6TQAy64J0w33FfHSS29xE0w3VukZBtB92scwIgFioqfhEUQU4Lsk6ZjkE7N+OulevbuotPrpcOafsU+FpMBJO+Lam6rOh2pjNdRlpK7xRxpJy4tQfWD6KKMjPQRlWoLNAQVHJ3XHC5nssGbrf344K95nuvYQzujP5gs2baomZaRJzesehSPNhNTNqpGk0iphrsSrcdNNcH7WTrgj0YwqZvKdNWLDAm2c/2Ev8c8aupLJAYSEwkZlutDH4bAsWQt2YGZHG3LK/u/9PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xIBOj/FTzuClzGwUJD6TUM2804RZQH0myMnK0IYkUwg=;
 b=UUO4eMLqIZadxMeJz7EeeY0DiYTnH/v6VdDBwBdhUzcJy8Y9NtC2fVUq+2uF/XKWTJ+PjFz17mryk+hXEOLVgewCcSuorxc2JhezvSVpiykANwtYEwTRQSSOhV39P1CYnKOR87IXqnTK4kxAx9rK9NGD5gi4E2kGB70HbzzeQPJBfIr1iBvbaaF968x1u92tKoGwBN6V3rPoAEuluglttH0fnbIkrkr2oTmV5Nmcf9THV+xNnW2swFQFdNjW0S7Op8wcM80BbwJ39AnvtD+6IECXVJA2IjphTOkt4ujx2/Ebe+axj9VNOQzixA5N8sITZlRlzc/Su/DcwuJlngFw3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=linkedin.com; dmarc=pass action=none header.from=linkedin.com;
 dkim=pass header.d=linkedin.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.onmicrosoft.com; s=selector2-microsoft-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xIBOj/FTzuClzGwUJD6TUM2804RZQH0myMnK0IYkUwg=;
 b=qQK54rVUHUVcH+zaYZt1jCSIaOTSf3rUzWnFX0cx6722g8IS4VBhmpr7nOS9yDrsNhOU34Y8fTIelVgKcB981mVY5YwKfT8hIWQXfd2+Ho04nBN8ECm7UEft/FZu1pPNvYT9voZkkGGA5+A7qIWqsE0hGHlEaSAOgW+dwXJqLpE=
Received: from BL0PR2101MB1316.namprd21.prod.outlook.com
 (2603:10b6:208:92::10) by BL0PR2101MB0931.namprd21.prod.outlook.com
 (2603:10b6:207:30::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.3; Tue, 27 Jul
 2021 22:09:08 +0000
Received: from BL0PR2101MB1316.namprd21.prod.outlook.com
 ([fe80::875:1645:a1cd:b7c9]) by BL0PR2101MB1316.namprd21.prod.outlook.com
 ([fe80::875:1645:a1cd:b7c9%6]) with mapi id 15.20.4394.003; Tue, 27 Jul 2021
 22:09:08 +0000
From:   Greg Banks <gbanks@linkedin.com>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        Petr Baudis <pasky@suse.cz>, DJ Delorie <dj@redhat.com>
Subject: [patch] nscd.conf.5: describe reloading, clarifications
Thread-Topic: [patch] nscd.conf.5: describe reloading, clarifications
Thread-Index: AQHXgzNMNDxxY2L3rkuaiwi771D2MA==
Date:   Tue, 27 Jul 2021 22:09:08 +0000
Message-ID: <BL0PR2101MB13161790A220976723139258A1E99@BL0PR2101MB1316.namprd21.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2021-07-27T22:09:07.662Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=linkedin.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8574335b-51ee-4dfa-d77a-08d9514b27f5
x-ms-traffictypediagnostic: BL0PR2101MB0931:
x-microsoft-antispam-prvs: <BL0PR2101MB0931210A758B703C51C91502A1E99@BL0PR2101MB0931.namprd21.prod.outlook.com>
x-o365ent-eop-header: Message Processed By - CBR_LInkedIn_Mail_To_External
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e0UIxZGiReE2t3ftCyxwzCzXx9LsfH4qIVmzCaqpZxvekPRPGnwPBFBfa0k4sqiQmeKWf3+aAbVyUoFUm17e8zTU/N3PZLqgGSaCrJTTinYKsuHaOzEkIM6KjcxVcPfZhagkBKYcIz12A65qHXPITFN0l127wY1euRrRsdOdtDws4S76sfJsYOC0XZ/OyCNxUycZPRuN3Ud+TkV9Gf59FbnSbNATLVcgzVtbfOwureXGTR44aNcbXPZPzTKHsSxLo7RqAGlVQ33onQu7LUoZo82Jbw8NFw/FNuK1NCnEdfKbx3EJKrDF55/0quJhjd6CvjemP0tq+9HDt3ClZkt/6dXykh+5dAI+MDtC20guF5vMVqu5K6V4G86amoNvmOQsFcU/DUdQg8ohvGoL9jXPLYWUi/YFHn9Ngze2jX0XOt5DQRgigudxJpo8H462PQbSwQiqJOo/5BUTacAhiS/cECNwf7u9SFlrj5IvMkvVZLLnD9zp5OCYJsP8A8UovEct1hB2KUMWfrM/fASVaIxXFpTneuKSQ5PF8UV6vkwufTCsSpPy/5aOj9tEnLFqfOrMsxcv/LFvGrFAjqa7iZO5gpxBma8DJzgtbav45BXqKHqYeQgQykMrMG01gjxlJOfJtTmqaiG6Ki6AQdBy1p8i9yR3y5Lhqq04smBYdJfbR0ipHgykKUWfxwMQJ47kkVcrXCtMlw0t79JL2StiFyC9V4/0GJUcWCa+U1G+fpjbiUlkR8F912L+bJ9zt/gZOnAE
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR2101MB1316.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6506007)(5660300002)(8990500004)(52536014)(186003)(26005)(7696005)(33656002)(6916009)(508600001)(82950400001)(8676002)(38100700002)(316002)(8936002)(122000001)(2906002)(71200400001)(4326008)(83380400001)(82960400001)(64756008)(66446008)(66556008)(66476007)(55016002)(66946007)(86362001)(76116006)(9686003)(54906003)(38070700005)(2004002)(134885004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?RZpgRPS2VLG4qq1ynqaP4Iu5VrxZ4/+EGIPxDIv4rOBIFjfPV0KAI+CJgH?=
 =?iso-8859-1?Q?ZjMJZgDkUOAUx9nURJ27X+cXfJkOsy/uZK3ahNCAuSTaKBU5ZX0nU8IQqp?=
 =?iso-8859-1?Q?Dsbx9pqyuf4uzXHQ1ZQqmG9RjnMTX2sCKVkxKnS+hHgGfC0iVWg8V774Tf?=
 =?iso-8859-1?Q?jTwfRpAAhJmyYSfDLaDL12sxckxKzWQT+aUqzgd0+plI7UcXm+DzB0xLkS?=
 =?iso-8859-1?Q?vLNh23KXLN6TeB4VqkUrQn+tK8xcK0th5rB4T6AD7iGgXCJu3KVl3QYqv2?=
 =?iso-8859-1?Q?FEzt6yiS1EJTsL5ii6QUXvdZUrQdRJWp07SlgofUudlp+IwbmKGZ9QhxEJ?=
 =?iso-8859-1?Q?y8eA28HSR/fEYLaRs83Wam9Es0Ow/1uZSAck1iLk8qX3PeOnglM9mYpTnI?=
 =?iso-8859-1?Q?1tmns6zz3xg2MbVPvQnhGTb5bHAV47e3RM8TaPHmHx4gDky1UjE2Bd2ukS?=
 =?iso-8859-1?Q?i2nCvsBxSX1Yo0wnZz+H9ZIyhtiPRYMCxFahGaDA3wO+XD8wg9ocPIEmY8?=
 =?iso-8859-1?Q?WjWPcgRPpZsGxsEGpgLveDvXbensp3Uq3QkTFFmI8ayrVRMdHSRxFcuyLl?=
 =?iso-8859-1?Q?m943gASGOb0+5nA10c53Lx+8texc22aWbi/dHqfc8JPW+srxw6HmuCqj+I?=
 =?iso-8859-1?Q?0Gfh0Zpmw5/iZZbvMaxtxIg/TC0ZBZHDH9NgPXlO+3TD+P/xlaH0xoCyYJ?=
 =?iso-8859-1?Q?GPEZbnOCr+/hLfIx+erhWPYPKSpAkdZz4mU/+koBjouGcmertavaWKoCBQ?=
 =?iso-8859-1?Q?JMuQLK0ounezujUt+KL9Q6mdBlRQiGNqQ1gl8KPfuhbH6INoSboo+3GOdb?=
 =?iso-8859-1?Q?7KNQ741NNOmiX3DJR7NmWiPK6ugpFhCju+vBDelSiYhG/X44HXsOW78IY+?=
 =?iso-8859-1?Q?qSwgzgD6OJkBy0aqxGkZHwuV21uElnNgqxslciFteOHAubjGSCeVQSvnAt?=
 =?iso-8859-1?Q?Ow/dAmGZKeXgmfpgO4OKzIGfrE8zQqD+Waxu9Tn0A30W7AH9BWsNbWuRqP?=
 =?iso-8859-1?Q?aeP1wnjHABq3xs4h3VETyo6r1U0yiBYJfQhrdWJUZ0YAnk0QW0VhqyAJcI?=
 =?iso-8859-1?Q?6cYIm16+fGnLalqeOSDxTdf0G4H7OW1JJdxVH8oivQykMoZoir0S4egH+T?=
 =?iso-8859-1?Q?MbLpOkBLaqC5hWMNocLxRYby+1URmt/JksyCF2BHs4uLzUH6AUK5JRux/j?=
 =?iso-8859-1?Q?xHix02GqigvHvR/DETEK/uLnGjeA0A3UhfjklNv7kU35ry5/skfsUDsazG?=
 =?iso-8859-1?Q?cjjXx0phF14nSOhiF96cNgjEW168VQQR3N+O6V8Qku6D4Gm/O2OsYsYMK2?=
 =?iso-8859-1?Q?FShJ6vQYIOZryfYWJSrNJocAQ8Ag1muCUC1wCrdgt8t0MAE=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: linkedin.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR2101MB1316.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8574335b-51ee-4dfa-d77a-08d9514b27f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 22:09:08.2803
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jBOsajfPrDe6jPYX2Y2Jpv3E7NVQ3wwZ2pI03eXNNEzyd6jJsz8o6BpvVQEV1tk0zdyekCLoOLN9vK8uUe0wwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR2101MB0931
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- Added a subsection of NOTES describing nscd's reloading behavior=0A=
=A0 and providing advice on how to configure it.=0A=
- Clarifications for the threads, reload-count, positive-time-to-live,=0A=
=A0 check-files, and shared attributes.=0A=
=0A=
Derived by reading the nscd, libresolv and glibc source and some painful ex=
perience.=0A=
=0A=
diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5=0A=
index 7356bf7c2..52f7051d5 100644=0A=
--- a/man5/nscd.conf.5=0A=
+++ b/man5/nscd.conf.5=0A=
@@ -1,5 +1,6 @@=0A=
 .\" Copyright (c) 1999, 2000 SuSE GmbH Nuernberg, Germany=0A=
 .\" Author: Thorsten Kukuk <kukuk@suse.de>=0A=
+.\" Updates by Greg Banks <gbanks@linkedin.com> Copyright (c) 2021 Microso=
ft Corp.=0A=
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
-At least five threads will always be created.=0A=
+At least five threads will always be created.  The number of threads=0A=
+may increase dynamically up to=0A=
+.B max\-threads=0A=
+in response to demand from clients, but never decreases.=0A=
 .RE=0A=
 .PP=0A=
 .B max\-threads=0A=
@@ -83,9 +87,15 @@ Specifies the user who is allowed to request statistics.=
=0A=
 unlimited |=0A=
 .I number=0A=
 .RS=0A=
-Limit on the number of times a cached entry gets reloaded without being us=
ed=0A=
-before it gets removed.=0A=
-The default is 5.=0A=
+Sets a limit on the number of times a cached entry gets reloaded without b=
eing used=0A=
+before it gets removed.  The limit can take values ranging from 0=0A=
+to 254; values 255 or higher behave the same as=0A=
+.BR unlimited .=0A=
+Limit values can be specified in either decimal or hexadecimal with a=0A=
+"0x" prefix.  The special value=0A=
+.B unlimited=0A=
+is case-insensitive.  The default limit is 5.  A limit of 0 turns off the =
reloading=0A=
+feature.  See NOTES below for further discussion of reloading.=0A=
 .RE=0A=
 .PP=0A=
 .B paranoia=0A=
@@ -128,6 +138,9 @@ in the specified cache for=0A=
 is in seconds.=0A=
 Larger values increase cache hit rates and reduce mean=0A=
 response times, but increase problems with cache coherence.=0A=
+Note that for some name services (including specifically DNS)=0A=
+the TTL returned from the name service is used and this attribute=0A=
+is ignored.=0A=
 .RE=0A=
 .PP=0A=
 .B negative\-time\-to\-live=0A=
@@ -166,6 +179,7 @@ The files are=0A=
 .IR /etc/passwd ,=0A=
 .IR /etc/group ,=0A=
 .IR /etc/hosts ,=0A=
+.IR /etc/resolv.conf ,=0A=
 .IR /etc/services ,=0A=
 and=0A=
 .IR /etc/netgroup .=0A=
@@ -194,6 +208,8 @@ is shared with the clients so=0A=
 that they can directly search in them instead of having to ask the=0A=
 daemon over the socket each time a lookup is performed.=0A=
 The default is no.=0A=
+Note that a cache miss will still result in asking the daemon over=0A=
+the socket.=0A=
 .RE=0A=
 .PP=0A=
 .B max\-db\-size=0A=
@@ -230,12 +246,82 @@ and=0A=
 .IR group .=0A=
 .RE=0A=
 .SH NOTES=0A=
+.PP=0A=
 The default values stated in this manual page originate=0A=
 from the source code of=0A=
 .BR nscd (8)=0A=
 and are used if not overridden in the configuration file.=0A=
 The default values used in the configuration file of=0A=
 your distribution might differ.=0A=
+.SS Reloading=0A=
+.PP=0A=
+.BR nscd (8)=0A=
+has a feature called reloading whose behavior can be surprising.=0A=
+.PP=0A=
+Reloading is enabled when the=0A=
+.B reload-count=0A=
+attribute has a non-zero value.  The default value in the source=0A=
+code enables reloading, although your distribution may differ.=0A=
+.PP=0A=
+When=0A=
+reloading is enabled, positive cached entries (the results of=0A=
+successful queries) do not simply expire when their TTL is up.  Instead,=
=0A=
+at the expiry time=0A=
+.B nscd=0A=
+will "reload", i.e. re-issue the same name service query that created the =
cached=0A=
+entry, to get a new value to cache.  Depending on=0A=
+.B /etc/nsswitch.conf=0A=
+this may mean that a DNS, LDAP or NIS request is made.  If the new query=
=0A=
+is successful reloading will repeat=0A=
+when the new value would expire, until=0A=
+.B reload-count=0A=
+reloads have happened for the entry, and only then will it actually be rem=
oved=0A=
+from the cache.  A request from a client which hits the entry will reset=
=0A=
+the reload counter on the entry.  Purging the cache using the=0A=
+.B \-i=0A=
+command line option overrides the reload logic and removes the entry.=0A=
+.PP=0A=
+Reloading has the effect of extending cache entry TTLs without compromisin=
g=0A=
+on cache coherency, at the cost of additional load on the backing name ser=
vice.=0A=
+Whether this is a good idea on your system depends on details of=0A=
+your applications' behavior, your name service, and the effective TTL valu=
es of=0A=
+your cache entries.  (Note that for some name services (for example, DNS),=
 the=0A=
+effective TTL is the value returned from the name service and=0A=
+.I not=0A=
+the value of the=0A=
+.B positive\-time\-to\-live=0A=
+attribute.)  Please consider the following advice carefully:=0A=
+.IP \(bu=0A=
+If your application will make a second request for the same name, after=0A=
+more then 1 TTL but before=0A=
+.B reload\-count=0A=
+TTLs, and is sensitive to the latency of a cache miss, then reloading may =
be=0A=
+a good idea for you.=0A=
+.IP \(bu=0A=
+If your name service is configured to return very short TTLs, and your=0A=
+applications only make requests rarely under normal circumstances, then=0A=
+reloading may result in additional load on your backing name service=0A=
+without any benefit to applications, which is probably a bad idea for you.=
=0A=
+.IP \(bu=0A=
+If your name service capacity is limited, reloading may have the=0A=
+surprising effect of increasing load on your name service instead of=0A=
+reducing it, and may be a bad idea for you.=0A=
+.IP \(bu=0A=
+Setting=0A=
+.B reload\-count=0A=
+to=0A=
+.B unlimited=0A=
+is almost never a good idea, as it will result in a cache that never expir=
es=0A=
+entries and puts never-ending additional load on the backing name service.=
=0A=
+.PP=0A=
+Note also that some distributions have an init script for nscd with a "rel=
oad"=0A=
+command which has the effect of purging=0A=
+.BR nscd 's=0A=
+caches using the=0A=
+.B \-i=0A=
+commandline option.  That use of the word "reload" is=0A=
+.I entirely different=0A=
+from the "reloading" described here.=0A=
 .SH SEE ALSO=0A=
 .BR nscd (8)=0A=
 .\" .SH AUTHOR=0A=
=0A=
