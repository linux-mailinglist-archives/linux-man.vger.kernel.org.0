Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 493EB65F98A
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 03:27:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbjAFC1Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 21:27:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbjAFC1M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 21:27:12 -0500
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2080.outbound.protection.outlook.com [40.107.7.80])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81CC063F6A
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 18:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9dWubz3fyU0FRkGzQ4zBdFKWXIoeRgEX/eFHIKdVHhs=;
 b=dlmDeiwctwRBtSgBJrhw0TQUVuvCX0m3mMUm9BvefBvDShhqSgV6M7UlzPPwsHYTOmY3Dk7u2so110la7lAeU146brgXfw+xWMxWdqvUljy7tz8174XdSEEakEWaKxM4i7FZgX6osRgCXreEERbLiXufx3SK4qtypeKdWnAUJIY=
Received: from ZR2P278CA0025.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:46::15)
 by DU0PR08MB8302.eurprd08.prod.outlook.com (2603:10a6:10:40e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.9; Fri, 6 Jan
 2023 02:27:07 +0000
Received: from VI1EUR03FT009.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:910:46:cafe::cc) by ZR2P278CA0025.outlook.office365.com
 (2603:10a6:910:46::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.15 via Frontend
 Transport; Fri, 6 Jan 2023 02:27:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT009.mail.protection.outlook.com (100.127.144.72) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19 via Frontend Transport; Fri, 6 Jan 2023 02:27:06 +0000
Received: ("Tessian outbound b1d3ffe56e73:v132"); Fri, 06 Jan 2023 02:27:05 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 64bd14b0ca256bf4
X-CR-MTA-TID: 64aa7808
Received: from 3e871807ba6b.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id 80ABD560-7278-44F2-ADF3-45FBE8106915.1;
        Fri, 06 Jan 2023 02:26:58 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 3e871807ba6b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 06 Jan 2023 02:26:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hfiUJCKDX6PKrTXwR7ptZC5kGCn2RSwQtCr0XHQH5AdgzQV1st9FluKdDX8szBZKFDxIlVuLq2B9QGRLgTaNn6fmMRH7zN4LYk2XQYT2h2n/X6BklQBGpgQbm6QI2MinDIs2JZZiotUsgxLodTNDclMJYU5wXQQY+XR+d+7BFnawY8kUWzVfM6Z4IRE9IjD+3LqbLG2Y02GTdoj3jFzl0EqwCOqsXkx+z/cUrApOU+tN9cxjZBtbXsQUYlpjkQ35k6cyn9K2AwVlYhQeYWFPzmXlUKN9ihU7OakDY9SiJCD//l5oHubpB42MbusDCB1j86CZYCC8XJmNSfP5sreSZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9dWubz3fyU0FRkGzQ4zBdFKWXIoeRgEX/eFHIKdVHhs=;
 b=VTk6FpX6pTPju+YciirloJi+7e5zY4ZAFJk64frwFmt4JpPkczY58Ke93QOOb2SnWTe7kuVUP8Q3zyLTuDczc8mLvNvShRXYF7YDMbXRnYiWzNJmGasNGhCxB+utk1saOgCjD0/ZgkTLe9qSBkkPmpRnKL5NS2CvE52qyh+uBXfh291o0nZGk5HuBeH2T9/DNig1Uxw/HmyU1qmLw67alGmtmhMtYo2mBMPWLf4UlmWU3bKh3I13PUXaauKsEnbxGDOpLVODW8bMWKY0AJUWQAHimASOSUEh74xyaQ2UwIAfRCJe0jOiTcrBe+aBa9qFBv3kh2RjlENoo6yFIfW1lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9dWubz3fyU0FRkGzQ4zBdFKWXIoeRgEX/eFHIKdVHhs=;
 b=dlmDeiwctwRBtSgBJrhw0TQUVuvCX0m3mMUm9BvefBvDShhqSgV6M7UlzPPwsHYTOmY3Dk7u2so110la7lAeU146brgXfw+xWMxWdqvUljy7tz8174XdSEEakEWaKxM4i7FZgX6osRgCXreEERbLiXufx3SK4qtypeKdWnAUJIY=
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com (2603:10a6:102:33f::20)
 by GVXPR08MB7821.eurprd08.prod.outlook.com (2603:10a6:150:4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 02:26:53 +0000
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7]) by PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7%9]) with mapi id 15.20.5986.014; Fri, 6 Jan 2023
 02:26:53 +0000
