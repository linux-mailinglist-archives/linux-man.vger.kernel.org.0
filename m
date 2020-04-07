Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A14A1A07F1
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 09:07:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726692AbgDGHHy convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Tue, 7 Apr 2020 03:07:54 -0400
Received: from mail-dm6nam12olkn2083.outbound.protection.outlook.com ([40.92.22.83]:14813
        "EHLO NAM12-DM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726393AbgDGHHy (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 7 Apr 2020 03:07:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h8e+YKSxUTQ32Gupr9iOFv2oOTioFr/neymWSry2iXE4HdkAjNaJR3ja8s/6i2Q6Yi7uOnB44ZLf6f9FO9c1LrrWIvZizKj0YEE6Bdf/S0IVx1rY1TPaLZRi6SiGqRXdiSEU5S5ugLNqjassECjSgZdN6yn0HX4NlJSX+W3kOwJT0ju00QRubGNv6SQXfgxtudYQSl6zTAIDJOaciauwBkaw0YhDp2ILyYVSgmIKVLbRKhGPeHudrcLgL2rRlSZ/yg+YqIDpYAstxRMyQXc+pM+oTTLu++zbjpIklkzGdFjNpqN93F9IB7p0u94y21+433DFSmsDxwh9TNRL6Fq6GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u7pSlqSLNbisDUyDrijXwMEIztmYZiK8+5dcyDYTWGs=;
 b=c2ckUn/aSOTSIKja/71NZKjYOx0ytxOusHLexNvXGdzigWvlvvhdZQoPb0sAZk01wYEvkkoWhfmbhDPWOFTJooE0nHkmm07E80hRzHTEqQjtdeUkcyNQFO9449F2NS+74x8O6boFdGAmyvmKnypvEBWWWqRtDvqZ6LKo3fiF3+NEw2mnntFLbLdwncAs6A/i5sPZHnXOSIb/lwSEytA7I8aDVvaJmxPSHaKxB+m9xR+VFAKgQ5xj6LvchLmGS4qiZsMcVdzKo4ekIOGrdmVXAoWOUl2ZFTvro1eXjkByWz78AdhxtAqrliHRjyOqK338y6DjajQNI3F2hPRDrA3krg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6NAM12FT026.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::47) by
 DM6NAM12HT197.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::91)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.9; Tue, 7 Apr
 2020 07:07:50 +0000
Received: from MN2PR04MB6157.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::44) by DM6NAM12FT026.mail.protection.outlook.com
 (2a01:111:e400:fc64::475) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.9 via Frontend
 Transport; Tue, 7 Apr 2020 07:07:50 +0000
Received: from MN2PR04MB6157.namprd04.prod.outlook.com
 ([fe80::2192:c79:168f:ff2]) by MN2PR04MB6157.namprd04.prod.outlook.com
 ([fe80::2192:c79:168f:ff2%7]) with mapi id 15.20.2878.018; Tue, 7 Apr 2020
 07:07:50 +0000
From:   Andrew Micallef <andrew.micallef@live.com.au>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Fw: Suggestion for edit
Thread-Topic: Suggestion for edit
Thread-Index: AQHWDI/Fyl47qCQDb0ilEbBf8oBdT6htPR5y
Date:   Tue, 7 Apr 2020 07:07:50 +0000
Message-ID: <MN2PR04MB61571362350C94A82F545152B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
References: <MN2PR04MB6157E89BBF15AD9D70DDEA48B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
In-Reply-To: <MN2PR04MB6157E89BBF15AD9D70DDEA48B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
Accept-Language: en-AU, en-US
Content-Language: en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:BEF1BFE32124B7F5365A41595E6549838D74D2703DF1450C2F9D7E6397CE15B8;UpperCasedChecksum:1A15405B5BF49D33A1DAB43D467F0E46517368358133191296946EBF80BD3D79;SizeAsReceived:6900;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn:  [7/7HFzKtk8D/SN0n67eyiAG1Jy9ZVEfT]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: cdc84c48-0a22-4d76-eefe-08d7dac26244
x-ms-traffictypediagnostic: DM6NAM12HT197:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8JadZiikGklb2i8e8pA+6oeuCGVok/H7RHPt/ki1luiab5Si3MdHLJ5FYzMSsNyGo+yJdHz0XXMwVi+wW7Y34Z6gboxT94Fk9Ncs/9qEUWvfkSqoYteBZZeq/0mgsBaik3X4EgzOB54dTL+PfQvkwtiaxZnXHfq0CowqmC4CdM/XmyG3vnH+1b2ecwn14tQO
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR04MB6157.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
x-ms-exchange-antispam-messagedata: IXd8VDqZlVrieHKYUvqnkZGPJ9wJskQiWtDjQiin2ImGhDqEmWT0+eYyTIINuQSP88OhmOkmLKH+xBEmO4tNq45hXpUFvEdS+EftcOnu2cONcLJG71plI3JWuALCFt5L4aafd5fvFCrU/8bM9HQpnw==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: cdc84c48-0a22-4d76-eefe-08d7dac26244
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 07:07:50.2540
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT197
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,


I'd like to suggest an edit to the description of `strcmp` in the standard C library man page.
I found this description to be kind of confusing, and think the language could be a bit more
straight forward. 



 At present the description reads as follows:

The strcmp() function compares the two strings s1 and s2.  The locale
       is not taken into account (for a locale-aware comparison, see
       strcoll(3)).  It returns an integer less than, equal to, or greater
       than zero if s1 is found, respectively, to be less than, to match, or
       be greater than s2.

I am suggesting the following edits:

The strcmp() function compares the two strings s1 and s2.  The locale
       is not taken into account (for a locale-aware comparison, see
       strcoll(3)).  It returns an integer, which is 0 if the strings 
       match. Otherwise, a negative integer indicates s1 is less than s2,
       while a positive integer indicates s1 is greater than s2.


Regards
Andrew

