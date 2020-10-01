Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD24D27FF86
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 14:54:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732026AbgJAMyR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 08:54:17 -0400
Received: from mail-eopbgr40065.outbound.protection.outlook.com ([40.107.4.65]:14504
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1732018AbgJAMyQ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 1 Oct 2020 08:54:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MfOh+ry3wCwi1wzVykdc4tlK5LZWNQOA2/AUvu0QPgM=;
 b=Mb3aqOWmSFcbaZhxLhtDhPZ7KEVxd5LLpEkm26LvqQjD96pwxIct72IF619906tE9ylQFT8CfwR2QrQ+IBtPoQ3fcLFULYT1jYVgbbliN58LUUJ3kTUjzNiIIzTsqk+bSHxPm2Xhj/+P1Y08gAVUy8JfNGOy+EB3/MFireLNfM8=
Received: from AM5PR1001CA0026.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:206:2::39)
 by VI1PR08MB3984.eurprd08.prod.outlook.com (2603:10a6:803:e9::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Thu, 1 Oct
 2020 12:54:13 +0000
Received: from VE1EUR03FT028.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:206:2:cafe::1a) by AM5PR1001CA0026.outlook.office365.com
 (2603:10a6:206:2::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.34 via Frontend
 Transport; Thu, 1 Oct 2020 12:54:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; vger.kernel.org; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;vger.kernel.org; dmarc=pass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT028.mail.protection.outlook.com (10.152.18.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.34 via Frontend Transport; Thu, 1 Oct 2020 12:54:12 +0000
Received: ("Tessian outbound 7161e0c2a082:v64"); Thu, 01 Oct 2020 12:54:12 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b2269c2368b56024
X-CR-MTA-TID: 64aa7808
Received: from 3fd292992578.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id 999B4A25-1DE6-4FE8-A486-CBFDC8AB56B5.1;
        Thu, 01 Oct 2020 12:54:05 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 3fd292992578.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 01 Oct 2020 12:54:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VP6wUBIk0JocwvOaSBi4eqWLf5PcmNEMSVwKxRv/sazsSKGNhO4vGNEyTZpsF9BR14p894HoohNXkmvCHtnFNhBV7XlP+5oe1Bz9P9J/rh7+o2leMjdjdGRxNbqBZuxM6Spe+ZjJLKSXcuUn+fc8NrDVfidknxnSXTWn5z3MGdItdPxXaPkj4IWKt1K5509Ze1DiyExoNREXy+iqPnPgcXNtClBDGOK4S13Iw1/z75HOeZlBO8LTl5oBJcV7js/OY3W27WhtresDS9+E/JiUsHi2O/QjxQcjnbq6P0rvD7FWbihILc1grvGOwiTILqfFA+6VLUdTkzSfogTIHZ3RSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MfOh+ry3wCwi1wzVykdc4tlK5LZWNQOA2/AUvu0QPgM=;
 b=hRov9+xQRHLOK/vAs++zmRUSEXNuxztdogYUlEf5EIZSaZg969EcTQcuntEPS2YZOxPD6KZTKJBGNGYqC+NQY2rxytF8Yl5ePBAd/Oh9qmN3ALJuDDmrddO+BW1rz2XpJsiyk8ZIC2HMj065koDwLbQ6DqSm1dxqM50Zwlp7+DYKW9b/0qJooS043wHpTofoe9CzoDeKVtNOb6UIy/rkuIjFWXpXCcOAZ8RBh85xkaGnK7lcNM5vg6EUiecEYxoEYAAEPsX7itgZlmH7wdBOso15m24ITmcqjnV4yoK6AqiN4m2MMVqzOOW1dzJP9lKjOR8nxNbtLUsl/888nKagFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MfOh+ry3wCwi1wzVykdc4tlK5LZWNQOA2/AUvu0QPgM=;
 b=Mb3aqOWmSFcbaZhxLhtDhPZ7KEVxd5LLpEkm26LvqQjD96pwxIct72IF619906tE9ylQFT8CfwR2QrQ+IBtPoQ3fcLFULYT1jYVgbbliN58LUUJ3kTUjzNiIIzTsqk+bSHxPm2Xhj/+P1Y08gAVUy8JfNGOy+EB3/MFireLNfM8=
Authentication-Results-Original: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=arm.com;
Received: from PR3PR08MB5564.eurprd08.prod.outlook.com (2603:10a6:102:87::18)
 by PR3PR08MB5737.eurprd08.prod.outlook.com (2603:10a6:102:8d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.34; Thu, 1 Oct
 2020 12:54:04 +0000
Received: from PR3PR08MB5564.eurprd08.prod.outlook.com
 ([fe80::784a:eb50:9684:50fe]) by PR3PR08MB5564.eurprd08.prod.outlook.com
 ([fe80::784a:eb50:9684:50fe%7]) with mapi id 15.20.3433.036; Thu, 1 Oct 2020
 12:54:04 +0000
Date:   Thu, 1 Oct 2020 13:54:02 +0100
From:   Szabolcs Nagy <szabolcs.nagy@arm.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Jonathan Wakely <jwakely.gcc@gmail.com>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
Message-ID: <20201001125401.GF29000@arm.com>
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
 <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com>
 <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [217.140.106.54]
X-ClientProxiedBy: LNXP265CA0020.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::32) To PR3PR08MB5564.eurprd08.prod.outlook.com
 (2603:10a6:102:87::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.54) by LNXP265CA0020.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:5e::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32 via Frontend Transport; Thu, 1 Oct 2020 12:54:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0fb66fe8-6569-4206-40d3-08d8660918ab
X-MS-TrafficTypeDiagnostic: PR3PR08MB5737:|VI1PR08MB3984:
X-Microsoft-Antispam-PRVS: <VI1PR08MB3984F4B92CCBD9CA23B50FA9ED300@VI1PR08MB3984.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: ODp5ZSygwCXxigioCYaPo09yTJgjes+YWA2cu0sNiswTO7vGmHvCbm2b/Q5g8q3fjLhloJb5sAa26ngaamvJmouVQPnJcSBqk/t1dZPeeSQAHDTGb9JdIn3DdiMtMqLVfyX4YRqi6V8wm3zqn/afAelM5SLcV5EOBa4BM7FiGisFhr35jcaXabOmAMsJhXkuAX/3CyxbyZE/hNL+TXeUf0lbN/LYQQH7u2vqjrNyT9W//5OBVa+Zrl1YQT5aSlMF6MI8Sy80r8IopgDbeoxfLNAWzhKVuX9CDQv4vClrp6b07NYbQKGo8UfGJMWRN143sLDxGod3tbxg3m/aenERRA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3PR08MB5564.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(86362001)(26005)(186003)(36756003)(54906003)(66476007)(66946007)(316002)(33656002)(66556008)(44832011)(16526019)(2906002)(7696005)(52116002)(55016002)(5660300002)(8676002)(8886007)(1076003)(2616005)(478600001)(4326008)(8936002)(6916009)(956004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: PiSHwN9ZAC+hrj1ZD81vvAUhyPYeMDFaT9+FNt5UWZ7N2Br/caadl6rtTwlDR12RW+RSmWo4P8W2V0KzcxuRMJ9/YfzrkZd9dPK7NWebFXhyCeyKUJiEQZ/WbknDRVxzBzbSllUDa+L+h7Ev2D06bNouXoOG1mEDIN7TFbaTxMeD5TbfIJCxhXXZSnBVMlxO5uhFT+9JowePhKJSa0fh0hM0GkdFIZ9GBvwfYKWq0AxM8RT8w+culrF9BC3fW0R6IFTv2+OnVKR8ku6m1bjt7NHUpTSOL5nMkbb7DeUo8Tr3jivRv1jN657qtiXrZpIJK3nkst4cNSTuMcl7iFu/Ht01Vw0uqyrN2YaSwr+a3ns+Z5qBARU9w45UfwmyHHQXv/rwXZ9pIGi/fa1SjAvu8Rd54FC50r3a1D4VOd2tfk2qnTDVSN4z382xwf2tB+arZvBj9G1PtnWvxk6Q4AjFdiOSVjbV6OqfIIIR6n6aPexW9Nyl3T5LZApyA50FNPOAad7CJeZ1jPZ09yGa92GvV+J4XXwgbRDTAprDpDB8KDEpIbwwVoiNkNn9laozm4xnZxImZkFEKKe9aUj48iFUQobAuI5lF7Qp9SERR1lD1dC1nGHVEr/Pie/vzO/1vsvC7WcLBM4MEB/lEsDQSNO/cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5737
Original-Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: f706a378-e346-456d-5a67-08d866091364
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Drt5Y73BsERGJGqK3OQUjDTNEAUn9jP3IPgPc54xkNYwn6+C1PsgFoa9AezYZhpQwC/7nOUFEVkzkSJxNkvKEUSfR2kj0rLHqDrkhcFjdwv0DUspuPbOt+weFXmLwla6J2MHuVsBP8In7TGdMazCSqXodURUBk2cDH5os1DWQ0iiePygQAZXvQ/V2RP2KXcq0C/hbq+YLX/Z3U4fCcqNzemuQzeTHcmF7xqT/0v/nUn/0Yq0IroQbufspNpdEyAmHDJ45AR3jGBQt4R53TFkymMKlU1M2MR82JVwwPjYRmtAVM2MjgwiGynL63Mf9I6XZD8KA8yEPO3s0o6WWcU0W8I3o2B2ZNC5Xx18+rKT5wQEQChcd6l7wxtJmKl0eyJnFFJ1JcC8XK24FRbojXci9Q==
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(136003)(39860400002)(376002)(346002)(396003)(46966005)(4326008)(2906002)(6862004)(47076004)(107886003)(356005)(81166007)(82740400003)(82310400003)(8936002)(336012)(2616005)(956004)(55016002)(8886007)(478600001)(44832011)(316002)(8676002)(86362001)(54906003)(36906005)(36756003)(186003)(7696005)(16526019)(26005)(5660300002)(33656002)(70206006)(1076003)(70586007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2020 12:54:12.6379
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fb66fe8-6569-4206-40d3-08d8660918ab
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3984
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The 10/01/2020 12:14, Alejandro Colomar via Gcc wrote:
> Here is the rendered intmax_t:
> 
> intmax_t
>       Include: <stdint.h>.  Alternatively, <inttypes.h>.
> 
>       A  signed  integer type capable of representing any value of any
>       signed integer type supported by the implementation.   According
>       to  the C language standard, it shall be capable of storing val-
>       ues in the range [INTMAX_MIN, INTMAX_MAX].
> 
>       The macro INTMAX_C() expands its argument to an integer constant
>       of type intmax_t.
> 
>       The  length  modifier  for  intmax_t  for  the printf(3) and the
>       scanf(3) families of functions is j; resulting commonly  in  %jd
>       or %ji for printing intmax_t values.
> 
>       Bugs:  intmax_t  is not large enough to represent values of type
>       __int128 in implementations where __int128 is defined  and  long
>       long is less than 128 bits wide.

or __int128 is not an integer type.

integer types are either standard or extended.
and __int128 is neither because it can be
larger than intmax_t and stdint.h does not
provide the necessary macros for it.

> 
>       Conforming to: C99 and later; POSIX.1-2001 and later.
> 
>       See also the uintmax_t type in this page.