From:   Wilco Dijkstra <Wilco.Dijkstra@arm.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
CC:     Alejandro Colomar <alx@kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
Thread-Topic: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
Thread-Index: AQHZIWh+owpF8ZrKgEqTnV8wyt+PIA==
Date:   Fri, 6 Jan 2023 02:26:53 +0000
Message-ID: <PAWPR08MB898218EE6B27DED9CAA12F2C83FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: PAWPR08MB8982:EE_|GVXPR08MB7821:EE_|VI1EUR03FT009:EE_|DU0PR08MB8302:EE_
X-MS-Office365-Filtering-Correlation-Id: 09f9441f-d707-456c-32d1-08daef8d8160
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: odp/hX9ONUk6QrJJfmXd5YKREEcTOLop4blIquld7EjL7wgox9Nxu9SYDA6RhIGEV5d+so9xEFfpeQIstWqtfOzMj0kCaJhGMpe2oyHe7wMOeB7qR6PPd5z3dF908bv0mG9mCXjeZHJH08t7nr41jU9d7Gv/J75cjr3fllsvXA1LNsVlHml5FzClFx0TIdYaOCWJzgWHicvGJx7fjbtGgDK4bMx1ZVApvHXPfyMzwitre4ZE4TPd3KstK5C7vz/owNthvvfOeOY4ksyKaJ5JxHCH0uwaG2c5rLOi6cAFPHq8LQHaJiKlf8OOrLo5cBejb4BoohcJEeIkN7YJT/qnOC6hAP2j6ltYvp9HNqOqT8kVsXVDdI0hdGAFxddJhZZD5h1APCXqC2zj/TUfBlQVB4UQhBZE9Dnaa0XDtkA3RlXhethq6+4hj600fht9xIzB73F8Sn0ddv1e/yfAqEtEIjavEYw2qOc5X+GOc6wfv5JIHIpYzNJWP9r5NQUvhfnzxcsowUb46Ej/5HzTNZ/Ydw4pmJbMLQV9JVb330rmAGConUZXb/IEwUKZvlVu0v7mpzJHlWgIPJq+obHlWiikSuqGZJB7pynB21Abewo7nfbQotKFrli4ChvVqwK2rt40BWM3x5at1+t3yDOmheBCoHJESem305EpgLRHn8EoAUh0Y+m/tW4CrtaOsqeHcwCjBNSs9EMwfuVOXtIlEBFy/beUWnoGP9ze8uFZJ1XF8T8=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAWPR08MB8982.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(39860400002)(396003)(366004)(346002)(451199015)(122000001)(64756008)(33656002)(86362001)(8936002)(4326008)(5660300002)(38070700005)(66556008)(52536014)(66476007)(8676002)(66446008)(66946007)(76116006)(2906002)(6506007)(478600001)(41300700001)(55016003)(186003)(26005)(7696005)(9686003)(54906003)(91956017)(71200400001)(110136005)(316002)(38100700002)(219693005);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7821
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VI1EUR03FT009.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: fd950750-aa8b-454f-0129-08daef8d7983
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nhw3PNN1xGnNEQXD7kYkdDIbrLGbJIdhaZp18xQPM3h+QDrKJgHxdyO0Tgnpy/kzUhBeNRTmLRA1lnrSijyC08L6S0GJQtknfVUsrXPmRlm6wYwhGOHCsW2dNlZiw48PlLKOijjxyaTD0prT/4SjkPkV6mhuUN7DyKot7KENKBYTVH0mKQieWA3lAyLLqNQ4Kvg2paWwSBlBn5WkAMVMf+L6/btNvUzW4BwSGC+wdpz0cG5aHZlW4v5XX/sW5cMioUjdDCnKTOLPywUKvzqU+vYEaVUYjuquSJFOPHLRiPbWEfpui7cR5DkFow2M+zsZfjuL262pMzjEIeVrMzKv9Bfgbpf2FhBulAzzeIGjqe2RbMTDGrpjgOnmDpbF0Ob0aoVzBE+mTIWVLM0xTC+V31PEtCgOIe3d+fXz3GJLH7EVYI9XSLrrslABuKPGdSYZmTu4vraZcg7vHz0BMq9/89vOJWOGux+TY3g5SLObeYzqP0FSFkB9v5G6pEZlkboRAMsitxeITGcx1/5mlPhVINYAPluyyFwwr5Hhbx0V8Sc9t5SQoWDEt+jYLQKFXjcIHGrcxy9ljScUjrAozJFT2Qtctoo6CtNiMIkbN5xN+3fbMz+0un56R2UT/a1f0T2MF9pLDm6HnD3t0EuMUK4e9WgaIKxIA3ioRzl0elXrbW96Bmgbq736wKq7PZQXanKbeACPt5TSFoDZ657MB69p+/9bwDoSO/vO57/C4iA1NCw=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(396003)(136003)(39860400002)(451199015)(36840700001)(40470700004)(46966006)(82740400003)(186003)(336012)(478600001)(7696005)(40460700003)(55016003)(86362001)(26005)(356005)(40480700001)(9686003)(82310400005)(81166007)(36860700001)(33656002)(54906003)(47076005)(2906002)(52536014)(8676002)(6506007)(107886003)(316002)(70586007)(5660300002)(110136005)(4326008)(8936002)(41300700001)(70206006)(219693005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 02:27:06.5245
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 09f9441f-d707-456c-32d1-08daef8d8160
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR03FT009.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8302
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
> Many projects redefine those functions themselves, with alternative names=
, so =0A=
> it's hard to really count how much is the intention of projects to use it=
, =0A=
> rather than actual use.=A0 Since the standards don't guarantee such funct=
ions, =0A=
> projects that care a lot, use a portable name (one that isn't reserved; =
=0A=
> sometimes they don't even know that there's a GNU extension with that nam=
e and =0A=
> use a weird one, such as cpymem() by nginx).=0A=
=0A=
Yeah portability is a big issue with these non-standard functions. So even =
if you=0A=
aren't considering the large cost of supporting these functions in C librar=
ies, there=0A=
are also costs in making applications portable, precisely because not all C=
 libraries=0A=
will support it...=0A=
=0A=
> The thing is that those APIs are better (imagine that they were all stand=
ard, =0A=
> and were all equally known by programmers; which ones would you use?).=A0=
 Some =0A=
> programmers will want to use the better APIs, independently of libc provi=
ding it =0A=
> or not.=A0 In some cases, for high performance programs, good APIs are ev=
en more =0A=
> relevant.=A0 Not implementing them in libc, will only mean that projects =
will roll =0A=
> their own.=0A=
=0A=
No, the use of non-standard functions is the problem here. bzero was deprec=
ated=0A=
more than 20 years ago, do you think C libraries will add support and optim=
ize it=0A=
even if they never supported it before? If it's non-standard, it's never go=
ing to=0A=
happen.=0A=
=0A=
If we continue with the mempcpy vs memcpy example of nginx, I presume=0A=
nginx implements cpymem() similar to this:=0A=
=0A=
#if HAVE_MEMPCPY_SUPPORT=0A=
  return mempcpy (p, q, n);=0A=
#else=0A=
  return memcpy (p, q, n) + n;=0A=
#endif=0A=
=0A=
The define would be set by a special configure check.=0A=
=0A=
Now if nginx got say 10% faster from using mempcpy then that would=0A=
be great and it would be worth the trouble. However there is no difference=
=0A=
since compilers typically generate identical code for these cases. So what'=
s=0A=
the point of mempcpy exactly?=0A=
=0A=
By all means, create your own special copy interface function - it's just s=
ugar.=0A=
But deciding that mempcpy is great and then being forced to do extra work=
=0A=
to make it portable for no gain is what I find insane...=0A=
=0A=
> Where do you suggest that we put such function?=A0 In or out of libc?=0A=
=0A=
Well you mentioned that nginx and many other programs already define their=
=0A=
own memcpy variants. It's perfectly reasonable to do what you proposed and=
=0A=
create a library of inline string functions using standard calls as primiti=
ves.=0A=
If it is a freely usable and portable, any project that likes it could just=
 add it.=0A=
=0A=
Cheers,=0A=
Wilco=
