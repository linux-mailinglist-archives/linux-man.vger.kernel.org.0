Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2FDC549E59
	for <lists+linux-man@lfdr.de>; Mon, 13 Jun 2022 22:04:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348075AbiFMUER (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jun 2022 16:04:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348384AbiFMUEH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Jun 2022 16:04:07 -0400
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3B93B41E9
        for <linux-man@vger.kernel.org>; Mon, 13 Jun 2022 11:37:00 -0700 (PDT)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25DHn9UI017864;
        Mon, 13 Jun 2022 18:36:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : content-type :
 content-transfer-encoding : in-reply-to : mime-version; s=corp-2021-07-09;
 bh=x68HdAuVRD5Ed4wBoQqvkkT+cwwpT/MI0DWI6HgFWEI=;
 b=VRuHKtOrOW1zStkgLy5ZqFq5YLOoskaw0DDuLIqlNln4DvceWIbU4BDAVfa47ZMNEuUX
 57Vs6mXF+Igl5SA2BPwtucoGA/2iRy6bUHYdFpXrsTu7MU7vn9SdET5YAeCP9eEMZdbx
 km5zsTdu1EkdSKvPM121UlmmNFdUNU6sPYPRJRxco2dPhRRLWBzJvDoVWvtV/H9ZCrUW
 L7z7SSTadwrSZVauj3LX8GdDJht0QenYmZVsPMmbw0mLq57P2SqgZhT8mBkhRZNTNaR7
 fn4SW5tgE8pUn+CM8jlZ6AwN1TgfqwweSMGvJP9aiM3ZB9flMXuJaq0oawr1uhAKmMVG 5w== 
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gmhfckv91-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 13 Jun 2022 18:36:36 +0000
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
        by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 25DIa1UG027473;
        Mon, 13 Jun 2022 18:36:35 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
        by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3gpaccrykv-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 13 Jun 2022 18:36:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xeo3gzTdMstq/3iELXsXYva4WbB3+vWX/UtXdrNDmg9PzBDVOkP/RyfsJRcmoXgl5dVa0R/xKwUm0uWMjA/6Zl5OVUlH82oszPbdXbxbnTU+wT/Ic3mLygD1lUDMrLjYbhyRwqawcIcE1NkH2bP3yaGjRgz9BAgtVTGPur4p17OroN15mlAwYmUEbw5FDa9U5qDpCqOfI3MwnUM6E/4sX+wFQsbe18rjA8pF+gEA5EOjsM4NErXDYyfn9cuys2etEnjEoI+7cOEmh2fwTFK3jTlh1svm66tUKXNfiD/B7MDghloM105TIgdFoWzkYI12n2s7M8FTdiCxSNLbHRInCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x68HdAuVRD5Ed4wBoQqvkkT+cwwpT/MI0DWI6HgFWEI=;
 b=ndSz9rDNP3RLlH8oHt4ZUrXe2ddNEKSYOUMDsvETC6mSro3jNYiQTzJes3cLDTg3L2FzQe1m/iIXC9R7p91A+cqoGsMjVt6FVEW0XP3MOaEL4ujYEt317v2/U8ehovtYtzYVw9vgdMbUMSkYzFII4+7WYG9OtO4TihtVFt7y2w7R579C+gVDUWddELb7fdO04MgR/MXoVcH8CtT/iHVPln+iMvcJdwOxaCivE7KavIKF6mbmqAkfMrKFIR7mcRWMGOoqGhP0M6frB4h8/+sBBti52imIYC8e5tBYWFYzp8BtdmzcgWWGEsr7nhNG6TIIrvQE+wSrlI3jzqQ4ApLbkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x68HdAuVRD5Ed4wBoQqvkkT+cwwpT/MI0DWI6HgFWEI=;
 b=seFr2S8jX4gg+qmMw9hRt71FCL9pX/GcdjQ7ArsvVfdLPshXibP4Re4UKpQYRL90OMzAs/LXfNBKOJ92Orj3JZ/TSPvJO1arSfg7aArQMBIQa+5lhujMBDf773e4JBVACaeQc7CNXep4Dv0Ste48t8LXSkAguBaXCsvjJgNTfqQ=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by SJ0PR10MB5536.namprd10.prod.outlook.com (2603:10b6:a03:3fa::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.15; Mon, 13 Jun
 2022 18:36:33 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9%8]) with mapi id 15.20.5332.022; Mon, 13 Jun 2022
 18:36:33 +0000
