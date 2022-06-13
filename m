Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DBA854A033
	for <lists+linux-man@lfdr.de>; Mon, 13 Jun 2022 22:54:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347484AbiFMUxP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jun 2022 16:53:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347727AbiFMUw7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Jun 2022 16:52:59 -0400
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79EABC18
        for <linux-man@vger.kernel.org>; Mon, 13 Jun 2022 13:12:16 -0700 (PDT)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25DJXY1P025671;
        Mon, 13 Jun 2022 20:12:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : content-type :
 content-transfer-encoding : in-reply-to : mime-version; s=corp-2021-07-09;
 bh=7vl+LQCJPoCFqXfevxCq65tNU5gtCJs8pFN3LQdpAwY=;
 b=W2kxl9NWEljVhCQhiM3+kGgwldMU4sKu/a4YlfM4ZLbumYsMJFXBV5JTbMiYdEwHBW2j
 QXnMgiWFTbdsDmpmdwz/n6gwDD0CxO2zD01kUeOFEg//zsHgaZ+3bD5tqt12WBtYVQEv
 dUXdX+6Zp2W31y41D8dirziEaUeRA82c01w3yq49V1StaTCm+sYFuKRko//tsZzkWd60
 UJpSc2tHgaiwMjsldflCLV9Ps131N7vBQk9Ek0HqNjYViiWJH+rNF07FBJJKJTX0hppG
 /MVJmxA8ovhQhTDuvVFfD1TqB6U2M2f/jrdfMOR125UuoSopeQtQGmb3M+eLBJ2U10Mo 6A== 
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gmjx9c109-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 13 Jun 2022 20:12:00 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
        by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 25DK5WIG038161;
        Mon, 13 Jun 2022 20:12:00 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2040.outbound.protection.outlook.com [104.47.56.40])
        by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3gpbugganq-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 13 Jun 2022 20:12:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VMTr3fVe9bqNKoL2UbLj2rks0LDNwZ+wnHYDZSdAX8aQCrjbRPfW6WeD/ZVmzNe95ZX7w/iqi/WsrGaM/QuYWxfky9jOMI+6VubZz02kBg0pB9ymKZJSXgev2CvR9OdfhPUOw7ryqk2e32kW8d+ITeyPN7z+F0X3G2x+BaCm/a5AOCMbWIq5qxPF8HVPuM2z9AuQowe7ZJolYUJnrmSlFt7Q5gLZj87izGV4YRWox2IT7rTWbDA0r/R3g6f5m0vi+nao9yrYMrZDrB3R46EOkWHG1tmbUofml9hMbSizHO6ef4cgXHgli0ydT2veSayi6wcL2B9oZqCnKZ+HNr1tKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7vl+LQCJPoCFqXfevxCq65tNU5gtCJs8pFN3LQdpAwY=;
 b=TVMDouF/+50JqdB4PClCnibItvIKwnccg8sS7xPlRUbuaexrbqgq/HlnxmWcwmPUdnkYk6oLghvXFrDTVWb/e1PJvTOGBd+90w2uc28PmKR7O3O+acx0iorUlxihl5qC7WNgE4gqmnGsXqWNNkyxw+rdbSKopex0ljBqM7kZ64EOS2fUt0ENBnr4PriFbrBaWVWUhjrTKbGXR2ADsomf4bojVtjX5D7Wq9KACyz5lXZKKSuCfxP8CcSLo/xl+vPgQDT7NalWw7/MHjzRT6iflvSQhuJaJ2Z9Qknyd6DP0Y7E9qhfITxU9EezHQeHtyj6yKe9piXhkWJ0m0mO2aWSpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7vl+LQCJPoCFqXfevxCq65tNU5gtCJs8pFN3LQdpAwY=;
 b=dsouvIss3k4IA5zPIPAsERM4i9Jih8vtzM8Dw6pwAltYsM14wOkbE0EcVY7XXbhrBQyaUACWT7AT/6R3nfvvPNAbOvkctcCWCyjlFwuQKKs3HuGlUtaQolAYhR3O7gPqX0fBzRcjHyJgM+e0sgppU6WxRCOg64KiYNhHvKm9auo=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by BN0PR10MB4981.namprd10.prod.outlook.com (2603:10b6:408:12d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.14; Mon, 13 Jun
 2022 20:11:58 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9%8]) with mapi id 15.20.5332.022; Mon, 13 Jun 2022
 20:11:58 +0000
