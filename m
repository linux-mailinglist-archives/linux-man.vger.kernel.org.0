Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2719759F61
	for <lists+linux-man@lfdr.de>; Wed, 19 Jul 2023 22:13:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbjGSUNu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jul 2023 16:13:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjGSUNt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jul 2023 16:13:49 -0400
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2077.outbound.protection.outlook.com [40.107.244.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9D3CF0
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 13:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kqyJndy/XRV71tl4VFAlws5GUHnZyLyyPTavrHCUy4/PmjIfIpP08NIuOAYtUX6LtGH/CxABQgFOUwiKGeXUn6WDa0fMkbrBcyGN3OWjTVddt0utYX37xNvWwpiSlUD80yvAp/e8rClRvd/dLk7F5FCL8Z67+SPTe1Qh7ep4LfBvT4D4dxoRJ8OFYeuq1mZ9HnyRRABE1pIZglulEqHL3STVJqyDNCASh2vMf42GnDgJo2KPZCEfyA2WqCwcU/I3FasrPOkqtda1/vJVJoQFUeIsaNZst7i4xV6iw8gvIkQYhifBm5NWPQsjERUn8o9AMtaYDbsUXH0n8UDjkOymhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3CGno4IN120oDTBcUOkf5/weGuSYt/dJNSSChXqpEcw=;
 b=oPNscZ6jiL8HEUQ0zsd+bI/RYVfxHqKawkW1HP8EGxu7t5yev+koBkh52q2vozVNly5I9uP3aspoEMMon2PgePYGTzgavVYfE2UCtW2sJofsVl+sXlLLwiRe3JxN5f11xagJwHL6mN8QbVlvvE5UhdF1y3K5SGrwUQyhEzQGZ+jWGrLgENmWNMbld+nw9yFg2jg0EmHU5REMqbsyMW5GKp6+2bZQnff5D5OwBNuBpBlMmDhtDD3Jig9XtNRu1p+4VtGphGdzXm+fr98nZf4Xzs140k2pJ+qaTt/bf0XulK+rvQQOoZbjXHUeU82zSSahoPqcGCWdyUB4GiIykXjcMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3CGno4IN120oDTBcUOkf5/weGuSYt/dJNSSChXqpEcw=;
 b=kXIQvzONGTBOLge04d5bnHspxzlMc7qz8uWWQXmGpwV6lCZ6JxrQJ7YphaFHSWERxK4kbiF+XRAwlzOPJcI9uf8pzeSpgUR5eQaGYr1jaFFii6uCp2Tm0FGwbn5ljFqhRS++6aLVfVHmLgTS/pHXFg13koZNGpiTgTRlgc5Wr5Uo6R6i5t1QHROXEI4clXkwlvyQsQVqV9e4Tstc7Az5miZM1eTXi/nPg6m6BK0WJ9wZGasyUJmGwdjrWbiSqIJnxJWJwypECcK/brrQeWieyV5TORWqOngn/uCC3sGzjBb8U07004pWbBwUCprHKJwMsuUtjQFdSVOD2ORuV+dvFA==
Received: from MW4PR03CA0033.namprd03.prod.outlook.com (2603:10b6:303:8e::8)
 by DM4PR12MB5117.namprd12.prod.outlook.com (2603:10b6:5:390::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.23; Wed, 19 Jul
 2023 20:13:46 +0000
Received: from CO1NAM11FT085.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:8e:cafe::95) by MW4PR03CA0033.outlook.office365.com
 (2603:10b6:303:8e::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24 via Frontend
 Transport; Wed, 19 Jul 2023 20:13:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CO1NAM11FT085.mail.protection.outlook.com (10.13.174.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.34 via Frontend Transport; Wed, 19 Jul 2023 20:13:45 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Wed, 19 Jul 2023
 13:13:37 -0700
Received: from [10.110.48.28] (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.37; Wed, 19 Jul
 2023 13:13:36 -0700
Message-ID: <bab9c86c-03b4-f766-378c-e391ac99992a@nvidia.com>
Date:   Wed, 19 Jul 2023 13:13:36 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man5/tmpfs.5: fix typo in reference to
 CONFIG_TRANSPARENT_HUGEPAGE
Content-Language: en-US
To:     <alx@kernel.org>, Mike Frysinger <vapier@gentoo.org>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, <linux-mm@kvack.org>,
        Vahid Noormofidi <vnoormof@nvidia.com>,
        Matthew Wilcox <willy@infradead.org>,
        "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Carsten Grohmann <carstengrohmann@gmx.de>
References: <20230719020533.1608867-1-jhubbard@nvidia.com>
 <eabfcdbb-3035-5593-8ed0-d9a0349b948a@gmail.com>
From:   John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <eabfcdbb-3035-5593-8ed0-d9a0349b948a@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT085:EE_|DM4PR12MB5117:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e28e3a6-856c-4b7b-b327-08db8894a81a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XfAy+IFZKd5jj8P26hRdKta3h/WfZSI0RnkFiwPCNl24JdgWp+bfjeOkPS+LPdNiAX0wSArvmff7FwpKmH5kXEBBEuNx0H5OylZ2pl+dUYzy/tiNGcWk/4KNcknpItIfk2dE+XTLyRZTebrKFgFywIWtI367AbUjcmxRgpqoc/W3zo7TMun2DugBkqbvXkPpzH1LBs78GgltgTG3dU7vmkYz75fRAj0jAp5pjxk/1dY8fbraEtOGYyLb9eemiTq7D3JKlSXx0c5WJ224qS0vIwxzCmOo75w33YcnKf+glQTp/xE8jmoU0P/3RxXzz5dOhM6hovtpVbjv963BoqWG0a/2e2RaQxeDFymlgxCl8tON7dMS1eUaKV5u56F3cMBbe0ZM90ZFFyu2103KcbhpPZXDGuQRZPp8aONXS0dcVCW8DpNjZLN/fjghNTm4v6ShYZPaNlJk8D0nFzSkKXPRvhnZyNiDyWBau8O7YEo9R+3KZG9ewHSQB17w8XOzDA+iWSTBKsqgsS3Ps27MfNgzC0venK5bjV3ce/X/xefd/pe2+A8Ctrt4xWRbSvq5WZw8Xn+/fgZQb7wb944iEY3H18+PK7aQz7H8ls8E0kM4Lgzw5txevPkDdf2zaeWwL7sJ8l3LIuu0oCVePd7o8CPkz+YGshGX5DuAT50p+xlPqqiariqMowbR+p4XgJWXjKk0ZLMltzckxaamToxrSwLTfmfp4zcCQn04a2TaoL4nvaQYgirJBzytIw6zFROTuFqdWGAG8M0Z8ceg5TfB56lRkw==
X-Forefront-Antispam-Report: CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(346002)(396003)(39860400002)(82310400008)(451199021)(36840700001)(46966006)(40470700004)(316002)(41300700001)(4326008)(5660300002)(16576012)(8936002)(8676002)(426003)(36860700001)(2616005)(83380400001)(47076005)(82740400003)(86362001)(31696002)(7636003)(356005)(40480700001)(70586007)(186003)(70206006)(26005)(336012)(53546011)(36756003)(16526019)(110136005)(40460700003)(54906003)(478600001)(31686004)(2906002)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 20:13:45.8979
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e28e3a6-856c-4b7b-b327-08db8894a81a
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT085.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5117
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/19/23 12:59, Alejandro Colomar wrote:
> On 2023-07-19 04:05, John Hubbard wrote:
>> In commit 462a385e9a2 ("tmpfs.5: Document current mount options"), there
>> is a reference to CONFIG_TRANSPARENT_HUGE_PAGECACHE. However, that
>> option was removed from the kernel via commit 396bcc5299c2 ("mm: remove
>> CONFIG_TRANSPARENT_HUGE_PAGECACHE"), a couple of years later.
>>
>> The net effect is that CONFIG_TRANSPARENT_HUGEPAGE is now used in all
>> the remaining places in the kernel where
>> CONFIG_TRANSPARENT_HUGE_PAGECACHE had previously been used.
>>
>> This has caused some minor confusion at the man page level, though. So
>> let's fix it by updating the man page to also refer to
>> CONFIG_TRANSPARENT_HUGEPAGE.
>>
>> Reported-by: Vahid Noormofidi <vnoormof@nvidia.com>
>> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
>> Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: Carsten Grohmann <carstengrohmann@gmx.de>
>> Cc: Signed-off-by: Mike Frysinger <vapier@gentoo.org>
> 
> Accident here :-)
> 

Yes. :)  Michael Kerrisk, could you change that line for me
to just be a Cc, for Mike Frysinger?

Or, let me know if you'd prefer a re-send of the patch instead.


thanks,
-- 
John Hubbard
NVIDIA


>> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
>> ---
>>   man5/tmpfs.5 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
>> index 09d955898..cdd5f2fd8 100644
>> --- a/man5/tmpfs.5
>> +++ b/man5/tmpfs.5
>> @@ -115,7 +115,7 @@ Set the initial user ID of the root directory.
>>   .BR huge "=\fIhuge_option\fR (since Linux 4.7.0)"
>>   .\" commit 5a6e75f8110c97e2a5488894d4e922187e6cb343
>>   Set the huge table memory allocation policy for all files in this instance (if
>> -.B CONFIG_TRANSPARENT_HUGE_PAGECACHE
>> +.B CONFIG_TRANSPARENT_HUGEPAGE
>>   is enabled).
>>   .IP
>>   The
>>
>> base-commit: c654cde5ec9e9fa975d5d041aa069489ab12a4ce
> 


