Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E087969881B
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 23:51:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbjBOWvk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 17:51:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbjBOWvj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 17:51:39 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3309A212A0
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 14:51:32 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id SPmWpBf7bl2xSSQcdp0i0S; Wed, 15 Feb 2023 22:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676501491; bh=S9GivVX46sQU1MdIwkNjiKNepmZAVVXAIR61hxEUsfA=;
        h=Date:Reply-To:Subject:References:To:Cc:From:In-Reply-To;
        b=oFXIrLrIONtidsxwwxoPks0TdYaraJnq7wcFR3AgXLAwRMPMNfQDMkbLIPhLuRs8r
         UJqCvsI4+cxrX+htS8oLKMwdA1KkxU+TjG4IFwiyampbVYCT866Nby0GWgyhbaMF2J
         TZKnAhcfQM0+AUZcjgtAdNfC9J9gvhOUnQFbTzTHtGQX679NH9TnEMyCcnhLFHdz81
         Qd9GOE/y8/TmSvAeyOGxcubwh/CukD6OplFa1zjHbZe3GajV3vPtTuk6Ar576WiWoy
         K8czrMwApPVAQgeIridnTUZRPWyzuEThfgEFD0gRiXbgXeMbAfXIjaI2j2udfpqiBi
         cQovOzAgt5Rjg==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id SQccp11f1yAOeSQccpcSOu; Wed, 15 Feb 2023 22:51:31 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63ed61f3
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=t8vAJgLVPhGRq8TaxOkA:9 a=QEXdDO2ut3YA:10
Message-ID: <6cef7ca2-dbd1-47a1-2923-d5b29499c81b@Shaw.ca>
Date:   Wed, 15 Feb 2023 15:51:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Reply-To: Linux Man Pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH v3 0/6] man2/: use C digit separators, IEC, or ISO
 multiples to clarify long numeric digit strings
Content-Language: en-CA
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
To:     Linux Man Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfHW/hEHVcdQV2OfUXDNbcMhgkv0g9Vdj7fX74QSuuAqPrqA78L61vl6X7GzRnpOeyTnotHJC7DWokGIl8YoLlmvVKyLRkkARx9bVSSeeVNn3jbg8KGdk
 BUHm/YerVQXXeto3v+38OOcqzXTkYOwh4BmurImdx2jrFQWWDmS3H27pxrcB/b7Xai5LdNL/kVjU6R73XtPqhCCG0k4Q9TzCCkqNr602ApUmZOtwOwG5UhXj
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-15 13:15, Brian Inglis wrote:
> man2/: use C digit separators "'" \[aq], IEC, or ISO multiples
> to clarify long binary, octal, hex, decimal numeric digit strings
Replying here rather than individually - made your mind up about some things and 
changing the goal posts again on me - eh! ;^>
Will post v4 after reorg and check the weird sedit!
Should have picked the section with the fewest long numeric digit strings to 
start ;^p

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry

