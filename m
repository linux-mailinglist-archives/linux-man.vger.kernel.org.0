Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D10554545F
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 20:48:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229880AbiFISsY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Jun 2022 14:48:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345517AbiFISsX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Jun 2022 14:48:23 -0400
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A6222BF87F
        for <linux-man@vger.kernel.org>; Thu,  9 Jun 2022 11:48:21 -0700 (PDT)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 259IkMit011178;
        Thu, 9 Jun 2022 18:48:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=Kv1XTwvrfx665Tt/HyTdsb8AX5jAjNgRCT84OBUrq7A=;
 b=ZWecafVYGIf22eefl1pTZavibNYnEpFRKZxrIM4JAOMGLk0Ra3CbRKsTEY75GF9Y4hh3
 0DMQDnlSM9qMtintipQr2E0vFXJDrbzk02bUjXkS5J7VPJ+81hZx2adH0lrBaZRw0pPR
 2ANEM6wb0Y2LnLmRM7uIY6O83esBjjsHDlZW4jfSSK7rCZUHCb8ZTk4uWTe78N2Rsozr
 XMbZbdqmHaWai8YZH3v1hZOaNfjnFuzlrJOHhd4AoKZv/g9nyjSmFCzUvS9SYSjAk9vy
 xAIxFbMa2TQRqDRGVdFcZFsqL79GMVtMxJojI5pbgS8/B2clm7L9GD0gXYgFy2s0Bybs ZA== 
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ggvxn22ab-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 09 Jun 2022 18:48:16 +0000
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
        by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 259IaYoD019550;
        Thu, 9 Jun 2022 18:48:15 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1anam02lp2047.outbound.protection.outlook.com [104.47.57.47])
        by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3gfwu4y54b-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 09 Jun 2022 18:48:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VdxWWXNfy6zMuOMAizuVqz9NDbedCw/lldipd2OjJmPj2pfQkwi4GM4At+9b0xmkB5xAk3D/xFbFKV2zgC6J/2cXUM+w1TZXjxjbE9b8g2TEJK2BsRAdpl4YjJVafr9bD8KrJGEY2WRpuHcD/eKKCtwqcYAceEnSuUiJF1k/8XaEDGNUwXkjP8qnrKPIPHpElofCYSpeM7peiOMGlgMY2eMaRq06NDpdDm6mp+7Ykz8yXmfmdn+E7NGHOUdAE1vhTSd/Hcm/HetX8Bz2EzVaF3zBlyKLErFn8FLyf9oHTy115SnmFADaHbPbZwYDiGs9qwyR0y1AQ/GFvS6cH1x+6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kv1XTwvrfx665Tt/HyTdsb8AX5jAjNgRCT84OBUrq7A=;
 b=SYDivrAjkiV+jM7/bH+BtxOYfVv+731WPNMm5oLSkP+ldMVUJ272LA/H6ySo+vQhHcxaUv5yQTJhrGtqbwmwRF18j0TmnDlZbW3UWq5vO1tf7Y2ZV1A8+QPdxZ9oKQq5ML62+CdIj2uGVyQxxerFhPNvixgNgAzDS0+m+ZAiQkg0SdqVL5dcw+nIgRrcIBuDkmaqgdW+YYxW03XiJ/zfqfyp2bK0n3L+9++32kc4OWW+ooqkd22NF0o50cKtH7e4ScVnLuo5RSHx05Z82xOxJU3xz7SgRpPO9sE6dXp4aGSFDkFzk8vrUW6yCl4r6GbFFPNJ8MybPOL71T6JT2TMoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kv1XTwvrfx665Tt/HyTdsb8AX5jAjNgRCT84OBUrq7A=;
 b=GI7Rp9fbsmkBvVYA7m6jYFmWEUiSrHv37LXIMlogMe+b1GfoAuDJOh6wLO3fqnGox+5lagHVJWn0N4kXOd9AkJCovVuvFefcEszzYkZYkMCK2EoefykwC4pXCbfV+v7wUpPaE0zJ0RvIgC6T/8s2jKZtiNUIBijO90lR+6ARGqc=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by BL3PR10MB6018.namprd10.prod.outlook.com (2603:10b6:208:3b1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Thu, 9 Jun
 2022 18:48:10 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9%8]) with mapi id 15.20.5332.012; Thu, 9 Jun 2022
 18:48:09 +0000
