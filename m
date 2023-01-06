Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9A526603BA
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 16:53:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233398AbjAFPx3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 10:53:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232626AbjAFPxW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 10:53:22 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2047.outbound.protection.outlook.com [40.107.20.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8696D80991
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 07:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TSwnz5L8kOSXjCpuqzrJN9FMuW8GO5u/m8eoB+T2Syo=;
 b=cxaBal1wXI3+1VUhp23Bx4TOFzrsFFtJy9LSuIc86vkTZl76h2slD/sJt/hETFcheghtbDbAMEkQVyDEOruKOaCR9zhrl05ihZKG1ndpJKBzOBVTPl6aHJOfewK7ILiHdMi8un4bkOfO8wE/z9P51eTZSFGt6uZH6krHYF+DCsA=
Received: from AS8PR04CA0052.eurprd04.prod.outlook.com (2603:10a6:20b:312::27)
 by PAXPR08MB6527.eurprd08.prod.outlook.com (2603:10a6:102:156::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.9; Fri, 6 Jan
 2023 15:53:18 +0000
Received: from VI1EUR03FT043.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:312:cafe::77) by AS8PR04CA0052.outlook.office365.com
 (2603:10a6:20b:312::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.15 via Frontend
 Transport; Fri, 6 Jan 2023 15:53:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT043.mail.protection.outlook.com (100.127.145.21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.16 via Frontend Transport; Fri, 6 Jan 2023 15:53:18 +0000
Received: ("Tessian outbound baf1b7a96f25:v132"); Fri, 06 Jan 2023 15:53:18 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1eb44241db883531
X-CR-MTA-TID: 64aa7808
Received: from 11437196c696.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id CA1187D8-64F4-4D85-93E8-8544320B88EA.1;
        Fri, 06 Jan 2023 15:53:10 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 11437196c696.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 06 Jan 2023 15:53:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QIUGoOOGYDyhemV9OZBu0HR4wMTD/GL7tEawyfROPnRbSJzMQdb4ma89hbiD2wLQ0JZ1j259DqkQZnekkUPSUj7otqgGRjhCN9629Iydb/KOMHeaRt9kl5AJbFGLvVjiT0XD39TKPSZjLEYN3uQdbUfPCLQl7pYgpFaFM39TUuyrT0RX32jc68Dr5Enp9WB4I04C7lQ4MZnLfi41QsE7uJTUx4UyuMcqgqH5lNq6m4k7ZNvp5IQ9JM7rykfT6b4ZHQKs8LB8BY5/FjgKLvV3SBTADaTrrky0cTIfJt3itrOV6X4iPeUIYZYbJOBs4/njQohHwfTqZmI373fUHTMeDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TSwnz5L8kOSXjCpuqzrJN9FMuW8GO5u/m8eoB+T2Syo=;
 b=V4/JvDiVvMUCx3LszHxEppLBMUwuz9CbAYvmvtSvyHExKNNoprpQXOWGgcEmS8pfDDim89EC1tRvW6klAxnH0YH1UZs5XjP3Dk6E0JKUyNF1yL333Wbiopw9JuRpXqWcDS88hUAKPiNfCIzodeQgPePJZfMcgnQ2pRUxBJxIUnJyNakCLTGcIrkSVo50SRxPUyJ3qmFTFgfpQccIZ/OplSEhmf1ZkpcQWoZo9BRDuKIl2LWOwU43n37iufy8o1cqZUOv9kToHCbBzMV4CglGCLixwoKsvP7ItvRQ/hTxUM5pOoiMR4pSH5ZG+VCRSYKY34urXOSVTKWFs8sAZP58xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TSwnz5L8kOSXjCpuqzrJN9FMuW8GO5u/m8eoB+T2Syo=;
 b=cxaBal1wXI3+1VUhp23Bx4TOFzrsFFtJy9LSuIc86vkTZl76h2slD/sJt/hETFcheghtbDbAMEkQVyDEOruKOaCR9zhrl05ihZKG1ndpJKBzOBVTPl6aHJOfewK7ILiHdMi8un4bkOfO8wE/z9P51eTZSFGt6uZH6krHYF+DCsA=
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com (2603:10a6:102:33f::20)
 by DB9PR08MB6459.eurprd08.prod.outlook.com (2603:10a6:10:256::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.9; Fri, 6 Jan
 2023 15:53:06 +0000
Received: from PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7]) by PAWPR08MB8982.eurprd08.prod.outlook.com
 ([fe80::66e4:4940:d096:4f7%9]) with mapi id 15.20.5986.014; Fri, 6 Jan 2023
 15:53:06 +0000
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
Thread-Index: AQHZId9feq5WonfxjUWMSLtmLAjT7Q==
Date:   Fri, 6 Jan 2023 15:53:06 +0000
Message-ID: <PAWPR08MB89821938473B0BCE72D99B9083FB9@PAWPR08MB8982.eurprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: PAWPR08MB8982:EE_|DB9PR08MB6459:EE_|VI1EUR03FT043:EE_|PAXPR08MB6527:EE_
X-MS-Office365-Filtering-Correlation-Id: a08e26aa-337f-4455-1eaf-08daeffe2166
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: bkaAvNJiif5Cvm/6J/HzE0wzM6u8I43Rz3+DOQLd90wVTJ57PfWW1tdwtqJHFGiF4iGD+Gf4FB80NLdzHI/TQoP2oL5J9K/7abTtjoIMj/un6wRttcesTMZdlVzB5sv59FwsRdemmj1NlGKslpuIvzutxwJ2PBBYdPwlOjfzti9LlGFCJEAiHV8hPBmFORFox6ykjPSnzdELzDSt4DvGgQgq7WRi6nk2qv/QedRpVq+V+bGibYrhj7ThKxaOhqc/O2C6wc8gi1xaJaJuWuuIIkjnbFHuuZeZbwi0DE/OUQi4clhB6nnhrZylf9POsFVfCGYEEILqvhsOYoWGjfkeqTKHRQFULDh/2ltzOkkkiI4mL5qb79GGvjOw8M6FtPADmaLrYzeRBq9dAH+HkddZhP8DU/5jNnLQPoXTeT/3r9r9YBwjeiEsOg715THiHXBNUSfwa/L7AjDbNIi5N4oLwtsn/+/y/rmO7lD9ToyvF82Z7NQYdkelOcYDD3MQFvvMjsOB73pdE9pF6k79GizVdOh7+NCQSlICnejXTJ00rnCFF3VJeqHZPeUXtQg7SPd5yKubmDbnJi0mvm4ZG1g82gSPWUiF6s7jdZoPU9jA9w8FNIUxyd4AXhEEUIGz8UAWLIJ+KPXx/Dwu3WkbkQ94p/bLrcHhRWFPJiibtT0CAkIX/qAYpGQEDEx/BhVblYHeEo/IwkXwu0U8NWcMMlJJRWuIzQ6l2fnNzFR9ZpSAd7E=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAWPR08MB8982.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(39860400002)(396003)(366004)(136003)(451199015)(33656002)(66446008)(122000001)(4326008)(64756008)(38100700002)(41300700001)(110136005)(66476007)(38070700005)(8676002)(66556008)(76116006)(66946007)(54906003)(91956017)(2906002)(316002)(83380400001)(52536014)(55016003)(5660300002)(8936002)(9686003)(478600001)(26005)(186003)(71200400001)(6506007)(7696005)(86362001)(219693005);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6459
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VI1EUR03FT043.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: ce6ea513-6e19-47b4-a41f-08daeffe19e8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /LnXexpIT6AcZI+bIlx9JUmPxuV4nDetGgAMYBjsgWnn3YBt8OHiUe/UQIymCjH6G0B1dVQEZKc9CGmfNapx0/i8f6v9z3slkpAvoRMLXCurlljo7qcq0WKgaqMuVV+jcS/8u8GFEqep7StS2qlwwAdWJoPblwErDXlSscZshlHySvASgCyDuN41Tx7teBJHD7HX6EFgidBPMu2xATr1ZDzfiS9PQV++G0Pio5qhAe59/YXGrIuGAiZBy2wfLVzNTjlmNRI28+mVRxEZ3a7u8vej3MWAcqYLc2gDCy6e9lP8pjsXuWRXv8Kluf+OxyoxHikYz0KBDU8+hN7fRnUn+UGuCXPYjyAt1R59tLjb4oPTtWAmIN+TT8XVqkBNg6BO7wPfKz+AWcOpeBa1cbdVZ2XPQVvFy+6Ud2FXcJVGKl1k9dEZMyH9CB/eOXsNojtEYzHgXwocYDVk7wMT57UgETrGN7NP38HtOg4Tmr+1zpCoKreTasSwcESd1VMmZABw82nIYkzzDcmBOEEsX+oWLvH2v5i9/Q+vJyF06V+e0yr/8b6PXDXhOrKn5IiVSULCmCMShs0A65QECo2LTYM9GiTA9OzPOXPQzp4jJ8J+p8GHS3cea56fLRRzNb4UhOy2OnBA/3kNWD+wc5h34CEg1LJjOrEHjLtrvdB0G1Pyi3WbH5fyDtsVdFcgIg2XDGzUzmwD6F3qHV4xNC/eY4Ob4CGFakoaOwi69VSFKSgyymQ=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(136003)(346002)(39860400002)(376002)(451199015)(46966006)(36840700001)(40470700004)(36860700001)(7696005)(54906003)(86362001)(40480700001)(33656002)(55016003)(336012)(41300700001)(2906002)(316002)(107886003)(70586007)(70206006)(5660300002)(6506007)(47076005)(26005)(356005)(40460700003)(83380400001)(186003)(9686003)(8936002)(82740400003)(81166007)(4326008)(8676002)(478600001)(110136005)(52536014)(82310400005)(219693005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 15:53:18.6481
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a08e26aa-337f-4455-1eaf-08daeffe2166
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR03FT043.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6527
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
> Which C libraries never supported bzero(3)?=A0 It was in POSIX once, so I=
 guess =0A=
> it's supported everywhere in Unix(-like) systems (you can see that I don'=
t care =0A=
> at all about other systems).=A0 Even if only for backwards compatibility,=
 the =0A=
> removal from POSIX will have not affected the portability of bzero(3) in =
source =0A=
> code (even where libc has removed it, the compiler will provide support).=
=0A=
=0A=
These functions have caused portability issues since many UNIX systems didn=
't=0A=
support them, neither did Windows nor most of the embedded world. So they=
=0A=
always required extra work - if you do the codesearch on bzero you will fin=
d=0A=
many examples of those hacks in existing code.=0A=
=0A=
You may not care about anything outside Linux, but many libcs that support=
=0A=
bzero are not optimized. Even GLIBC used a slow C implementation for bzero=
=0A=
until we changed it to call memset. I have no idea what all other libs do (=
and=0A=
given bzero is dead, it doesn't even matter), but bad performance is also a=
=0A=
portability issue.=0A=
=0A=
> So, I don't think that's a real problem yet.=A0 We're not yet (or I belie=
ve so) in =0A=
> a point where bzero(3) is non-portable in source code.=0A=
=0A=
It never was portable or well optimized, which were reasons to deprecate it=
.=0A=
=0A=
> Even simpler: it is unconditionally defined to memcpy() + len in a macro.=
=0A=
> The reason (I guess) is that they didn't even know that mempcpy() exists.=
=0A=
=0A=
But that means it will never use mempcpy - not in the source, not in the bi=
nary.=0A=
So they have done the right thing, and there is no argument that adding or=
=0A=
optimizing mempcpy in C libraries will improve nginx.=0A=
=0A=
> Actually, gcc optimizes differently.=A0 When you call mempcpy(3), since i=
t knows =0A=
> it exists, it calls it or replaces it by memcpy(3)+len, depending on =0A=
> optimization flags.=A0 When you call memcpy(3)+len, since it doesn't know=
 if =0A=
> mempcpy(3) is available, it keeps the memcpy(3) call always.=0A=
=0A=
I don't care what -O0 does, what matters is that in almost all cases mempcp=
y=0A=
gets optimized into memcpy, and that is the right thing to do.=0A=
=0A=
> src/nxt_h1proto.c:2290:=A0=A0=A0 p =3D nxt_cpymem(p, " HTTP/1.1\r\n", 11)=
;=0A=
> src/nxt_h1proto.c:2291:=A0=A0=A0 p =3D nxt_cpymem(p, "Connection: close\r=
\n", 19);=0A=
=0A=
Sure but one could equally argue that returning src + len is useful too:=0A=
=0A=
p =3D memscpy (dest1, p, size1);=0A=
p =3D memscpy (dest2, p, size2);=0A=
=0A=
Or return the size so you can easily keep track of how much bytes were copi=
ed:=0A=
=0A=
copied +=3D memncpy (dest1, src1, size1);=0A=
copied +=3D memncpy (dest2, src2, size2);=0A=
=0A=
And there are lots of other possibilities. So who is to say that mempcpy is=
 better=0A=
than all these options?=0A=
=0A=
> From a source code point of view, they let programmers write better/simpl=
er =0A=
> source code than memcpy(3) or memset(3).=A0 That's sugar... yes.=A0 IMO, =
it's worth it.=0A=
=0A=
Exactly, it's an opinion/personal preference. As I showed, there are other=
=0A=
possible return values, so should we add all of these interfaces just becau=
se=0A=
some people might like them?=0A=
=0A=
> Having it in libc rather than an external library has the benefit that it=
 will =0A=
> have support from the compiler (better warnings and optimizations).=0A=
=0A=
No. Compiler and libc support are totally different things. If your library=
 is=0A=
deemed useful and used in lots of projects, it may be reasonable to add the=
=0A=
headers to GLIBC. But this will not affect compiler optimization - it would=
=0A=
use the same header and produce the same code.=0A=
=0A=
Cheers,=0A=
Wilco=
