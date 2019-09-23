Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 569F8BB582
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 15:36:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730312AbfIWNgg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 09:36:36 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:47368 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728926AbfIWNgg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 09:36:36 -0400
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x8NDWHdi095076;
        Mon, 23 Sep 2019 09:36:25 -0400
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2v6xw50jys-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 23 Sep 2019 09:36:25 -0400
Received: from m0098396.ppops.net (m0098396.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x8NDWbdi097113;
        Mon, 23 Sep 2019 09:36:25 -0400
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com [169.47.144.27])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2v6xw50jy4-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 23 Sep 2019 09:36:25 -0400
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
        by ppma05wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x8NDZUqb029859;
        Mon, 23 Sep 2019 13:36:24 GMT
Received: from b01cxnp22033.gho.pok.ibm.com (b01cxnp22033.gho.pok.ibm.com [9.57.198.23])
        by ppma05wdc.us.ibm.com with ESMTP id 2v5bg6upqy-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 23 Sep 2019 13:36:24 +0000
Received: from b01ledav004.gho.pok.ibm.com (b01ledav004.gho.pok.ibm.com [9.57.199.109])
        by b01cxnp22033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x8NDaNk942926384
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 23 Sep 2019 13:36:23 GMT
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 95FDA112064;
        Mon, 23 Sep 2019 13:36:23 +0000 (GMT)
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 94803112065;
        Mon, 23 Sep 2019 13:36:22 +0000 (GMT)
Received: from [9.86.226.90] (unknown [9.86.226.90])
        by b01ledav004.gho.pok.ibm.com (Postfix) with ESMTP;
        Mon, 23 Sep 2019 13:36:22 +0000 (GMT)
Subject: Re: [PATCH] getauxval.3: Add new cache geometry entries
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, benh@kernel.crashing.org,
        mpe@ellerman.id.au
References: <20190916184136.13621-1-rzinsly@linux.vnet.ibm.com>
 <3a8ec98c-f93e-f186-b365-82857ec46395@gmail.com>
From:   Raphael M Zinsly <rzinsly@linux.vnet.ibm.com>
Message-ID: <91faffae-777b-7e77-2986-463dc01508be@linux.vnet.ibm.com>
Date:   Mon, 23 Sep 2019 10:36:16 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <3a8ec98c-f93e-f186-b365-82857ec46395@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-09-23_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909230132
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 23/09/2019 09:27, Michael Kerrisk (man-pages) wrote:
> Hello Raphael,
> 
> Thanks for this patch. I have a question below.
> 
> 
> On 9/16/19 8:41 PM, Raphael Moreira Zinsly wrote:
>> Add entries for the new cache geometry values of the auxiliary vectors
>> that got included in the kernel.
>>
>> Signed-off-by: Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
>> ---
>>   man3/getauxval.3 | 27 +++++++++++++++++++++++++++
>>   1 file changed, 27 insertions(+)
>>
>> diff --git a/man3/getauxval.3 b/man3/getauxval.3
>> index 794bc97b5..30f0757b5 100644
>> --- a/man3/getauxval.3
>> +++ b/man3/getauxval.3
>> @@ -123,6 +123,33 @@ The instruction cache block size.
>>   .\" .TP
>>   .\" .BR AT_NOTELF
>>   .TP
>> +.\" Kernel commit 98a5f361b8625c6f4841d6ba013bbf0e80d08147
>> +.BR AT_L1D_CACHEGEOMETRY
>> +Geometry of the L1 data cache, that is, line size and number
>> +of ways.
> 
> What is "number of ways"?
> 

It is the cache associativity, e.g.: 8 means the cache is 8-way set 
associative.


> Thanks,
> 
> Michael
> 
>> +.TP
>> +.BR AT_L1D_CACHESIZE
>> +The L1 data cache size.
>> +.TP
>> +.BR AT_L1I_CACHEGEOMETRY
>> +Geometry of the L1 instruction cache, that is, line size and
>> +number of ways.
>> +.TP
>> +.BR AT_L1I_CACHESIZE
>> +The L1 instruction cache size.
>> +.TP
>> +.BR AT_L2_CACHEGEOMETRY
>> +Geometry of the L2 cache, that is, line size and number of ways.
>> +.TP
>> +.BR AT_L2_CACHESIZE
>> +The L2 cache size.
>> +.TP
>> +.BR AT_L3_CACHEGEOMETRY
>> +Geometry of the L3 cache, that is, line size and number of ways.
>> +.TP
>> +.BR AT_L3_CACHESIZE
>> +The L3 cache size.
>> +.TP
>>   .BR AT_PAGESZ
>>   The system page size (the same value returned by
>>   .IR sysconf(_SC_PAGESIZE) ).
>>
> 
> 
Thanks,
-- 
Raphael Moreira Zinsly
IBM
Linux on Power Toolchain
