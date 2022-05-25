Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6C37534550
	for <lists+linux-man@lfdr.de>; Wed, 25 May 2022 22:50:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237984AbiEYUub (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 May 2022 16:50:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343868AbiEYUub (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 May 2022 16:50:31 -0400
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CA3A90CC8
        for <linux-man@vger.kernel.org>; Wed, 25 May 2022 13:50:30 -0700 (PDT)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24PKiDNN012156;
        Wed, 25 May 2022 20:50:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=P6Hgal3+RgsmcDAv4rLzj+YV/s+urk05JiWYAPPQwR4=;
 b=QI5uCw///CPBqDlXGZU265m+EEs4M9gU4hdEWxWyCxxVOHsia+i7yAptSyDOs/vuUP5p
 FadjUE9jo60riype5IaYYDmwEjbmQyTokS03VG/3QaXSkRaFK74ah3Pq7UbNSLRX4vuE
 Ew2pXbUYe1e+gRN3T/otZPT/GR8gjueYs9KBZmNDPhYEN1Y7Uxdlbnv1ipIg3ApybfMH
 P61jl78BWk0MI08NKT4ocpMSXfgj5HsKKprmXdyp/y5gWY9lb1tSLjH3liJnG+7eJkn4
 6x2pBetZuIArDrJWba6zUs6/4r47rjhExqdp2aFEy46MWHNxsK6R0JrZNiDzgGKMHRv5 IQ== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3g93tc3ar1-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 25 May 2022 20:50:25 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
        by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 24PKdwxe026165;
        Wed, 25 May 2022 20:50:24 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
        by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3g93x05g6u-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 25 May 2022 20:50:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WrEBeAKPi65MkVoKmwKxINROXOYKtCdjdUnI110UxPle2/r6mfNjLvQKI25+euE5uMBOZYx4wwStGUpRUMunPSFgddm9EUp8K3KgiqbLUhQAkIjx/daNEuTzpsdTp+Pq0z7UJ6PI+3j5YCWbRR+lcyccUHWqZqOc72V95T+E4rmU2qGn868X4kX1MSsvyY8TCmTuB0JeVIrBKYphgEHknUIo2p/tS8KByBmJPyTbWmHoIc7C6unA1NklWroxpvgMAPRl9Mh6WoKW4QvLdkKxsDznmULeCtmHo2tsCzVwvL6bBdBTNBb1MMxOyWb+OD6acm5Men++IIB22CvuAgJhSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P6Hgal3+RgsmcDAv4rLzj+YV/s+urk05JiWYAPPQwR4=;
 b=PJb9NriZQWYNss++CPbcmhgBSRfxqOr4I+yWSEFDYIcB1ITn9vwsGXukth5SEZ2+us9PR3Lnom8JyySY5sBWhWtN7Jge3ZXWEbjqUE4+9V/e1kEedAjl3Tvz3T3yIhm6OjHjSc+ZqancF5J1if5f6K686jp/vN/PemLZ26JBOu9Yyvt4v8cQX/rD5tmVD52gL7ZfvmYHU46XG70GsAM6hRHZe4gy6KhtJYoWrp5fFS9pLhnnZosvasV2oQjy6RLpfadPNI9b405muQuOJ3TQB18DHsamKeW5E8B0KvhoVCo1FLv1Ek+B2oHQXlPR9wbf5aC9zRQvBHkxYzs93OakYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P6Hgal3+RgsmcDAv4rLzj+YV/s+urk05JiWYAPPQwR4=;
 b=oxWCpE7CUq4Z2BVSZmjEV9FRh7xs6ExDHP33aCXYNLvSWY6gWdDi5WkhJn3eEgofjqYc0X0w6vq8eySl398/gJgwjyqRjv/AsqEjsrYMbNNZd+KlhsldOKu85juoZxAycFg4SM7/N7V8elEuOa+FLOIFGhlqJKeh2hoWPU+81Ck=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by SA2PR10MB4521.namprd10.prod.outlook.com (2603:10b6:806:117::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.16; Wed, 25 May
 2022 20:50:22 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9%9]) with mapi id 15.20.5293.013; Wed, 25 May 2022
 20:50:21 +0000
Message-ID: <f8a5053c-f7e6-e64d-cc26-eb641dfd9215@oracle.com>
Date:   Wed, 25 May 2022 13:50:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] madvise.2: Clarify addr/length and update hugetlb support
Content-Language: en-US
To:     Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>
References: <20220524232844.169332-1-mike.kravetz@oracle.com>
 <Yo53tu0CZV5izp1U@xz-m1.local>
