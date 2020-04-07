Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 076651A0A5B
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 11:45:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726657AbgDGJpJ convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Tue, 7 Apr 2020 05:45:09 -0400
Received: from mail-mw2nam12olkn2092.outbound.protection.outlook.com ([40.92.23.92]:2753
        "EHLO NAM12-MW2-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726687AbgDGJpJ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 7 Apr 2020 05:45:09 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ICKlroXdwpMskNz3eghCcc3mwP0BAc/9dNpDW4WUsj+EXGEBHY7/3yHXPdSDJZmkE++1L4gBLwotiljIt4xxp/VflPv7P0x43fPTY1yEG/BVroU2yQosgyDaMxruSBwW5BcqqpnoEioj87AsUXWf4f/w6/o7KyZ9Zg0VQznWcsN8izMxJWxdSqoNJ+4d24BXm4Yq9MsISaiLbc+oc1Ok0oRHNIUuAoFf1taNL9hevykC8zLcplR86xwkVmUvjHgV6cbKsf5u4vq7cL96CTJpydsDk1UHUocn/weIBlvMfko0hhVPAdE7IpNZqgrRjIxJDOQSjllRt8x/L48sTd/rjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jw4FB0rwUNUrKf3mtCI6ZGX1q7w7XJu3TfK3T9SbEsQ=;
 b=cKMLzsMNVqTbcrWqQsvRblq0z1DyxcyFCAGi60XjDSs1CLqJvIodmqCt+awq3ujuzL5OBB9OwhZtnkjtoDV/qr8Yw3PO3II8ARZX8w0wt99bkfumDD3D4kyjiOclzfmw5tg4TXd7zaxVC3B1gYuzx7kMbHDXY9z9+5hrQV+Xv19XiyurBGoIQh6SzvyvkXb3eN8xCslC8YUIbE+TcOuvUBMFIfb6JBieSru3m8dcqaI1JMerAKuN73s55Zcg+O0lNC++I4xls6fM0xMGBPvoe41xWh8nFcrsm9kULwghHOqJPJ6Upoza0jP3riHM/l8qQVi1VpMtkMx3bik1D1beiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MW2NAM12FT023.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc65::45) by
 MW2NAM12HT226.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc65::198)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.9; Tue, 7 Apr
 2020 09:45:03 +0000
Received: from MN2PR04MB6157.namprd04.prod.outlook.com
 (2a01:111:e400:fc65::44) by MW2NAM12FT023.mail.protection.outlook.com
 (2a01:111:e400:fc65::90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Tue, 7 Apr 2020 09:45:03 +0000
Received: from MN2PR04MB6157.namprd04.prod.outlook.com
 ([fe80::2192:c79:168f:ff2]) by MN2PR04MB6157.namprd04.prod.outlook.com
 ([fe80::2192:c79:168f:ff2%7]) with mapi id 15.20.2878.018; Tue, 7 Apr 2020
 09:45:03 +0000
From:   Andrew Micallef <andrew.micallef@live.com.au>
To:     Walter Harms <wharms@bfs.de>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Suggestion for edit
Thread-Topic: Suggestion for edit
Thread-Index: AQHWDI/Fyl47qCQDb0ilEbBf8oBdT6htPR5ygAAHsu2AACO7Fw==
Date:   Tue, 7 Apr 2020 09:45:03 +0000
Message-ID: <MN2PR04MB615789FF54F31389096E584BB9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
References: <MN2PR04MB6157E89BBF15AD9D70DDEA48B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>,<MN2PR04MB61571362350C94A82F545152B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>,<2d4de4cc1c3b453199e48528095f7626@bfs.de>
In-Reply-To: <2d4de4cc1c3b453199e48528095f7626@bfs.de>
Accept-Language: en-AU, en-US
Content-Language: en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:D21FA77A5DDAD68A80E629153D2E06F21558E4DB2DAD28171DC43296F965830B;UpperCasedChecksum:10CC93B1EFA23690AB6C25D30309CB696C58DA6E643394ED1DFAFDFD1183722D;SizeAsReceived:7031;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn:  [h+ZdXIrWolSHVq8KqvqkJIZoxhYbyDXl]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 869e2a65-2860-4b5f-9089-08d7dad858d8
x-ms-traffictypediagnostic: MW2NAM12HT226:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3JAIlSIwLH0e8rwnfFCJnZEyU412Lx1BU3ZjfkBWhEbEbzRuKP3toCqql/B2n9wc7+Zr3EY9JnJVxA/Za3CGY0e4ahXlNUehh3/UVXqBx/uTpEHGGQlo9+zfXKrZU2TE7gsoRwgDuWyDMWfVjTKL8aausoy0rmcZZxUYdbmzmMyl2NJlTlz7HuNNj/P3XCFw
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR04MB6157.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
x-ms-exchange-antispam-messagedata: ZPexCa6tNDK+Q8AetdGrvCn53WrWf/S9iZN0P/tJ8rPgLOQ4IO+f83vGKxHPFMQUOjI2TQSAOlPq/vUlIdc9H/V3YpTjXDCwFxrTcC8IcCkHT5lHK1Bnila0SE3HgYKLB0SHKB8Q55u0w9NJB12dYg==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 869e2a65-2860-4b5f-9089-08d7dad858d8
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 09:45:03.3484
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM12HT226
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Walter


Actually that new phrasing on the last sentence is much clearer. I was scratching my head over what it meant for a string to be less than (or greater than) another string. 

Cheers
Andrew




From: Walter Harms <wharms@bfs.de>

Sent: Tuesday, 7 April 2020 7:17 PM

To: Andrew Micallef <andrew.micallef@live.com.au>; linux-man@vger.kernel.org <linux-man@vger.kernel.org>

Subject: AW: Suggestion for edit

 


hi Andrew, i have to admit that i dropped over the last sentence. And it should be *very* clear what the return means,

ehre my idea:



If both strings are equal the function returns 0.

Otherwises it returns the differences between the last compared characters.



The last feature is important for sorting. I never found a good wording for that.



re,

 wh







________________________________________

Von: linux-man-owner@vger.kernel.org <linux-man-owner@vger.kernel.org> im Auftrag von Andrew Micallef <andrew.micallef@live.com.au>

Gesendet: Dienstag, 7. April 2020 09:07:50

An: linux-man@vger.kernel.org

Betreff: Fw: Suggestion for edit



Hi,





I'd like to suggest an edit to the description of `strcmp` in the standard C library man page.

I found this description to be kind of confusing, and think the language could be a bit more

straight forward.







 At present the description reads as follows:



The strcmp() function compares the two strings s1 and s2.  The locale

       is not taken into account (for a locale-aware comparison, see

       strcoll(3)).  It returns an integer less than, equal to, or greater

       than zero if s1 is found, respectively, to be less than, to match, or

       be greater than s2.



I am suggesting the following edits:



The strcmp() function compares the two strings s1 and s2.  The locale

       is not taken into account (for a locale-aware comparison, see

       strcoll(3)).  It returns an integer, which is 0 if the strings

       match. Otherwise, a negative integer indicates s1 is less than s2,

       while a positive integer indicates s1 is greater than s2.





Regards

Andrew



