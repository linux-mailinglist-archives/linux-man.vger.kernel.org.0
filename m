Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D944B77CE09
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 16:27:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237598AbjHOO0c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Aug 2023 10:26:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237599AbjHOO0I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Aug 2023 10:26:08 -0400
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A818B8
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 07:26:06 -0700 (PDT)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id VtXlqxsWs6NwhVuzlqT2XP; Tue, 15 Aug 2023 14:26:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1692109565; bh=4oPIDkUfLh5E1bfsGxMRwnmPWE6WrfcGxbrFspy9bf4=;
        h=Date:To:Cc:References:Subject:Reply-To:From:In-Reply-To;
        b=nw8p4XBQ5K6Nh4PGTqOmHNHsFIR+tTmTUX+oa1zFy9sKLk8L4MeBe95bhXkr8TSC2
         wpcxPcOS9mzAnENkMcUZQprwvh7wDpZ/TeEUPLRr7A6wxp/ZOpRT4kOgIGOqL4DEu/
         ltFikwpF2QNYK8cnNjIiAbhFq25JvWNKGgoB4uZHRHcQkSXk5ioHptZkJaO2/tUncC
         ts+RBACjjEIP5pyVH/hEbUET+SVD3aTDyeXjU8bRq3aE1gxO6BIT9ci+cs8pgfaqfK
         NRbZSvOz7MznygrQ1sYaF2BAB+IfwbwakeLeqSbP4foMJdSE+thQqFkx4QohhrH3jn
         hLuTdLFLsqmdg==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id Vuzkq4L7FcyvuVuzkqOQRY; Tue, 15 Aug 2023 14:26:05 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=64db8afd
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=Bfo1rFtExsEw4DxCo20A:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
Message-ID: <e891a3d6-56e0-78e1-9c60-2dac400995bd@Shaw.ca>
Date:   Tue, 15 Aug 2023 08:26:04 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org, g.branden.robinson@gmail.com,
        xxc3ncoredxx@gmail.com
References: <ZNrsvD9KCmaBEYnO@dj3ntoo>
Subject: Re: proc(5)'s sashimi
Reply-To: Brian.Inglis@Shaw.ca
Content-Language: en-CA
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <ZNrsvD9KCmaBEYnO@dj3ntoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfE6h6aJqJg8RZwAJyxQafa0BuQn8EHUUkrQlO9H0MFF5azO45GY67jmcpYYZiaQ3sxQ1XYNJ4FmpyCtMN00lf1wF97h8wtIzyaQfsxEOM7YzBd8AA6Jl
 Pu82TEKaSJV/cqJVr3SaGPVNa/LFk9OytUOBAU+xeXevc12JVxkvxpWogOBAaaX3nIicQ//wG8t4h5KmrNHAM1dY9yNsEEO+Osp7S5qRCDypGkebqOo6Y4tU
 G/f1+bmJeVMD74p2njabAaY4Sx+m97+H5L+j3BfEyh6vL5vxbQ1hmJz328NgQ163
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

++ About time.

Instead of the meta path component <pid> in the name, you could use the actual 
path component "self", with a standard note that it may be substituted by the 
pid of any process (to whose metadata you have access).

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
