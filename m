Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51DF565F794
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 00:30:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231848AbjAEXaU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 18:30:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbjAEXaS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 18:30:18 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2059.outbound.protection.outlook.com [40.107.21.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BEAD6B195
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 15:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96Wgi/d1xO46NAD1Ust1RKdhvfr/xoe7Y17tBoS6rxE=;
 b=g7QfVLyEuCl0P/sB/Mk50CDI+WPK5sq6pVHYC5T0RVOcmFp7W6m60vD6VfXfJW3v3TvuC8VM+s3yZkpF1uFJtlwkoVToXfJoTTgQMhbdSo0vKJRRe3BUZAaRI/DIh00mGiwfaMd5WZxmZsPsfbwd7cIZy4LGv9m+U2CNFg4qCAo=
Received: from FR0P281CA0093.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a9::7) by
 GV2PR08MB9328.eurprd08.prod.outlook.com (2603:10a6:150:d4::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.7; Thu, 5 Jan 2023 23:30:14 +0000
Received: from VI1EUR03FT041.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:d10:a9:cafe::f4) by FR0P281CA0093.outlook.office365.com
 (2603:10a6:d10:a9::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.6 via Frontend
 Transport; Thu, 5 Jan 2023 23:30:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT041.mail.protection.outlook.com (100.127.145.15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.16 via Frontend Transport; Thu, 5 Jan 2023 23:30:14 +0000
Received: ("Tessian outbound b1d3ffe56e73:v132"); Thu, 05 Jan 2023 23:30:14 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 09b46f462510f87e
X-CR-MTA-TID: 64aa7808
Received: from 188d3b7b3aee.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id 40FF2833-EC7C-4A6C-B722-9257B2327FD3.1;
        Thu, 05 Jan 2023 23:30:08 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 188d3b7b3aee.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 05 Jan 2023 23:30:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G0aeW27hgFFmcnCp90bqfPRcd8TtVE1xwfiyCDSnAzrJCXejbTNjthhKS1BSznL8P7pmYwnTrvPZPjXFqzZtUVtLUnMeqgh76WgyuxDqW3T+3RqPrjL/JKwhIsffNA8K9Y7EKgY/iOjIyh/K9ur+iDeCoRQQfl4rk+LECWZ3jZoHm9Y4VK5eqA7L8Tqkif6bBU6xPEJagi0rTQC/ccRgoJQZyqG+LNHPnm52/lm8hHyY+oAzJqs17ZI0lI7V0KMldtofet3Fzm/4055Fbvi0kkKBMdld1HZ5UM35qn5NQO+G2IQEzbHnIZfNAxCzkD2crKAGIl5QlXvaP4n+PMqhOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=96Wgi/d1xO46NAD1Ust1RKdhvfr/xoe7Y17tBoS6rxE=;
 b=ViB3Ps7dQffkHxFRG0Vgn8T5JzxHVK+O4kIq0ASYPP5S0JYJkkz6PYCiJVDRwDCyWZibGGWFX0XDwfkRi3daBzjfjHPccyxMdrLRRU+K8Q5UWuJkeoVjRDisrsEXWEiMrXGPr1zfU41aRerXuAQWy5xgSekYAWOBpmXeF1XYXfIsZgIb320MagPf9qiqXIeZ49AOko3FRlSHVBcmy9s5aZNaAUz6Che/k3GObm0LYsQ5pho2838pekbsHHnH5kqMvbMh9zNhX057TG38DS0JGUifOYTi3JMPEWaI488klYYkflCVzQHxyIRA6L6dEi2UvrCEfM0HxvI3Hf52Dy/frQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96Wgi/d1xO46NAD1Ust1RKdhvfr/xoe7Y17tBoS6rxE=;
 b=g7QfVLyEuCl0P/sB/Mk50CDI+WPK5sq6pVHYC5T0RVOcmFp7W6m60vD6VfXfJW3v3TvuC8VM+s3yZkpF1uFJtlwkoVToXfJoTTgQMhbdSo0vKJRRe3BUZAaRI/DIh00mGiwfaMd5WZxmZsPsfbwd7cIZy4LGv9m+U2CNFg4qCAo=
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com (2603:10a6:102:33f::20)
 by DB9PR08MB7511.eurprd08.prod.outlook.com (2603:10a6:10:302::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.14; Thu, 5 Jan
 2023 23:30:05 +0000
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7]) by PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7%9]) with mapi id 15.20.5986.014; Thu, 5 Jan 2023
 23:30:05 +0000
