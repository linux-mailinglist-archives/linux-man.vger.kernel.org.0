Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5E3865F58A
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 22:12:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235598AbjAEVMa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 16:12:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235124AbjAEVM3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 16:12:29 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2047.outbound.protection.outlook.com [40.107.21.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0DCE60CC0
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 13:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OXCtB97HMQWZh2kCbHSHpaa7YsPcwh60VTWOQuvhy9Y=;
 b=E6vsRgUBqSuHXk7GkhGihyVN+orv6swVO8Hu7pnma1DJ3DxXApfMHcxCIj1xzwPID0ovRBOHfWkRAvxZJkI/haWDsAhIP8nEVz8hFXB3YTK8PyH7NodCcDzgtv/1iXzLtj+lC5iPQZVbr+KTylbMlCjfWk9+L0/nFtNfpfHxTR0=
Received: from DU2PR04CA0356.eurprd04.prod.outlook.com (2603:10a6:10:2b4::14)
 by GV1PR08MB7380.eurprd08.prod.outlook.com (2603:10a6:150:24::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.9; Thu, 5 Jan
 2023 21:12:24 +0000
Received: from DBAEUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:2b4:cafe::e2) by DU2PR04CA0356.outlook.office365.com
 (2603:10a6:10:2b4::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.15 via Frontend
 Transport; Thu, 5 Jan 2023 21:12:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT033.mail.protection.outlook.com (100.127.142.251) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.16 via Frontend Transport; Thu, 5 Jan 2023 21:12:24 +0000
Received: ("Tessian outbound 333ca28169fa:v132"); Thu, 05 Jan 2023 21:12:24 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 95c2d00843d04c83
X-CR-MTA-TID: 64aa7808
Received: from 4e5288317731.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id 901750E0-C6BE-4834-A286-915D2F72883E.1;
        Thu, 05 Jan 2023 21:12:18 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4e5288317731.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 05 Jan 2023 21:12:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITGIzQqsF4//pMqqeva3miVZ52oVZ8nlSasxDM6bjLcu1x0SyXcHzTK+pJrTnOaOuStJQkOFqE4urHQsQMGa4DmSJfyCPHSIwYXjdTMaZCfdpMAJddTCqhy52GnvngNJaBS1OPhnubjwxYchFLtvlETLXl598r6O3t32DQWSyQMHvAV2G0ARw8g2YsttIbzy3UxmAcGJ1VG8iPoKUd7/DZi4T3KLBEMwdCGBXBCW5mVxkPeO6OmbU1quXQ9+dIBeechd18FzdEEAIloDdkGSzP8RTyPwE0U/UQV8ZfWOmG89EGPdhxYuYkPn645HT9TKLHI7fJLhV01UwP3AGPnxrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OXCtB97HMQWZh2kCbHSHpaa7YsPcwh60VTWOQuvhy9Y=;
 b=j2h+58T6Y3EA3B6FIAgQh9vQ0fyZNR2mwsix/43P0FPuXhQYbGkfAtNoArtScLi8BcJLoccf7sfwvdDTaLCKRYaCFQcTZ/lkLVRd9S2PJ2D0RvxGGHQOFhwb5RB5gQnEs79Q5aaLbnd+yuTp92Xuwmt3uBh9QXlyMa1rdujRPDcUbqWFfJl35tCQ+NQ7wH1WI8lQM+whUNnCkvhGzso7NIqnxj/hMkZIP0X/WuB35cRg1D5WQvLi5LLTvjUb0xNEhVe9eOarg7TH15Y4jVAuTt9uJ4IjXSaba1JFSQqSwHsp5FgU9o+2etKQoQB+/lwZa6Ak8e9Dxd5HC5uZiaF56A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OXCtB97HMQWZh2kCbHSHpaa7YsPcwh60VTWOQuvhy9Y=;
 b=E6vsRgUBqSuHXk7GkhGihyVN+orv6swVO8Hu7pnma1DJ3DxXApfMHcxCIj1xzwPID0ovRBOHfWkRAvxZJkI/haWDsAhIP8nEVz8hFXB3YTK8PyH7NodCcDzgtv/1iXzLtj+lC5iPQZVbr+KTylbMlCjfWk9+L0/nFtNfpfHxTR0=
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com (2603:10a6:102:33f::20)
 by PAVPR08MB8918.eurprd08.prod.outlook.com (2603:10a6:102:323::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.9; Thu, 5 Jan
 2023 21:12:16 +0000
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7]) by PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7%9]) with mapi id 15.20.5986.014; Thu, 5 Jan 2023
 21:12:16 +0000
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
Thread-Index: AQHZIUcLEgfJIKubUE+7fNap7IPfGa6QTaKAgAAAjlU=
Date:   Thu, 5 Jan 2023 21:12:16 +0000
Message-ID: <PAWPR08MB8982513ADD350AC12E758ED483FA9@PAWPR08MB8982.eurprd08.prod.outlook.com>
References: <20230105193751.18846-1-alx@kernel.org>
 <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
 <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>
