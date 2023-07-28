Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20F927676CC
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 22:14:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233013AbjG1UOQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 16:14:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjG1UOP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 16:14:15 -0400
X-Greylist: delayed 63 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 28 Jul 2023 13:14:10 PDT
Received: from mail-edgeKA24.fraunhofer.de (mail-edgeka24.fraunhofer.de [IPv6:2a03:db80:4420:b000::25:24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6D62423B
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 13:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aisec.fraunhofer.de; i=@aisec.fraunhofer.de;
  q=dns/txt; s=emailbd1; t=1690575250; x=1722111250;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Eu3l2TsipMfFIZWD7xw6k4wCxJ8y7/RiPylXQcVFYQQ=;
  b=Y766q/kH+iCz3IOJA6FjjXzKYlbJNT/fHM2UC41A6PBHygP2URh3XSOa
   2peVXFAOzPuRgV0euuCJjL1AsdAzHMqYlUcDL597jro9G2WXYkMDl+mAt
   Huatka5jPOOGKjez/jC99LHGSpw/9Ll49jd73mgZOoqjAbE1dIVnKhRo4
   W+EJPj552wU6VRCmtSQndhj6J8U75OE+a0OCq2yPCZyJnnYrCBzwbOeIe
   otJxI7YoTphv+Fib2lrSvxo1QeSmAMTleDCoYUIyGuX/IPmUnp+vJyFeW
   r2+Vtf8jy3Fh3wBspmhItS6vYgcUyMmwWC6FiiJkC1bB30L+MNaGzDrO8
   A==;
Authentication-Results: mail-edgeKA24.fraunhofer.de; dkim=pass (signature verified) header.i=@fraunhofer.onmicrosoft.com
X-IPAS-Result: =?us-ascii?q?A2E9AABFIMRk/xwBYJlaGwEBAQEBAQEBBQEBARIBAQEDA?=
 =?us-ascii?q?wEBAUCBPgMBAQELAYIyglGEUpEuLQOcS4JRAxg+DwEBAQEBAQEBAQcBAUQEA?=
 =?us-ascii?q?QEDBIR/AoZFJjcGDgECAQMBAQEBAwIDAQEBAQEBAwEBBgEBAQEBAQYGAoEZh?=
 =?us-ascii?q?S85DYNWTTsBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBBwI1U?=
 =?us-ascii?q?AEBAQECASMPAQ0BATcBBAsLDgoCAiYCAjIlBg0BBQIBAYJ6gikDDiOuNXqBM?=
 =?us-ascii?q?oEBggkBAQawHxiBIIEeCQkBgQstAYNahCUBhSuETIJPgTwPgj0HMT6EWYNGg?=
 =?us-ascii?q?meFDoR9hU8HMoI3iTErgQgIX4FuPQINVQsLY4EYgkkCAhEnExMFS3MbAwcDg?=
 =?us-ascii?q?QUQLwcEMh0JBgkYGBclBlEHLSQJExVABIF6gVYKgQg/FQ4Rgk4iAgc2OBtMg?=
 =?us-ascii?q?moJFQw0UHgQLgQUGIEUBE4mIRoePRESGw0FCIEBAxoDBgIJAgIECAoCKUUDB?=
 =?us-ascii?q?QMECwQOAxkrHUACAQtwPTUJCxtHAiegWgYBAR5cExwqCFEeQIEOklMDsW8Hg?=
 =?us-ascii?q?jGBXaEGBg8EL4QBg26IfoY2iyAWg1GDLi6HQJA6olc3IIRpAgQCBAUCDgiBe?=
 =?us-ascii?q?YIAMz6DNlIZD44gg3SPe3QCOQIHAQoBAQMJgjmJDwEB?=
IronPort-PHdr: A9a23:4vbSNx1Mvdmy5O7EsmDO+QUyDhhOgF2JFhBAs8lvgudUaa3m5JTrZ
 hGBtr1m2UXEWYzL5v4DkefSurDtVT9lg96N5X4YeYFKVxgLhN9QmAolAcWfDlb8IuKsZCs/T
 4xZAURo+3ywLU9PQoPwfVTPpH214zMIXxL5MAt+POPuHYDOys+w0rPXmdXTNitSgz/vTbpuI
 UeNsA/Tu8IK065vMb04xRaMg1caUONQ2W5uORevjg7xtOKR2bMmzSlKoPMm8ZxwFIDBOokoR
 rxRCjsrdls44sHmrzDvZguC7XhPNwdemBodOxL+wzL/RLSr4w3mn81X8iSTM+7xR7UFeCr6y
 5hRVx3l2H4lKiB+r27QgZkj6cATqkegpSxw+rzOZYqeNcFxW4HnTdZDTnhNfpoJejVvO9KFR
 tAFJPo/Y8ZHsqPxrUczhDWeXxXwCN3ymxBJmm7f06wWi/sYEizmziorFP1VtSv+je7KNKYua
 /2NkKrZ9wnedK9/6W3cydHqdAggq9O8d51oMsWIyGUUJijIkwiTsKX5Lw+X6qcXtEu17cRFT
 tikikEtsl8soR32+es8sZvbtoQe6xPJ1n9469tyG/jtGwZrJN++F51IsDuGcpF7Wd4mXzRws
 T0hmdXu2La+dSkOjZkryBP8QqbbNYaS6w/lVOGfLC0+iH82ML68hhPn6UG70aW8Tci71l9Ws
 zBI2sfBrHED1hHfq4CHR/Jx813n2GOn2Rra9+dEJk45j+zcLZsgyaQ3jZ0drQLIGSqepQ==
X-Talos-CUID: =?us-ascii?q?9a23=3AqbpNS2u5CUTidr/BCRVknB4b6IsZQHea93jacnW?=
 =?us-ascii?q?2Sl5NbZmcEm+N3KJNxp8=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3Ar9wghQ+uGEBw+5+alQJkF+eQf+lrvL+zA1gKqJ8?=
 =?us-ascii?q?hg+mfOiJoNiikqg3iFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.01,238,1684792800"; 
   d="scan'208";a="56138899"
Received: from mail-mtaka28.fraunhofer.de ([153.96.1.28])
  by mail-edgeKA24.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jul 2023 22:13:04 +0200
IronPort-SDR: 64c4214f_14ucKZ4uT7KEnrC0ZTcJ+mG8Odo4BcY/c3IjJezWJQsOPBh
 Agrr9lwXxm1/afESDiA2Bci/buWhqTF9Q4THdEw==
X-IPAS-Result: =?us-ascii?q?A0B5AQDCIMRk/3+zYZlaGwEBAQEBAQEBBQEBARIBAQEDA?=
 =?us-ascii?q?wEBAUAJHIEZAwEBAQsBgWBSBz2BCStZhFGDTQEBhS2GPAGBdS0DOAGcEoJRA?=
 =?us-ascii?q?1YPAQMBAQEBAQcBAUQEAQGFBgKGQgImNwYOAQIBAQIBAQEBAwIDAQEBAQEBA?=
 =?us-ascii?q?wEBBQEBAQIBAQYEgQoThWgNhgQBAQEBAgESEQ8BDQEBFCMBBAsLDgoCAiYCA?=
 =?us-ascii?q?jIHHgYNAQUCAQEeglyCKQMOIwIBAaJOAYFAAoomeoEygQGCCQEBBgQEsBcYg?=
 =?us-ascii?q?SCBHgkJAYELLQGDWoQlAYUrhEyCT4E8D4I9BzE+iB+CZ4UOhH2FTwcygjeJM?=
 =?us-ascii?q?SuBCAhfgW49Ag1VCwtjgRiCSQICEScTEwVLcxsDBwOBBRAvBwQyHQkGCRgYF?=
 =?us-ascii?q?yUGUQctJAkTFUAEgXqBVgqBCD8VDhGCTiICBzY4G0yCagkVDDRQeBAuBBQYg?=
 =?us-ascii?q?RQETiYhGh49ERIbDQUIgQEDGgMGAgkCAgQICgIpRQMFAwQLBA4DGSsdQAIBC?=
 =?us-ascii?q?3A9NQkLG0cCJ6BaBgEBHlwTHCoIUR5AgQ6SUwOxbweCMYFdoQYGDwQvhAGDb?=
 =?us-ascii?q?oh+hjaLIBaDUYMuLodAkDqiVzcghGkCBAIEBQIOAQEGgXkmgVkzPoM2TwMZD?=
 =?us-ascii?q?44gg3SPe0EzAjkCBwEKAQEDCYI5iQ8BAQ?=
IronPort-PHdr: A9a23:nA2N0xKewhZFerRbLtmcuChnWUAX0o4cQyYLv8N0w7sbaL+quo/iN
 RaCu6YlhwrTUIHS+/9IzPDbt6nwVGBThPTJvCUMapVRUR8Ch8gM2QsmBc+OE0rgK/D2KSc9G
 ZcKTwp+8nW2OlRSApy7aUfbv3uy6jAfAFD4Mw90Lf7yAYnck4G80OXhnv+bY1Bmnj24M597M
 BjklhjbtMQdndlHJ70qwxTE51pkKc9Rw39lI07Wowfk65WV3btOthpdoekg8MgSYeDfROEVX
 bdYBTIpPiUO6cvnuAPqYSCP63AfAQB02hBIVjDf1z7ZW43S6HrcqsNa8gOXNMPVSroxaBW8t
 4NUcgDqhXdeFSMntz7Yjccl38c56Bj0ph5PzLfmeoSeP/tFcYb/R+MfHGFTUuYNDwFYLLrtV
 qJUBcERA7h4sJTXq1ESkDKQJVOwWO/R125nh2Pn9KM7/7w+KALr/B4GFNkh63GLhvTOC6cTb
 dqo9PXL3A//cugK8AenyamRUBY5oPuubZhfaYnekEgDLDLug0jNqpXMIyOp1NhOqW+4wehOc
 PmVgG8IoRgv/zuKn/gAmrLblLITwXGH+AYjwa1oYuOdHR0zcZulCpxWryaAK85sT9g/R309o
 C8h0e5uUf+TeSELzNEi2xf8QqbXNYaS6w/lVOGfLC0+iH82ML68hhPn6UG70aW8Tci71l9Ws
 zBI2sfBrHED1hHfq4CHR/Jx813n2GOn2Rra9+dEJk45j+zcLZsgyaQ3jZ0drQLIGSqepQ==
IronPort-Data: A9a23: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
 lk9rN5eOjf4aaNoplLw
IronPort-HdrOrdr: A9a23:VcurEa6i/GC5yztPSAPXwSmBI+orL9Y04lQ7vn2ZFiY7TiXIra
 yTdaoguCMc6AxxZJkh8erwQJVoMkmsk6KdhrNhQotKPTOWxFdASbsN0WKM+UyEJ8STzJ8m6U
 4kSdkCNDSSNykLsS+Z2njbLz9I+rDum8rJ9ITjJjVWPHpXgslbnnZE422gYypLrWd9dOME/d
 anl656T23KQwVoUi33PAhMY8Hz4/nw0L72ax8PABAqrCGIkDOT8bb/VzyVxA0XXT9jyaortT
 GtqX2y2oyT99WAjjPM3W7a6Jpb3PPn19t4HcSJzuwYMC/lhAqEbJloH5eCoDc2iuey70tCqq
 iGnz4Qe+BIr1/BdGC8phXgnyHmzTYV8nfnjWSVhHPyyPaJMw4SOo5kv8Z0YxHZ400vsJVXy6
 RQxV+UsJJREFfpgDn9z8KgbWAkqmOE5V4Z1cIDhX1WVoUTLJVLq5YEwU9TGJAcWArn9YEcFv
 V0Bs203ocbTbqjVQGZgoBT+q3tYpxqdS32AXTq+/blngS+pUoJgXfxn6ck7zU9HJFUcegx2w
 2LCNUsqFh0dL5iUUtMPpZzfSKJMB2+ffvtChPlHb21LtBPB5uKke+y3IkI
X-Talos-CUID: 9a23:zHOrP2xF9+IsPT+wsxmXBgU9M8sUKSLh70vTMlGiDExycLOWcGO5rfY=
X-Talos-MUID: =?us-ascii?q?9a23=3AbOwu+QyLdNrXfdglR3ZrkupFleGaqKWyInEHz4o?=
 =?us-ascii?q?tgdDeLxQqNg6srz+OY7Zyfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.01,238,1684792800"; 
   d="scan'208";a="127028775"
Received: from 153-97-179-127.vm.c.fraunhofer.de (HELO smtp.exch.fraunhofer.de) ([153.97.179.127])
  by mail-mtaKA28.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jul 2023 22:13:03 +0200
Received: from XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) by
 XCH-HYBRID-03.ads.fraunhofer.de (10.225.9.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.16; Fri, 28 Jul 2023 22:13:02 +0200
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (104.47.7.171) by
 XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.16 via Frontend Transport; Fri, 28 Jul 2023 22:13:02 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FpB3DyI+d/GovX6qjmHCIi0/PeaIjWySr9zjgFkLbJ64z+pYJYGNCZ9WsoXIdYlYVCk+Q5PhbKcET5BtuH31GFn3YISUXNMalHiRLhq6U4Nk3NmO9Ik8iXkpr8AgIKOF5pQcun4okSkvbuuYBsMXw0wO3bGp1aAfaJ0ibmZE384fKUYnW3rjnpp62BFPolwpRa2+nf1ZhgNVTF6G8yBGWifRJjdfDqF9tfyomPICudEf4qvxCc+xDFGg3Dz82RX+YiQm7rsph/zKBl5gn7xPuKmNau0qtbZqmrGvmADJ1TD0YxMwz7HnrpWbzEITI4qnZsimYok0K7BInj4+JPENhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PrSGKmrK29NtAOBBeafKobmYIv0LWRwje81Juv/7goc=;
 b=O7Au2LyN41RLsSozxS6pY1ihycg5S8IHLmCYz4fEpMlOyDs8MtCW3UD2f+flUKncHikUYg4s3+MgZfigRngVEO8PFfXJv9XL4katRAAPsHi+BkNWSebIC/G8ZSJC6VA7g3T/cVHbnNoQrwHTC7xDFwk33R2Lw2/Z9uy8eF3zIMFJ1QSzBywEuAFGvYSYi3wVOjNababPquWjCt7tODAfuyKB/PfZ/q7p6RxbpzTwy2/hjGnFMKGDW0Ppau9GAqXtFVuIi+rGaiLdKQtX+eXHgTAzKwi2chZgo4//CwKwGWj8Btup8rpnYkxUh0p2HA017lxe3pTr4LLo+4NP3ZwesA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aisec.fraunhofer.de; dmarc=pass action=none
 header.from=aisec.fraunhofer.de; dkim=pass header.d=aisec.fraunhofer.de;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fraunhofer.onmicrosoft.com; s=selector2-fraunhofer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PrSGKmrK29NtAOBBeafKobmYIv0LWRwje81Juv/7goc=;
 b=ijXgQZrmcciSgMJRXm1czdH40EqFQ9QA3bCxV6HwuBdbtUAFH2t4dVu9GityAfiD0wQkEHzNccG3m7BISWhiTRuP4kyRTus4AX2II1JnpibJXBGp+g1iDSYCeu5kqAtxTjT+roKFjFMsRciGbq65kM1WDxSzzXncI+eK2iC5/VM=
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:50::14)
 by FR0P281MB1481.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:82::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 20:13:02 +0000
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::70d:507d:9c8f:cc3]) by BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::70d:507d:9c8f:cc3%6]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 20:13:01 +0000
Message-ID: <d7bd682c-b0cd-d93a-babd-5a7644a3c903@aisec.fraunhofer.de>
Date:   Fri, 28 Jul 2023 22:12:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] bpf.2: Added missing EAGAIN error case for BPF_PROG_LOAD
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>
References: <20230721120636.100203-1-michael.weiss@aisec.fraunhofer.de>
 <bcf7a83f-7d80-1a33-bcca-bed07b12f56e@kernel.org>