From:   Wilco Dijkstra <Wilco.Dijkstra@arm.com>
To:     Paul Eggert <eggert@cs.ucla.edu>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
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
Thread-Index: AQHZIUcLEgfJIKubUE+7fNap7IPfGa6QTaKAgAAAjlWAABoZCw==
Date:   Thu, 5 Jan 2023 23:30:05 +0000
Message-ID: <PAWPR08MB8982063CBD7B2A88C611FA4483FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
References: <20230105193751.18846-1-alx@kernel.org>
 <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
 <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>
 <PAWPR08MB8982513ADD350AC12E758ED483FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
In-Reply-To: <PAWPR08MB8982513ADD350AC12E758ED483FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: PAWPR08MB8982:EE_|DB9PR08MB7511:EE_|VI1EUR03FT041:EE_|GV2PR08MB9328:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e78a315-2de4-42ce-93fd-08daef74cc11
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 04sS4VCDc4NGT0s4ie2nao8KTFTdI8o6pXzbvvToWMMJbdlF37Gqos3t/ulY/+CMonEcORXLAUTO4jox/gujVp+nQXuO7+39Bk82rDRXP/BMstzgBcvf236naCfhWZTsgfJPAfxXW6kKyIHiFlq6LWArjXFH817CwGHWbSvypK2Y76eW/nEoHWbHIu/bDIw/a4eEAoZmIZeVfHKZCUtD6u2/k2YfeD/JBZ2GG+xFQPsWE9JRUhE3rWZ93Jtdo4WaytXtrUgNouL6Od5wBSec2iskaaspNzHzyIpgBnOFZU+5/KNCrntYrA7K9eKoQUUlKNmocj5SwkWIiHuAuX0vIK+xp1Z0q82MB6DX2PsEVsnbr5CpkyfZX7OH6JEptgIbUSuC6O4+L7unTn89OTUMpnzbQ8IGVqnVLFaErqswjuSwBLb0MMrrFtqNlwYIUp7SDGWAbJwCetR7fvSGuZzVxLRluVf1Bpu6QjqVhvSYIo5dryCJ1i5SVgA24RIezaxeMrefUI9XmNO5Q/POD89iSk0b+OdBzSbXtmPoJZwJeq+t4LFasUDqluJ0U/AJtxQvDrxS/n+w88bYOm+m/22BGbEUboI5HrLTogZ8/+1ulSiTlgrmcgsQLhNybcxCrEvOypoxzCpJBn4xOlBbBM7Rs7/7NS+AjLblRAv0o3A9M22wbsa0j+TGSg8mYiGdAm9NQsmE713lwAVkgW+ZHKJ3ucNgwsGleIFv6kSFD/tSbD4=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAWPR08MB8982.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199015)(122000001)(38100700002)(33656002)(55016003)(86362001)(316002)(38070700005)(7696005)(110136005)(54906003)(71200400001)(66946007)(186003)(76116006)(26005)(9686003)(2940100002)(66556008)(8676002)(2906002)(6506007)(91956017)(4326008)(478600001)(5660300002)(64756008)(41300700001)(66476007)(66446008)(8936002)(83380400001)(52536014)(219693005);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7511
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VI1EUR03FT041.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 9f2ac4e7-03fe-4cf4-3f77-08daef74c677
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5eQ8OvR75tUx2SWtmyNPAmkgMCYke/mGZ86J0oxhrKgtSMF+XJ21SI/CfYPK5v9CLrySeTvNWASU0XbvWaK4lTA9iTPi/lwXKzX+TOJlIBV1xfc2fqvTssSYdL7WiBi5KSqPzSAYPiEU9vpvlqnvHc4R9EVjlhXxU3d7Xtm5ElTQAtrVBUBsKLjkoKwWUhE+pZBt+oMBJJlisG25ML0eNakca6BIgOYXuKcOsWgD1dkjEf60hzngzfmGaBChBjixzyzQ4LeWjBkc0WjN+0K1dIr4HMlOIQAJLej5tRBJq0Hmpg+Y5tEE3Ja0LwQotnW8dXmLLf3f3Ghjh1mh6LpEgZvM5eHipu8KAFMPUYRGfOGiYPiex//n8XW9DXnrYuV1upPJz5iwdU9o1tVrFW6SemsZHzwbsB5csJLSGIumM2P7cynKJm9wwyRg3DALgM2iwst4eGbeCJC8fIWe2jia0WUqfAaQJznLSyQ9No1PtEpCaAhPKyVLJbMKINNqUzqUrdn6EgNsbvsgL5xHA70I2cyAo2MeckQoR4dZOZ2C5ayRTf30Nvtdek0wYyh09jgXOZcqy7Qa3MgvCNT3DOcYsrsKudksV040r/ai21Q0Q++s88kPwPR08m3fZbPjq0RrdcbnVxkefzaYoaYgRGRy+7AxL8SL7YXdIiPOteDupWnRnpOuEhPv52IqAdFX5dlFPhoNKFRiZOQLom23vrwvJMPKL72Ff/5Hd53yJYAA/5A=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(39860400002)(396003)(376002)(451199015)(40470700004)(36840700001)(46966006)(82740400003)(356005)(81166007)(40480700001)(2906002)(55016003)(36860700001)(5660300002)(70586007)(9686003)(7696005)(82310400005)(186003)(107886003)(2940100002)(478600001)(26005)(6506007)(70206006)(83380400001)(8676002)(8936002)(41300700001)(4326008)(110136005)(52536014)(86362001)(33656002)(40460700003)(54906003)(316002)(336012)(47076005)(219693005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 23:30:14.4201
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e78a315-2de4-42ce-93fd-08daef74cc11
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR03FT041.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB9328
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
> That's a good counterargument for the silly mistakes point.  But the cogn=
itive =0A=
> load that programmers need to care about the extra useless argument for n=
o good =0A=
> reason is still a problem of the memset(3) API that bszero(3) simply hasn=
't.=0A=
=0A=
There is also the cognitive load of having to learn yet another interface. =
There is=0A=
also the overhead of libraries having to implement yet another function. Pl=
us=0A=
compilers optimizing it. Maintaining, testing, and documenting it. And so o=
n.=0A=
=0A=
Why would anyone invest all this effort if there isn't a significant gain a=
fter all that?=0A=
So a new interface must be significantly and measurably better to be worth =
all this=0A=
work. More than 20 years ago people decided that it is not worth it for bze=
ro and=0A=
various other functions given they have almost identical equivalents in the=
 C=0A=
