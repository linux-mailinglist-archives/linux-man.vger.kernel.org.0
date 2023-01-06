Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0E066600B3
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 13:58:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjAFM5i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 07:57:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234811AbjAFM5W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 07:57:22 -0500
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2080.outbound.protection.outlook.com [40.107.15.80])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A57D728B7
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 04:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9dk4Ns6uui9kdER/Dol4RvhFrTdOWNEm8n09xxK0Izg=;
 b=HEthgkCsACj7dfOhU3j2BnHUnxbLUngBY7OqBUnnQew+c/oXOUlblC6DWzjTXkZ82i3Qd0pX9wpxILqHjTv43MMLe59NtM5pKDPfiRXJ2MlLP+S7TDQ5t8FWU6O/jFZY62mY94cDrCOArz0DXbA9oYnD53fbTZssHNZR2YRL/+0=
Received: from AS9PR06CA0630.eurprd06.prod.outlook.com (2603:10a6:20b:46e::22)
 by DU2PR08MB10132.eurprd08.prod.outlook.com (2603:10a6:10:49a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.7; Fri, 6 Jan
 2023 12:57:13 +0000
Received: from VI1EUR03FT029.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:46e:cafe::df) by AS9PR06CA0630.outlook.office365.com
 (2603:10a6:20b:46e::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.15 via Frontend
 Transport; Fri, 6 Jan 2023 12:57:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT029.mail.protection.outlook.com (100.127.145.13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.17 via Frontend Transport; Fri, 6 Jan 2023 12:57:12 +0000
Received: ("Tessian outbound 0d7b2ab0f13d:v132"); Fri, 06 Jan 2023 12:57:12 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 339646456406ba00
X-CR-MTA-TID: 64aa7808
Received: from f4700e6a1c3b.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id 3CC9AB7A-A3A2-4835-83D6-F03DB0222A43.1;
        Fri, 06 Jan 2023 12:57:06 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f4700e6a1c3b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 06 Jan 2023 12:57:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DeeBWKEELuxK8Yr/GfEki3BwhM/+EHPv0EBe7q1seIJ/dBhFBlZC+B+rV7hvLeedWcFA/PppIfpY2JATtUxED64jCqHu/PRxwANEjQitvEhIgZHC825BBjiVBT/jesgKlKP1faTqTwfaHxZ1kJcEn/rSoQuZOxNxm3NWDZNeNfRlyGpF45pBKFrHij/A/oBgUOo5HTfvcVwkZcyum0uYt4BNpwCbWW4eRVp4NRdIdexiOWpKffeIb1gBt6/79bP2XDWr4SEkGLyvLUPrjgFLZIzHXniMmVjeyHFvIyrT13ewzEPNZJjdbkb+yQEq2fYbfK5Gd3SC2GctmawJZtDS6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9dk4Ns6uui9kdER/Dol4RvhFrTdOWNEm8n09xxK0Izg=;
 b=SZXIJmQ+NSvDgzxnPKgAxvnx6yD/Li59GdV5rsbI7fbO39ERYFa8QnS+9oog7S/h1jhBU4DpW5dFA+uBEl1FL8AriQ1XNC7eCkBq6GW3ZF4boNdMWwsmJvoyH6/BF+EU3OBQoEiGfySTQxQjdu0p0jgSqCId21KYRZbaU2VjNlVzBCsDGLWOYTKxHuiqOpGdcA8PHj+mW3ZLt0TZ2U6Lbb7c3WMOG9KwYy8lqqC+V5S+RSxRYZbJr4Rn5AUmqwygfJBvBIVdB44HQsF4hEG7zOJOn5L94/EkouCGxm+9GOhtv5S9Y88uMDAflI+wdg8V1yeJMik04fyHYi2liMOakg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9dk4Ns6uui9kdER/Dol4RvhFrTdOWNEm8n09xxK0Izg=;
 b=HEthgkCsACj7dfOhU3j2BnHUnxbLUngBY7OqBUnnQew+c/oXOUlblC6DWzjTXkZ82i3Qd0pX9wpxILqHjTv43MMLe59NtM5pKDPfiRXJ2MlLP+S7TDQ5t8FWU6O/jFZY62mY94cDrCOArz0DXbA9oYnD53fbTZssHNZR2YRL/+0=
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com (2603:10a6:102:33f::20)
 by PR3PR08MB5721.eurprd08.prod.outlook.com (2603:10a6:102:84::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.9; Fri, 6 Jan
 2023 12:57:04 +0000
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7]) by PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7%9]) with mapi id 15.20.5986.014; Fri, 6 Jan 2023
 12:57:03 +0000