From:   =?UTF-8?Q?Michael_Wei=c3=9f?= <michael.weiss@aisec.fraunhofer.de>
In-Reply-To: <bcf7a83f-7d80-1a33-bcca-bed07b12f56e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0186.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::13) To BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:50::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BEZP281MB2791:EE_|FR0P281MB1481:EE_
X-MS-Office365-Filtering-Correlation-Id: cffb3a6e-e6ba-4e50-a888-08db8fa70b44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i2v0M5jd0nwYK9SICTX5EI0x+FfaWR/XcgvhYB/QZzUGv7O9fGG7qh+x/tFeX8aPN1/bBi2nIVLiU2OqEt0a/jQQaa2LsrOnXy+NOhtupVp46ChiuxvOIjoIgTMVVOicYWf2C2xZax0/7WYjHCOqCKJABkFlW8G8L5Tip3tUg+OG7wxfGMThoyDAzXy+PYqWHAKffRQG/UdCjrfH4ca5RMfUUZyHq5mzhQxzZdcQsdEuXMINxUZdtiykFMguksNxnt7o2xcKiOZcmeSlwx+QudViznKeLRej+6f6oC7J+pij1wuToRBzBMfg3am62UWyOefGsDkHihFGghTeAZswlaoHdDaJc8lhHTAIZXlOTfGNNiGFZTYpIQjw797sX05RONiqYEHcXgbMdaJNsNf5gnNJV1zxutJC1eb+ENIkwTsL8s+qbNdaNxurLN5hLdVgIYxmszMUYgPQuBbLO1lt/MNedThdyMvdG+TcnSzDWL0e3JFAfVxQcOoKr4Mq7Ugu2sncL0Gz3JkT6kSgNd3t4wL6yMd1j3RYITViGb1CX0iD22JPVoetYioNKDHTJbRdbD1LwyCFSJIZuCktCxSMItboPangS4yOGd+fXjOjA7TNrw/6SvMJYKVBCkTkdKIXpaFdSSRvJ1joHGM7b3yzmu2/AVkojbtFUeDGkvtukIMUfQRdImzKyLFTKK1dv900f9UGFWMJD44rcFqyLTXbfg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(39860400002)(136003)(376002)(346002)(396003)(366004)(451199021)(53546011)(186003)(2616005)(31686004)(6506007)(66476007)(66946007)(6916009)(4326008)(316002)(478600001)(83380400001)(66556008)(82960400001)(38100700002)(31696002)(5660300002)(41300700001)(8936002)(8676002)(86362001)(2906002)(6512007)(6666004)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFhoUnFhOWh0S3lySnZ1VDVFWEtZYWFjUXp3TzU3V3JSTHdzVE84Ri92S2xr?=
 =?utf-8?B?dURvMWcxcnFoN1dVZ2pIOVhoUUFuamo2a1QrOUg2aHpTakg5em1GRGMrbkNl?=
 =?utf-8?B?UHR2MWdBd0pQMDU2WVI5TnNTTG5lR1VBakVySXVXVXdPRnBUZ1d3Ly9BZ3pn?=
 =?utf-8?B?Vnd2Q1BxT0ZycVc2L2t0WFEwREFnYkRIaVl1Q3BaQjlKeHR5SnNkcHV3RE1y?=
 =?utf-8?B?eHFxM0p1cS8wVElGN09iOG8remFFRTYrWldkaVVWQUV0UklrNVZvam02TGx3?=
 =?utf-8?B?a1Fpak81R0RLcVhTUEE2T3F6REdOK0FmVG1kNTVNcnI4R2RPQXdHdXJpZnlX?=
 =?utf-8?B?UmR0YVpiMW02RHBQS0xjS0FBdFdpWExEck1QeXc0WG1qMmNsQnM5VjJwRktW?=
 =?utf-8?B?L2lpemFibDl4L3JkQXpIU0FCU0VSZDFtc0kxWVZEbmNrUDY2Qkx0by9oNzFi?=
 =?utf-8?B?NXFUekhCYjFkd1paWGw0aFVpdmVDZ2JJdXcwSTRjN1VPZnp2V3NMZTZUcXR5?=
 =?utf-8?B?NlloQlBXSGpSMGlkZG1aL21TbDMvaSt2aVdHUUtxWlNlNnZCTllYOThWZzZz?=
 =?utf-8?B?RHp3KzVKYnlVbzZLZFMwVDFNWDZwOXFSTUg1b2pWR2tFbGprN1U5cG1FcDNo?=
 =?utf-8?B?cDZUNE1XSTFPTVo0STVaZ3hXWFRnTDcxakxNbkdxNkh5aG9VS2ppQUcvQU9t?=
 =?utf-8?B?aXJGRk1ldzRpdHR0TkJJZWpqZDZtbjVJWlYyNmpFanV6RkVUQStPcGJDUjFo?=
 =?utf-8?B?YzBxNUhWamdVYVNjaVNOaWN6N25lUmhnMElkUWx5emYvNDJuMFdwemVzZFhD?=
 =?utf-8?B?MkRZT0QrczdoMkIyZTZEdWhZTWkrNHdnVzJkeWozUnEvWlhIWDN3a0RSUjVR?=
 =?utf-8?B?cmsvdWhnVElNV3h5R3RpU1FHWWtYaWl5azk3eG1MT0ZZYjhxc0E2aFcrdnJa?=
 =?utf-8?B?QktMWlRScUI3SGtEazZrNDJucUI1ZnJOeE9TS0ZJV052WjVHa0dDZVFsZmha?=
 =?utf-8?B?aGYwelZNYUhZRmVmdXh3YXowQ3RPUXM1WWp4SnhxSjVXa2Y5a0U0MXlVY3Fk?=
 =?utf-8?B?LzF2VDYrSkljUjR0ZWlhTis3cFAvYTZFR3hyU0tnT2E4V0RyMXorN2FLM0wy?=
 =?utf-8?B?U3dkVUtxYktlanpjbittaDdHK0hSK0dTSXpXRktFUWRrNzh4MTNlc3hyVG5P?=
 =?utf-8?B?bWJiR1hjTDFuSStyRDVKU1FGNldpSFVnc3QzdmdtTDZSdEJVVnBUY2JXdTN4?=
 =?utf-8?B?MjdEUFZQKzNudXFkeE9xdlJPVEpRdmFVTkhWYXB4em4vMXAwTTZiTk9wZWZK?=
 =?utf-8?B?Y0hwczdpN0RCRE55TGVkbjExbmRXYXB6bDBpZG1EcWtCTGdQbVZCUTZHTnVC?=
 =?utf-8?B?dm9rYk9HOWZLcUExVUg5U0hKRVAwVElNL21Nb3Z1WnNkWnE0OTFjOGwzU2RW?=
 =?utf-8?B?aGFxWFE3bVZ6QXRqMzE2bzBVd1N0T1paalRaa3k1K0JnOVh1NG9ONGxVaEJp?=
 =?utf-8?B?anhoWXMxZFpEQ2R2MHRTOG1TaHQ3NUJGc1dZYUgzL1pGT0FUWjlYOEtYWFk4?=
 =?utf-8?B?TStKNGtSOUpBeXk3VEtmMGNjVEpRQ2src3dVZm9PVEFNT3YzWEQ0ZFM3Y2gv?=
 =?utf-8?B?dGN6QWcxOXNqUnFGbVg2ODVnMUphUWFuMzhzdk1CNTZIQmRpTW1rZVNGYmlB?=
 =?utf-8?B?SlpJM081MVM1TElXUWlKSzgvNFF5d1BidnBFczl3TEV4c2U2VjJTdmdWVGpU?=
 =?utf-8?B?eG1yQytNVEtEMFVkWDF0cllnT1VYRHcyS2JSd1BacnArT0pKbDBWbE8wRTFt?=
 =?utf-8?B?MisrbytEQ05qSlBmcURYRVNmMmIwVi9rc1FYWDcxeVpmQTlsTnloTTlqaWh3?=
 =?utf-8?B?dUl2M1F6aFJpZnk4Q3cyRUlBUGZVZXZ4dVdxOUVhUCtQTEJrbXFhRXpKZHVl?=
 =?utf-8?B?TTh4WENJY0NtT3liZkMzRFdFQVZRYUF6TnNmU1orQmN1SU1wVVdTcTdaWi9q?=
 =?utf-8?B?V3dLOVZDSG51TmtzNWc3cWFiRTJoY2dybXloYWIxb0N6OWhjWVZsMTh1VTJZ?=
 =?utf-8?B?WStUR3pHY29NWnBYT2hZbDViOUtIczYraEliSzZZdXVBZGovdUlYMVdveHJR?=
 =?utf-8?B?Q2RoV25rNmI3cE1LLzRLWnBlRzd4MFo2aWJ6YUhMSFRFcElPaktIOGY5bDZx?=
 =?utf-8?B?SjJwbVNkbmRFWCs2WmhxakZTcnVOREtjNncwVmxPR0Jzc0hkb21vdi9FRXRm?=
 =?utf-8?Q?2OTnIxICFkT7zqPJ9KL+4Ul81aFXfeQFyzmEqBkjL4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cffb3a6e-e6ba-4e50-a888-08db8fa70b44
