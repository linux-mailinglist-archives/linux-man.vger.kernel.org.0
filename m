Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD3483E0246
	for <lists+linux-man@lfdr.de>; Wed,  4 Aug 2021 15:47:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238088AbhHDNrY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Aug 2021 09:47:24 -0400
Received: from mail323.linkedin.com ([108.174.3.123]:48303 "EHLO
        mail323.linkedin.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238121AbhHDNrY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Aug 2021 09:47:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linkedin.com;
        s=d2048-201806-01; t=1628084769;
        bh=oRNMAb1+6xhnnCOPrPlIhM4PX6SY8OGrSDsKDIB9ae8=;
        h=From:To:Subject:Date:Content-Type:MIME-Version;
        b=cc81RjaS62NDC2luHKL8VqUgoOuDCVkZactLeh6SfhDHeAGgTkCGgrORvTCa3fEsx
         hsf3fWdZDaGH8cV4GP8USEdtCtcwZasNUTct3nNzFtUrgKnCHzkrS+mN1q+BkI+wsY
         xam/WhVOm7JH7WahfZKHFRlfCbhwzq3pAzzeOKwz3j/mMU4JzTBBHfcw+VAdEUr0vK
         aELGExHtGh+OYi406xJB6sky91v9hJgR+1FW1HWt60qyGFzizCIII0Se0cWaaiv6ly
         HMJPot2ZLkQjSi1GZi85BD/LjpJb2bNJjiZi6gCQqyvIuoTzad00WHvkf7VkJQQoKR
         D7zy8kSED2wsg==
Authentication-Results:  mail323.prod.linkedin.com x-tls.subject="/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/CN=mail.protection.outlook.com"; auth=pass (cipher=ECDHE-RSA-AES256-GCM-SHA384)
Authentication-Results: mail323.prod.linkedin.com; iprev=pass policy.iprev="2a01:111:f400:fe59::209"; spf=softfail smtp.mailfrom="gbanks@linkedin.com" smtp.helo="nam12-dm6-obe.outbound.protection.outlook.com"; dkim=pass header.d=microsoft.onmicrosoft.com; tls=pass (verified) key.ciphersuite="TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384" key.length="256" tls.v="tlsv1.2" cert.client="C=US,ST=Washington,L=Redmond,O=Microsoft Corporation,CN=mail.protection.outlook.com" cert.clientissuer="C=US,O=DigiCert Inc,CN=DigiCert Cloud Services CA-1"
Received: from [2a01:111:f400:fe59::209] ([2a01:111:f400:fe59::209.36097] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
        by mail323.prod.linkedin.com (envelope-from <gbanks@linkedin.com>)
        (ecelerity 3.6.21.53563 r(Core:3.6.21.0)) with ESMTPS (cipher=ECDHE-RSA-AES256-GCM-SHA384
        subject="/C=US/ST=Washington/L=Redmond/O=Microsoft Corporation/CN=mail.protection.outlook.com") 
        id 11/CB-28282-12A9A016; Wed, 04 Aug 2021 13:46:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bDWGm0yEzZg5ayHzHhSEXjt8hD9SOpw7ik7fftZKlApoIi39lTCmibBact7rpL3HzNKnxWxDyNAHCa8/yy73MPTbrqVAIRHP//hp1FavGTBF0ox6b0A2VNwj2U7t4omeAHCCjoZooG3JhjlOzQvf4NtRgQSFJB6wJuJf1sGU/I0EHPV3ZTzSWiDdil2UrTzsA6uFdvUDoAF/nicQB8mb4RWUpxiM08fwHNyBKb3O4yVNlZslXQqyS7EsDIB8OqFjG08nSuaUPVDaD31l3xfjtY69LSnhiwO+Wo6jJZgFNZ9yRTOJkvA39pmp0o7Y9XwmmENWT79N5JMitMApN3N0qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oRNMAb1+6xhnnCOPrPlIhM4PX6SY8OGrSDsKDIB9ae8=;
 b=USHy5aVFeUsZkAP+M/gR82CGZx7K+BaJUUvwUeezzaxBO6c6plsod8CxNwWixvB2qozNr8tIzuqwjAkxPdiCUxFm2+GjKgOjlh1hBmu+mfAx6wfYHqahoMyxYXmriUTZKiRB7aE53kOx94C8tHoZ6E5Zc4oRCqOKVytCGit+MAMNYMcjRXxe3LI5/J17QGuYTS7NALh1Gip0XAI4ln0LMAVKM2fV9WK0KLeADYbtyAITc9ug1pDiTKhZSa1NWF8YLjKdW0smFdbWoANl0nBJGxClVcCUvdcdloOCoRldRCh1Y4hy5qpNxEb8Sj5WoHiXLW5qwS9dh9z6d+gFz+3LDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=linkedin.com; dmarc=pass action=none header.from=linkedin.com;
 dkim=pass header.d=linkedin.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.onmicrosoft.com; s=selector2-microsoft-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oRNMAb1+6xhnnCOPrPlIhM4PX6SY8OGrSDsKDIB9ae8=;
 b=H2IUX0ox1Wu+4iYYvzXDXuQ4R9CoJS5VuSvkczCDrs696brx7ITJjiZpXtML5604WRf9viPbChF4FZiQk7ztDDNzLjXIdUV2xgWIXIk128ItRpnN9Znrta+2NveCj1pQVY7nctAiuipGEzIVjc/u7iMT+zoYzEzKP4qWwtUtkw0=
Received: from BL0PR2101MB1316.namprd21.prod.outlook.com
 (2603:10b6:208:92::10) by BL0PR2101MB1329.namprd21.prod.outlook.com
 (2603:10b6:208:92::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.4; Wed, 4 Aug
 2021 13:46:08 +0000
Received: from BL0PR2101MB1316.namprd21.prod.outlook.com
 ([fe80::85a0:b805:1191:bb82]) by BL0PR2101MB1316.namprd21.prod.outlook.com
 ([fe80::85a0:b805:1191:bb82%9]) with mapi id 15.20.4415.002; Wed, 4 Aug 2021
 13:46:07 +0000
From:   Greg Banks <gbanks@linkedin.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        DJ Delorie <dj@redhat.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: [pr] nscd.conf.5: describe reloading, clarifications, v3
Thread-Topic: [pr] nscd.conf.5: describe reloading, clarifications, v3
Thread-Index: AQHXiTar4bv9yorV80mQ2+XT2Nho8Q==
Date:   Wed, 4 Aug 2021 13:46:07 +0000
Message-ID: <BL0PR2101MB13165DA16EA08B6ECF60D1CAA1F19@BL0PR2101MB1316.namprd21.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2021-08-04T13:46:07.361Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=linkedin.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94c4c276-20bf-4ec1-ec84-08d9574e364d
x-ms-traffictypediagnostic: BL0PR2101MB1329:
x-microsoft-antispam-prvs: <BL0PR2101MB13297C2C395BAB3BD4CD123BA1F19@BL0PR2101MB1329.namprd21.prod.outlook.com>
x-o365ent-eop-header: Message Processed By - CBR_LInkedIn_Mail_To_External
x-ms-oob-tlc-oobclassifiers: OLM:330;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oNtp1ZouV8ZvGc45J1B1RLx98GX6/b4luEI18SnGc7pV/RHbKvBWuB4kiilcoBd8MJyX/VPnIgVnEQXccgpL6Y/6hDuJYyqilixLXK9eJIaLsq9Rdp87XTmGeFq9b03UDNQZyszfSwG70aXOffn0+NyoFDiu1l2Mol8YQpfXFU33VjkIPtLUGgqU8NoPHvc+sbvWW/qwCr9icdLXd552EP81h7JP64U0jw4GiYbWT2gFdexBZpmbXGLbB8u6oTZAQ6ZtzvWhMsyQdHwdyfQDDbKZMUH8tHR5RU0trmGZz7Cf2SYJxgxiqqXcAaHtedEtNrEJuJIiPWxJPbQ4JJn8lBn5O9j9W+uJU+16tFRtYnZduosY+CKagFScOCK9AyVFsfK/Blab/siim7RrmYxkHkAtfE//9G1bNoKLfQ9PAlwiWbRD3bQq3VRaOhT3lSj4GUiTe3dEXUyDUdww6jQ8pk7t4HU4tznkQiF5XI6+S7UdR4CLbasoqOIL3l1RV3diKG1/XGFW/PrNupY4MQGeYfKf2yYNdESQFyUjj2sMTZZCBJmdqFUSMXeLcxfUVu0AT5OsvBJQtUVh3xSdUd1h7j4epsJ3Xn+yiOna4qoWlwAmZrNGXr/sz7tdPuUXBHHxlPLtsp6lWpoAGU7uMJiMHUHSVxA1Mt7yS7YDCsq+/LUG50VxMi55kqyjCsV24qfm42NAaIgUbLWMlgCOaiZ89g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR2101MB1316.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66476007)(8676002)(86362001)(66446008)(33656002)(66946007)(76116006)(82960400001)(4326008)(82950400001)(66556008)(64756008)(7696005)(26005)(508600001)(122000001)(6506007)(38100700002)(4744005)(8990500004)(186003)(54906003)(2906002)(38070700005)(316002)(55016002)(6916009)(8936002)(52536014)(9686003)(71200400001)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?c4om7GUmDvRrh1PB2nQcXwLqjMbDDEYjD3X6oSQMLW6VmqfPmMbi+8qC6n?=
 =?iso-8859-1?Q?FwGH/0nqhFo1PL0cJvG0hOGqCcVClRB4tvN88HTYj5Y6KhumbNfiB6wjBQ?=
 =?iso-8859-1?Q?cRvp1LnhZxm52uFSBTMh0yURZBjvOk1Z/3hETr46TkergRqQUhehzenBFm?=
 =?iso-8859-1?Q?NuHkLH10/NgrHJ1pf6ZnxQucDxVidQV31/nKuYNE/1iAk9pqbvsHzy9rjd?=
 =?iso-8859-1?Q?8SmQlpDsNIzaSuRmnSu4FWV8T0Ee1NBcN6Ds8mJdPY95BeamoDqMHJSQW8?=
 =?iso-8859-1?Q?z8XXPakp9qi2AqgssOLBI4ECF/YrWZobFm6i4eN5kENK3WHQLNDfp99O/U?=
 =?iso-8859-1?Q?dS/57nw8nq3J74glckv2F+Bphav1033JNX9FcSyQtQXmTYHCTIqO4mQPLA?=
 =?iso-8859-1?Q?3GaOeGU2FD8IC6IKRdD75N1FkRfXTqctzcz72oQdiGrM8jr6T9mUcrY16x?=
 =?iso-8859-1?Q?LYz5i+CdtVPzna0zfnQZeoNR08EZgdCopH8Kpyhv0c0fsC/Brjmwo9yLoT?=
 =?iso-8859-1?Q?76nMfExelngAgY7la/6AR+z9rBoulTmR77vxvlqILEa12hCSLfIS33CyvN?=
 =?iso-8859-1?Q?pj0P1bgieLopZrifuPlfkom33/KMyFbZ/oo1yAL+XftIS5JUyFx+mANlDh?=
 =?iso-8859-1?Q?kEXedrHVBALuuWdtkJJ1FiXqOXmHRydwNZGb+4vp9c4Nb+oE+6TlXi02g+?=
 =?iso-8859-1?Q?EnSVtK64XAm1ZHGOA6eZo0l2XN1uQz4Ey0umiAyfiOGSIO8QgvcJ70ee/X?=
 =?iso-8859-1?Q?moYjs/LKdwBUp4wJo0YWm+cxKZllQmz5Q26BKnjhqlyKNYkqQlFjEAfGhF?=
 =?iso-8859-1?Q?W3GP0abnmqME7E9ISbJl8z+q+Bmrc+yaizYCwkVOOp7BzDzrnPVuGx++4w?=
 =?iso-8859-1?Q?pSl+d/lhgFJwS4v0tUTLoNKe2fAWZd23MNgZPszunOq7X7UNpx9cyfayZq?=
 =?iso-8859-1?Q?fNmytI3SKWsWnIMTFyHwGUw6xoZqX+6XlE+z8qJ+q9+PcBskaHCjBi2c/M?=
 =?iso-8859-1?Q?H3BFYYtXbsXZRY2T9mMKl1f8sU5b29fEiO6biIr7gkxQRwHM5AztWpiq2G?=
 =?iso-8859-1?Q?ZRyBaAcG0gIGXl/lMX27VzLU3IpcMIpxA8SSvIfDn+2CLOo3D5kSQFmf9y?=
 =?iso-8859-1?Q?g7Hu4HJRhPYEEdORdxOvOUfyakECzFEhUv2XaWFLYxVNxFPbOzLUnaOstt?=
 =?iso-8859-1?Q?MH/5MT9ryhU19wJf7/ojFL14aXwlRZcd/TwkhmSmskwUCaB+MTIgEYzftA?=
 =?iso-8859-1?Q?B6+zxXLPtp+6nYO728E7zH32gMaBEMwyRbiZtxBsx+uE2kaMN2Z3aGEdea?=
 =?iso-8859-1?Q?HikFggyuT20tZtA7jP1dOgjEoeyGpMXrTqUBdpvJUXskylI=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: linkedin.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR2101MB1316.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94c4c276-20bf-4ec1-ec84-08d9574e364d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2021 13:46:07.8632
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L8LZK3MNEHCKZyFhNXVaHgEtU1Fwlj6hA/CA3sRBK3K0V723ajatIFJKos6pP5RAh6OKZFGjZhjxhnhvmmJ+EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR2101MB1329
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The following changes since commit 4a4b5ecfe1f8c5b5f7eaf0e28778db6c6991ae33=
:=0A=
=0A=
=A0 nscd.conf.5: describe reloading, clarifications, v3 (2021-08-04 06:17:3=
9 -0700)=0A=
=0A=
are available in the Git repository at:=0A=
=0A=
=A0 git@github.com:gnb/man-pages.git nscd.conf.5=0A=
=0A=
for you to fetch changes up to 4a4b5ecfe1f8c5b5f7eaf0e28778db6c6991ae33:=0A=
=0A=
=A0 nscd.conf.5: describe reloading, clarifications, v3 (2021-08-04 06:17:3=
9 -0700)=0A=
=0A=
----------------------------------------------------------------=