Message-ID: <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
Date:   Thu, 9 Jun 2022 11:48:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
From:   Mike Kravetz <mike.kravetz@oracle.com>
In-Reply-To: <a711288d-f070-e980-034a-3faee480e689@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR14CA0068.namprd14.prod.outlook.com
 (2603:10b6:300:81::30) To BY5PR10MB4196.namprd10.prod.outlook.com
 (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f2875780-f3bb-497b-282d-08da4a4898a4
X-MS-TrafficTypeDiagnostic: BL3PR10MB6018:EE_
X-Microsoft-Antispam-PRVS: <BL3PR10MB60186C73C1A590A76FFD4010E2A79@BL3PR10MB6018.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l1t1sfvKVnN3dJ8XdJ5l1QIkY1bYALio7OGz1WY7agaZgD3kKoPDU9rR8XKpe5734Wq6JGlZGWnPv/AmnqmP7pWDZNWyGOG1yzR4/r1PCxRZfsLcVyGU5qDiswslEYZtlHVMw0icpk0Zd0boi0+Hp6MexliGxjJRANXk/k5p5elDH7FPe8O10WQMnGZpL9XcZK81lPXW8TuzbhppTLDfi+cp8QCqLDYxaDJgnzPMSTlrQn0T/Hx6j3sDVANuKTtrd2ZwjFO/yNl/YSdFUEN3/rTsw8vLr1fKFGPwg5cpIUoA7J1urL850mdcBs5z0kq69IMOHXEQ3CnJdjVx7NbmS33+A/g33f3ihA9vJTrbV7f4x2z8YBO8x31FuhxFnKJRwRZ6W60YZm85ZuIzoHtk+Vv55Vc8FZiJXfOMivlRqmwq1vrlP84tzIIG8puQr6u4+CtM49cmq144TwmpmTUewQHkMkT3HFLLkNqmnDQBLrgTLsUotpKUeRTYJLOaaPLD9CqC1pcRmVS6oso6e532gZorGRiyYFNfwEt+HL2+hxPKkKxUYsd/nNqdb0qGMBkNDXtg5bHi3RkJeZ2AF4F68YDg9Jjs8rTL/Mb4v+RUVrr+6bXpsK/RiNEQDlh0bw+obIAHueeLchNXNQ5o2hQ3HimLhDsRjw31JTDRd+bxHgSD1w3qtuJj20sjOFcLf4SoBKunMlohnH4pqLJNIcjQWPIFrS0f8UiEF7GE3bqq8PE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(26005)(53546011)(6506007)(8936002)(8676002)(5660300002)(66476007)(4744005)(66556008)(4326008)(31686004)(44832011)(66946007)(186003)(38100700002)(36756003)(2616005)(6486002)(2906002)(316002)(83380400001)(6512007)(508600001)(6666004)(86362001)(15650500001)(54906003)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDhtQkt6QnJJRlJIWXRtdXkvdDRmMzB6elNvdzIwZ3NMd05sajE2N1pGZTZG?=
 =?utf-8?B?YWpNR251Y1ZncGtNSmhkSFFSOEZoTzk0VmpsSkRVc0I5Y1htUERXbTdIM3o2?=
 =?utf-8?B?K1lmYXQ3aHhvT0VhK0hTR3RuWDN5RmkrbjJyNm5YVjhmeFpLZEM4YXFVMHpP?=
 =?utf-8?B?TDBVYUxYTVVrejl2cHpFallPR1N1TlJFYlNKa3hlMEtidHRyUTJoRnBPbXFT?=
 =?utf-8?B?R2tZdWhtNXN0ZEMwSW5TbE92cTh6eHFxVjlVS3ZBNVVxRXRob0l4dTdjM1lM?=
 =?utf-8?B?SDV4a0lFV0huT3hKblk1YjFxMXJZUjNKVjA4U2JJblNVOWo2MUE5VjZiZW9B?=
 =?utf-8?B?UmJTUDRYZ1lrSytRUCtwZGRyZGJURlE2aGJRTHpkZHV1YmwwT3pRcU0rMUp3?=
 =?utf-8?B?SWVqdktDK1NCY3FNR29yTCtCalppU2NJdGgwZEpkZS9CR0lxY0ZBUlpDb0dq?=
 =?utf-8?B?dTN4TlBGM0JZUHB5SzRxZElCOFdLWkswUFlRT0hqakZvTjZiMVM4ZzhWaDRD?=
 =?utf-8?B?RjFtR3dtRHhERWZSdUxWM1VGNGszQk9ZbkVYb0xXRnN2S0psaFRNcHRCZkZG?=
 =?utf-8?B?aklCU09ZaE8vRHpscDZpNU1rQWJ3Y1cvczNyUU10RnBvQUlEM1g5K0dJcEdx?=
 =?utf-8?B?SWtPYm8wVHd3UlRtVjROTlY4bUkxK0RmQUJRSVVab1NTV2lzSlRoSzlZeEVx?=
 =?utf-8?B?K0JDWDRIbFF1dlF6d0twREduOHY1bGZ3WXl1TlBjdGRSeHNlc0k5TVdXMWg1?=
 =?utf-8?B?ditqb2J4VE1YOXloQlhwampyT3c4TGNGZFZiOFZDSW1HOWxLK0NyOE9YRW5I?=
 =?utf-8?B?aGs5VWhtUW9IQ1ZKdjFNc0lIUElqaERzNVdzWmpDZXo1WDBwdjduQ2VYZmVM?=
 =?utf-8?B?OEM0KzVsclN1M01qOVNjN3NubGNqSzNPNk1hQWZwVW9GQVExend2OVl4QnJJ?=
 =?utf-8?B?dUlkYXB3MUhuazZVRENCdVF6bWZMMHA0RnMwSnlCdmN1eDFvNHgxa1JSTXNF?=
 =?utf-8?B?N0NvN0Rvb2V2Qk1TbkVFM1BGWnloL2dJTWx4K2dlazdQVFMxMm1NRnNSUXFD?=
 =?utf-8?B?VDVldkVjclZIYm51dU84UElwb0hEU2p3cjJyS2JGTkVIWFl4MnhibHE0R1dS?=
 =?utf-8?B?RzRjeXB3ajlwa2lIVHprQllMa0NNRHRxdTlXUmlBdzdCcU9rSVo3RmVvb1BE?=
 =?utf-8?B?UkpKOWp3UzRIaUtZTzNDc0hRUy9Oa2YxRU1QQ01UcUZSOG1FbzNUTitUNWFx?=
 =?utf-8?B?d0hocGtaQS9IRE9BVTlyZlpFdnFyNHBTeDdsOGlPa0ptVTZEckI3KysvU3cv?=
 =?utf-8?B?TXNYUUQwMTdrazlyZ3NHa012SUVIRkVnbk4zSEs5SDBrUEJFYjQ1WStSTVhK?=
 =?utf-8?B?ZjV6SzZhZFVHb0x0dGk5aGpvUDZha2EyeUIzYVpjK2UzSVhVMnhkY0lVK0I3?=
 =?utf-8?B?QUJiZzBjeWdMV2htRE03OFhjL2xtOS9hLzlPMjhKUHZZbm9Wc1FlNVRtL2s4?=
 =?utf-8?B?L0RPam1yL0RPc3ptVFI2Y0h4TUk3WHM2KzVrQVdsNnFwUGpyK0xXZ0E0Qkd2?=
 =?utf-8?B?MjV0aFpweXkwWmF0eUt1VWhzYVZCNkhTMUd0ME5nS3AvR2UxOHp5ZWZvODNC?=
 =?utf-8?B?S204SlFJd1VSZWNVbm1WamkvRGcvSktrZVRMemh6dzJrR1AyUkVHaHBZYXhL?=
 =?utf-8?B?b3g5VlBlbjE5ckdmRHRiSFltNWhPd2lBK3YxOG55NFRCTS9uS2lrTmxBdWVM?=
 =?utf-8?B?MGhIdzUyNkZXN0wxZU9WQUt1VG9oUUNWOEVTYkxqbDBqcExVMWJZQ2d2eXRT?=
 =?utf-8?B?ZTVjMXlyaUNwZFlySEsycnM1bDZRbVhGbWRFYWoxbHJVYkp2elNMQU10blBo?=
 =?utf-8?B?azBDM3ZHZzNhcFBMcUw4RHhiVU5rVjhRT0FTRVJLTlRvcFVyYk5wMkVncGZM?=
 =?utf-8?B?MjFXSU13VWQ4QXhlK29abGpSZjBsa1JDcUp3dTZnR1VNdVVnN0hHOVk2QnRu?=
 =?utf-8?B?SmxSUUVDaG1tekxieDFmSTcwTC9zdTdVWmtmRFdsMjBIU0YzamdvTEJXTVhq?=
 =?utf-8?B?KzFDYysvVlVZWVhDdEc3UlJFS1h4OHN4UUcyalZsWlFraEd5emlSTHA2a3p6?=
 =?utf-8?B?Q0VBVFJzNS9YVk1BUGtqdmE5b0N4TjBtUTVDZnI1WjlDWTdVQ0lmQ003M2Yx?=
 =?utf-8?B?d2F0NDFyRjZZTHgzektYN00vaFI3ZzRDMVZRZUZwYVZJcVRDbXhUanc5NkJZ?=
 =?utf-8?B?UFFNVW9NWjBZK0l0Z2dJaUxZZVJ1ODBwL29Zd1F3NUNLMkV5VnRNaWk0bVZm?=
 =?utf-8?B?aE1Md2FhUkRIaVZYbFBjNFVBZ0dtenZjdW5xZlh6L3Z0cE53NkpTSmxXZTdE?=
 =?utf-8?Q?guk5+KzmjTay3j3k=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2875780-f3bb-497b-282d-08da4a4898a4
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2022 18:48:09.7852
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2dIYMIV8KNt80r9wKRzUIwH94uRxxLBwIUZW1OHnyigQ+QDrF8QBEUzP0FVGHfFOOkY+mkoRkSVrW09eLl7xiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR10MB6018
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-09_14:2022-06-09,2022-06-09 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 bulkscore=0 spamscore=0
 phishscore=0 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2206090068
X-Proofpoint-GUID: pc08ftEkyprzgMWnWRqg2_-yfmJTHSsN
X-Proofpoint-ORIG-GUID: pc08ftEkyprzgMWnWRqg2_-yfmJTHSsN
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 6/9/22 06:24, Alejandro Colomar wrote:
> Hi Mike,
> 
> On 6/9/22 01:45, Mike Kravetz wrote:
>> Clarify that madvise only works on full pages, and remove references
>> to 'bytes'.
>>
>> Update MADV_DONTNEED and MADV_REMOVE sections to remove notes that
>> HugeTLB mappings are not supported.  Indicate the releases when they
>> were first supported as well as alignment restrictions.
>>
>> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
>> Acked-by: Peter Xu <peterx@redhat.com>
> 
> Please check some comments below.
> 
> Thanks,
>

Thank you!

And, my apologies for not looking at formatting requirements.
Will send a v4 shortly.

-- 
Mike Kravetz