Date:   Mon, 13 Jun 2022 11:36:30 -0700
From:   Mike kravetz <mike.kravetz@oracle.com>
To:     Matthew Wilcox <willy@infradead.org>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        David Hildenbrand <david@redhat.com>,
        Muchun Song <songmuchun@bytedance.com>,
        Naoya Horiguchi <naoya.horiguchi@linux.dev>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Dave Hansen <dave.hansen@intel.com>,
        Michal Hocko <mhocko@suse.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] hugetlbfs: zero partial pages during fallocate hole punch
Message-ID: <YqeDriDTVtoPrY+t@monkey>
References: <20220613180858.15933-1-mike.kravetz@oracle.com>
 <YqeCPljxCJfMgA2Y@casper.infradead.org>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YqeCPljxCJfMgA2Y@casper.infradead.org>
X-ClientProxiedBy: MWHPR15CA0044.namprd15.prod.outlook.com
 (2603:10b6:300:ad::30) To BY5PR10MB4196.namprd10.prod.outlook.com
 (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 19219e35-6b42-4580-c200-08da4d6ba3e8
X-MS-TrafficTypeDiagnostic: SJ0PR10MB5536:EE_
X-Microsoft-Antispam-PRVS: <SJ0PR10MB55363A976D6642B4C6889577E2AB9@SJ0PR10MB5536.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pfW3qHKDN191+ZaxXHTu7mQFMiRWVFIeDM3rcnaDK9FUPHaA3e6SFdgzHnexgI/ulpx/UCTZPMdYmAX/nUdcZvF67NZvX5dgupd7LloA06PwgduEfecfR/5aXIa0gojjPfGlmZQDhUi92RkWcx1EkHX9+U8fnUgD1CjvjixYVQfBiIXL+wW9Hyivrn8/h/CqcYI+O8/1+c2B+NtiA/Yjt9zSD/QHfAClRtJh1iGDSH1+fRg2nf1PoYfw74sL14Xek0G5LXqlfMd6FZYHiXub2jU3CeN25+uYrp22PCdQ3MTYUCKiKVcI6eKUu6W3SZxB61L4A6yXTd7iXRMtvAl9J0POo8UQYwLYD53HGpzBY8SEUqiLfdQBdWrmrQApuBuNRkAHEob5yFhVhA+MCJ+lUHtSgL8MazYOPCISNHnQCdj2ZGg+nNp8uKpxY3Dw9v0gn7Cklk/Y1dcHnEjMmOf2xcy8ftMtuq9QgdOprV+8mUtqaQuY3vlbltrfR81pWDb56MtHlhpT2R7nxk6yhYa/7LDKI+jz8d42tXyRPKtkRt/Z5Q35KFFdtHrepr0MDCIx4grNZ2QYQ850+oN096crU/pSIec1ZjhWwLhjFVF1q8Yw0HU5zuurqh7badVF//6UW+TF+nYfkqDXkfebly3vZt1Mp6/rgllpAENA3/5gpdnV84TdF8McvFY7f4NDRnstbdqAXo03R82g9QGSGZ9RlT+S5wcvKMtTxeyaz/MKjQkhnOe1NZpxW848y3kMTKnq
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(366004)(83380400001)(186003)(9686003)(26005)(6512007)(66476007)(33716001)(6486002)(38100700002)(4326008)(8936002)(2906002)(86362001)(7416002)(6506007)(8676002)(66556008)(316002)(5660300002)(66946007)(508600001)(6916009)(54906003)(67856001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHU5SlFmM1laSG5ldzFpOVlTTndiTG9GSjI3YU1adlFiV0E4ai9vQXlHNnlh?=
 =?utf-8?B?OWJCQy9jVjNRZWNMVllITkhrbmZhNHdWSXl3aW9rc2VlMjR1dUd3UmtEb1po?=
 =?utf-8?B?cTA5MGdqbEdkVUNBbFdKekxmYWFjYjUwRGlxL2tsbHU1Ulgya1AyVUovWlB4?=
 =?utf-8?B?amcwTjRMRDNaSFdCOTFEcEFZeDFiSVFNZW81cjNadW1WUlVhY1BYY0RXclJ0?=
 =?utf-8?B?aXM3Y2lmOVYweVB6S2VBMjIycExDOW8vand3MVQ5dFhUSFhCYW9Kam5jZnV5?=
 =?utf-8?B?WWZyUWVXRjEzc0tmSFM0d1hvQWtFSzdUQUtPeFhReXNvOGFyblVuaW9hTzBh?=
 =?utf-8?B?dUVkc1l6dm1hRXdhMzQ3elhoNWZhYThZaUkwdWpEZWwrTTNqWnBBS2lMbElx?=
 =?utf-8?B?a3pVZjNodFF2N09ZQTV5MjZFeFZzdTIrK0NxNVFGSDR4TkNMeExTVzk3elVt?=
 =?utf-8?B?NzRTcDB5d3BPU0NuUVZTZU5JV240ZHpVVUlJWktGc3NTMXlKMTNleGQ4RTdU?=
 =?utf-8?B?aUZpT2p2SHFaUGFTWVNjVXhvQ3N3Mmwyd3F5WmkwL1NDQU92WXdubDhWVTVO?=
 =?utf-8?B?SmJIWjZibm1hbVo0QWp5VGpUTlorTzBaTlF4WkNCQTlIZWlMRGliaTBTdWEv?=
 =?utf-8?B?T2dKY2tnb1V1cXdGZ3RENTREaExXZ2gxeDVoeVhqdVpQZjNGS1VoUlRNenFQ?=
 =?utf-8?B?c3gzcUFSb0JaYm5ySnNiUkVwN1Q3VHpJQnllTVNGVm9IZGMvdmFDMlVRWmlZ?=
 =?utf-8?B?TlF5TS9MV0xJb29QUVpQVnhhVTZlWmkyaVczQmlSbmtzTXFpNTF1Sm5TK29C?=
 =?utf-8?B?NG13eHMwcDMwSzJudys0MUErZGdRNmhGS0tMWExwci9Ha2o2ZEp3TllKVkh0?=
 =?utf-8?B?ck1kQzhRMnRRMS9obXpSb2tQc0dLTlBiVW1QeWdUT0hjVzJvbGp3RmVwTU1L?=
 =?utf-8?B?dmlGUUdSZTRJU0M3U05TWmhmT2Q0Tjl5RkZnYmlTaFp6NW5sS1AxTzNnVHFq?=
 =?utf-8?B?SWN3MkVUa3lPMFEvdmNrTDVDWTVDdlUyZXpvQjVxeWltWEUveVZLODdLL0FG?=
 =?utf-8?B?NGJVUjFtdUc0aGM0Sjl2NHdkcVJQcWJ6bUo1Rk00ZXlIeVNtaXUvdzVaSzVs?=
 =?utf-8?B?ZGVTanVER01iM2lZUmtyY09mR2lzMi9ySHVGa01FcXdrQkhFNUk3NGhHQ2Fq?=
 =?utf-8?B?MUJHT1AzRElTb252QVRsZ1Rlc2lzcHZ6ZTNjdXN0MTgwajFMSzhOc2huU1ZX?=
 =?utf-8?B?UXJMakFhQlh2MUsvNDdsRGx0Q1FCekE4SE03RFpXYUVGc3RQNm12SnVEVzU2?=
 =?utf-8?B?dHFQdm9yTkkrNXdienJzQjRWaUFyMTVUeHR2N0hlK3JvbjF0ZHFqOUVLZFBz?=
 =?utf-8?B?QW5nbnVuUTBISHJlaVAwSEJ3UVZkRmF1QnRibFVaZnpmUWxqaWJjNlBWck9a?=
 =?utf-8?B?MTE0NGYydTBmYXBPYzh2dXgyZmwvK3hCc2pBUEdtSG1jbjduS0xmYTBSVmNY?=
 =?utf-8?B?dys3dml1SXpKRzJvNCtoRnFJNXA1RUc3OHVNMjF1QXBPZm5SNlBtMGgzV2F2?=
 =?utf-8?B?djJmL1hESnp5dnFwOUkyMDYwK053b0J0a2NKY0F5SER4ZWduLzNUZUZZOENo?=
 =?utf-8?B?ekVOWGNTdnNRa1hrQzJlNmpLWEN0RjRPcWw4NHp0Z05pVksyR2lQQXFPT1lu?=
 =?utf-8?B?Z0ZBaW51ZktHNUIvYm1UUno3aFJjNjZ5U2FNMS83WkU0YWJMZmhkeGNxaGhM?=
 =?utf-8?B?SndQaVREWDRNYlRtVitnWU5MTWRPR3I0KzdSZ25SQjZsTm42MVlhTjd1VkUz?=
 =?utf-8?B?aG81dWlUa0FhOWhhb2pmOCtuUjI2M1cyeGFLOTJ5UHBjVkt0R1ZUZ1lySHNx?=
 =?utf-8?B?eVEwbjZiUXBUdGxLRWRod3hHVXQvVGNzVyt6bjAzT2lSbkhoeTJSb0hrNlNu?=
 =?utf-8?B?ckdHU1pnVGR4MlJYZk53Q3JRZUQrVGxsT0g3aE5WcTZIZSt6YnpaT3J5MWt3?=
 =?utf-8?B?TFRyNDU1WThkMXduOE1Wd0JlenljVVI4M09lMGNLQ1ppb0dneU5jbDd6a1g5?=
 =?utf-8?B?N2NISmVwUUdOeG9USUNDL1RCNGZNTGpDRzBTc2FEaXVkaDlFRW1kamFQQmNY?=
 =?utf-8?B?M2ZhYm4vNUxqQ3hDNEpmM09EK2lxY1doN0R5LzAxcmZ1T3hNbG9JaXdSenJn?=
 =?utf-8?B?bERIbFB1MEd6c3pEak9WM0pLUDJ2djRhRTVQNVFnanJLcTFEZkxiN2NESHlt?=
 =?utf-8?B?QTRwY1BCd0ZUS1dwejczNFVZUW5rV0ZFdElWTWE3ZitxUlNJTnJOZDRtcGRk?=
 =?utf-8?B?MTRpOWxQRmx6a1V0OUpESnlXMEk3M044eEh3SFJFd2xtTFVQZFpMV1kvUlg5?=
 =?utf-8?Q?Zm1lAPqsSMeP51FQ=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19219e35-6b42-4580-c200-08da4d6ba3e8
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 18:36:33.4375
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Eh13xhsI6dsLl+sCsN/1iV0bu21dAYqDVRUg46kVLbJ4PgRVYkemOB8hEjM8Um+KFSL2OzVCkZzk1WZ7q7G0kQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5536
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-13_08:2022-06-13,2022-06-13 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 spamscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206130079
X-Proofpoint-ORIG-GUID: _0MulgufmgX9Bj3LlE8PnC-WfL5W_0r8
X-Proofpoint-GUID: _0MulgufmgX9Bj3LlE8PnC-WfL5W_0r8
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jun 13, 2022 at 07:30:22PM +0100”, Matthew Wilcox wrote:
> On Mon, Jun 13, 2022 at 11:08:58AM -0700, Mike Kravetz wrote:
> > diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
> > index eca1d0fabd7e..b0d0947a7e9b 100644
> > --- a/fs/hugetlbfs/inode.c
> > +++ b/fs/hugetlbfs/inode.c
> > @@ -584,41 +584,79 @@ static void hugetlb_vmtruncate(struct inode *inode, loff_t offset)
> >  	remove_inode_hugepages(inode, offset, LLONG_MAX);
> >  }
> >  
> > +static void hugetlbfs_zero_partial_page(struct hstate *h,
> > +					struct address_space *mapping,
> > +					unsigned long start,
> 
> This should be loff_t.  Otherwise we can truncate on 32-bit machines.
> 

Thanks!  I missed that.

> > +					unsigned long end)
> > +{
> > +	pgoff_t idx = start >> huge_page_shift(h);
> > +	struct page *page;
> > +
> > +	page = find_lock_page(mapping, idx);
> > +	if (!page)
> > +		return;
> > +
> > +	start = start & ~huge_page_mask(h);
> > +	end = end & ~huge_page_mask(h);
> > +	if (!end)
> > +		end = huge_page_size(h);
> > +
> > +	zero_user_segment(page, (unsigned int)start, (unsigned int)end);
> > +
> > +	unlock_page(page);
> > +	put_page(page);
> 
> We haven't started converting hugetlbfs to folios yet, but here's how
> that would look (which will save us converting it later):
> 
> 	folio = filemap_lock_folio(mapping, idx);
> 	if (!folio)
> 		return;
> ...
> 	folio_zero_segment(folio, start, end);
> 	folio_unlock(folio);
> 	folio_put(folio);
> 
> Pretty much a 1-for-1 replacement.
> 

Great.  The folio conversion is on my todo list, but I would not be
offended if someone beat me to it.
-- 
Mike Kravetz