From:   Mike Kravetz <mike.kravetz@oracle.com>
In-Reply-To: <Yo53tu0CZV5izp1U@xz-m1.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MWHPR11CA0019.namprd11.prod.outlook.com
 (2603:10b6:301:1::29) To BY5PR10MB4196.namprd10.prod.outlook.com
 (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a22c04e2-b4af-4a4e-1c0e-08da3e902f60
X-MS-TrafficTypeDiagnostic: SA2PR10MB4521:EE_
X-Microsoft-Antispam-PRVS: <SA2PR10MB4521F6E5F3F70C6994EEB6A2E2D69@SA2PR10MB4521.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E5mE3m9jYfFBrjpTWfwtsiN9Mhne1mxTXHFA8fepCF0cODeuzfuOmAATG3YHSrKr9x9/oRFrfoMlrF62C22+cJbagF5G8Li6qiC1+DEsX3NcYWj7KnRhOEHs5/biPd+jjUXnHcxr5xQuZybDF1DrvvWooxGo9GYzCqmmBu6nSEuLkB6YzwBUGvWoLd624/EbGSEU579pRPLwH9khFT5ZRUbrPY6epc9GB9L2E44SYzKUuiHXg2tnNxUMU2bB1MG8cKNSiFft9iIJRW9/yI3Ws2bU71CSDGE02aQC1MWXwn6TsBfbgF2FhIocBn47jq/ikwkSyLfeOQdNoZkIS6DadKY72ArscYiWEfG25nQTNK3zjjsuNQbS6NKr9LqU/myVBUzFz/WQTTwDkCv2pUcW4VHytFpTKKZe7FOprooWjO1aXnX3kb8gdELoilIGlWiTIgVZqyvMCRRnQKSdeNll8qe5vQrDDQnFjREY04gLgZFXcDegzKwNv/UqHQvIyers8rIEEi/Qf+ogXc4VYO4QGh8gXD0eKxsRW6p8RwEOcXWFN50HIj+h15iLbgYbqgswL1FJOSvlp8nI/8wAhbjvTruQuJxEgBd0HtQ077Y5rH/7+Pt1X5CWeD3IxrxrZGdGiCiRxEbUpzXmGeKvj+QTRPOubEgUKroLv88so0098UA9LwXCczFsY4jDLm/9LwknfeBspjoMyChoW6/FSgyX9MoyoPCFrnPVkguPqb2o9zHMWTdvVSoZen4tBhEPwSxMGGSSA+a6E3v1O43b9TSP2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(186003)(83380400001)(36756003)(38100700002)(38350700002)(52116002)(6506007)(66476007)(6486002)(66556008)(66946007)(6916009)(54906003)(316002)(508600001)(2906002)(2616005)(8676002)(26005)(4326008)(6512007)(53546011)(5660300002)(44832011)(8936002)(31686004)(86362001)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2dLc2YrLzIxZmRXeXRQeCtlU1YzQkpFZ3JkTyt4QlpMTEJUZ2dIZjdPck9u?=
 =?utf-8?B?OG5GMWJ5Y1Q4M3lxOWpkcytjY1U5Zmt3UEl2dXJGemIyNUdxeUtyaXhRTm5s?=
 =?utf-8?B?K1NicWxJejlUeGZMNUpxR01oUlEyWXlCN2xRMjQ1bzhaUWhQUG1yU3MyTkps?=
 =?utf-8?B?d0puMHBoeHRGK1V4U003Z0ROd0l4K2FGb1lXcThqQm95cmx1cS9neGVYQXpn?=
 =?utf-8?B?MDVBc2IxUWRiQUM2Ty9jQ1ZQZVlSdmVmczdIQUxiTHNRd3pqVVh0ams3VVFC?=
 =?utf-8?B?TzVySjNuaEZ5V001S1JKcUNsNmZvRXNoNG5EblQrVGNnQk1PZGpDRW4vc0U4?=
 =?utf-8?B?cTZlbTVuWVdUR0pVODBKeFc0eXZ3cThDOFM0WmxNc0JEV1FqY080M3JPSnR1?=
 =?utf-8?B?RzlsaGYwVjJ4Y3hGeFQyVnRvWDhyTlRnMEFPa3VtaHdmQWtYc053Z1ppcjhH?=
 =?utf-8?B?QWNML2h2c1hUWEZ0YjZYWUs1cXhzekVKNmNiU0lUdmJDSTNwdVZTem9WTFZG?=
 =?utf-8?B?TUFhQVU3WTFWTU4xbkszUDMzNk5jQjV5cE5OdHBqZGEwSDVta2Z0b1h5MmZU?=
 =?utf-8?B?b2tlOHhQOGVKUmlXc09uRzJEWkhuRGtvZ3VOWm15QTdCQUtSNEsxU1NTYjJl?=
 =?utf-8?B?ZU0vZFh2OENrQm5oZEFMVUdjeEp5M3Bxd0FwdnVhS2dEOTBTOGF5bEFQNHRl?=
 =?utf-8?B?WWpYanFoS0Y1WkRTQTRpNkkydWxKWFA3dmdUQWJzUjJMazdvRTRzeFlNTjVo?=
 =?utf-8?B?TytLZGVBU1VKVTNVY0tDRHBtdTAzRGJzSjFFVEJtbUk4N1pVankzMW0vTWJP?=
 =?utf-8?B?cklkS3JOdWcwY3drSGl2eGt3R2pjb1cwK2luRnpMYTcrWXlSMFhRSHZQTDVn?=
 =?utf-8?B?QTg1WWthelhGbUpzMjVLOGIyMjBrTnVkTmNJYjdnOW5FcWswaFV2Sk1LMHgw?=
 =?utf-8?B?SlRZOUNSVUgvTmpNaHRMZ3NlMUdFWUFMMlhZZHo2T05Yd3ZOczQvdTdSMWRy?=
 =?utf-8?B?cEtmQ1N1b1ZLOEJ3NmdEaE9RTnAwbCtkemFEdU11WjVmVHV6M2dDMGtIbTND?=
 =?utf-8?B?WkFMeUs4ZkVwQzNVdVM2N3ppRXZ5N05GL3h1c1Uwdkw2WnVJK3NjQTB4NUVa?=
 =?utf-8?B?TlpxYVl5cTVNTmp2RHhiSWViTzRkMDRxOUE1OGVoaTZESEkvN1hDMG9GNStt?=
 =?utf-8?B?ejdCT1pwZlZmcXRuZS9YQytXTmNnZFVGN1Ria1RsSUIwTldXM0VWY3BTa3RL?=
 =?utf-8?B?MWhFQi9pdktkcE9meldYRlFFQ3FmYklma1ZaMzc5QVZBVmVtWXhQUzNCamxt?=
 =?utf-8?B?VTExOFdlM2o2UUlaNlZwVnVIZUxqWlVlb1hSUzEyQlZUTlhTckttelpieW9Y?=
 =?utf-8?B?SXoxazJ2V1ZKMkJtQzN1Qk5JLzdhcjZ6UHhMR3drU0ZTOEtzb0xZQndtU3NU?=
 =?utf-8?B?cFJIanRsNzRxQWxKaU9iOHBGNjNtK2tZWDZYMUorK0VpcTBZeGIzR0UwOHli?=
 =?utf-8?B?VWF1TW94MUl0SFdNeFRwcy9qOFRSODJtQ0E1dm41S0h3aGUxZFlnaVpSUHR4?=
 =?utf-8?B?MjlMeTg0TWRNWkhYdk00QzVtRmpkaXlVYmtzT0dQSEZ4UDI3OFRXVWYwRTBt?=
 =?utf-8?B?WUN3dFpucVlFMnhRbWo4ZWQzbENoTmh5K1NHNHk3S1JKRmpqRExnQStWanE2?=
 =?utf-8?B?WGFtR2dXd0hwdW1GTnJ6S0tIcmVhODBpYkRnR3JRREtacEJJZy8zMkN4Ykp2?=
 =?utf-8?B?SWJYbXk5ZFhXMW9kZmtPY0VmT1dROFZjbDBjS1BJOE12RFA3SzFLaE5BVHdK?=
 =?utf-8?B?Ym1WMEJsdDhaWEZid0RIWjBUZUdkT3JZejhXVS9wUjhlVC9uUjRYL2J0bkhm?=
 =?utf-8?B?bVQvSTd2VEoyWTRNN3YwandvQ2Nsb0pURnFmcHVldVZvaG9QT05jVFZaM2cv?=
 =?utf-8?B?QU1pNURvRU1ENUx6c1NPb255STNSWEpodmZRWTFyMllzVHlUNGt6cjdSSUts?=
 =?utf-8?B?VkgzU3phcjBxaWRoZkRIOGN3ZFYyTjVoUDlZdEJsWmJ6dUJ5RFljMXhmT1Zq?=
 =?utf-8?B?WFBFeFk4aC9DSlZ0T1c2MjdZM1FoVGhRSlVFTVlLTmJ5L1Y1SmZZUDJneG9T?=
 =?utf-8?B?YnozeE0rMEhXT0FvYVhXYUt4Q3lLdGRWMFJ3MmNLRWNybEJaNlVVc2Vld0xk?=
 =?utf-8?B?VUdQT2VJU0dGdG8rOFVTaDgxaWdRVnkvWTF4MkNGOTQ5dXZRekt1ZDdnOXdF?=
 =?utf-8?B?d3d1TCt4L0lkSTd2cUIrSko0dURnaE1OTHdTZ2VyVy9iMDQvMWZNUVdJa2ly?=
 =?utf-8?B?c05WUWN1TXN3UTk0MWJOOS93WFdQNFBBU3l6emRXSjRmZGVGOTFkRVo3UVJY?=
 =?utf-8?Q?jsuA8gzgFR2gn5j0=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a22c04e2-b4af-4a4e-1c0e-08da3e902f60
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2022 20:50:21.8948
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IgLGMIQA+RhzTAqHhancUbu42HtnQQcZof53pMjTHKgS/FqZUUg+A4dii5YJGNOZf2DFz8x3ifoCxjMbGQPdsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4521
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-25_06:2022-05-25,2022-05-25 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 malwarescore=0
 mlxlogscore=999 bulkscore=0 suspectscore=0 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2205250097
X-Proofpoint-ORIG-GUID: o52lkQyXm51qQap-v0TC-X6dQ7-Pf45Z
X-Proofpoint-GUID: o52lkQyXm51qQap-v0TC-X6dQ7-Pf45Z
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/25/22 11:38, Peter Xu wrote:
> Hi, Mike,
> 
> Some minor nitpicks below.
> 
> On Tue, May 24, 2022 at 04:28:44PM -0700, Mike Kravetz wrote:
>>  .B MADV_DONTNEED
>> -cannot be applied to locked pages, Huge TLB pages, or
>> +cannot be applied to locked pages, or
>>  .BR VM_PFNMAP
>>  pages.
> 
> This looks good, but since this will be a behavior change and we won't be
> able to change the old kernels, I saw the man page normally does this with
> things like:
> 
>   Since Linux 5.18, this madvise supports hugetlbfs page> 
> Majorly it states starting from which version it'll work, and when it'll
> not.

You are right.  I will add this.
> 
>>  (Pages marked with the kernel-internal
>> @@ -170,24 +174,24 @@ Note that some of these operations change the semantics of memory accesses.
>>  .\" commit f6b3ec238d12c8cc6cc71490c6e3127988460349
>>  Free up a given range of pages
>>  and its associated backing store.
>> -This is equivalent to punching a hole in the corresponding byte
>> +This is equivalent to punching a hole in the corresponding
>>  range of the backing store (see
>>  .BR fallocate (2)).
>>  Subsequent accesses in the specified address range will see
>> -bytes containing zero.
>> +pages containing zero.
>>  .\" Databases want to use this feature to drop a section of their
>>  .\" bufferpool (shared memory segments) - without writing back to
>>  .\" disk/swap space.  This feature is also useful for supporting
>>  .\" hot-plug memory on UML.
>>  .IP
>>  The specified address range must be mapped shared and writable.
>> -This flag cannot be applied to locked pages, Huge TLB pages, or
>> +This flag cannot be applied to locked pages, or
>>  .BR VM_PFNMAP
>>  pages.
>>  .IP
>>  In the initial implementation, only
>>  .BR tmpfs (5)
>> -was supported
>> +supported
>>  .BR MADV_REMOVE ;
>>  but since Linux 3.5,
>>  .\" commit 3f31d07571eeea18a7d34db9af21d2285b807a17
>> @@ -196,9 +200,9 @@ any filesystem which supports the
>>  .BR FALLOC_FL_PUNCH_HOLE
>>  mode also supports
>>  .BR MADV_REMOVE .
>> -Hugetlbfs fails with the error
>> -.BR EINVAL
>> -and other filesystems fail with the error
>> +Filesystems which do not support
>> +.BR MADV_REMOVE
>> +fail with the error
>>  .BR EOPNOTSUPP .
>>  .TP
>>  .BR MADV_DONTFORK " (since Linux 2.6.16)"
>> @@ -596,6 +600,18 @@ that are not mapped, the Linux version of
>>  ignores them and applies the call to the rest (but returns
>>  .B ENOMEM
>>  from the system call, as it should).
>> +.PP
>> +If the specified address
>> +.I addr
>> +is within a mapping backed by Huge TLB pages, then
>> +.I addr
>> +must be aligned to the underlying Huge TLB page size.  If the range
>> +specified by
>> +.I addr
>> +and
>> +.I length
>> +ends in a mapping backed by Huge TLB pages, then the end of the range
>> +will be rounded up to a multiple of the underlying Huge TLB page size.
> 
> I'm slightly worried this could be hidden too deep, meanwhile it duplicates
> part of the sentence of how start/end will be treated.

Yes, I just dumped more stuff into the NOTES section.  Will rearrange as
you suggested.

> 
> How about adding a short paragraph into each of MADV_DONTNEED and
> MADV_REMOVE section (right after the new sentences upon hugetlbfs), with:
> 
>   For hugetlbfs, the start/end alignments on page sizes will be based on
>   huge page size.
> 
> No strong opinions on any of these.  Anyway:
> 
> Acked-by: Peter Xu <peterx@redhat.com>

Thanks Peter
-- 
Mike Kravetz