From:   Wilco Dijkstra <Wilco.Dijkstra@arm.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
CC:     Alejandro Colomar <alx@kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: Re: [PATCH] memchr.3: Deprecate rawmemchr(3)
Thread-Topic: [PATCH] memchr.3: Deprecate rawmemchr(3)
Thread-Index: AQHZIThty8O/p6e6+0yd/LZsoK+4wK6RUnP9
Date:   Fri, 6 Jan 2023 12:57:03 +0000
Message-ID: <PAWPR08MB898270B26F1A5776B87DE3F883FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>
References: <20230105190246.17819-1-alx@kernel.org>
In-Reply-To: <20230105190246.17819-1-alx@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: PAWPR08MB8982:EE_|PR3PR08MB5721:EE_|VI1EUR03FT029:EE_|DU2PR08MB10132:EE_
X-MS-Office365-Filtering-Correlation-Id: c8dfb60a-6338-40fd-a021-08daefe587a1
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: kA2s9/h2ljpuJlXWCs9p7dZ/evkUVG7mKHkgCTYz+0bXSfnw3Qn/rUexbF/WO3DV6c7VPIK5M6cXscDd5RB34aL2sg2BX/j/RsgV8IaavGjAnHZe4jd2W/YPmbZHOlzV5CUfbCUIzBgIPg4kqsZ4LWJb+8lG3a7dIxZYj4q+DeMPFVOHBmrVNXzSIBjUbJiI6NP3mWyiZPe9P26XPawb8NxM+d32JQygQGXL8fal/GBQimRnaLAG6dCi9EGr5bDfWauX9zQEC/UBpEZ4lSqEG1j4EH7RzWZyDvLRvlrk+hJJa69VtQZ9B5K/3SDtm+6pLq2G93cfpwbo0Fuld0gph732Trnm2ZQ5/F3fXjNzlJdQrvpRzbDLLqB0o85npiQDPPKXwP/N4lgBA1boWLp/IlFZPI3veJ/rcgeRfMRb9QBv29fptJng/zJerRLN3ZHx8xOY2b9Mx5+eOqbeVyxRd9BGJBNg+MzQfHM/GWxOhiXgmHDwygkj1UIPGj6uUouTRzNY5CJGWqKtT2WOhyWqdSMYNNG30S/SPcm+VIXbUII5b9S8oLLw+Wx9npwRVObZ4G4FLqpaU2zCV3210YISkE26Lt+yymkE2Xb3vTUNFLTafb5yUy5mHeZh/ZqxUD9kEXoaAAZbKYC1FDjxvlTEB62VALIuswMSiWNYkaexwM2JAT05deePUddrJSjmqI525NvVDua/rTQMoL33O6PWDA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAWPR08MB8982.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(396003)(39860400002)(366004)(451199015)(7696005)(71200400001)(9686003)(26005)(478600001)(55016003)(86362001)(186003)(122000001)(38100700002)(33656002)(38070700005)(4744005)(66476007)(66556008)(64756008)(66446008)(110136005)(5660300002)(4326008)(52536014)(76116006)(66946007)(41300700001)(316002)(8676002)(2906002)(8936002)(6506007)(91956017)(54906003);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5721
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VI1EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 05958f3a-7f18-4bbb-b5fb-08daefe581f3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OPIRQMSGCZW8vuEstqHbNEWY5/00XiUWc8Um+Zb2PwrtgoFVaiQlfRNjtJ1ciSyQ5Roi3K7E3SKrk9KbJjEnuZHA7NRuTsfInOHG7XrhDNFIZGy1Z8AJELTYCJeosMe8DNd9SJdxp/+z25CIi9vKRyJsotGVYdkQVoxKphuLV53ppnZXBSm5ed/+3A4Jq1n+Ex0REL3lBBTzGKAbYnalFhbp1y/m8qcHscXKn4W8r67CMWfAMH6IaHECJeJ0NJtHg5w+Ke2I1/ABQEeFdbBhk/z5Vx5J3OxeLeuwXX20uPYpNCuiooxz0ipy5/bEOMawUioN12KMvdAATRDcMUSnMGtIJRE0jlrWNDWsW8kIWWPms3rV0usI+KuEdmXGGW0Ba7eL+4byhwhQjRouAIPCX2f0ZusPjY7uaNtZEMhxc4VIJ3H4AIfjgg33MDTJ21GIwePDYw+GeOzblH3PhuOShRYEYhcegnKiS0QWiF5HyCZSdM83WH8PsCreDK+28QFhZsUqse9FNVPEjqnDclSnH/u+p3fwfqMBZ2UabC19F2+Lq1EI3NNayWQh2qvenDqsg3FIQ+uvXlnZj809yH/XZUybERy7jLJ+PYdA5k0dqPEtCz8CYwh6XN8L2Nojr5wG/lEREEsZankyZIWhdX15MgYUp75vnftVK7t0ghTy1hmhRWikggSjxSgKq1Qs72RO7LyT/4+CMBR8UYz2aKCqwA==
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(136003)(39860400002)(346002)(451199015)(46966006)(36840700001)(40470700004)(478600001)(70586007)(7696005)(70206006)(4326008)(54906003)(52536014)(9686003)(6506007)(107886003)(8936002)(26005)(82310400005)(8676002)(41300700001)(186003)(336012)(47076005)(316002)(86362001)(40460700003)(33656002)(110136005)(81166007)(82740400003)(356005)(5660300002)(4744005)(2906002)(55016003)(36860700001)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 12:57:12.7474
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c8dfb60a-6338-40fd-a021-08daefe587a1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR08MB10132
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_NONE,UNPARSEABLE_RELAY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,=0A=
=0A=
> It is not optimized, and it calls either strlen(3) or memchr(3), so the=
=0A=
> caller can do it directly, and it will be better.=0A=
>=0A=
> Suggested-by: Wilco Dijkstra <Wilco.Dijkstra@arm.com>=0A=
> Signed-off-by: Alejandro Colomar <alx@kernel.org>=0A=
=0A=
This looks good to me. Btw in the codesearch there are about 800=0A=
uses, the majority looks like prototypes etc, so there are few actual=0A=
uses. Interestingly GLIBC still contains this:=0A=
=0A=
#ifdef _LIBC=0A=
      p =3D __rawmemchr (p, '\0');=0A=
#else=0A=
      p =3D strchr (p, '\0');=0A=
#endif=0A=
=0A=
The strchr (p, 0) is optimized by compilers into strlen (since that's=0A=
obviously the right optimization) so adding rawmemchr was not=0A=
only wasted effort, but it made things slower as well. So we should=0A=
remove these uses from GLIBC.=0A=
=0A=
Cheers,=0A=
Wilco=