X-MS-Exchange-CrossTenant-AuthSource: BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2023 20:13:01.7299
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f930300c-c97d-4019-be03-add650a171c4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bbB2t/URWB/EbCw0ZLvNNiax1cHsrdLZ4XGYrX6tWfH+7dkj/HxaoOPU3T6l45Fb1yc1Lew5DU9h/9SdbSGVE3khaluxcmZwZ+KXE7gqF+GMV3vOvuyhIrozHsiFZmzL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR0P281MB1481
X-OriginatorOrg: aisec.fraunhofer.de
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 28.07.23 21:42, Alejandro Colomar wrote:
> Hi Michael, Alexei,
> 
> On 2023-07-21 14:06, Michael Weiß wrote:
>> Since commit c3494801cd1785e2 ("bpf: check pending signals while
>> verifying programs", bpf() may also fail with EAGAIN if the verifier
>> detects pending signals.
>>
>> This was triggered in the cmld of GyroidOS when loading a cgroups
>> device program during container start. We had a look in the man page
>> and where confused that EAGAIN was not listed as possible error.
>> Digging in the kernel source revealed the EAGAIN in the verifier
>> introduced by the commit above. Further investigation showed that
>> libbpf already wraps that case, by a retry loop.
>>
>> Since GyroidOS uses the system call directly and not libbpf, we missed
>> to handle this error correctly. Thus, this hint in the man page for
>> the bpf() system call should be helpful for others who implement on
>> the low-level interface, too.
>>
>> Signed-off-by: Michael Weiß <michael.weiss@aisec.fraunhofer.de>
> 
> Thanks for the patch!  I find a few sentences have some minor wording
> issues.  I'll propose a small change to your proposal.  Please check.
> If you confirm it, I'll amend your commit, so you don't need to resend.
> See below
> 
> Cheers,
> Alex
> 
>> ---
>>  man2/bpf.2 | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/man2/bpf.2 b/man2/bpf.2
>> index d32435a1d..7cef7f24d 100644
>> --- a/man2/bpf.2
>> +++ b/man2/bpf.2
>> @@ -991,6 +991,16 @@ and examine
>>  .I log_buf
>>  for the specific reason provided by the verifier.
>>  .TP
>> +.B EAGAIN
>> +For
>> +.BR BPF_PROG_LOAD ,
>> +indicates that needed resources are blocked.
>> +This is due to the verifier detects pending signals while it is checking
>> +the bpf program about its validity.
>> +In this case, just call
>> +.BR bpf ()
>> +again with the same parameters.
>> +.TP
> 
> diff --git a/man2/bpf.2 b/man2/bpf.2
> index 7cef7f24d..ea68e1293 100644
> --- a/man2/bpf.2
> +++ b/man2/bpf.2
> @@ -995,8 +995,8 @@ .SH ERRORS
>  For
>  .BR BPF_PROG_LOAD ,
>  indicates that needed resources are blocked.
> -This is due to the verifier detects pending signals while it is checking
> -the bpf program about its validity.
> +This happens when the verifier detects pending signals
> +while it is checking the validity of the bpf program.

Sounds good, confirmed.

Thanks,
Michael

>  In this case, just call
>  .BR bpf ()
>  again with the same parameters.
> 
> 
>>  .B EBADF
>>  .I fd
>>  is not an open file descriptor.
> 
