Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 045EA6B36BA
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 07:40:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbjCJGkx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 01:40:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbjCJGkw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 01:40:52 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52DF8C1C0B
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 22:40:50 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id aOLHp306zuZMSaWQrpglWc; Fri, 10 Mar 2023 06:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1678430449; bh=vo2sKnKnVCx/eAawrojiJJT7ps8Dd60lhC9xYq6UAAY=;
        h=Date:To:Cc:References:Subject:Reply-To:From:In-Reply-To;
        b=RJFsU19cViEFl4iEycWGi2Qfr6vMJfjYqmXjPq+owFHFzR/+CXmb+WZ/LVUqhRdhu
         xCjGxkfmTg0MKy6VSotKAsFjgtkpETcKge704nYCYtXegv1XRLWU+y+1QnXDRvgqxn
         +V6TmSjydOMVBHJSgeEfF7aor2ibDJ2UhNf7zefMmY8rMeCOH91pCN2McXVUf4g5KV
         4eDsXTk98INV/+lRtCSJRMSWnRy/qe4TeSveLdb9BLDaYSw0JxzKH+I1b4ujojI6Iu
         yYzQkF4kAxs09PJeY6MvhcmzcxJq0JAqJJkSuiTbQ1VUGlSc6XGr2uBuxhTvTtn7aK
         r8eDgM8gN0mFg==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id aWQqp4EAX3fOSaWQqpS1tG; Fri, 10 Mar 2023 06:40:49 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=640ad0f1
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=ugkhXdxtAAAA:8 a=wrkrCI0FjTpiTxmpL9UA:9 a=QEXdDO2ut3YA:10
 a=1DQof9xGdU8A:10 a=ZG-MjRxWnTTVGrJRUvVH:22
Message-ID: <edd32b0f-651d-c8c1-cf74-737d75c72578@Shaw.ca>
Date:   Thu, 9 Mar 2023 23:40:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To:     linux-man@vger.kernel.org
Cc:     Matt.Jolly@footclan.ninja, alx.manpages@gmail.com
References: <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
Reply-To: linux-man@vger.kernel.org
Content-Language: en-CA
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfPEl6JwK+WKnHwTS+6J1UD/h9hpjWQy382onaY5Cgva/g+XkZw3XD5gBJXswsVT9Y7q80RAPv44mkZy2z+A9X6NFyqmA5FxJ+b6DFEpOcdulBB1ZE8Q2
 /i9c1alhWmCYGA2TVEowLrB2dcW/wPMqS8yMOsqiGKuFfLgqEU/DL3/C6Xhj+kfxxIRm1IHCgSwO9AJaegjbxEAD0bPpbeya7/yKqBv1Csb9HC20JdEAN+z8
 R2+pM6DFDG93OH5pz5Zu58xPztY96QJCw+zUYjVXV3g=
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 10 Mar 2023 03:22:12 +0100, Alejandro Colomar wrote:
> On 3/10/23 02:51, Matt Jolly wrote:
>> I hope this email finds you well. I am writing to raise an issue that has 
>> been causing inconvenience for me (and potentially others). The recent 
>> removal of C89 information from man pages (72b349dd8c209d7375d4d4f76e2315943d654ee9) 
>> has put me in a difficult situation. >> As I continue to work on code that adheres to the C89 style, such as cURL,
>> I am unable to quickly determine if a particular function can be used or if
>> it was introduced in a later standard like C 99. >> This slows down my workflow and hampers my productivity.
>> Therefore, I kindly request that we revert the changes made in the "Many 
>> pages: Remove references to C89" patch. >> Furthermore, I urge everyone to recognize the importance of this
>> information and ensure it is not removed from man pages in the future.
> The main problem was that the existing info about C89 was not consistent.
> Some pages declared APIs being standard since C89, while others didn't.
> Incorrect info isn't much better than no info.
> I'm curious about cURL's real need for C89. I see that cURL uses GNU
> extensions (-std=gnu89), which actually pulls most of C99[1] (I think
> it pulls the entire C library, and most of the core language).
> Virtually all (even MS, which has always been the last in this)
> systems support C99; why would you consciously avoid it? Is there
> any system that doesn't yet support it? Which are the C libraries
> that you need to support that don't provide C99 functions by default
> (or at all)?
> I'd like to really understand the need for C89 in 2023.
A quick browse down:

	https://curl.se/download.html

shows a number of legacy platforms and versions available:

	SCO UnixWare             	7.10.3
	Linux MIPSel             	7.10.7
	RISC OS                  	7.11.0
	Linux Slackware S390     	7.12.2
	BeOS                     	7.12.3
	AmigaOS m68k             	7.14.0
	SGI IRIX 6.5             	7.15.1
	Digital Tru64 UNIX 4.0D  	7.15.1
	SCO Open Server 5        	7.15.1
	Linux Maemo 3.2          	7.15.5
	Linux Slackware PPC      	7.16.2	Slackintosh
	Linux OpenWRT 8.09.1 MIPSel	7.17.1
	Linux Unslung            	7.17.1
	MiNT                     	7.20.1
	QNX 6.5                  	7.21.7
	Linux Ångström PPC       	7.24.0
	Plan9                    	7.28.1	9front
	Linux Tizen 2.3 ARM      	7.28.1
	OS/2                     	7.36.0

which may need e.g. third party patches to remain secure.
Not to mention the legacy systems on those platforms.
Perhaps the US FAA or certain US regional airlines still use these? ;^>
Even DOS DJGPP supports GCC 9.3 with -std=c2x!

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                             -- Antoine de Saint-Exupéry