In-Reply-To: <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: PAWPR08MB8982:EE_|PAVPR08MB8918:EE_|DBAEUR03FT033:EE_|GV1PR08MB7380:EE_
X-MS-Office365-Filtering-Correlation-Id: 9354a4b3-6c5e-4921-ba1e-08daef618adb
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: tVajuCRKaEHDuemh0L2nJD3ci+FRQA0EPVLRrwaeeX98+e6lDOzP++eWtONmmdTh4IPn4N6L0GHPBLmDckS/P9QKHwtD1FltuH9vKaE74ALqIDYDl4V4R2nvB2jTFGb7ONLpaWzIaGIxsrwPIRwhR9nPcdnmEV1eLgWSAc7JSBDP6qh561jfU0WYK2sSqaLtbVzUKbYNTmIGOz67jUgj0sArH6WKXPZoyRmxeiOavnN1/vi8BL0PlNPBM+XDSc3H/FtNaQ7GbS3uwjmCwXfv1+FFvLy9KlscCkbjYwSwBSx/n3myx9/MvtqJ0AhLayAJBoxsftRvPmigT+zIZ1iX8AnzRPW40P5ncr8JGhfpFuuQgIw7DrTSzrt13crTdrymzVehTsTY+d6yXrCCeyEwE8kWM8nXM5n+9yUQkVBSVoeon393efaMkgtMEQTXNpcF0LOtWlfM+vjeoZ+PUZTF4GegZzaJpc0QItAFVz4oQvP4z+8ldqLnT1RdtTqKNKRiNmxGRgpN7ztTLLnUokDEr71jZ9tFPFFUZD90kXLuPYE0PFnnzE2gAPm7Ez6O8pWWxRK/HYAH6xdqgpmMTr7U0K1zN895wEXDypDAJVhkJV50RU4ivbFn8kHSphUvT6NUViTUL5fNUGS5sVp3TXzrR1O5p1xFAxA6aM2hg+whYIJS7R14nkM+KrWj+RjRXAM3OztrC0TQ4R+KtL1v4IMxwMT/F2pUJjYGMUBJxnzcQc4=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAWPR08MB8982.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(451199015)(186003)(33656002)(83380400001)(86362001)(55016003)(122000001)(38100700002)(38070700005)(26005)(6506007)(91956017)(2906002)(9686003)(66556008)(66946007)(7696005)(66446008)(8936002)(71200400001)(478600001)(76116006)(4326008)(66476007)(8676002)(52536014)(110136005)(41300700001)(54906003)(316002)(5660300002)(64756008)(219693005);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB8918
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DBAEUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 1864b601-bec9-41ba-aedb-08daef6185d5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iNQhT+B7PPEPAf+eJog/QT58cYLftB8g5S1dxGnTNX/Q2W78uTyIL+l8kNSfzPSEy68Z5LHk/guorSxW6yuDORdXQjhU4Yga5djx9xhiG24p9YNa0e9yrfZak5DfxaIWl2oIoeVPYgkD3ykScFP/tv4703a5MAm8wiF5GTVA7dxP75YJLjfafNkC/s4nUzHVfBOII8+Yma65L3uw+gB1OxVhFd6mxKiU3yj+hLSYSZt+iVSmPpisUuXWYS3f09Kl8HHCjezAx+hUugVV0cw9vt8gvuMB3vy7AojByR59SRtb9TKThU0+mIT8fdQPXQw4Hf51mhLOn07bYLPF1OLZqLSXNV2s8W6p1RBxDCSPvUQrq+uWLEWeN/0PxO088jm/cqxrdIm4po0T6xfr1RpM9AxCZStF0VFyZtFvi4q2OxWdKWhKCcTbTMiGyroGqGB7CRq1YXcZisAxU19t/GVufLFlsPUXq5KefzbmylrKgBhoTr0fnC1wWUvHgOEJpVfB0dLYTGZG05hunQgIP9XEO6sGxOSFoGyUQhKVhgTE3ErEWBLY7sJgMUSNLd6MuGj/Iuadc58GUd44tLZ7BYUwDvINNiZsoV57eUQhqo4r2/++dns7OVl4KeYuXCehcezixFj45VylVnPxXxZrf9kGZM7beyMzeNLtUlHqZk3VS2mcrpnq7zGCpTJkGAjoSCTZBhFeBdU00ni/NJZiQNbI1C6kvT/9UMwXB1lmKCdTLSU=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(39860400002)(346002)(396003)(451199015)(36840700001)(46966006)(40470700004)(83380400001)(86362001)(107886003)(82740400003)(40480700001)(186003)(8936002)(82310400005)(6506007)(26005)(4326008)(81166007)(41300700001)(8676002)(70586007)(70206006)(356005)(33656002)(47076005)(336012)(7696005)(5660300002)(316002)(54906003)(55016003)(478600001)(36860700001)(9686003)(52536014)(40460700003)(2906002)(110136005)(219693005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 21:12:24.6712
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9354a4b3-6c5e-4921-ba1e-08daef618adb
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DBAEUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7380
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_NONE,UNPARSEABLE_RELAY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,=0A=
=0A=
>> bzero is deprecated by POSIX.1-2001, removed by POSIX.1-2008, and on gli=
bc=0A=
>> implementation now calls memset (previously some architecture added ifun=
c=0A=
>> redirection to optimized bzero to avoid the extra function call, it was=
=0A=
>> removed from all architectures).=0A=
>> =0A=
>> Also, GCC for some time also replaces bzero with memset so there is no g=
ain=0A=
>> in actually call bzero (check glibc commit 9403b71ae97e3f1a91c796ddcbb4e=
6f044434734).=0A=
=0A=
Agreed, there is no benefit from using it, and certainly no reason to try t=
o undo=0A=
its removal. We should promote standards, not try to subvert them...=0A=
A more productive way would be to propose new functions to the C/C++=0A=
committees.=0A=
=0A=
> In addition, gcc -Wall warns if you mistakenly pass 0 as memset's 3rd =0A=
> arg, which undercuts the argument that bzero avoids silly mistakes.=0A=
=0A=
Also I think GCC should give a deprecated/obsolete warning (or perhaps erro=
r?)=0A=
when using bzero, bcmp, bcopy, index, rindex etc so people can start removi=
ng=0A=
the few remaining uses from ancient code.=0A=
=0A=
Cheers,=0A=
Wilco=
