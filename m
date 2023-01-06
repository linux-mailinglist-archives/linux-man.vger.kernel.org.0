Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9988965F7F6
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 01:02:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235906AbjAFACi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 19:02:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235994AbjAFACf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 19:02:35 -0500
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2045.outbound.protection.outlook.com [40.107.6.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECAF23C0D4
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 16:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wJVLjWHKLN445muV+q8zDPOgX5Sdhu6IqvcflbTpOdo=;
 b=IfE6sZMsft8w9y45ddk9PkhnwEUI1rOhR7IIy82RHM9T/2iuEMe8zJi5K5OAmOFZ6s3lTT0yaP77vdHpmNClh0ZvKNhZCMBzlG0o8M7qLcom7RificIAIN7J2ywX+djfm2wrPec7ZXlggkgQtKHwojQHBWF+5mz+X+gum5hxw+Y=
Received: from AM5PR0602CA0011.eurprd06.prod.outlook.com
 (2603:10a6:203:a3::21) by AS4PR08MB7903.eurprd08.prod.outlook.com
 (2603:10a6:20b:51e::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.9; Fri, 6 Jan
 2023 00:02:32 +0000
Received: from VI1EUR03FT004.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:a3:cafe::a0) by AM5PR0602CA0011.outlook.office365.com
 (2603:10a6:203:a3::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.14 via Frontend
 Transport; Fri, 6 Jan 2023 00:02:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT004.mail.protection.outlook.com (100.127.144.92) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.16 via Frontend Transport; Fri, 6 Jan 2023 00:02:31 +0000
Received: ("Tessian outbound 6e565e48ed4a:v132"); Fri, 06 Jan 2023 00:02:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: eaa58897e7443cb1
X-CR-MTA-TID: 64aa7808
Received: from 7f8a890e26ed.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id F48DA353-1A15-4351-81DC-34F0A7F0C098.1;
        Fri, 06 Jan 2023 00:02:24 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7f8a890e26ed.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 06 Jan 2023 00:02:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QZfta7ktTYOlHbsEF/SajxFFp2nyjV5O+sdOGR8nr43Sz0B9SURCpyVIAulVwJuFsoy31gbxTWgKiIaw+yC3ZN1zGaAdbgQXhQPXT6DK8eiRyKvHHeYuJXKtu/omoWMXNYHhFzFA9PJ7z44tL8ClSSAMIqV+RyKSlfnoMhd7ryGyqzpas900NW5NerS4krGVCbsXAABT741uvPao37uF50Zdz6ztnYvHKqllOA1sImJ01dHpNtb0Flzv3Eju9s/i2ZlOgSY+kX7fhmcYBHbHescM/j/Uu0f0E0zZf3oiwQHJXHgrHdSS03ISsdvYj+BdcD246BSM1uwnWA6PIPyslw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wJVLjWHKLN445muV+q8zDPOgX5Sdhu6IqvcflbTpOdo=;
 b=bVRsvou9gzet4FuMug3UQFDXinQYcXuPsOVPqswh5U7tWyhxVh3x+2xHgCpXmEGfdlvRLxkjH7boSS/eOol9h8dcmTFIVgDaox1Ptuedh3kD3ew0iRzJUFC53HPK9+aB6a3EWl9rVJY9EFNdETTQLHS/bFPSSXJWQuKGrfCib3vDu8tjp+0+sCFvel7b0kKHRIo9t5aIWKBRXwKoX1MaSgX7UqrvT5iDKvw7QZBX4wOpH3chfbkl5Bk6SvV00Edy7o56xtIo72OJVvV/EqcyR57GP5JRkxacYaTQVmKgyY2VV3RnNK4OF0JherhII6q6Br6JpoHp32lmsV/nd3hjpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wJVLjWHKLN445muV+q8zDPOgX5Sdhu6IqvcflbTpOdo=;
 b=IfE6sZMsft8w9y45ddk9PkhnwEUI1rOhR7IIy82RHM9T/2iuEMe8zJi5K5OAmOFZ6s3lTT0yaP77vdHpmNClh0ZvKNhZCMBzlG0o8M7qLcom7RificIAIN7J2ywX+djfm2wrPec7ZXlggkgQtKHwojQHBWF+5mz+X+gum5hxw+Y=
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com (2603:10a6:102:33f::20)
 by DB3PR08MB9109.eurprd08.prod.outlook.com (2603:10a6:10:43c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.9; Fri, 6 Jan
 2023 00:02:22 +0000
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7]) by PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7%9]) with mapi id 15.20.5986.014; Fri, 6 Jan 2023
 00:02:22 +0000
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
Thread-Index: AQHZIV+dXQ5Hc716u06/POOeTL3ePQ==
Date:   Fri, 6 Jan 2023 00:02:21 +0000
Message-ID: <PAWPR08MB89827AFF364FB662C3FC5F9A83FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: PAWPR08MB8982:EE_|DB3PR08MB9109:EE_|VI1EUR03FT004:EE_|AS4PR08MB7903:EE_
X-MS-Office365-Filtering-Correlation-Id: c6bf4ff1-77ba-4608-b331-08daef794ee6
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: P1+J5/fZxgTcOZ1Kgdfjkw8g2SeBZOvQJ0WEqdC7/tUxK/37MXIBY+Od1aDZEtIFbtUqtTndP735PRYwlBnBI4CZOA4h3UcVZk332TPJaZG/Gp7lKjfuxE4WYnzgmrcHFXwVspNFBuZk4SliZc83xJcmO8zGqVxesdDLHLMlm7W0HfMUc0xeFlNscxjF/RlEjjCkagRI5vHpTEb2WjLHGu7qX3+CH+xk5pY4TuD6VrjPpkPjA+ZT+YuZ2LeulRXSmMilTGzcgzipm4n/B7aSGczpTuFjR5ZC03Ra4KlcqSjPnK3YJmeS/1wGnCt2gK1actotP/BVAH6bQVyvjh6cA5MSyT4GYLBLKrFsM9CRdDZOOOGTxtd9vaK0SKUSxvQ9NhUlAT9s6WyjEhgUM59HiZzklDuAjs0c7MvAM5m4VB8Oi1X06b67lPCTvKR1ZQuxUFHvet3p+9A1CXZOTj3DPb+WMF3itdun/caNPo85B0MQaSMKRLSwgIdzDSiTa/ebQ1TW+O3UMRw5aFH83cbOcnW6k0pVdRz1LahiSc45y8hltdFtkvPVJV8n5J4WJTES5QS6detX+TuJySXfhC9NBBTfaVngclxij75oCcqXaElRSCPwjExf+OhHznRHqTtB6G4kyBnkouib1OBPdvQoiEN+ZpUYCxbfuXN7fkz7axILMv54Dv4UjzfSQZFuROTT
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAWPR08MB8982.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(376002)(366004)(136003)(396003)(451199015)(186003)(966005)(71200400001)(478600001)(7696005)(55016003)(86362001)(26005)(9686003)(8676002)(122000001)(33656002)(54906003)(38070700005)(91956017)(2906002)(66446008)(64756008)(66946007)(52536014)(6506007)(66476007)(4744005)(66556008)(38100700002)(316002)(110136005)(5660300002)(4326008)(8936002)(76116006)(41300700001)(219693005);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR08MB9109
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VI1EUR03FT004.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: a2ff7765-9028-4a9e-0bf6-08daef79486d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fCxTOkeMrWyAKvEPBP53J6kmdQvzuVsMOD9Ptw7eLhqWAeyzKxsJNWT5MI0jix4j0Z8ME5vzCIqehn+NzY6ZBOjsza06dYWJAixCp5u2bBz+4Pk4z5RBp8hB9vpxsGWuQrapvDrmJmMUpaGFGdu3zWZ7l6pxRP78DuhFdEVhIX2l41taZkX5Zl+MpECQFwzvcBBPrYGa+s/aIk92bURPUp7lf2DwwqpTUQ9mgLakpN+6wRBzqo4qlH1uzXpP9ex6NZ1Rdcvhx2vW4l8SxO22eUlVrd2bT++mkfkJAuyG288AnUawwWA1WB2uqSwaR/122AWeyBEeEVku+Ty9kKKaFesi+oyhXb8FnISoObJ/odzf1lsxWStZRJ05iMAx0nuq7JQI3RTN8MMbLMPySwPpffL87KsCUVVpCpeHYLswo+fckBYJNX0DlYhJezuZ0sn3cXM1Hns2N+OP1vUJKslIF57wWvZbJjcZeUrmE2Y0ZNsG9HUi4h1g6OGujVTFp3d8Ig3VKJf7qCiUuEWzuyiy2CmgsyoiFpnc4aOxHyGrqmnWbr+XKHgELWZFrmQ29TRfEz84kjPcj3gDai5KK1B4N12BSzTvMMQNTdaU1JLrJjfcrsiEISyW558MlGkRUnCgeV5Wq9SbTpzE6WEFW3OQNUL3FbcNWhllaS1AirCBqe2p6O9QbyvqtFaNFJs99+GX
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(376002)(39860400002)(136003)(451199015)(36840700001)(46966006)(40470700004)(2906002)(107886003)(186003)(9686003)(47076005)(6506007)(81166007)(316002)(5660300002)(336012)(82310400005)(33656002)(478600001)(4744005)(966005)(26005)(52536014)(41300700001)(7696005)(40460700003)(110136005)(86362001)(54906003)(8936002)(70206006)(82740400003)(70586007)(40480700001)(36860700001)(4326008)(55016003)(356005)(8676002)(219693005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 00:02:31.9232
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c6bf4ff1-77ba-4608-b331-08daef794ee6
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR03FT004.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7903
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
> There are many users of bzero(3) in the wild, and it is a fine API from a=
 =0A=
> usability point of view.=A0=0A=
=0A=
Since you repeatedly claim lots of use of these functions, I did a quick se=
arch=0A=
on https://codesearch.debian.net/=0A=
=0A=
bzero: 21440=0A=
memset: 563054=0A=
=0A=
mempcpy: 4489=0A=
memcpy: 692873=0A=
=0A=
I used "memcpy(" and "memcpy (" and added the results. These overestimate=
=0A=
usage due to prototypes and comments, and don't include memcpy and memset=
=0A=
calls emitted by compilers so in reality the results are even more skewed.=
=0A=
=0A=
There may be other repositories which can be easily searched, but these res=
ults=0A=
are clear enough to conclude these functions are dead.=0A=
=0A=
Cheers,=0A=
Wilco=
