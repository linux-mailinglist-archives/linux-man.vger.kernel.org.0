Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2295742A2D
	for <lists+linux-man@lfdr.de>; Thu, 29 Jun 2023 18:01:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbjF2QBW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jun 2023 12:01:22 -0400
Received: from mail-dm6nam10on2117.outbound.protection.outlook.com ([40.107.93.117]:40684
        "EHLO NAM10-DM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229910AbjF2QBV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 29 Jun 2023 12:01:21 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gAFnM+XuVlNEIoKC3kcmR7+h421JzzyO4ioJ6L7gnIwKrJIg4RvfQTWnFjFuizduDGkkcTMJPbDgkzrf6bPAlj77iUdJZiUPIUOjnnD24jrWhlFGpUb7glJJpekRBWRrooX0pQl/zNzIiHj4K0r1GjUFs+dAinl7zku/Nz9rZvu9dZ4OBrlXa9yvNXzUkLYJKLgdZRtGQoYs1KDha56b00iDZ5+kZqdA3JBZm5GBp4N59+45SW6r4VxFkCtrpULAZ45u+xD54s815XP6ePUL8TicaaM5J05IARIz7fpfFdEDWWgE9Ex72eDQ2PiW+aGZZlOeDGfrTPZpus+VYL/yzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L/HgynruIWdDywK4CeV7Gzkp6QH1KdXR2v3Dv+teWDg=;
 b=RJ2HHZKqhuCkSlNP8D/brwGZbwJuNJ+MCb1DYgY1YQ8mI+/3eqOId3YNVJXXufuzVGuCUgOBDIMahND1JIezlKSk/JjkPzi8QiYG30AA0dJ3Xwi6wWCZmCAIug20yVq/dYTByyRr8083rkRQ5Ik1b6Afw5cwqLjDGqIxi1BlM+N8DEDk1XjTcEU1nPK7Z03+bQPrzXpB7h8U07xFvqZ9ZpdWwz9WRyjp9HD6v3hnstSXcEwWuSFBou7mi9PgdqLQBWGLiQegymzcU1hsuOt/+u7bV3zoEZDE1XS5qA5LkR8tJ7OwztHRrNpf+tAqosK/eVK0uiHYHMAOQa2ESSpkjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L/HgynruIWdDywK4CeV7Gzkp6QH1KdXR2v3Dv+teWDg=;
 b=e8A3+ePOVu2RKTdV8P4gF3lUwg88S3fB/iaO431+GMx3FKytepb8u0berEmAmY22/DvkQzv667HfUsb7+zzMnuHC6+UNrWwl5ZK/GltgzQS4VyJRyY+Ww4Ds6zOKx82k0LufW9lJB36OALcf52o1q42YoZjdtQEwZ8qhixzfC+A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from DM6PR01MB5259.prod.exchangelabs.com (2603:10b6:5:68::27) by
 SN4PR01MB7422.prod.exchangelabs.com (2603:10b6:806:1e9::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.24; Thu, 29 Jun 2023 16:01:15 +0000
Received: from DM6PR01MB5259.prod.exchangelabs.com
 ([fe80::54e5:4e1d:aaf6:7c87]) by DM6PR01MB5259.prod.exchangelabs.com
 ([fe80::54e5:4e1d:aaf6:7c87%4]) with mapi id 15.20.6521.023; Thu, 29 Jun 2023
 16:01:15 +0000
Date:   Thu, 29 Jun 2023 09:01:11 -0700 (PDT)
From:   "Lameter, Christopher" <cl@os.amperecomputing.com>
To:     Lukas Javorsky <ljavorsk@redhat.com>
cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Andi Kleen <ak@linux.intel.com>, linux-man@vger.kernel.org,
        Brian Inglis <Brian.Inglis@shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
Subject: Re: SPDX license review requests
In-Reply-To: <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
Message-ID: <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com> <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com> <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com> <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com> <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary="8323329-222698688-1688054475=:1942609"
X-ClientProxiedBy: CH2PR10CA0030.namprd10.prod.outlook.com
 (2603:10b6:610:4c::40) To DM6PR01MB5259.prod.exchangelabs.com
 (2603:10b6:5:68::27)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR01MB5259:EE_|SN4PR01MB7422:EE_
X-MS-Office365-Filtering-Correlation-Id: f7fecb49-5298-47cc-2aca-08db78ba1142
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iVOOX9CcK0PTgkHWECLqeL6ym4Ndy2A/TXuI0Flfe1oaOadJZ+UBC+YY/7xPlPjGN6MxAj63nrx2GjPHg5Pzy5LD+maxm48XGWbCWrbvhxfX4O0JXfRrmMBb2hw4dQMSNFeRjwTGwj3Hf9bKUu8ELSLX8TTYDzZlCY5Sdv561rUEttdTSwgUzs5jCsXciJGcpBT0ExzI6nD4X2jSMyd9Yo2mU9bsgVlPAwTsa+ouAUXPsFBeHKoXsxje5IJoTM5GJbP3DsjV9tvB5FpUU/HzzS1YKJ4Q+KZoezd8yrm0bjRmXccqpNMMmFgW6kQue6wjYrfnOXVgTNp85bpkKAh2pKzkuHHHNjABHhXXDyapFqTdmcpRmNO3XJ2DNbGTjDysZEhT6Yl+HFoljA/jtkXfNplspUULjZxww/rmSF/Ah2XNZaFfS/FeEIGuJlo0+hqn+tA1CvV21wM68MjC9Qx+eH+oHCmAVnKB9nAs2oZxm5Cw7YKCnkJhhMSQ/4bxahRLtvaCFj78d4I6aQ9Oz0RcsmBiL4MMjLdLzWIrojZ/ba3DqqLauHVfYSKlcQIaGSWK
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR01MB5259.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(396003)(136003)(366004)(346002)(376002)(451199021)(7416002)(5660300002)(31686004)(66946007)(66556008)(4326008)(66476007)(6916009)(478600001)(316002)(8936002)(8676002)(2906002)(6512007)(6666004)(3480700007)(33964004)(54906003)(41300700001)(31696002)(6486002)(186003)(6506007)(26005)(86362001)(2616005)(83380400001)(38100700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejJyWlBxdXFxWWJraFdFdmlaQzMwZVRkd0tPMERnNlpQdUpMM09oMUtuMWxG?=
 =?utf-8?B?VHNqc0V3NHBaSm04YlM4M05hTUxVUURYNHhLRW0wRm9kdDhkdy90RzJsNW1q?=
 =?utf-8?B?VWVjNm9PUU9WS1NLSXdidktCeVdRRTFEOTV1QjYwR0dnakFPL1RZNnZHYng2?=
 =?utf-8?B?VTFid0NPT29RT281aFlqdXphQ2RKdDVrZmlMeDRaZmovRHdVZmF2TVhoZk9r?=
 =?utf-8?B?dUxVQUM1eENIblpPZEhWN1Nnc0lsS0s1bWtTdkcyejNoTDQzaHI5aGJadDBS?=
 =?utf-8?B?VXFWWXd4M043V3hQdVNoY2xOZnNvODNsN1daWkVwSzAzbjFuRUtFL3NUUGx3?=
 =?utf-8?B?NnJCK2RKQWx5ZjJzSWdBc2JKNVZFa0YxVWcrYmJBUlVTZ2NyWEc2S0JwazYw?=
 =?utf-8?B?ZG95aEhMcnl4L04yenBqU1h5S29FajlybDc3REZkam02TTgzemdJRHJQa0pu?=
 =?utf-8?B?b3pySTE4a1VUQ1FqY2t5Vm41UjlBN00wYmNObzgrdzFVUjBGVSs4eU5UVnJi?=
 =?utf-8?B?ZEhvdnRzZnFXN1B2TStUNzdyOFFjWDJJOENYRWtsenVKUklEYVN6amJvZEZX?=
 =?utf-8?B?R2xKRTZJQXVMbENOdEZHb2Z2U0JQK01ad0NTUHhOYmlzS1J1dlh4WkNuR3k4?=
 =?utf-8?B?aGIvNnovd2NwYzdpbU9PdnZXNy9OV3JRYmdDYkViakM2RVhOUlNyREZQRzhw?=
 =?utf-8?B?RkZ0RlRQT012SlZlOE9pemw0ZW5VclFnWFE3TjVzd25nSWU0Z1g0RlRZYU5N?=
 =?utf-8?B?NHQvZ2Qwc29naWNOUDZoYUMvTFA1MWl2MnpHTkM5MWJvdUhpWXIxdEZwZDEr?=
 =?utf-8?B?c2tzOGdQd3Y2cTUrQ1Y0aUpSdldHRXRvZmNjMFFmMDRTU3M5Tnd2Y3doZ1N4?=
 =?utf-8?B?QzF0dXVTaVhLT1VPdXNOeGJnV0psMnYzcXlnTFJ2ODFyaG1Nb1NUdlcwUXlv?=
 =?utf-8?B?WFVIR3lvcDlxamhFd01DMzNxUDlGaTgyWnA4aWZvd0J4cTlmQ05wY29PaThZ?=
 =?utf-8?B?WUtXdUJ6Rlo1OVBVSGcxaE1YMXduMnRLcmVPMGhVeHVpNEVrQXYwSmNaQkQ2?=
 =?utf-8?B?WW9hZXk0VENjTHk5SkFIdmJxRmNNU3hkTjA5VUlNc3ZyY2wyN01XaExEV1Mv?=
 =?utf-8?B?MlhOZlU2Q2dsc2tMcDNFaXh4S3pNQW1uRTRpQ2FCRTJJbjdHT3VHSDArZkhm?=
 =?utf-8?B?WnMvL0dGT1c2cWg2R0FzdWhvK3F2TW5GUndPMXZhUCtTN2hrMGdIYUxKNXBr?=
 =?utf-8?B?NFhnMHRaWmJqblpGd3BQcHVhQ0I4WE1WL29mS1R5NFlwVklIdHVxOWliV0Qr?=
 =?utf-8?B?aGsvNHBRMGlaeGpleFBiM3JVRlpDRXRlQVY5aFJhV2c5UklTb1ZGQ28rV2U4?=
 =?utf-8?B?VE5yam50aGlqWVVnQlNSZFJ2QlBOSjV4b05EU3FsTDlFaEN1UldQMGpXb2Rj?=
 =?utf-8?B?ZlJhQ3hsbnFQb3FkcFEzUmFpWk1hZ2dLU2ZPVzFDSERHcDlITVNzSlBWby8z?=
 =?utf-8?B?eVoyRWNjYTdyMGFTZUZ2TG1aZm96a0FGMGYwd28razFlQnk1VlhyNWFXSW9I?=
 =?utf-8?B?Y2VsZStPaGk0bzNtYldqQU9BMENqeS9nZEptYkhmaWpZVUwwQzQ4OVNtYldn?=
 =?utf-8?B?Rmljb1dGRkxGU3RWTnFrUzN3NUc3V05CRkhFS3hEL0pVSkl2dlc4dytyOWVt?=
 =?utf-8?B?WXd2UDNwM3F1cUVwRDM4SU83Ull1VXptRER5cGNJN1premZSM2E0UXRKakQ3?=
 =?utf-8?B?aXdjU25MNElCNTJVK1Nla25PSnMrVXAyKzhpVWtDWnQ1YloyWmtvckU1Q3By?=
 =?utf-8?B?N1k5S2RpUDIwa25jMTNjVnhZUnNPekVVMit5V2VDZDlJWWVkVi8wVk54NmFR?=
 =?utf-8?B?aTgxQkN4eW5xSW1heHNkMmk4RUQyRzBlUm5mVG11Q2VHNEVkckhNMGJxRjJT?=
 =?utf-8?B?RTkrSmhKdnNSWGhaYTBUZGl1Y3FzaHVBY2NRZXhRZVVzeEVtdjkyWE43aE9s?=
 =?utf-8?B?djY5QkVxSGtzSE04TEtnUGg0Mk14SjAyYXJWeUVMRXZGdFlJQ0tpWHd5eVlp?=
 =?utf-8?B?a3hTUTRpRXpsc2s2YXFIT0IwcWdEVGJBVVAvZE9Za041bk5MM2ErWEh3UEpC?=
 =?utf-8?B?YVhwR0lMZ2RZVHFCVjZGMVlCak5JbDFKU2U1b2YzWmYvUXBEdVpMaXZLTmxw?=
 =?utf-8?B?Nnc9PQ==?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7fecb49-5298-47cc-2aca-08db78ba1142
X-MS-Exchange-CrossTenant-AuthSource: DM6PR01MB5259.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2023 16:01:15.3651
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aDJgpG5XwhKfMIYFVrL1TqyYLrrDtyHY6RMmWx1OQyZ4oxYb0kYKwJMPYxk09yfPHXB2GGmp6sa1D83LjeFszbwia98fX9M2itWB0l+gOrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR01MB7422
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--8323329-222698688-1688054475=:1942609
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Thu, 29 Jun 2023, Lukas Javorsky wrote:

>       >> VERBATIM_TWO_PARA
>       >>      This license was first used in the Linux man-pages in version
>       >>      3.07 (year 2008) in a single page:
>       >>
>       >>              move_pages.2
>       >>                      Added by Michael Kerrisk <mtk.manpages@gmail.com>,
>       >>                      but Copyright (C) 2006 Silicon Graphics, Inc.
>       >>                                        Christoph Lameter
>       >>
>       >>      It was later reused in another page:

The manpage was written by me and later edited by Michael as far as I 
remember.

>       >>
>       >>              migrate_pages.2
>       >>                      Copyright 2009 Intel Corporation
>       >> .\"                Author: Andi Kleen
>       >> .\" Based on the move_pages manpage which was
>       >> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
>       >> .\"                               Christoph Lameter
>       >>
>       >>      This license is the one considered non-free by Fedora, and which
>       >>      we need to drop.  Luckily it's only two pages, so they could be
>       >>      reasonably rewritten in a worst case.

The licensing was GPL and not a proprietary one.

>       So, given this, if you give consent to change your pages to use
>       Linux-man-pages-copyleft, I'll do so provided for the pages that are
>       completely yours, and will keep in mind that when others agree, I'll also
>       change the pages that are shared.

I have no objections.
--8323329-222698688-1688054475=:1942609--
