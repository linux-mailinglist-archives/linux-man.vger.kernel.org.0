Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6ECB91B87CF
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2020 18:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726220AbgDYQy7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Apr 2020 12:54:59 -0400
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]:65020
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726216AbgDYQy7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 25 Apr 2020 12:54:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MxHz0UT5DiP5qF5RSbxHrrYsM5O0ZinpTwFKo2JQa+0=;
 b=HaeyEPuRa8E1DIlqvsk9PTogfJoQEtFl7n4ZJ3S8VvnT4gHzz16bHm2CoVfNrtGvIa69zbi8Hv4dQGx9Kb1cQaft6RjsQwzkfhCLTdDjOLHQp3sDwjwEkQ2jxho6hxi6ycdb8/68ztfyfzOE8YBSjEaVRFNbTg57l5KF78CVvos=
Received: from AM5PR04CA0020.eurprd04.prod.outlook.com (2603:10a6:206:1::33)
 by AM6PR08MB4756.eurprd08.prod.outlook.com (2603:10a6:20b:cd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sat, 25 Apr
 2020 16:54:54 +0000
Received: from VE1EUR03FT051.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:206:1:cafe::7) by AM5PR04CA0020.outlook.office365.com
 (2603:10a6:206:1::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Sat, 25 Apr 2020 16:54:54 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; vger.kernel.org; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;vger.kernel.org; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT051.mail.protection.outlook.com (10.152.19.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.19 via Frontend Transport; Sat, 25 Apr 2020 16:54:53 +0000
Received: ("Tessian outbound 567b75aed2b9:v54"); Sat, 25 Apr 2020 16:54:53 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 174e7304b1815e4f
X-CR-MTA-TID: 64aa7808
Received: from 09980f1dee9a.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id 71987D5D-C77D-4820-8752-77A205EFB0E1.1;
        Sat, 25 Apr 2020 16:54:48 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 09980f1dee9a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Sat, 25 Apr 2020 16:54:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zf6hhS8FdLXyCTcxSW/910cRl64JwrvsWkNyvMgNd389CHddlhsGY0G2S9lzATRgDeJXDNCbFUap1RK+e+zNybOsTgEkAZ3JuzqKE7NjRauEkgMh/Wje1y/wp5baZ5qhcBKyF8iFXJiraHbrjIzV0Dmw6HxRs3M/8Bi+uQm+GQYD9N6OsKuEh9U0i0XqLeF3V5xtLTpO27epIuugnj2E0TZGy+qA/MFYnYDsr8HyHos296lJHcxLWN6A00lowz3lLqDw8gRCgpa+JwG63+cU/H8y6m7gNmTt5OhFx9Lp3HTAL6UTyNKSWGd3GMSYF8oAk0pdIuQDLadIAuarXeA8Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MxHz0UT5DiP5qF5RSbxHrrYsM5O0ZinpTwFKo2JQa+0=;
 b=CTi0pOW9DtgjmKd3bXGrPg9AsJGYUYGvPB/WBFFUMXer0cwO9DKJdG7hwDFKNxh+BKIlKdn9zWc6Xiuu7GdguH4klpbfuIvIPmbmnUf6/HHemncFS0RtQInOv2Fn04hKnk8/fA5maXZnHdDlaFKFpQDBaJ32jlS3KU8RkYa8byGxJSLu0tY5+ZZa0ToyYpQ+yz0qRe9hHtGjn/v0rgQL4+fHKQVNWOJwbNQg4V78MXEPLOJU1Hmf/XBpk0gfc5VPA9Bh4Y1YzQATSCoqK+gPt10eGQTWPEHl2zpOPzco/qmYQTrLynfne4ctfQv9/dMbv35EBb9qa0r0Vz4831o9Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MxHz0UT5DiP5qF5RSbxHrrYsM5O0ZinpTwFKo2JQa+0=;
 b=HaeyEPuRa8E1DIlqvsk9PTogfJoQEtFl7n4ZJ3S8VvnT4gHzz16bHm2CoVfNrtGvIa69zbi8Hv4dQGx9Kb1cQaft6RjsQwzkfhCLTdDjOLHQp3sDwjwEkQ2jxho6hxi6ycdb8/68ztfyfzOE8YBSjEaVRFNbTg57l5KF78CVvos=
Received: from DB8PR08MB5036.eurprd08.prod.outlook.com (2603:10a6:10:ed::20)
 by DB8PR08MB4122.eurprd08.prod.outlook.com (2603:10a6:10:ac::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Sat, 25 Apr
 2020 16:54:45 +0000
Received: from DB8PR08MB5036.eurprd08.prod.outlook.com
 ([fe80::8dce:6db4:5358:200e]) by DB8PR08MB5036.eurprd08.prod.outlook.com
 ([fe80::8dce:6db4:5358:200e%3]) with mapi id 15.20.2937.020; Sat, 25 Apr 2020
 16:54:45 +0000
From:   Wilco Dijkstra <Wilco.Dijkstra@arm.com>
To:     Marcin Stolarek <stolarek.marcin@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     linux-man <linux-man@vger.kernel.org>
Subject: Re: [patch] strtok.3 add note about glibc-2.25+ segfault for call
 like strtok_r(NULL,"|",NULL)
Thread-Topic: [patch] strtok.3 add note about glibc-2.25+ segfault for call
 like strtok_r(NULL,"|",NULL)
Thread-Index: AQHWGwBwh9WHPU9kL0SP+AAYB8pNZaiKA3iAgAAIIACAAAA3Mg==
Date:   Sat, 25 Apr 2020 16:54:45 +0000
Message-ID: <DB8PR08MB50360CF57C6AD1A2C7EEB43A83D10@DB8PR08MB5036.eurprd08.prod.outlook.com>
References: <CAC8K6BNGULq_XQCWJz2ZiDr1xN+3_eD1jnO1x2f9Kw0nV5=5bw@mail.gmail.com>
 <CAKgNAkhb5j0NV8E7OFvyG_EKfs82bSqsq2DdQ5waSuXRkYfJUA@mail.gmail.com>,<CAC8K6BP1TFVjQRxs873FUCBNdOVNAkb+d1exd41Q_CTUvCjnSw@mail.gmail.com>
In-Reply-To: <CAC8K6BP1TFVjQRxs873FUCBNdOVNAkb+d1exd41Q_CTUvCjnSw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Wilco.Dijkstra@arm.com; 
x-originating-ip: [82.24.199.97]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a85d1528-dee2-4702-57bc-08d7e9396068
x-ms-traffictypediagnostic: DB8PR08MB4122:|AM6PR08MB4756:
X-Microsoft-Antispam-PRVS: <AM6PR08MB47566A36F86438D7D138C45683D10@AM6PR08MB4756.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:655;OLM:4714;
x-forefront-prvs: 0384275935
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR08MB5036.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(39860400002)(376002)(346002)(396003)(366004)(136003)(66476007)(110136005)(8676002)(4326008)(64756008)(66446008)(478600001)(66946007)(5660300002)(966005)(66556008)(76116006)(6506007)(33656002)(4744005)(2906002)(9686003)(71200400001)(81156014)(86362001)(55016002)(316002)(186003)(26005)(52536014)(8936002)(7696005);DIR:OUT;SFP:1101;
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: /k8hzIn7qg9HdncANX7bfmeWdKtdYFRorFQW3r3AU7u6bmkfX/035e4J6xI9rXMzw6E854Oxbp3m6/0GN7+uY9+QY2Bd/4GioKsXfLxVMrMOxQUhmqIIwcdxWAYxF/KmFOYblHIxTdjRD9waWHEFXs/6/BDRnW3kS7+DB21ao77hI3YGnelQpEZTsau3HAcUELapf2nU0naII6g+eqwuJOw5lEjUqZIBoogAG3zohlEzHVXddhg+uRBDQnF942tU/ARwQhROtPzW1x7px+jn20oP61fRe/zB6hJXlFbhzkI2RF0If+dKjtkRmKPvrnWU87rqmDU5wHx+8rv//ig22tzP6Mrq3XBsJ67oZPuiJ6nQ44NVOBQbCRvlHzIAgr8vgDj+O96m1VmMNui3Ptmzw1VlliTc0mo2S/uf9KxaBxKtCxNQ/RITPub0nuvuqqVkWmJjcYXCaBrZ42KSAeycSPVddKYnTJqWrLbIsf+iIjjhGjLb+XjMX4jnPbLdjoS3vPf2VD44VKEbIOLOVsdxyA==
x-ms-exchange-antispam-messagedata: I6nsj28hCm6FSolMyq1M56qywozPQe7kR/9y2ZHV2/ckNFukZLvHb61xkssPOcogGlXQRxxPU7TNj9rEjYYZe+ZyydeNwCaN52R+0rEvP3QaikoYP8RADtBMiQPe0wShnWdLrHLuf79H4kDRfuKI4MnTbrM2zrys4UIM2AzRp2x3yhvpjVKfTaWjtaw5VhfWOAaem6CC//PCe51zloTzWGxCTIwV+9C5jd299P3/l+8VQ8Jobkb95VWN1ox522eytb+6ybUGO5safP4pdUteIYzUecjnLA6jvf/AVjzqaN6ABQIwxutCjKgqDy0hfmITQM/qRu6biHtf298VrNHCLn9Ais+o4F6O5QGF8DOYfJrTrtJXfZ/8HmB+hu5PZhglVcT7ilmKhAnoD3FoBhLXLmXDtlhnn0a4tjtDBOguIuguV1ux9ufRC2GakRJsc0XJK1/6AiitNB/Ilmis7UMaSyG89TNh8gJaWncpPwcCphn8NPQJXi5iECsExJeRVxV2duq/88ZaJA5h05/h7UAwuR7v4FANrvwd3y/6lWwrcrZ4UEFUNtzHonZfcUIjNrGH4KEYFNN7nFjZtrZhhLKaoII8bojqTMF7PdE45j+yAZaIVHqTDANSIZpLJ8CRWK6ZePmxgHORqVguaag8xvhqlFhAO1rthdwW7RCYfFvLwoyWcxKKO+APszfyW1TSm8hCU36N7sEJHHBWhPwrYE+iEbHDQiqmpYEQLBaRTFomXzHd9x/FWqaG5E/51WXL2gVpglsoVJcCc7fpcYFaFCpJQdDWG35qPgRXqBll37jH0kI=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4122
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Wilco.Dijkstra@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT051.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFTY:;SFS:(4636009)(376002)(346002)(396003)(136003)(39860400002)(46966005)(316002)(70586007)(356005)(81166007)(70206006)(81156014)(8676002)(5660300002)(55016002)(86362001)(4744005)(8936002)(336012)(82740400003)(7696005)(478600001)(26005)(36906005)(47076004)(2906002)(33656002)(186003)(4326008)(52536014)(82310400002)(966005)(6506007)(9686003)(110136005);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 403474ce-013a-4245-d048-08d7e9395bc5
X-Forefront-PRVS: 0384275935
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WtrWQ4RRihbjAHcfJmd3TqzGtz1k6jpRZ71lP81LRhZeBDuxIFtxuYuGKKFpIoCIRMwWq3JqBp5Nv2aQ+LngDj3VtmO8kV0aiF+cMuTHJ5ZMhcSSuKpLEsm6cAy+EOa9C16vMNUeovCmegnD3JO/54ZWaQ8NJsQZER3A/bhCwLMB0dxCtrFPye/L45oJQOn1ae1jkJiWBdGVGW80OjkIIeBSFmHij+rv0aD4/OTZlbwu6JBnoX86Tmxcnkrxu0a4hwJog2BXx27F108jIXOUaqJi0IY9LNUSI+u7oiF8XkvyWHdgHgKHJhl8bGz5sgobdRWKWTwTOJC4H5ucH5r9LzcnfKJcmKB5XIylxW+lFR7xsODIN6qAQPDF8xtDe82uCd7BRcUxXkCqXO66CSTtBi3ydo/+VNTS6HABXhNx1rZhd2nLY8WXu1r5+j2oV6y5et7ggO+Z8K44uniom0O/vVgLFW8WgCe8wqGmiHkitYLOA/ifms+KjSCFI60IdP5fG+/3uBZK/k/e3L76Arysaw7ARPHyJ0PzYq+thYQpzw5Fi/0XwZL/6hjNcC8YsKaQVClsVeiOIxrwRdpJfxF5Mg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2020 16:54:53.5023
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a85d1528-dee2-4702-57bc-08d7e9396068
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4756
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

> It worked fine prior to 2.25, since it's a change I thoight it may be nic=
e to document that this set
> of arguments will segfault and has to be avoided by calling app itself.

Did it ever? Even much older versions have always accessed *save_ptr with a=
 NULL input, so a crash
is guaranteed. And *s is also always accessed, so it had better never be NU=
LL. Eg. this is what it did
back in 2007 ([1]):

  if (s =3D=3D NULL)
    s =3D *save_ptr;  // crash here

  /* Scan leading delimiters.  */
  s +=3D strspn (s, delim);
  if (*s =3D=3D '\0')
    {
      *save_ptr =3D s;
      return NULL;
    }

Cheers,
Wilco

[1] https://github.com/bminor/glibc/blob/0ecb606cb6cf65de1d9fc8a919bceb4be4=
76c602/string/strtok_r.c

IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.