standard which were already supported on all targets and in most cases bett=
er=0A=
optimized. One of the most common portability issues was the lack of bcopy =
and=0A=
bzero which lead to hacky and buggy workarounds.=0A=
=0A=
> I'd like to get a rationale for why we should promote strnlen(3) but not =
=0A=
> bzero(3) that doesn't reduce to "it is standard".  Why would the standard=
 cover =0A=
> on and not the other?=0A=
=0A=
Firstly memchr is not an equivalent of strnlen, it would be something like:=
=0A=
=0A=
tmp =3D memchr (p, '\0', n);=0A=
len =3D (tmp =3D=3D NULL) ? n : tmp - p;=0A=
=0A=
Be honest, would you really prefer writing that over strnlen (p)?=0A=
=0A=
And neither does memchr have the same performance. Searching for zero is ty=
pically=0A=
faster than searching for any character, so a well optimized strnlen should=
 beat memchr.=0A=
Note that doesn't mean it is unreasonable for a generic strnlen to call mem=
chr - one=0A=
typically starts optimizing the C standard functions, and generic string fu=
nctions use=0A=
those as primitives if no optimized version is available (yet).=0A=
=0A=
An optimized bzero function wouldn't be faster than memset - while you migh=
t need=0A=
a check for zero (or duplicate the input byte), that is a small overhead th=
at is hard to=0A=
measure on modern hardware. We had a proposal for adding memzero/memclr/=0A=
memclear/memset0/memset_zero/... a while back so I measured it and conclude=
d=0A=
there is just no benefit. A few decades ago I was programming on an 8MHz in=
-order=0A=
core and every single cycle&byte mattered then, but it's a very different w=
orld today!=0A=
=0A=
Cheers,=0A=
Wilco=
