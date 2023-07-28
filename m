Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFA5B767631
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 21:19:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229936AbjG1TTJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 15:19:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbjG1TTH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 15:19:07 -0400
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2083.outbound.protection.outlook.com [40.107.101.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81A801BC3
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 12:19:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ciLru89UcWRa3PG3RnbKCU+ltsblwGyhS1aLXCqOxCZokgVyImGzb3Ilft24PSOaAjS/OWDbx5HYXl18cqcpp1meoDcyQ6sj9gnBtOkYu9oFXm6xSGCG9HSYXD3OKAVnMH4HU+3ErSG0LX0zBY8k7cDFXPnLxndjWWJlF0DC3wXCsy4HIRSx7LUPTpNwKod4BuVoRobLOUpK1AMB3CZNVDXNOGI+A0a5jAjBGG+4G2yHy9dprkFP2BdxE2CslB32GKuAwmnj1fEAuuevIbmv+tsvxQsD+F1kCt2PKcNI+OJSFuBgg05HqtrYpyKp04WrcgXwyeuOG713mMUBmJrsWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yeXR1S0HxJLU6LNlwJxKtQmpDZTEMyYP/05Z8Cu2JVc=;
 b=CwRcZdGvU6qyjvf14gZJokukrTBiNgr66Yh7hRhRfTLLXgpjHO9w6ODwz6AXPEzxrY2SPTjqb3ZkwIUyf2TpkxOtt0Lre35RkooSzp7c8P+CgrTdrRd7lCPcPQkhOXscoEGQOFRrY8mUYQd/EUm57l052kKgaVcoL1fRdLsLQilxVigL/sjcxma9dA9XvPpUZ+92FddeaSSKksDcVKbEyyLqK0ku1R2GAMDscyFmr9QiBNIuSgMaIaLdobGIuNuPhNFUHyzHPAMwANXleu+DHHgoGChg6j1dzkqd2sFXPakyz89St4f8oBQhzCqno9eqZtktva8VcppY83HnkFmXKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yeXR1S0HxJLU6LNlwJxKtQmpDZTEMyYP/05Z8Cu2JVc=;
 b=SxIrKm3BMsMOzErmkYPcrIf6b5nhgLZ3iMDl/YlJVJPLtFhDuFJ4tZ1EAmDBJV6ap6TuITFZvbPdXajuxERtLg4F+3ZXGc8hidpLPpNn0ceswISCbTNjvt5R/6hqu7veE1yv7/K5MUP8UEsKkr5/FaJ37oF/k7oLfgf4H2V4fa2id8S75npYkKikG/hwCpCBXPcjALYE5ChaV+tUE7F1WjxgrtmRAWI6/90+82ZACrvpOx2qRr3RyxQt0hgSjTjdTZe3w8djA5T3QIuzqtCa1bJcsPB7jArG32JHYR4KXNVtSBFO1ynFbo3m6VL5Pill+wV+zyzULmaUKttV2rpdmQ==
Received: from DS7PR05CA0014.namprd05.prod.outlook.com (2603:10b6:5:3b9::19)
 by SJ2PR12MB8942.namprd12.prod.outlook.com (2603:10b6:a03:53b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Fri, 28 Jul
 2023 19:19:04 +0000
Received: from DM6NAM11FT073.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:3b9:cafe::33) by DS7PR05CA0014.outlook.office365.com
 (2603:10b6:5:3b9::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.12 via Frontend
 Transport; Fri, 28 Jul 2023 19:19:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DM6NAM11FT073.mail.protection.outlook.com (10.13.173.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.35 via Frontend Transport; Fri, 28 Jul 2023 19:19:04 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Fri, 28 Jul 2023
 12:18:58 -0700
Received: from [10.110.48.28] (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.37; Fri, 28 Jul
 2023 12:18:57 -0700
Message-ID: <88509788-e614-06a4-5a89-0d060bc7defc@nvidia.com>
Date:   Fri, 28 Jul 2023 12:18:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man5/tmpfs.5: fix typo in reference to
 CONFIG_TRANSPARENT_HUGEPAGE
To:     Alejandro Colomar <alx@kernel.org>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, <linux-mm@kvack.org>,
        Vahid Noormofidi <vnoormof@nvidia.com>,
        Matthew Wilcox <willy@infradead.org>,
        "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Carsten Grohmann <carstengrohmann@gmx.de>,
        Mike Frysinger <vapier@gentoo.org>
References: <20230719020533.1608867-1-jhubbard@nvidia.com>
 <eabfcdbb-3035-5593-8ed0-d9a0349b948a@gmail.com>
 <bab9c86c-03b4-f766-378c-e391ac99992a@nvidia.com>
 <9d32d536-b30d-f6b8-d9a9-da8d62dc49a9@kernel.org>
 <dff13ab7-bd33-ce26-792f-956b57924df6@kernel.org>
Content-Language: en-US
From:   John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <dff13ab7-bd33-ce26-792f-956b57924df6@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT073:EE_|SJ2PR12MB8942:EE_
X-MS-Office365-Filtering-Correlation-Id: a9228a69-257c-4279-0615-08db8f9f81ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DEfokm/LRs2bz3Cv5UFR7vXQHYmBctZLrGZT4oszcWXZ/n5hiaPFw9qGs2/AlMVNVB4fRe4EHv42BDyQepltS3pu88YBZ3++tktmoCWZngLktkB3Wy4lAH+nhIwtjBg1JxnBbTIO2u7kMU2VYypGHSL2R5CTKVtTYXfYui4UFvA+SQvIbmANQjOwhr7W0tzXDSjv6jpvmvG6N3R8ATqbByL2ZganVFkB0BuA5OpBS2RCoA1iZQHUVwTfI2RK28G3EOVvdGyzGXp9AzEYZ/JHJ96CpPuVft+o7gF1JOrQkRQl9ksj7hdatVu1imqmWedv83Bp8daHk46/jQUYO+jPAPDq1Ohkqc+KU3FD2wYAviMiaWze2pr8Y4luYbb8/Caz0D7kOVjQbC8IjXM7Rh+HMy283kTOY8+4LqFgvpNUQAmqqgoD9o+nBj4p4ogj/rmrXL64UkzkmyGWKqJGM1M1XlOGqmEtC7iFF1in3CxsE6557FCszEGyMrHdUHHk89o00a+xSknchk9A6f7yHDpzpUpFAjjfEH1SNq0I2xK5XkMId7PLdflwE1YMlENXY2SOqBXc9X13dU5w8NTF9YAarzKn0/pDshqUK9WsfSR2DdUbCWdJHf+vU+X/MLXk3T/zfwQgeyPCbtZaKuCywPwbSqdFutaOGtjeVOm0bnGCfc3NAviJtP6OTOcYHvcliqs8pxYIHM60elhZagIvhe0JnchBkp/M28nR9oOu4IVcW8HA6lNrGJNIZmvRCWeGwHl/yeoDgcMqZcJw4caJlCIyDw==
X-Forefront-Antispam-Report: CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(39860400002)(376002)(346002)(396003)(82310400008)(451199021)(40470700004)(36840700001)(46966006)(40460700003)(6916009)(2906002)(70586007)(70206006)(54906003)(31696002)(478600001)(83380400001)(86362001)(426003)(16526019)(36756003)(2616005)(186003)(336012)(82740400003)(7636003)(356005)(53546011)(26005)(36860700001)(47076005)(40480700001)(8676002)(4326008)(41300700001)(5660300002)(4744005)(31686004)(8936002)(16576012)(316002)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2023 19:19:04.4017
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a9228a69-257c-4279-0615-08db8f9f81ed
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT073.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8942
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/28/23 12:04, Alejandro Colomar wrote:
...
> I've slightly reworded the commit message:
> 
> -  Use tmpfs.5: instead of man5/tmpfs.5:.  We only specify the last
>     filename in the path (see the git log).
> 
> -  It really wasn't a typo, because the previous text was written in
>     a time when that was the correct spelling.  So, instead, I've
>     changed it to talk about an update, rather than a typo fix.
> 

Oh yes, thanks for fixing that up! That's perfect.

I wrote the subject line early on, when I initially thought it was a
typo. After looking more closely it became clear what happened, but I
failed to update the subject line accordingly, so I really appreciate
that you caught it.


thanks,
-- 
John Hubbard
NVIDIA