Date:   Mon, 13 Jun 2022 13:11:55 -0700
From:   Mike Kravetz <mike.kravetz@oracle.com>
To:     Andrew Morton <akpm@linux-foundation.org>
Cc:     Matthew Wilcox <willy@infradead.org>, linux-man@vger.kernel.org,
        linux-mm@kvack.org, David Hildenbrand <david@redhat.com>,
        Muchun Song <songmuchun@bytedance.com>,
        Naoya Horiguchi <naoya.horiguchi@linux.dev>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Dave Hansen <dave.hansen@intel.com>,
        Michal Hocko <mhocko@suse.com>
Subject: Re: [PATCH] hugetlbfs: zero partial pages during fallocate hole punch
Message-ID: <YqeaCxpwtbHfGpLD@monkey>
References: <20220613180858.15933-1-mike.kravetz@oracle.com>
 <YqeCPljxCJfMgA2Y@casper.infradead.org>
 <YqeDriDTVtoPrY+t@monkey>
 <20220613115732.3bf59ca4b31512153e27c548@linux-foundation.org>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220613115732.3bf59ca4b31512153e27c548@linux-foundation.org>
X-ClientProxiedBy: MW4PR03CA0096.namprd03.prod.outlook.com
 (2603:10b6:303:b7::11) To BY5PR10MB4196.namprd10.prod.outlook.com
 (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bf9fe419-2264-4ce9-e7c8-08da4d78f82d
X-MS-TrafficTypeDiagnostic: BN0PR10MB4981:EE_
X-Microsoft-Antispam-PRVS: <BN0PR10MB49811F115A01487117078F08E2AB9@BN0PR10MB4981.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YN9SSO1pKcgA+TfGuni5lmqWP5zFYM3DG5Y9nGSisW8tRhS+mGP4/xl2trWtYVb9QQZLbsiJ6dlpCGBH4vxgbmSJj6JDRmRQhcVDNNT3CS879Pl264Ua+0mHqXMvWEbKW0jJNmbKg/SCsD6MueHC3eapjayr8sttREtSQTuEN5vER9/AC4UYod07RtC1XEWrI/bcSsXX1qFeADwrHO1huvCPU89qqjXhKHgoxpCpGjyp1SyJZO9apPFJ7TxKqJJrRhFj/TRCLNM16vaUasa2CDg8btciv0+9MBEHvLhPCohOF+xvKFV16EToct7e2k+W1VWDpXWFWd67gqTjj0Qzy6dVHRF003bmNH2bnJS+KuLkhHhsACs7UbrxR9yiD7Ic2XK+i2QV6Ba1uiERHIt/KZ55PPcDfjcmO5KvBdL3S0BQl98XKgDQKC0ajCxwqOtsgKtxTqrrXqx/nCeGVlE30OgTmIEP3Rmfrs+ztFOn/jYXP8hwzP66wP0XG8II53DpNWpUSFOED43elhysro2A7bNNKihxXwvbM1DuLgyB7yABcMnTszLBoIb7ya0I2wTzmMRGP3wpL5a7OkwVRGKbDN5eZ+NYWeiyi/QPqL6FbpxWKr1LVfUlY0USBS8i8u1sTebuZVKgmbVeAUTgyq4oZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(366004)(44832011)(7416002)(508600001)(5660300002)(8676002)(8936002)(316002)(4326008)(6916009)(6486002)(26005)(2906002)(186003)(6512007)(66556008)(9686003)(86362001)(6506007)(33716001)(66476007)(54906003)(38100700002)(6666004)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUhMRWFNWHc0OTMxODlnSUJoUDhjSm1hODhwQ2E4eHlTMUlZUWdvTVZMUDhI?=
 =?utf-8?B?b2k5dk05N3o5cXlRR1o1YnlZYWRpNXQ1SitUQWxSb2tVeE80MklJQVp0MVdq?=
 =?utf-8?B?ek5oVUhyTlpSaDZZamVaSkxRODJTMEdyNVk1U25QVWo3RDZGUVcvbU54Q2t6?=
 =?utf-8?B?cERRZ2VjL0p6cGNGaW9uZ01IWEtTREVwRjZ1WnhPakMrVzduRDZ3SjBQRDhN?=
 =?utf-8?B?WUY3V2FmUVVnRHE1YitGb1FjZGtXeUtIWUw4UGp6UGZXenRaZUg0SGNpQUM2?=
 =?utf-8?B?YlZCK3pqUkY0aCtWdUthZDd2Vll1d0RsTGhqM0dFTnRnYVMyOVBLdGgwRC9K?=
 =?utf-8?B?TXBaRXJ6eEtjQnZEVkhVT29tdXJ3MzA1Qm51cDFEQ1prQWNTYy9RMnBwK21v?=
 =?utf-8?B?OTlGYTBRM1VvVG1NVFF1MHRldlJVZmdINHN4bkRsQzhRTGxYSXNwbTdpSFFn?=
 =?utf-8?B?dFd2ZGswVFkrR0M2UTBvK3VpYTJTOWxFbkFaVndDK09JUVhmOHhkcDd1WGF3?=
 =?utf-8?B?Z3Y4a2svc3IzYkxiRk1Ud0Q3NlJNWGdCeFhXZFYwRXlnTWR2eTZMbzhkR2RQ?=
 =?utf-8?B?R2Q5MndkRzlMa1RNTXhyUC9rQnFWcnRsYzI5a0FoNnlGWnBkd3VmVThVYWtv?=
 =?utf-8?B?aWlOYUh0SnFGTy9UN0tGZFhkdkJHUWhrZWlQRmlqSkRKbmVTNmV4TGFuMEhM?=
 =?utf-8?B?MHIxMWp0bjRzRDVZQkVjNlJZRURyb3Y5NWE3RkNPeHlYTlp3b0NMMkkwdWpM?=
 =?utf-8?B?TTdaSUxtbGkxb1dSQUFhMm82TXFFNzNMZmJrMkszVnZHa2wrcm5nMCtPdDcz?=
 =?utf-8?B?cWFqeUo3K1d4bVV0QisySUNBTWgxc3U4YnpkMWt4M1FTam8yaDc2TjdpTURl?=
 =?utf-8?B?MTlzbGdXQ2NkSTRQNmF4bm9zdkNUbFZ3NUJzMTF3QUpadFp2OFZtRk5ja0pl?=
 =?utf-8?B?UGZadTJJTTNMQXl4V2RYYlQ2dG1PUGE3OWtPV3ovMVkwbGhOaHpYdUZ1REJm?=
 =?utf-8?B?L3JoZkppcDluVWZjZS9tQW1XS2tFR21COXpXeUVWM0lqSGVzV3hBM1p5Zk53?=
 =?utf-8?B?c2ViR05rQUxGWFVKNHk3b1hrK0tyekF0NE1aSjNBTnJ6MHhVZmkyM0RpL1Iv?=
 =?utf-8?B?TGZISVh5N0dWMXNQWGhFRk80ZFVQSHB2UG1aRnhmNHZPMUhmaTVoN05ML2oy?=
 =?utf-8?B?NHJ1dmRibFNKdUI4Zm9WTHovaDJWTUMvVnFTZGt2cHV5WjZLOHhCb2VSaG9t?=
 =?utf-8?B?bmgyMFN2Q3VUZXJOalBJSGViK0JVN3lOOXNIMDJhQ3YzRnFDbXlqbzZxMURj?=
 =?utf-8?B?VFVEN2RpOHdvbnRIWnJ4UXIzdUVTTytvSVdrY1VmUW0zakp2QTBtV1hsVjV1?=
 =?utf-8?B?V0lPNmFqSmVQMG5BbHFvbGZTZkFGekhmdjRnTTFnVGR4UkJTQldoTnZON1FP?=
 =?utf-8?B?aGkvUHRBbm93ZHpNZkd4ek1xTFFNZGNIbUpNTmhNVTlmcWNlTXpyMkM0dTUy?=
 =?utf-8?B?SXA2eWVqcHRuMktySEREc09TUTIrOHVmRXc5LzYwREUzVklTSmZxMENVWXFz?=
 =?utf-8?B?Z2ZmTkFCRzY5amVSbG1tYXdrNTdVazdxNUVrNHhJT216c3dsNW8rUWIrNktM?=
 =?utf-8?B?TGJabmtpRWd1citBM1Z2RjBvMDFHQngvQlpZVHcxY1VUS05VT3RVMUhDbmRo?=
 =?utf-8?B?cDJSTG1MRENwQ3AzMGV5NktzZGUvNHRsQXhpRCtpeFhyRGlUTDBtejZhZWxX?=
 =?utf-8?B?bHJPWVlhbWoyNzhXbXRubHJFL3BQTHJ1c2xic1hya1lyQ3R6L1Nhc1c5clRa?=
 =?utf-8?B?UGdFYUg4eHVJYldzdHlJS1ZYdU1POWhuY3pCNG80TEJVVUJsWFdmRTV6U1Bm?=
 =?utf-8?B?dTFIci9iZEF4WTFJY1RMWDc3M2FMSFJIR2JiOVp3NTRyb3l6TG1lMmswcWZO?=
 =?utf-8?B?SVZBdllPZC9DMHg2dE9mZGx1ZVlQdUFHQm5VZHU2aHZxbzNNZGtLM0NFN1Zi?=
 =?utf-8?B?Qnd2OGNlRzBQRVB5eDZBWktzU25MUHBmRExGU04xbDh3MkFNZXIvQnB1bitt?=
 =?utf-8?B?WTZSMkhEYTBHSC9SYzlGSWhwWGEvL1RwNkZKZTA5Y043Y1h6anpIbGY0T1Bt?=
 =?utf-8?B?ZHJ3aHJtTnpXd2UyMXFDYkhoWCtXOWljSEdFZU16T0JmZ2dFam9aSHVORUVM?=
 =?utf-8?B?QWdraVpRRy8xNTI0YkcyVmozQUtrM3NPeFdLdFpYeGoyaGZneDBWZExzcC9J?=
 =?utf-8?B?WS9yNURHOGVQR3Z1dkVVY1hyZENMWWxBb1JBbVRHdnVGeWlLQ1JjTFpGa3Mz?=
 =?utf-8?B?RkpsTWl1S0djM05UL2hiMFJybmFxNUpmQjZNalJSck9XWVpMZFcxbEVabE52?=
 =?utf-8?Q?ErtxAWmRlTb6326I=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf9fe419-2264-4ce9-e7c8-08da4d78f82d
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 20:11:58.2768
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8nbxWhOiuax/pcAluCDrFFS37kfKoSVSVbr7NERR4LwKPIzO3N5hXRm79rHFHP0bUffXZ6cKXE4pB5UTIsJT/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4981
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-13_08:2022-06-13,2022-06-13 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 adultscore=0 mlxscore=0 phishscore=0 bulkscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206130082
X-Proofpoint-ORIG-GUID: 5YLifdG-mjo0c76OrsHl7rtXw7m-gvbf
X-Proofpoint-GUID: 5YLifdG-mjo0c76OrsHl7rtXw7m-gvbf
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jun 13, 2022 at 11:57:32AM -0700”, Andrew Morton wrote:
> On Mon, 13 Jun 2022 11:36:30 -0700 Mike kravetz <mike.kravetz@oracle.com> wrote:
> 
> > On Mon, Jun 13, 2022 at 07:30:22PM +0100”, Matthew Wilcox wrote:
> > > On Mon, Jun 13, 2022 at 11:08:58AM -0700, Mike Kravetz wrote:
> > > > diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
> > > > index eca1d0fabd7e..b0d0947a7e9b 100644
> > > > --- a/fs/hugetlbfs/inode.c
> > > > +++ b/fs/hugetlbfs/inode.c
> > > > @@ -584,41 +584,79 @@ static void hugetlb_vmtruncate(struct inode *inode, loff_t offset)
> > > >  	remove_inode_hugepages(inode, offset, LLONG_MAX);
> > > >  }
> > > >  
> > > > +static void hugetlbfs_zero_partial_page(struct hstate *h,
> > > > +					struct address_space *mapping,
> > > > +					unsigned long start,
> > > 
> > > This should be loff_t.  Otherwise we can truncate on 32-bit machines.
> > > 
> > 
> > Thanks!  I missed that.
> 
> I did this:

Thank you.

I will send an official v2 with this change, just in case there are more
comments.

-- 
Mike Kravetz

> 
> --- a/fs/hugetlbfs/inode.c~hugetlbfs-zero-partial-pages-during-fallocate-hole-punch-fix
> +++ a/fs/hugetlbfs/inode.c
> @@ -602,8 +602,7 @@ static void hugetlb_vmtruncate(struct in
>  
>  static void hugetlbfs_zero_partial_page(struct hstate *h,
>  					struct address_space *mapping,
> -					unsigned long start,
> -					unsigned long end)
> +					loff_t start, loff_t end)
>  {
>  	pgoff_t idx = start >> huge_page_shift(h);
>  	struct page *page;
> _
> 
