Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07A2D68F99A
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 22:17:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbjBHVRH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 16:17:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbjBHVRG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 16:17:06 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBB791C599
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 13:17:04 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id PpGSpykLvl2xSProNpbyEi; Wed, 08 Feb 2023 21:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675891023; bh=b8bFNtRYrl/hGpSAfM+zq0cLBfnqLkyKxlXQkNy7FVA=;
        h=Date:Reply-To:Subject:To:References:Cc:From:In-Reply-To;
        b=XDUv6LxLH93YNIMVyzTFbjxuavg6XJhVGN2FFRiTocHlFNEU8XtlwCk4gOedvkBKH
         W6F2IBEl6/2Ww5mF2C3wmp2vDv9/FDIURHq5q6umiU8AyC1H3eltdwQpExstmcMues
         wKOmb7RdvnS31FSG2/WuBFED7v4GakDPMkRh5OTsW/Jo5jF52hm5a01yJAC3U96QQ+
         G0j2wJsssbIC1DunB8/AwxyPEhvdAei84mYzPZPpolwWfMwpi06fSLd1ZGFWGWnR36
         2PTBzSvFINnkNbC+shTeCjjRCy/+5WY0DE8+QLFh2Ft0ChaiZosTJVQLCMrVvpTEtg
         6sLWKi8FPZG0Q==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id ProNpmEMbHFsOProNpAdTg; Wed, 08 Feb 2023 21:17:03 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e4114f
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=84C6nk-rIIgwS1rMKV4A:9 a=QEXdDO2ut3YA:10
Message-ID: <00cd070f-65fe-60ff-efcb-4b2ea8a71635@Shaw.ca>
Date:   Wed, 8 Feb 2023 14:17:02 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH v2 00/11] punctuate long numeric strings with digit
 separators
Content-Language: en-CA
To:     Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <e497bd3e-0216-4af2-3848-fa9b3ccf5b89@gmail.com>
 <1fec0c50-ecb5-6a64-87f4-7d4165b72212@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <1fec0c50-ecb5-6a64-87f4-7d4165b72212@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfADxTcYh7b9er6RcNrrnEGgZ6wshKM3ni0MdGSn6VkxNBEkxlRbvPfDjIdhDkv3ahFwVUa5b4XVXg3PxTxcjweIV66qcgPncIB1m1KgV6/P9tKvzfV1C
 tjCVJYrriQEitUpDFoh/X6pwEqolyktPQYhxRCTvd6bMlRGNhzieshnL9Au2rgfAHMQDR0x3Pv9MbaMMk/F1AZuiSSE+nw+JoGedinf/8eHRACEVJUbtG5tE
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-08 13:56, Alejandro Colomar wrote:
> On 2/8/23 21:55, Alejandro Colomar wrote:
>> It seems using --inline is not what we're looking for. Could you please try with --no-attach?
> Ahh, no sorry. It might be enough. It seems it has it attached, but I can also see it in the email itself.

I see we're both using Thunderbird, and I saw no difference in the view of my 
copies of the patches, other than if you view Message Source, the internal MIME 
headers show:
Content-Disposition: {attachment|inline}; filename="v2-00??-man2-*.patch"

I note that I have TB main menu View/Display Attachments inline checked.

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
